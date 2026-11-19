---
title: "Rediscovering the quick reference as a format for agents"
permalink: /blog/quick-reference-agent-intelligence
date: 2026-11-18
categories:
- ai
- api-doc
keywords: quick reference, quick reference guides, agent readability, product skills, agent skills, capabilities, RAG, retrieval, chunking, MCP, YAML, single sourcing, API documentation
rebrandly: https://idbwrtng.com/quick-reference-agent-intelligence
description: "I recently added quick reference pages to our API docs. Each page gives a stripped-down summary of an API: key facts, when to use it and when not to, setup details, common mistakes, and a list of capabilities that link to the guides. The pages are generated from the same product files that feed our product skills, which puts the skill content into the docs where retrieval can find it. In this post, I explain how the format came about, what's on the page, and why the format might suit agents."
published: false
---

* TOC
{:toc}

{% include ads.html %}

I recently added a new document format to our API docs, though it was a bit by mistake. The format is a quick reference page, and it lists a stripped down version of everything important about an API. Here's an example. This is the [Places (New) quick reference](https://developers.google.com/maps/documentation/places/web-service/quick-reference). Here's one for [Routes](https://developers.google.com/maps/documentation/routes/quick-reference) and [Maps JavaScript](https://developers.google.com/maps/documentation/javascript/quick-reference). There's a similar quick reference page for every product (50+) on the site, usually at `/quick-reference`.

If you've been following my blog for a long time, you may remember my previous celebration of [quick reference guides](/quickreferenceguides) &mdash; not just a gallery, but many posts extolling the form like this one: [Quick Reference Guides: The Poetry of Technical Writing](/2008/07/06/quick-reference-guides-the-poetry-of-technical-writing/). A quick reference guide is the only deliverable I've made that caused a PM to literally cry a tear of joy. However, in 2022 I listed quick reference guides among the [trends I had abandoned](/trends/trends-to-follow-or-forget-quick-reference-guides.html), because getting started tutorials fit developer docs better.

Now quick references might come back in a new light. I'll first describe what's on the page, and then I'll try to unpack (without too much detail) how this form found its resurrection in our Google Maps docs.

## What's in a quick reference

The quick reference is a short page that consists almost entirely of bulleted lists, with no code samples. The page has several sections:

- **Key facts:** The product name, alternate names, platform, launch stage, and regional availability.
- **When to use it:** A "use when" list and a "don't use when" list. The second list points to the product that fits better, such as the Places SDK for Android or the Maps JavaScript API.
- **Setup:** The service to enable, the authentication methods, the client library packages, and links to pricing, policies, and release notes.
- **Related products:** The legacy API that this product replaces and the APIs that developers commonly pair with it.
- **Common mistakes:** Each item has a problem, a fix, and a link. For example, one item covers missing field masks, and another covers autocomplete session tokens that are omitted or reused.
- **What you can do:** The list of capabilities, where each task links to the page or section that explains it.

Most of this information already exists somewhere in the docs. The quick reference gathers it onto one page and links out for the details. In other words, the page works more like a routing page than a tutorial.

## How the format came about

I stumbled onto this format almost by accident. A colleague created a list of capabilities (defined as the things the product allows you to do) for each product. He then used the information to power a [capabilities explorer](https://developers.google.com/maps/documentation/capabilities-explorer/all). The capabilities explorer lets you start with a task you're trying to do and identify which products let you achieve that capability. You could also filter by platform, such as iOS, Android, or web. 

All of that capability information was listed in a single JSON file, following a predefined structure. As products grew, the JSON file also grew, and eventually it became more than 13,000 lines. If you've ever tried to edit a massive JSON file, you know that it's cumbersome and prone to error, and it's hard to see the shape of the whole.

This capabilities file soon took on another purpose: as an input into our [product skills](https://developers.google.com/maps/ai/agent-skills). The product's list of capabilities fed into the product skill format quite well. After users load the Google Maps Platform entry skill, a subskill related to their prompt scenario gets downloaded, and that subskill contains the capabilities, which link to different parts of our docs. The skill contains other content too, not just capabilities, but those capabilities were a primary input.

This capabilities file was working fine except for a few problems. First, how do we let product managers easily edit the list of capabilities for their products? Editing that massive JSON file wasn't easy. We needed a better method. 

So we decided to break up the capabilities file into individual product YAML files. Each product (in this case, each API) received its own YAML file. The product files follow a defined JSON schema that includes capabilities as well as other information about the product, such as what you see in the quick reference. 

A script takes all the individual product files and reassembles them back into the massive capabilities file so that it can feed the product skills pipeline and capabilities explorer. That capabilities file becomes a downstream artifact, not the source of truth. The same product files also provide the data sources for the quick reference pages. In other words, the YAML files act as little databases of product information that other files can draw upon.

I also built a visual YAML editor that allows authors and PMs to more easily work with the YAML content. And I made a skill that helps writers work with the schema, validate the content, and do other tasks. There are some other pieces to the implementation (presubmits, validations, etc), but that's the gist of it. 

## Other purpose: product skills in docs

One of my goals wasn't just to simplify editing of the capabilities information, but also to surface the information that existed in product skills more broadly on our site. I've long felt that product skills should be derivative of documentation, not parallel to it.

In my observations of agents, agents seemed content to download the product skills and rarely made MCP calls to our RAG. Also, whether they viewed the files they downloaded was another question. At any rate, I wanted the agents to connect more directly to the documentation itself.

If product skills become the primary information source for agents, then product skills start to take on a life of their own, as they become the place where we add more and more information based on observed agent frictions. Before long, the skills information becomes a parallel, separate source from the docs.

## How agents navigate

The fact that agents can find the quick reference is interesting. As this is an experiment, the pages aren't yet linked in the sidebar or other files. Although they aren't human discoverable (apart from search), they are discoverable to agents. 

Agents discover the quick references through two means. First, the product skills explain to agents how to access, through MCP, our RAG server. The agents make calls to RAG using the [Developer Knowledge API](https://developers.google.com/knowledge/api). The API's endpoints return content either in chunks (for the `SearchDocumentChunks` endpoint) or as an answer (for the `AnswerQuery` endpoint).

The second way agents find the quick references is through the web, using two separate tools. I had assumed these were one tool, but they aren't. The first tool is web search. The agent writes a query, sends it to a search engine, and gets back a list of titles, URLs, and snippets. The agent can also scope the search to one domain, either with a `site:` operator in the query or with a domain filter that the search tool provides. The second tool is web fetch, which is closer to a `curl` download. The agent gives it one exact URL, and the tool downloads the page and converts the HTML to Markdown. Web fetch doesn't search for anything. It only retrieves a URL that the agent already has.

As such, the agent needs to get each URL from somewhere. It might come from a search result, a link on a page the agent already fetched, a URL that the user pasted into the prompt, or a guess based on a pattern or training data. The agent can't use a site's own search box. For an unlinked page like the quick reference, this means a search engine has to index the page first, or the agent has to guess the URL. It also means that links help more than I expected. When an agent fetches a page, it reads the links on that page and often fetches the next URL from among them. Adding links to the quick reference from overviews and guides would put the page in front of agents that are already reading the docs, and I'm working on adding those links now.

When I asked Claude how it looks up information on other sites, it showed me one of its own search queries: `Mintlify skill.md docs site auto-generated agents /.well-known/skills`. That query is a keyword string, not a question, and it looks a lot like the agent-formulated queries I describe in the next section for `searchDocumentChunks`. If agents write the same kind of query for a search engine as they do for our RAG, then the agent queries we see going to the RAG might also approximate the queries that agents send to web search. I haven't tested this, and a search engine ranks results differently than our RAG does. Still, it suggests that a test set built from agent-formulated queries could serve both retrieval paths.

In short, agents don't come through the front door of our sites; they don't expand hierarchies in the sidebar to make their way to our content. For fun, hide your sidebar and start navigating your site. That might give a better sense of how agents navigate. 

## Testing the pages against retrieval

Before and after launching the quick reference pages, I tried to capture some eval data to measure the impact. I did tests using both Developer Knowledge API endpoints. My first instinct was to use prompts the way a user would type them. However, the user's prompt isn't what reaches `searchDocumentChunks`. The agent reads the user's prompt, decides what it needs to know, and then formulates its own search query, which tends to be shorter and more keyword-like than the original prompt. 

As such, the test queries for `searchDocumentChunks` needed to emulate the query an agent formulates, not the prompt a user writes. For `answerQuery`, I used a more natural question, because that endpoint is designed to take such a question.

I also tested for coverage. In other words, I wanted at least one scenario for every product that has a quick reference, including the smaller products that a sample of common scenarios would probably skip.

The detailed results of the test would overwhelm this post. But the results were positive. There's a significant lift with the quick reference pages, which gives me confidence in this format.

I should acknowledge a tension here, though. Earlier I said that agents rarely made MCP calls to our RAG, so a lift in RAG results only helps the agents that make those calls. However, part of the reason agents don't call the RAG is that they already have the product skills, which give them much of what they need. What happens when an agent doesn't have the product skills? Would it search the RAG or the web more often, and could the quick reference take the skill's place?

## Why the format might suit agents

The quick reference format just might be a format highly suitable for agents. When an agent starts a task, it has to answer a few questions before it writes any code. Which product fits the task? Is there a newer version of the API than the one in its training data? What mistakes do developers commonly make with this API? Where's the guide that has the details? 

Regular docs answer these questions, but the answers are spread across overviews, migration guides, troubleshooting pages, and release notes. The quick reference puts the answers on one page, in sections that are each short enough to fit in a chunk.

A few details about the format probably matter more for retrieval than they appear to. For example, every heading repeats the product name, as in "Places API (New): common mistakes." The repetition looks redundant to a human reader. However, as I described in [Chunking your content for agent readability](/blog/chunking-content-for-mcp-ingestion-agent-readability), a chunk can arrive without the headings above it, so the section heading might be the only text that identifies which product the chunk describes.

The "don't use when" list is also something that regular docs rarely include. Product docs generally describe what a product does, and they don't often tell you to go use a different product. For an agent that is choosing between the web service, the Android SDK, the iOS SDK, and the JavaScript API, the "don't use when" list could be the most useful part of the page. Additionally, the common mistakes include the literal error names, such as `LegacyApiNotActivatedMapError`, so an agent that searches on an error message has something to match.

## Could a quick reference work as a product skill?

This question brings me to the real hope behind the format. Product skills only help the agents that have them installed. What about a coding agent that has never heard of our skills? What about an agent that has no MCP server connected and only has web search and a fetch tool? 

Those agents are probably the majority, and the product skill does nothing for them. The quick reference is a regular docs page at a predictable URL, so any agent that can fetch a web page can read it. In other words, the quick reference could deliver the content of a product skill to agents that never installed skills.

There are key differences still. A SKILL.md has frontmatter, including a description, that an agent reads following progressive disclosure. The quick reference might do the work of the skill body, but not the frontmatter.

The current format is also just a start. I'm still evolving the format. A quick reference should probably be written for an agent that arrives cold and knows nothing else about the site, and I'm adding to the pages with that reader in mind. For example, I'm adding API key information to the setup section, because every task starts there. And I'm adding notes about how to access markdown mirror pages.

## Conclusion

I think it's fitting that the quick reference has made a comeback. This format has always been one of my favorites, and I'm encouraged by the idea that agents might prefer it too. The old quick reference guides were constrained by a printed page or two, and the new ones are constrained by a chunk, but the editing work of deciding what to leave out is much the same.


