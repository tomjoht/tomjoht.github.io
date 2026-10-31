---
title: "Chunking your content for agent readability"
permalink: /blog/chunking-content-for-mcp-ingestion-agent-readability
date: 2026-10-31
categories:
- ai
keywords: chunking, agent readability, MCP servers, MCP ingestion, RAG, retrieval, Agent Search, Vertex AI Search, Document AI layout parser, layout-aware chunking, chunk size, tokens, ancestor headings, headings, long tables, code samples, image annotation, SVG, long procedures, tabbed content, embeddings, documentation design
rebrandly: https://idbwrtng.com/chunking-content-parsers
description: "This post continues my series on agent readability by looking at chunking. When docs are ingested into an MCP server or other retrieval system, a chunker splits each page into passages, and the agent often sees only those passages rather than the whole page. I walk through how ingestion works, how one chunker (Google's Agent Search) sizes chunks in tokens, and how headings, section length, long tables, long code samples, images, procedures, and tabs hold up when a page gets chunked."
linkedin: https://lnkd.in/p/gYM9vfea
---

* TOC
{:toc}

My last few posts have focused on agent readability ([Making documentation pages agent friendly](/blog/make-documentation-agent-friendly) and [Looking at a site like an agent](/blog/identify-semantics-in-styling-agents)), and this one continues the series with another aspect of agent readability: chunking. Before I jump into this, I have to pause and say how much I like the agent readability topic. It fits well within my interests and wheelhouse. I've always had an interest in websites and optimizing content. 

Throughout my career, whether it's been doing WordPress consulting, building my own site on Jekyll, or even back to my composition teaching days when I built an interactive website with Dreamweaver to teach writing, I've always loved the power and freedom that comes with being able to design and build your own site. 

Now I'm taking this enthusiasm to my documentation site at work and loving it. AI tools give you power tools to fix site issues across hundreds of pages, without needing the front-end design skills or deeper technical ability that was previously required.

## Two ways agents read your docs

There are at least two ways agents read your documentation site. The first is at run time, such as during a coding session. The agent searches the web or your site, picks a page, and fetches it with a web fetch tool. The fetch tool converts the HTML to Markdown (or retrieves your Markdown mirror, if the agent knows to ask for it), and the agent reads the whole page, at least up to its truncation limit. I covered this path in [Making documentation pages agent friendly](/blog/make-documentation-agent-friendly).

The second way is through an MCP server (or another retrieval system) that searches an index of your docs. In this case, the agent usually doesn't read your page as a whole page. Instead, it reads chunks, which are passages that a chunker split out of your page when the index was built. The rest of this post focuses on this second path, because chunking changes how you might think about headings, section length, and elements like tables and code samples.

## How docs get into an MCP server

The "MCP ingestion" step is easy to gloss over. [MCP](https://modelcontextprotocol.io/) itself doesn't ingest anything. It's a protocol that lets an agent call tools that a server exposes, such as a search tool. Behind that tool, there's typically an index of your docs that was built ahead of time. As such, the parsing and chunking happen when the index gets built or refreshed, not when the agent asks a question.

### Building the index

A typical ingestion pipeline works roughly like this:

1. **Crawl or import.** The pipeline pulls in your pages as HTML or Markdown.
2. **Parse.** A parser detects each page's structure, such as headings, paragraphs, lists, tables, and images.
3. **Chunk.** A chunker splits each page into passages that fit under a size limit.
4. **Embed and index.** Each chunk is converted into a vector embedding and stored in a searchable index. (Anthropic's [Contextual Retrieval](https://www.anthropic.com/news/contextual-retrieval) post explains this setup in more detail.)

### Answering a query

When an agent calls the search tool, the server returns the top-matching chunks, along with metadata such as the page title and URL. Some servers also let the agent fetch the full page when a chunk isn't enough. For example, the [Developer Knowledge MCP server](https://developers.google.com/knowledge/reference/mcp) for Google's developer docs returns chunks from its search tool and has a separate tool for retrieving full documents. In other words, the chunk is what the agent sees first, and sometimes the only thing it sees. If a chunk doesn't make sense on its own, the agent might not realize it needs to fetch more.

{% include ads.html %}

## How one chunker works: Agent Search

The specifics of chunking vary from one pipeline to another, so it's important to understand how your own pipeline splits content. As one public example, Google Cloud's [Agent Search](https://docs.cloud.google.com/generative-ai-app-builder/docs/parse-chunk-documents) (formerly Vertex AI Search) has a layout-aware chunking option. A few details from its docs are worth knowing:

- **Chunks follow layout.** The chunker uses the page's layout, such as headings and lists, to decide where chunks start and end.
- **Ancestor headings are off by default.** A setting can include the headings above a chunk inside the chunk itself, but you have to turn it on.
- **Only the layout parser detects headings.** The default parser treats everything as plain text blocks, so your heading structure only helps if the index uses the layout parser.

Other pipelines make their own choices. Google's separate [Document AI layout parser](https://docs.cloud.google.com/document-ai/docs/layout-parse-chunk) can add ancestor headings and table headers to chunks. If a team builds its own pipeline with an open-source library, such as LangChain's [Markdown header splitter](https://docs.langchain.com/oss/python/integrations/splitters/markdown_header_metadata_splitter), the team chooses which heading levels to split on. Which heading levels a chunker splits on is a design decision, not a standard.

### Chunk size is measured in tokens

In Agent Search, the chunk size limit is measured in tokens, with a default and maximum of 500. Google [estimates](https://ai.google.dev/gemini-api/docs/tokens) that 100 tokens is about 60 to 80 English words, so a 500-token chunk holds roughly 300 to 400 words of prose. Code, URLs, and tables tend to use more tokens per word, so sections heavy with those fit fewer words.

## What happens to long sections

Imagine a single article with no headings, just 1,000 words of content. That's roughly 1,300 to 1,700 tokens, so a 500-token chunker would split it into three or four chunks. A layout-aware chunker will probably split between paragraphs, while simpler fixed-size chunkers cut wherever the limit falls, even mid-sentence.

The second and third chunks lack the context of the first. The first chunk includes the heading and the sentences that set up the topic, while the later chunks start partway through the discussion. A sentence like "This setting overrides the default" doesn't say which setting or which default. (The Contextual Retrieval post gives a similar example -- a chunk from a financial filing that mentions revenue growth without naming the company or the time period.)

Chunks usually carry some metadata, but how much varies. In Agent Search, each chunk includes the page title and URL, and a search request can also ask for the neighboring chunks. Ancestor headings come along only if that setting is turned on. In other words, an agent might be reading your chunk with nothing more than the page title and URL to orient it.

## Guidelines for chunk-friendly docs

What does this tell you as a technical writer? The guidelines in this section apply to most pipelines, even though the specific numbers will vary.

### Keep sections under the chunk size

You definitely want to be using h2 and h3 headings in your content, and then keeping the content below each heading short enough to fit in one chunk. With a 500-token limit, that's roughly 300 words of prose, and less for sections heavy with code or tables. Leave some headroom in case the pipeline adds the page title and headings to each chunk. If your pipeline uses a different chunk size, the word count changes too, so find out your own pipeline's limit and keep your sections well under it.

### Make headings specific

Your headings should be specific. If you have general, vague headings like "Introduction" or "First steps" or "Known limitations," analyze whether the headings make sense on their own, or at least when paired with the page title and URL. A chunk that starts with "Known limitations" could belong to any page, while "Known limitations of offline caching" tells the agent what it's looking at. I'd err on the side of being more specific than less specific. 

### Use real heading tags

Additionally, look at the semantic structure of your heading levels. If you have pseudo headings, such as a `p` tag with CSS styling to make it look like a heading, that's a definite no-no. As I wrote in [Looking at a site like an agent](/blog/identify-semantics-in-styling-agents), styles get stripped out in the conversion to Markdown. As a result, your pseudo headings come through as plain paragraphs. Parsers such as Document AI's layout parser work the same way, since they rely on HTML tags rather than CSS to detect structure.

### Limit h4 to h6 headings

Even if your chunker doesn't split at h4, h5, and h6 levels, those headings will still appear inside the chunks as text. However, I'd recommend against using these deeper levels as much as possible. It's hard to visually distinguish anything beyond h4 in a document. By the time the reader gets to that h5, do they really have a mental map in their heads about the hierarchy of the other headings that led to that point? Most likely they jumped down to that point in your document and are starting there anyway.

There does seem to be a semantic question at this point. Suppose you legitimately have a document structure that has h4 and h5 levels. Wouldn't retaining these levels communicate semantics to the agent about the child hierarchy of the topics in relation to the parent topic? Do you sacrifice the grouping of these h4 and h5 sections inside of an h3 chunk to retain that info?

Consider what happens if the chunker splits only at h2 and h3. The h4 and h5 sections all get grouped under their h3 until the chunk fills up, and then the chunker starts a new chunk wherever the size limit falls. Unless ancestor headings are turned on, that new chunk doesn't carry the h3 heading, and it might start in the middle of an h4 section. Therefore, in my opinion, it might be better to simply use h3 levels and not get caught up in the section hierarchy as much. You can prioritize clean splits at those section levels rather than risk oddly split passages.

## Long tables

Long reference tables are one of the trickier elements to chunk. Suppose you have a parameters table with 40 rows that runs well past the chunk size. What happens to rows 25 through 40? Does the chunk that holds them still have the header row? Or does the agent get a block of pipe-delimited values with no column names?

The answer depends on the chunker, and most pipelines don't document it well. Google's Document AI parser can include table headers in its chunks. Agent Search's parsed-document format has a field for header rows, but its docs don't say whether a long table gets split or whether the header row is repeated when it does. If your chunker doesn't repeat the header row, a later chunk might look something like this:

```
| `retryCount` | integer | No | 3 | Number of retries before the request fails. |
| `timeoutMs` | integer | No | 30000 | Time to wait for a response. |
```

Which column is "No"? Is 3 a default, a maximum, or a minimum? An agent will probably guess, and it might guess right for a simple table. However, for tables with columns like "Supported in v1" or yes/no feature matrices, the guess could easily be wrong.

To reduce the risk, break long reference tables into smaller tables grouped under specific h3 headings, such as "Retry parameters" and "Authentication parameters." Each smaller table then gets its own header row and its own heading. For very long tables, another option is to give each item its own h3 section instead of a table row.

### The tradeoff with one big filterable table

Breaking up a long table has a cost for human readers, though. People like being able to filter one big table with a single keyword. The Google Maps Platform [Capabilities Explorer](https://developers.google.com/maps/documentation/capabilities-explorer) is a good example. Its [All capabilities](https://developers.google.com/maps/documentation/capabilities-explorer/all) page lists 345 capabilities in one filterable table, which is handy when you know your use case but not which category it belongs to. However, the Markdown version of that page runs about 111,000 characters, which is more than twice the 50,000-character threshold that the [Agent-Friendly Documentation Spec](https://agentdocsspec.com/spec/web/page-size/) uses for page size. And that's before you consider how the page gets chunked.

To address this, I added five category pages that split up the table: Maps (93 capabilities), Places (67), Routes (129), Environment (39), and Analytics (23). (These add up to more than 345 because a few capabilities appear in more than one category.) Each category page is under 50,000 characters. However, people who want to filter across every capability still want the long page, so I kept it and added a note at the top:

> Note: This page lists all 345 capabilities in one long table. AI agents and other tools that truncate long pages might not read the whole table. For shorter lists that you can read in full, see the category pages: Maps (93), Places (67), Routes (129), Environment (39), and Analytics (23).

This is where agent readability and human readability pull in different directions. Keeping both versions creates parallel experiences, which raises another question. How do you make sure the agent reads the category pages rather than getting stuck on the long page designed for humans? 

The note probably helps agents that fetch the page at run time, since it sits at the top, before any truncation point. It likely does less for chunked retrieval. In a chunked index, the note is just one chunk, and chunks of table rows from the long page can still come back in search results, duplicating the rows on the category pages. 

If you control the index, one option is to leave the long page out of it so that only the category pages get chunked. I'm honestly not sure yet whether any of this is enough, but the note is at least a low-cost first step.

## Long code samples

Long code samples present a similar problem with an extra twist. If you trim a code sample to keep it short, the agent often misses the context it needs to produce functional code, such as the imports, the client setup, or the error handling.

However, if you leave the sample long, the chunker might split it, and then neither half is functional. The first chunk might hold the imports and setup without the actual call, while the second chunk holds the call without anything that defines the client it uses. Some chunkers are designed never to split a code block, but you can't assume yours is one of them. The Agent Search docs, for example, don't say how its chunker handles a long code block.

A few approaches seem to help. First, keep each code block and the sentence that introduces it within one section, so the explanation and the code land in the same chunk. 

Second, break long samples into steps, with each step under its own specific heading and each snippet as complete as practical. 

Third, link to a full runnable sample, such as a file on GitHub, that the agent can fetch in full. The Developer Knowledge MCP server follows this pattern by telling the agent to fetch the full document when it needs exact code samples. In other words, chunks help the agent find the right sample, and the full page gives it the complete code.

## Images

Images are another element where chunking isn't obvious. Does an image get its own chunk? Is it converted to text? If so, how much of the chunk does that text use up?

In plain HTML-to-Markdown conversion, an image becomes a Markdown image link, so the agent gets the alt text and the URL at most. Some parsers go further. With image annotation turned on, Agent Search generates a text description of each image and assigns it to a chunk.

### How parsers describe images

The [Document AI quickstart](https://docs.cloud.google.com/document-ai/docs/layout-parse-quickstart) shows what this looks like. In its sample output, an illustration and the paragraph after it end up in the same chunk, with the generated description of the image placed before the paragraph text. In other words, the image didn't get its own chunk. Its description became text that shares a chunk with its neighbors. (That sample comes from a book page rather than an HTML page, though, and whether HTML images get described at all depends on the parser.)

These descriptions can be long. The description of that illustration, a simple line drawing, runs about 160 words. A description of a pipeline diagram on another Document AI page runs about 260 words, which could use most of a 500-token chunk on its own. Neither product says whether descriptions count against the chunk size or what happens when one exceeds it.

### SVG and other diagrams

What about SVG? Agent Search's list of supported image formats doesn't include SVG, so an SVG diagram probably doesn't get a generated description. Inline SVG might be dropped entirely or come through as a run of disconnected labels. (My own Markdown mirror worker strips inline SVG completely.) 

That doesn't mean you need to stop using SVG. Icons and decorative graphics don't carry information an agent needs, so losing them costs nothing. If an icon does carry meaning, such as a check mark that means "supported," that's the styling problem I covered in [Looking at a site like an agent](/blog/identify-semantics-in-styling-agents). The real concern is SVG diagrams whose labels and arrows carry information that isn't anywhere else on the page.

Given this uncertainty, it's safest not to rely on any image to carry information that isn't also in the text. Describe what the diagram or screenshot shows in the surrounding paragraph, and write meaningful alt text, which is good accessibility practice anyway. For a large diagram, consider adding a short list that spells out the components and how they connect.

## Long procedures

Long numbered procedures can get cut so that a chunk starts at step 8, without the prerequisites or the earlier steps. An agent that retrieves that chunk might not know what the steps accomplish or what has to happen first. Notes and warnings can also end up in a different chunk from the step they qualify, which matters when the warning says something like "back up your data before you run this command."

To reduce this risk, break long procedures into shorter ones, each under a specific heading that names its goal, such as "Create an API key" and "Restrict an API key." Also keep notes and warnings inside the step they apply to, rather than placing them after the list.

## Tabbed content

Tabbed content can cause similar problems. As I noted in [Making documentation pages agent friendly](/blog/make-documentation-agent-friendly), tabs serialize into one long sequence when a page is converted to Markdown. A section with tabs for five platforms can be five times longer than it looks on screen, which can push it well past the chunk size. Tab labels might also get lost in conversion, so a chunk might contain Android instructions without saying that they're for Android.

For tabs that hold short code snippets, this probably isn't a big issue. For tabs that hold entire tutorials, consider giving each platform its own page or its own section with a heading that names the platform.

## Checking chunks with an agent skill

As you're writing tech docs, there's little chance that you'll be able to remember section lengths and where page splitting might occur. To simplify this, I built an agent skill (at my work) that incorporates the chunking rules for our pipeline and simulates the chunked representation of the page (using a keyword I defined as "agent goggles"). When writers see their page as chunked, priorities about section headings and specificity become much more acute. 

Further, the skill will analyze content in a directory and optimize it for chunking. This might mean adding headings to split up long sections, converting pseudo headings into real heading levels, making sure your content doesn't skip heading levels, making headings and page titles more specific, and more. 

As I mentioned earlier, it's important to understand exactly how your chunker works for the ingestion into your MCP server -- what heading levels it splits on, how large each chunk is, how it handles tables, code, and images, and any other rules.

A simulation only approximates what the real chunker does, though. If you can, look at the actual chunks too. Agent Search, for example, has an API method that lists all the chunks it created for a document, so if you have access to the data store, you can see exactly how each page was split. Checking a long table, a long code sample, and a page with images is a quick way to see how your pipeline handles them.

Fortunately, optimizing chunking is a fairly easy task for an AI tool. I was able to scan hundreds of pages and make sweeping updates with very little need for extensive review and approval. Changes to the substance of your content, such as how a product works, usually need review from subject matter experts (SMEs). Changes to the technical structure, such as adding headings or replacing pseudo headings with real heading tags, don't change what the content says. As a result, these updates can usually skip SME review, which makes them much faster to roll out.
