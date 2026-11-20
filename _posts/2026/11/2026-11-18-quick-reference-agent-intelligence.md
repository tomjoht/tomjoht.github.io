---
title: "Rediscovering the quick reference for a new audience: agents"
permalink: /blog/quick-reference-agent-intelligence
date: 2026-11-18
categories:
- ai
- api-doc
keywords: quick reference, quick reference guides, agent readability, product skills, agent skills, capabilities, RAG, retrieval, chunking, MCP, YAML, single sourcing, API documentation, web search
rebrandly: https://idbwrtng.com/quick-reference-agent-intelligence
description: "I recently added quick reference pages to our API docs. Each page gives a stripped-down summary of an API: key product details, when to use it and when not to, setup details, common mistakes, and a list of capabilities that link to the guides. The pages are generated from the same product files that feed our product skills. In this post, I explain how the format came about, what's on the page, how agents find content, and why I think the format's main value for agents comes through RAG retrieval over MCP."
published: false
---

* TOC
{:toc}

I recently added a new document format to our API docs, though it was a bit by mistake. The format is a quick reference page, and it lists a stripped-down version of everything important about an API.

Here's an example. This is the [Places (New) quick reference](https://developers.google.com/maps/documentation/places/web-service/quick-reference). Here's one for [Routes](https://developers.google.com/maps/documentation/routes/quick-reference) and [Maps JavaScript](https://developers.google.com/maps/documentation/javascript/quick-reference). There's a similar quick reference page for every product (nearly 60 of these) on the site, usually at `/quick-reference`.

If you've been following my blog for a long time, you may remember my previous celebration of [quick reference guides](/quickreferenceguides) &mdash; not just a gallery, but many posts extolling the form like this one: [Quick Reference Guides: The Poetry of Technical Writing](/2008/07/06/quick-reference-guides-the-poetry-of-technical-writing/).

A quick reference guide is the only deliverable I've made that caused a PM to literally cry a tear of joy. However, in 2022 I listed quick reference guides among the [trends I had abandoned](/trends/trends-to-follow-or-forget-quick-reference-guides.html), because getting-started tutorials fit developer docs better.

Now quick references might come back in a new light. I'll first describe what's on the page and how the format came about. Then I'll explain how agents find content, and where I think the quick reference helps them.

## What's in a quick reference

The quick reference is a short page that consists almost entirely of bulleted lists, with no code samples. The page has several sections:

- **Key product details:** The product name, alternate names, platform, launch stage, and regional availability.
- **When to use it:** A "use when" list and a "don't use when" list. The second list points to the product that fits better, such as the Places SDK for Android or the Maps JavaScript API.
- **Setup:** The service to enable, the authentication methods, the client library packages, and links to pricing, policies, and release notes.
- **Related products:** The legacy API that this product replaces and the APIs that developers commonly pair with it.
- **Common mistakes:** Each item has a problem, a fix, and a link. For example, one item covers missing field masks, and another covers autocomplete session tokens that are omitted or reused.
- **What you can do:** The list of capabilities, where each task links to the page or section that explains it.

Most of this information already exists somewhere in the docs. The quick reference gathers it onto one page and links out for the details. In other words, the page works more like a routing page than a tutorial.

## Why the format might suit agents

When an agent starts a task, it has to answer a few questions before it writes any code. Which product fits the task? Is there a newer version of the API than the one in its training data? What mistakes do developers commonly make with this API? Where's the guide that has the details?

Regular docs answer these questions, but the answers are spread across overviews, migration guides, troubleshooting pages, and release notes. The quick reference puts the answers on one page, in sections that are each short enough to fit in a chunk.

A few details about the format probably matter more for retrieval than they appear to. For example, every heading repeats the product name, as in "Places API (New): common mistakes." The repetition looks redundant to a human reader. However, as I described in [Chunking your content for agent readability](/blog/chunking-content-for-mcp-ingestion-agent-readability), a chunk can arrive without the headings above it, so the section heading might be the only text that identifies which product the chunk describes.

The "don't use when" list is also something that regular docs rarely include. Product docs generally describe what a product does, and they don't often tell you to go use a different product. For an agent that is choosing between the web service, the Android SDK, the iOS SDK, and the JavaScript API, the "don't use when" list could be the most useful part of the page. Being explicit about negative boundaries might be one of those conventions we embrace when writing for agents.

Additionally, the common mistakes include the literal error names, such as `LegacyApiNotActivatedMapError`, so an agent that searches on an error message has something to match.

## How the format came about

I stumbled onto this format almost by accident. A colleague created a list of capabilities (defined as the things the product allows you to do) for each product. He then used the information to power a [capabilities explorer](https://developers.google.com/maps/documentation/capabilities-explorer/all). The capabilities explorer lets you start with a task you're trying to do and identify which products let you achieve that capability. You can also filter by platform, such as iOS, Android, or web.

All of that capability information was listed in a single JSON file, following a predefined structure. As products grew, the JSON file also grew, and eventually it became more than 15,000 lines. If you've ever tried to edit a massive JSON file, you know that it's cumbersome and prone to error, and it's hard to see the shape of the whole.

The capabilities information also became one of the sources for our [product skills](https://developers.google.com/maps/ai/agent-skills). After users load the Google Maps Platform entry skill, a subskill related to their prompt scenario gets downloaded, and that subskill lists the product's capabilities, which link to different parts of our docs.

## Challenges with the large JSON file

This capabilities file was working fine except for a few problems. First, how could we let product managers easily edit the list of capabilities for their products? Editing that massive JSON file wasn't easy. We needed a better method.

So we decided to break up the capabilities file into individual product YAML files. Each product (in this case, each API) received its own YAML file. The product files follow a defined JSON schema that includes capabilities as well as other information about the product, such as what you see in the quick reference.

A script takes all the individual product files and reassembles them back into the massive capabilities file so that it can keep serving the capabilities explorer and the other places that use it. That capabilities file becomes a downstream artifact, not the source of truth. The same product files also provide the data sources for the quick reference pages. In other words, the YAML files act as little databases of product information that other files can draw upon.

I also built a visual YAML editor that allows authors and PMs to more easily work with the YAML content. And I made a skill that helps writers work with the schema, validate the content, and do other tasks. There are some other pieces to the implementation (presubmits, validations, and so on), but that's the gist of it.

I'm not sure if editing YAML according to a schema will be something that less technical authors (like PMs) do, even with a visual editor and a skill. At least tech writers can work with this model.

## Docs as the source for product skills

One of my goals wasn't just to simplify editing of the capabilities information, but also to surface the information that existed in product skills more broadly on our site. We had some info in that capabilities file that didn't surface well in our docs, so I wanted to bring that out more visibly.

This goal is connected to a larger goal about information flows. I've long felt that product skills should be derivative of documentation, not parallel to it.

One risk is that product skills become the primary information source for agents. As everyone starts iterating rapidly on skill content to improve performance, the skills take on a life of their own. The product skills become the place where people add more and more information based on observed agent frictions, while the docs become neglected. Before long, the skills turn into a parallel, separate source from the docs.

In a better model, product skills pull from various parts of our documentation as clear inputs. When we want to update the product skill, we update the docs and then re-run a product skills generation pipeline that pulls from the docs. That way, the source of truth remains singular and we avoid forked, stale content.

The problem is that product skills are often a more compressed, stripped-down version of the information, which can be at odds with the detail and formatting in documentation written for humans.

## The value of product skills?

You might be asking: What exactly is the value of product skills, since agents can call a RAG server for the same information?

However, in my experience, once agents download a product skill, they seem to make fewer calls to RAG than I expected. The skill answers the routing questions up front, and the agent goes to retrieval mostly when the skill tells it to, such as before it writes non-trivial code. (Whether agents read all of the skill files they download is another question.)

As much as I might feel that product skills are a competitor to docs, agents seem to prefer product skills over docs. The skill files provide a low-token source of information in a format and structure the agent prefers. So I'm not by any means trying to diminish product skills, only to recommend that documentation feed product skills as a data source.

It's not clear what happens if you have a really thin skill &mdash; will the agent just assume that it has all the info it needs about your API, or will it try to supplement the missing information with calls to RAG?

{% include ads.html %}

## How agents find content

In doing this quick reference page experiment, I've thought a lot about another question: How do agents find my content? The quick reference pages are a new experiment, and they aren't yet linked in the sidebar or other files. They aren't human discoverable apart from search. I assumed they would still be discoverable to agents, and that's partly true. But the ways agents find content seem to be narrower than I thought.

There are two pathways by which agents could reach the quick reference content.

### Through retrieval (MCP)

When a product skill loads, it tells the agent which files to read and which tools to call, including how to reach our RAG server through MCP. The agents make calls to RAG using the [Developer Knowledge API](https://developers.google.com/knowledge/api). The API returns content either as chunks (the `searchDocumentChunks` endpoint) or as a generated answer (the `answerQuery` endpoint). Agents only take this path if they have the product skill or the MCP server installed.

### Through web search

Agents also have web tools. The first tool is web search. The agent writes a query and sends it to a search engine. What comes back depends on the agent tool. Some tools return a list of titles, URLs, and snippets. Others have a smaller model read the search results and write a short summary, and the agent reads only that summary. Either way, the agent gets a compressed version of the web, blended from several sites. Those sites can include third-party pages that repeat outdated information about your product.

The second tool agents have is web fetch, which is closer to a `curl` download. The agent gives it one exact URL, and the tool downloads the page and converts the HTML to Markdown. Web fetch doesn't search for anything. It only retrieves a URL that the agent already has. Even here, some tools don't hand the full page to the agent. They pass the page through a smaller model that extracts what the agent asked for.

What surprised me is that, in my experience, agents rarely follow up a search by fetching the pages behind it. The search summary often seems to be the answer. When agents do fetch pages, it's usually because a skill told them exactly which URL to fetch, or because the user pasted a URL into the prompt. Agents reading their way across a docs site, link by link, seems to be uncommon.

I've also noticed that agents tend to do most of their looking up at the start of a task, while they're planning. Once they've settled on an approach, they don't often go back to search again.

In short, agents don't come through the front door of our sites, and much of the time they may not come to the site at all. They read what a search tool says about the site, or what a skill or MCP server hands them. For an unlinked page like the quick reference, web search isn't a path I'd count on. RAG retrieval directed by a skill is the likelier path.

## Where the quick reference helps

Given how agents find content, RAG retrieval is where the quick reference can pay off. The design choices I described earlier (short sections, the product name in every heading, the explicit "don't use when" list) were made for this path, where a section arrives on its own as a chunk with nothing else from the site around it. The tests in the next section measure whether those choices made a difference.

## Testing the pages against retrieval

Before and after launching the quick reference pages, I tried to capture some eval data to measure the impact. I did tests using both Developer Knowledge API endpoints.

My first instinct was to use prompts the way a user would type them. However, the user's prompt isn't what reaches `searchDocumentChunks`. The agent reads the user's prompt, decides what it needs to know, and then formulates its own search query, which tends to be shorter and more keyword-like than the original prompt.

As such, the test queries for `searchDocumentChunks` needed to emulate the query an agent formulates, not the prompt a user writes. For `answerQuery`, I used a more natural question, because that endpoint is designed to take such a question.

When I asked Claude how it looks up information on other sites, it showed me one of its own search queries: `Mintlify skill.md docs site auto-generated agents /.well-known/skills`. That query is a keyword string, not a question, and it looks a lot like the agent-formulated queries for `searchDocumentChunks`.

I also tested for coverage. In other words, I wanted at least one scenario for every product that has a quick reference, including the smaller products that a sample of common scenarios would probably skip.

The detailed results of the test would overwhelm this post. But the results were positive. There was a clear lift with the quick reference pages, which gives me confidence in this format for retrieval.

I've come to realize that doing before-and-after tests like this is going to be key for establishing the value of docs. If I make major updates to docs, most people won't understand the value of the updates without some kind of measurement. They just become updates I've pushed. But if I can say that the update created such and such lift for these evals, it makes the impact much more quantifiable and valuable.

## Conclusion

I think it's fitting that the quick reference has made a comeback. This format has always been one of my favorites. Its value for agents comes from being a well-edited source that skills can draw from and that retrieval can return in clean chunks. The old quick reference guides were constrained by a printed page or two, and the new ones are constrained by a chunk, but the editing work of deciding what to leave out is much the same.

The current format is also just a start. Each section should make sense to an agent that retrieves it on its own, and I'm adding to the pages with that reader in mind. For example, I'm adding API key information to the setup section, because every task starts there.

The bigger lesson for me is that writing for agents isn't only about the page. It's also about the path the content takes to reach the agent. A page that never reaches an agent can't help it, no matter how well it's formatted. If you've found good ways to get your docs content into the paths agents use, I'd like to hear about them.
