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

Making content consumable by AI tools shifts the focus from developer experience (DX) to agent experience (AX). Developers increasingly use agentic coding tools such as Claude Code, Cursor, Windsurf, Replit, and Gemini CLI. These tools run in the terminal or in an IDE pane, acting as intermediaries between the user and the documentation.

Before building a product skill, it helps to understand how existing documentation infrastructure already serves agents. Agents reach content through several mechanisms, each addressing a different technical challenge. A product skill is only worth publishing if it solves a problem other layers leave open, so this topic outlines those existing layers first.

## MCP is the transport layer

The Model Context Protocol (MCP) connects agents to external systems, including documentation repositories. MCP has become the standard infrastructure for agentic retrieval.

Early implementations often suffered from eager loading. In an eager loading configuration, tool definitions from every connected server load into context at session startup. Connecting several servers can consume thousands of tokens before the user enters a prompt. Exposing a full documentation corpus this way causes token bloat, which increases latency and cost while degrading the model's reasoning.

Modern MCP implementations separate content storage from delivery to avoid this. Documentation servers provide search tools rather than full text dumps. Under this model, an agent submits a targeted query and retrieves only the relevant excerpts. Mintlify and Context7 both use this on-demand retrieval architecture across large library catalogs, and retrieval over MCP is now a standard method for factual API lookup. A product skill doesn't replace this transport layer; at most, a skill advises the agent on when and how to query it.

## Markdown and llms.txt solve format and navigation problems

Two more layers optimize how servers deliver documentation to agents: Markdown mirrors and navigation maps.

**Per-page Markdown mirrors** provide plain Markdown copies of documentation pages at dedicated URLs. For example, `/guide/authentication` might also resolve at `/guide/authentication.md`. Clean Markdown strips away navigation scripts and HTML styling, delivering identical technical content at a lower token cost. Many documentation platforms now generate these Markdown endpoints automatically.

**The `/llms.txt` file** serves as a structured index. The [llms.txt proposal](https://llmstxt.org/) defines a Markdown file that provides concise background information and links to detailed Markdown files. Some sites also provide a `/llms-full.txt` file that concatenates the entire documentation site into a single file.

A [2,400-run benchmark by Mintlify](https://www.mintlify.com/blog/llms-txt-agent-benchmark) evaluated four documentation delivery formats: HTML, plain Markdown, Markdown linking to `/llms.txt`, and Markdown with `/llms.txt` inlined. The findings showed several consistent patterns:

- Plain Markdown without a site map performed worse than HTML. Without an explicit list of pages, agents guessed URLs and hit 404 errors.
- Adding a link to `/llms.txt` reduced 404 errors to near zero across all tested models, at minimal token cost.
- Inlining the complete `/llms.txt` content eliminated 404 errors but consumed unnecessary input tokens.
- Concatenated files such as `/llms-full.txt` showed the same inefficiency as eager-loaded MCP, filling context with unused text.

Format and navigation, in other words, already have cheap solutions. The most effective approach combines clean Markdown endpoints with a compact index file, both of which involve configuration rather than original authoring.

## Too much context degrades performance

Supplying more documentation to a model doesn't necessarily improve the output. Past a moderate threshold, additional context reduces task performance, because irrelevant detail dilutes the prompt, introduces conflicting instructions, and distracts the model from the objective.

Benchmark research on agent skills confirms this pattern. Flooding an agent with an exhaustive skill catalog degrades coding accuracy, while selecting a small set of task-relevant instructions raises benchmark pass rates. [What the research says](/ai/product-skills-research.html) covers those numbers in detail. Curating the precise context an agent needs is known as [context engineering](https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models), and a product skill is one tool for managing it.

{% include ads.html %}

## What the existing layers don't solve

Existing retrieval tools let agents discover pages, fetch Markdown text efficiently, and query for specific parameters. What they don't provide is strategic judgment. Search tools return excerpts that match lexical or semantic keywords. When a user request could be served by two overlapping products, search retrieves excerpts from both. The agent then tends to pick one arbitrarily and proceed without weighing the trade-offs.

Each layer has a narrow function. The `/llms.txt` file handles site discovery, Markdown mirrors optimize text processing, and MCP servers handle factual retrieval. None of them decides which architectural pattern or which product a developer should choose.

Organizations generally try to close that gap in one of two ways:

1. **Publish a product skill.** Teams create standalone instruction files that direct agents toward the appropriate product.
2. **Improve the core documentation.** Teams publish explicit comparison guides and selection criteria in the documentation portal itself.

Human developers need the same comparative guidance that agents need, so documenting these product distinctions in the official documentation addresses both audiences at once. Documentation updates also reach every agent that fetches a URL, without requiring users to install a separate skill file. Before evaluating whether to write that guidance into core docs or into a product skill, the next three topics examine what a skill contains, what the benchmarks measure, and which operational problems persist.

<hr/>

*Continue to the next topic: [Anatomy and distribution of a product skill](/ai/product-skills-anatomy.html)*
