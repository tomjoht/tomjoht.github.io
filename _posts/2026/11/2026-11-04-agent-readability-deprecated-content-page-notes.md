---
title: "Agent readability: Carrying over top-level page notes into independent chunks"
permalink: /blog/agent-readability-deprecated-content-page-notes
date: 2026-11-04
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/agent-readability-deprecated-content-page-notes
description: "Across my past articles on agent readability, none has attracted so much attention as <a href='/blog/chunking-content-for-mcp-ingestion-agent-readability'>Chunking your content for agent readability</a>. This is because chunking presents many challenges to tech comm that are difficult to solve. One acute issue I haven't yet explored is how to propagate top-level page notes, such as deprecation status, availability, release status, version numbers, etc., that are noted in a top-level banner in later chunks. Chunks that are disconnected from the page notes will likely be recommended and used by agents."
published: false
---

* TOC
{:toc}

{% include ads.html %}

Consider this sample page: [Find Place (Legacy)](https://developers.google.com/maps/documentation/places/web-service/legacy/search-find-place). 

<figure><a href="https://developers.google.com/maps/documentation/places/web-service/legacy/search-find-place"><img style="max-width: 650px" src="{{site.media}}/page-level-notes-chunking.png" alt="Top-level page notes propagating to lower chunks" /></a><figcaption>Challenges in propagating top-level page notes propagating to lower chunks</figcaption></figure>

This page alone has 4 important notes at the top indicating the following: region availability, legacy status, server-side libraries, and field limitations. When the parser splits up this page into chunks for MCP server ingestion, it splits by h2 and h3 headings into approximately 400-word chunks. For the first chunk, great, it gets those important notices. For the later chunks, the chunks will be disconnected from the top page-level notes. 

As a result, when an agent queries the RAG for details on how to find places, the chunks returned might not carry the same important information. For example, a chunk might return the [Places section](https://developers.google.com/maps/documentation/places/web-service/legacy/search-find-place#Place). 

This problem is especially painful for deprecated/legacy APIs. LLM training data is already stale and suffers from issues in recommending or using deprecated APIs. This is the problem Vercel was trying to solve, as I described in [Achieving a feedback improvement loop with documentation by simulating user queries](/blog/improvement-feedback-loop-docs). But even if the LLM training data is current, agents might still struggle to avoid recommended deprecated APIs because the chunks returned in RAG searches don't carry the right metadata.

Ideally, if chunks could carry metadata such as indicating deprecated status, that would be ideal. But in the layout parser I previously mentioned, [Gemini layout parser](https://docs.cloud.google.com/document-ai/docs/layout-parse-chunk), the only metadata storage with chunks is page title, url, and optionally ancester headings. 

You could repeat the information manually in each chunk, such as carrying through the legacy notice strategically so that each section heading shows the same legacy note below it. However, this repeatitive note becomes an eyesore for human readers. Further, there may even be a paradoxical effect. If the note repeats the emphasis to use the "Places API (New)," searches for the Places API (New) could surface these Legacy chunks more frequently!

Another solution could be to put this information into a product skill. In my experiments, the agent relies on the product skills first and only executes RAG searches via MCP when the product skill falls short. However, this means that the right product skill has to be in context for the API. If the product skill doesn't trigger (perhaps because the frontmatter keywords don't align with the user's scenario, or if the agent loads the product skill but then never reads it), then this approach fails. Assuming that the right product skills load for the user's scenario is wishful thinking. 

In most application building scenarios, users might incorporate 10+ APIs. Do we assume that a separate product skill for each API appropriately loads and that agents diligently read each product skill before writing code. Hah!

This is the challenge that chunking poses. 