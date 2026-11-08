---
title: "Agent readability: Carrying over top-level page notes into independent chunks"
permalink: /blog/agent-readability-deprecated-content-page-notes
date: 2026-11-04
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/agent-readability-deprecated-content-page-notes
description: "Across my past articles on agent readability, none has attracted so much attention as <a href='/blog/chunking-content-for-mcp-ingestion-agent-readability'>Chunking your content for agent readability</a>. This is because chunking presents many challenges to tech comm that are difficult to solve. One acute issue I haven't yet explored is how to propagate top-level page notes, such as deprecation status, availability, release status, version numbers, etc., that are noted in a top-level banner in later chunks. Chunks that are disconnected from the page notes will likely be recommended and used by agents."
---

* TOC
{:toc}

{% include ads.html %}

Consider this sample page: [Find Place (Legacy)](https://developers.google.com/maps/documentation/places/web-service/legacy/search-find-place). 

<figure><a href="https://developers.google.com/maps/documentation/places/web-service/legacy/search-find-place"><img style="max-width: 650px" src="{{site.media}}/page-level-notes-chunking.png" alt="Top-level page notes propagating to lower chunks" /></a><figcaption>Challenges in propagating top-level page notes to lower chunks</figcaption></figure>

This page alone has 4 important notes at the top indicating the following: region availability, legacy status, server-side libraries, and field limitations. When the parser splits up this page into chunks for MCP server ingestion, it splits by h2 and h3 headings into approximately 400-word chunks. For the first chunk, great, it gets those important notices. For the later chunks, the chunks will be disconnected from the top page-level notes. 

As a result, when an agent queries the RAG for details on how to find places, the chunks returned might not carry the same important information. For example, a chunk might return the [Places section](https://developers.google.com/maps/documentation/places/web-service/legacy/search-find-place#Place). 

This problem is especially painful for deprecated/legacy APIs. LLM training data is already stale and suffers from issues in recommending or using deprecated APIs. This is the problem Vercel was trying to solve, as I described in my previous post, [Achieving a feedback improvement loop with documentation by simulating user queries](/blog/improvement-feedback-loop-docs). But even if the LLM training data *is* current, agents might still struggle to avoid recommending deprecated APIs because the chunks returned in RAG searches don't carry the right metadata.

Ideally, you want your independent chunks to carry some metadata from the page that will indicate the legacy status. You could repeat the information manually in each chunk, such as carrying through the legacy notice strategically so that each section heading shows the same legacy note below it. However, this repetitive note becomes an eyesore for human readers. Further, there may even be a paradoxical effect: If the note repeats the text about using the "Places API (New)" instead, then searches for the Places API (New) might surface these Legacy chunks more frequently!

Another solution could be to put this information into a product skill. In my experiments, the agent relies on the product skills first and only executes RAG searches via MCP when the product skill falls short. However, this means that the right product skill has to be in context for the API. If the product skill doesn't trigger (perhaps because the frontmatter keywords don't align with the user's scenario, or if the agent loads the product skill but then never reads it), then this approach fails. Assuming that the right product skills load for the user's scenario is wishful thinking. 

Relying on the skill is fragile. In most application building scenarios, users might incorporate 10+ APIs. Do we assume that a separate product skill for each API appropriately loads and that agents diligently read each product skill before writing code? Hah!

## The broader strategy: Propagating page-level context into chunk metadata

Regardless of which chunking parser or retrieval pipeline you use, the larger architectural strategy is straightforward: ensure that top-level page context is stored in the metadata attached to every chunk. If a chunk can be retrieved in isolation, its metadata payload needs to carry the page-level caveats required to interpret that chunk safely.

There's a partial implementation of this pattern in Google's [Developer Knowledge API](https://developers.google.com/knowledge/api). When you query the corpus using the [`documents.searchDocumentChunks`](https://developers.google.com/knowledge/reference/rest/v1/documents/searchDocumentChunks) REST endpoint or the `gcloud` CLI, the API doesn't just return raw text fragments. As explained in [Search and retrieve documents](https://developers.google.com/knowledge/search-retrieve), each result in the `results` list includes a `document` object alongside the chunk's `content`:

> * `parent`: the document resource name (for example, `documents/docs.cloud.google.com/bigquery/docs/introduction`).
> * `id`: the chunk identifier within the document (for example, `chunk_0`).
> * `content`: the matched text snippet from the document.
> * `document`: metadata about the source document, such as its `title`, `uri`, `dataSource`, and `updateTime`.
> * `relevanceScore`: the relevance score of the chunk to the search query, in the range `[0.0, 1.0]`.

If you look closer at the [`DocumentChunk` resource definition](https://developers.google.com/knowledge/reference/rest/v1/DocumentChunk), that embedded `document` object is automatically populated using `DOCUMENT_VIEW_BASIC` so that every chunk carries its parent page's metadata without requiring a second API call. 

And according to the [`REST Resource: documents` specification](https://developers.google.com/knowledge/reference/rest/v1/documents), `DOCUMENT_VIEW_BASIC` includes the page's `description` field:

> `DOCUMENT_VIEW_BASIC`: Includes only the basic metadata fields:
> * `name`
> * `uri`
> * `dataSource`
> * `title`
> * `description`
> * `updateTime`
> * `view`
> * `contentLengthBytes`
>
> This is the default of view for `DeveloperKnowledge.SearchDocumentChunks`.

### The metadata bottleneck: Real estate and protocol stripping

In theory, this gives technical writers a built-in mechanism to solve the disconnected-chunk problem: put your deprecation status, release stage, or critical availability caveats into the page's `description` metadata, and that warning will ride along with every single chunk returned by `searchDocumentChunks`.

In practice, however, relying on a page description introduces two immediate bottlenecks:

1. **The 150-character real estate crunch.** Page descriptions (typically pulled from HTML `<meta name="description">` tags or frontmatter) are designed for SEO snippets and human search summaries, usually capped around 150–160 characters. Think back to our [Find Place (Legacy)](https://developers.google.com/maps/documentation/places/web-service/legacy/search-find-place) example, which had four distinct top-level banners covering legacy status, European Economic Area (EEA) region restrictions, server-side client libraries, and field limitations. If you cram a deprecation warning into a 150-character `description` field, it immediately has to compete with those other critical page-level notices, not to mention an actual summary of what the page does.
2. **Protocol-level metadata stripping (REST vs. MCP).** Even if your retrieval backend attaches rich metadata to every chunk, the protocol layer exposing those chunks to the agent might strip it out. For example, although the Developer Knowledge REST API attaches the `document` metadata block (`DOCUMENT_VIEW_BASIC`) to every chunk, the output schema in the [MCP Tools Reference for `search_documents`](https://developers.google.com/knowledge/reference/mcp/tools_list/search_documents) does not.

When an agent queries the Developer Knowledge MCP server via `search_documents` rather than calling the REST endpoint directly, the document metadata object (along with `title` and `description`) is omitted from the chunk response. Unless the agent sees `/legacy/` in the parent URI string or decides to make a follow-up `get_documents` call to fetch the full Markdown page, the top-level page notes remain invisible.

## Resulting strategy 

If we want agents to stop recommending deprecated APIs or ignoring top-level boundary conditions, we have to treat page-level notices as first-class metadata in our chunking pipelines. This means we need to do the following:

1. Identify all the legacy pages on our documentation site.
2. Identify how our RAG ingestion stores metadata about each chunk. 
3. Put the legacy notice into that metadata, which might just involve adding a compressed note into the `description` field in the page's frontmatter.

My larger point here is not to dive into the specifics of my documentation's chunking parser or metadata system. It's instead to raise awareness that as technical writers, we need to develop a new perspective for our content: seeing as an agent sees. Does an agent see the top-level page status that appears so visibly to us, as we look at the entire page? When we put on agent goggles, that top-level page status disappears because the agent instead consumes individual chunks, and unless we've populated the description field (or an equivalent chunk-level metadata property) on our page and limited it to the 150 character length, the metadata will likely omit the important deprecation notice as well. And if this happens, the agent may well continue using and recommending the legacy/deprecated APIs.

## Testing

To take this one step further, we should develop before and after testing to see how the updates play out. We might come up with 20 questions that involve legacy APIs. Then we ask the agent to determine the answers -- before pushing the updates out to the RAG storage. 

After publishing the updates to the metadata (and allowing for the ingestion timeframe), do the test again. Did the inclusion of metadata have an impact? Test versus REST and MCP. This is the sort of thinking and testing that we now do as technical writers.
