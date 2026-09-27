---
title: "From developer experience to agent experience"
permalink: ai/product-skills-agent-experience.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-09-27
order: 12
---

{% include_relative draft_notice.html %}

As we look to make content consumable by agents, we shift from the developer experience (DX) to the agent experience (AX). Developers increasingly work through agentic coding tools such as Claude Code, Cursor, Windsurf, Replit, Lovable, Codex CLI, Antigravity, and Gemini CLI, usually in the terminal and in a side pane of their IDE. Those tools are what now stands between your documentation and your reader. I work this way myself most days, which is part of why the shift interests me.

Before deciding what a product skill should do, it helps to know what the rest of the stack already does. Agents reach your content through several mechanisms that developed separately and now operate together. Each one solves a specific problem, and a product skill is worth publishing only if it handles something the others leave unhandled. So what does each layer actually cover, and what's left over?

## MCP is the transport layer

The Model Context Protocol (MCP) is how agents connect to external systems, including your documentation. It is current infrastructure rather than a superseded experiment, and it sits underneath most of what follows.

What caused trouble early on wasn't the protocol. It was a particular pattern of using it called *eager loading*. In a typical setup, every connected server's tool definitions load into the agent's context when the session starts, whether the agent uses them or not. Connect a few servers and you've spent thousands of tokens before the first prompt. Documentation teams that exposed entire doc sets this way made it much worse, since the token bloat raised latency and cost while degrading reasoning, as models struggled to separate relevant instructions from noise.

The fix was not to abandon MCP. It was to stop conflating *storage* with *delivery*. In other words, keeping all your documentation available through a server is necessary, but handing all of it to the model at once is destructive.

Docs MCP servers built around a *search tool* never had this problem. The agent queries, and gets back only the chunks it asked for. That pattern works well and is widely deployed. Mintlify hosts a server per docs site, and tools like Context7 provide on-demand lookup across thousands of libraries. Retrieval over MCP is the standard way agents get factual answers about an API today, and a product skill does not replace it. The skill tells the agent when and why to query. MCP carries the query.

## Markdown and llms.txt solve the format and navigation problems

Two more layers sit alongside retrieval, both concerned with how content is served rather than how it is selected. Neither helps an agent decide what to do, but both make everything else cheaper and more reliable.

**Per-page Markdown mirrors** are plain Markdown copies of documentation pages, served at their own URLs. Usually you get one by adding `.md` to a page's address, so `/guide/authentication` also exists at `/guide/authentication.md`. Same content, no theme. The token argument is straightforward. HTML arrives wrapped in navigation, scripts, and styling that an agent pays for without benefiting from, while clean Markdown delivers the same content for a fraction of the cost. Most documentation platforms generate these automatically, so it's usually something you get rather than something you build.

**The `/llms.txt` file** is a map. The [llms.txt proposal](https://llmstxt.org/) describes a Markdown file that *"offers brief background information, guidance, and links to detailed markdown files."* The ecosystem then extended the convention, adding a companion `/llms-full.txt` that concatenates the entire documentation corpus.

Mintlify ran a [2,400-run benchmark](https://www.mintlify.com/blog/llms-txt-agent-benchmark) comparing four ways of serving the same docs: HTML, plain Markdown, Markdown linking to `/llms.txt`, and Markdown with `/llms.txt` inlined. The results sort these layers usefully.

- Plain Markdown with no map performed *worse* than HTML. Without knowing which pages existed, agents guessed at `.md` URLs and hit more 404s.
- Adding a single link to `/llms.txt` dropped agent 404s to near zero across every model tested, at almost no token cost.
- Inlining the full file fixed the same 404s but cost more tokens for the same benefit.
- The concatenated `/llms-full.txt` dump has the same flaw as eager-loaded MCP, feeding an entire corpus into a context window that can't use most of it.

Well, two things follow from this, and I'd underline both. Format and navigation are close to solved, and they're solved cheaply, by a static file and an extension on a URL. In other words, the winning combination is always *clean content plus a small map*, and never *more content*.

## Too much context makes it worse

That last point generalizes into the constraint that shapes everything in this chapter. More information does not reliably produce better results, and past a fairly low threshold it produces worse ones. It's the equivalent of giving a plumber who shows up at your door a 1,000-page textbook on hydrodynamics when what the plumber really needs is details about how to fix a leaky faucet. Giving too much information to an AI creates overwhelm, sends it down too many different directions, and paralyzes the analysis so that it's worse than operating without it. I find this counterintuitive every time I run into it, because more context feels like it should help.

This isn't only an observation about documentation dumps. The same effect shows up in the benchmark research on skills themselves, where flooding an agent's context with an exhaustive skill library degraded coding accuracy while selecting a small relevant subset raised pass rates. I cover those numbers in [What the research says](/ai/product-skills-research.html). For now, the discipline of deciding what context an agent actually needs is known as [context engineering](https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models), and a product skill is one instrument for practicing it.

{% include ads.html %}

## What none of these layers solve

Put the stack together and an agent working with your product can find your pages, fetch them cheaply, and query for facts on demand. What it still can't do is choose well. Retrieval returns what matches the query. So if a developer asks for something that two of your products could plausibly handle, a search index will surface chunks from both, because both are genuinely relevant. The comparison that would settle it, if it exists at all, sits on some third page the retrieval never pulled. The agent then picks one and proceeds with total confidence. I've watched this happen, and the output looks so fluent that the mistake is easy to miss.

Each layer handles a different piece, then. Finding content is handled by `/llms.txt`, parsing it by Markdown, and fetching facts by retrieval over MCP. What's left over is judgment about which approach to take in the first place, and that judgment is often the one thing nobody wrote down.

Two answers to that gap are available, and only one of them gets much attention. The industry's answer is the product skill, a small package of instructions published alongside your documentation that an agent loads when it decides the skill is relevant. It's what most teams are currently building, and it's the reason this chapter exists.

The second answer starts from noticing who else needs that judgment. A human developer choosing between your products needs the same comparison the agent needs, and if it isn't written down anywhere, that's a gap in your documentation before it's a gap in your agent experience. As such, writing it into the docs reaches every agent that fetches a URL, on any platform, rather than only the users who happened to install a file.

As the overview said, this chapter ends up arguing for the second answer as the default. That case depends on knowing what a skill actually is, how far one reaches, what the benchmark research says about whether skills help, and what goes wrong even when the content is good, so the next three topics cover that ground first.

<hr/>

*Continue to the next topic: [Anatomy and distribution of a product skill](/ai/product-skills-anatomy.html)*
