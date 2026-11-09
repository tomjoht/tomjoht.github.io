---
title: "Agent readability: Carrying over top-level page notes into independent chunks"
permalink: /blog/agent-readability-deprecated-content-page-notes
date: 2026-11-08
categories:
- ai
keywords: agent readability, chunking, RAG, MCP servers, page-level notes, deprecated APIs, legacy APIs, chunk metadata, page descriptions, Developer Knowledge API, product skills
rebrandly: https://idbwrtng.com/agent-readability-deprecated-content-page-notes
description: "Of all my articles on agent readability, none has attracted as much attention as <a href='/blog/chunking-content-for-mcp-ingestion-agent-readability'>Chunking your content for agent readability</a>, probably because chunking raises so many hard problems for tech comm. One problem I haven't explored yet is how to carry top-level page notes, such as deprecation status, availability, release stage, and version numbers, into the later chunks of a page. Chunks that are disconnected from those notes can still be retrieved, recommended, and used by agents as if the notes didn't exist."
---

* TOC
{:toc}

Consider this sample page: [Find Place (Legacy)](https://developers.google.com/maps/documentation/places/web-service/legacy/search-find-place). 

<figure><a href="https://developers.google.com/maps/documentation/places/web-service/legacy/search-find-place"><img style="border: 1px solid #dedede; max-width: 650px" src="{{site.media}}/page-level-notes-chunking.png" alt="Top-level page notes propagating to lower chunks" /></a><figcaption>Challenges in propagating top-level page notes to lower chunks</figcaption></figure>

This page alone has four important notes at the top, covering region availability, legacy status, server-side libraries, and field limitations. When the parser splits this page into chunks for MCP server ingestion, it splits by h2 and h3 headings into chunks of roughly 300 to 400 words. The first chunk gets those important notices, which is great. However, the later chunks are disconnected from the page-level notes.

As a result, when an agent queries the RAG for details on how to find places, the returned chunks might not carry that important information. For example, the search might return a chunk from the [Places section](https://developers.google.com/maps/documentation/places/web-service/legacy/search-find-place#Place), which says nothing about the API being legacy.

This problem is especially painful for deprecated or legacy APIs. LLM training data is already stale, and models already tend to recommend and use deprecated APIs. This is the problem Vercel was trying to solve, as I described in my previous post, [Achieving a feedback improvement loop with documentation by simulating user queries](/blog/improvement-feedback-loop-docs). But even if the LLM training data *is* current, agents might still struggle to avoid recommending deprecated APIs because the chunks returned in RAG searches don't carry the right metadata.

Ideally, you want your independent chunks to carry some metadata from the page that will indicate the legacy status. You could repeat the information manually in each chunk, such as carrying through the legacy notice strategically so that each section heading shows the same legacy note below it. 

However, this repetitive note becomes an eyesore for human readers. It might even backfire. The legacy note tells readers to use the "Places API (New)" instead, so repeating it in every section adds that phrase to every legacy chunk, and searches for the Places API (New) might then surface the legacy chunks more often.

Another solution could be to put this information into a product skill. In my experiments, the agent relies on the product skills first and only runs RAG searches via MCP when the product skill falls short. However, this means the right product skill has to be in context for the API. If the product skill doesn't trigger (perhaps because the frontmatter keywords don't align with the user's scenario), or if the agent loads the product skill but never reads it, this approach fails.

In other words, relying on the skill is fragile. In most application-building scenarios, users might incorporate 10+ APIs. Do we assume that a separate product skill loads for each API, and that agents diligently read each product skill before writing code? Hah!

{% include ads.html %}

## The broader strategy: Propagating page-level context into chunk metadata

Regardless of which chunking parser or retrieval pipeline you use, the larger strategy is to make sure top-level page context travels in the metadata attached to every chunk. If a chunk can be retrieved on its own, its metadata needs to carry the page-level caveats required to interpret that chunk safely.

When I asked about this problem in the Write the Docs Slack, this was the most consistent answer. If you control the parser or chunker, seed as much page-level metadata as you can (such as the version, product, and status from the page's frontmatter) into every child chunk. One person also adds breadcrumbs of the parent headings to each chunk. Another gives each chunk an index and file path and provides a separate endpoint for retrieving neighboring chunks, so an agent that gets one chunk can fetch the ones around it. That approach doesn't tell the agent that it needs the top-level notes in the first place, but combined with chunk metadata, it gets closer.

However, many of us don't control the chunker. Your docs might be ingested by several AI tools, each built by a different team with its own chunking strategy. And agents that fetch your public pages directly usually don't chunk them at all, so they face a related but different problem. (For research on how agents actually access web pages, see Dachary Carey's [Agent Web Fetch Spelunking](https://dacharycarey.com/2026/02/19/agent-web-fetch-spelunking/).)

## Check what metadata actually reaches the agent

Even when your pipeline attaches page metadata to chunks, it's worth checking what actually reaches the agent, because each retrieval surface might pass along different fields. Google's [Developer Knowledge API](https://developers.google.com/knowledge/api) is a good example. Its [`searchDocumentChunks`](https://developers.google.com/knowledge/reference/rest/v1/documents/searchDocumentChunks) REST endpoint returns each chunk with a [`document` object](https://developers.google.com/knowledge/reference/rest/v1/DocumentChunk) containing the page's basic metadata, including its `description`. 

In other words, a short notice in the page description would ride along with every chunk. However, the [`search_documents` tool](https://developers.google.com/knowledge/reference/mcp/tools_list/search_documents) in the Developer Knowledge MCP server returns only each chunk's `parent`, `id`, and `content`. An agent using the MCP server never sees the description, unless it notices `/legacy/` in the parent URI or fetches the full page.

Page descriptions also have limited room. They're usually kept to around 150–160 characters for search snippets, so a legacy warning has to compete with the page's other notices (the Find Place page has four), not to mention an actual summary of what the page does.

## Resulting strategy

If we want agents to stop recommending deprecated APIs or ignoring top-level boundary conditions, we have to treat page-level notices as first-class metadata in our chunking pipelines. This means doing the following:

1. Identify all the legacy pages on your documentation site.
2. Find out what metadata your ingestion pipeline attaches to each chunk, and which of those fields each retrieval surface (an API, an MCP tool, and so on) actually passes through to the agent.
3. Put a compressed version of the legacy notice into a field that travels with the chunks, such as the page's `description`.
4. Add "(Legacy)" to the page's h2 and h3 headings. Headings usually stay at the top of their chunks, so the status travels in the chunk text itself. This avoids repeating the full notice in every section, including the "use Places API (New) instead" message that could pull legacy chunks into searches for the new API.

For retrieval surfaces that strip metadata, like the MCP tool in the example above, the heading label is the main signal that survives. It's not a complete solution, but it's the best option I've found that doesn't clutter the page for human readers.

My larger point here is not to dive into the specifics of any one chunking parser or metadata system. Instead, it's to raise awareness that as technical writers, we need to develop a new perspective on our content, which is seeing as an agent sees. Does an agent see the top-level page status that's so visible to us when we look at the entire page?

When we put on agent goggles, that page status disappears, because the agent consumes individual chunks instead of pages. Unless a short version of the notice travels with each chunk, in its metadata or in its text, the agent may well keep using and recommending the legacy APIs.

## Testing

To take this one step further, we should run before-and-after tests to see how the updates play out. We might come up with 20 questions that involve legacy APIs and ask the agent to answer them before pushing the updates to the RAG storage.

After publishing the updates (and allowing time for ingestion), run the test again. Did the added metadata and heading labels have an impact? If your docs are exposed through more than one retrieval surface, such as an API and an MCP server, run the test through each one, since they might return different metadata. This is the sort of thinking and testing that we now do as technical writers.
