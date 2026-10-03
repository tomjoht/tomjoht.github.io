---
title: "The docs-first approach"
permalink: ai/product-skills-docs-first.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-09-27
order: 16
---

{% include_relative draft_notice.html %}

The preceding topics highlighted a key challenge. Agents can discover pages, fetch Markdown text efficiently, and query for factual parameters, but they struggle to select the right strategy/path/implementation among overlapping products. The industry often responds by building standalone product skills. However, benchmark research shows that skills provide some of their smallest gains in software engineering, and a skill that restates correct documentation can still make an agent's output worse ([What the research says](/ai/product-skills-research.html#restating-the-docs-can-make-output-worse)). Additionally, the operational overhead of maintaining separate skill files creates drift and distribution challenges.

These factors support a docs-first approach. The comparative guidance an agent needs to select the right tool is information your documentation should already contain. Writing that guidance into official documentation reaches every agent and human developer without requiring an installation step. This topic outlines the arguments for this approach, describes what content to write, and examines the specific scenarios where a product skill remains useful.

## Why the docs are the better target

Four main arguments support the docs-first approach:

**Reach.** A product skill only helps users who have installed it, and [distribution](/ai/product-skills-anatomy.html) is currently fragmented across multiple disconnected channels. Core documentation, by contrast, reaches every agent that fetches a URL, across every platform and tool, without requiring an installation step. It also serves human developers directly, who are unlikely to install standalone skill files.

**Drift.** Copying technical details into a skill creates a second source of truth. As discussed in [Problems with product skills](/ai/product-skills-problems.html#a-second-source-of-truth), duplicated information inevitably drifts out of sync with official documentation as APIs evolve. Storing this knowledge directly in the documentation eliminates duplicate maintenance.

**The gap is a documentation gap.** Agents struggle to differentiate overlapping products primarily because documentation rarely provides direct comparisons. In many organizations, team boundaries discourage cross-product content, leaving the spaces between products undocumented. Human developers face this same problem. Resolving this gap in the documentation solves the issue for all readers rather than creating a private workaround for agents.

**Measured gains have been docs-side.** In [Mintlify's benchmark](https://www.mintlify.com/blog/llms-txt-agent-benchmark), linking Markdown pages to an `/llms.txt` index cut agent 404 errors to near zero at minimal token cost, and that change reaches every agent that fetches the site. Skills, by contrast, help least where models already know the domain. In the latest version of [SkillsBench](https://arxiv.org/abs/2602.12670), curated skills gained 11.6 points in software engineering, compared with 28.8 points in the natural sciences. The most cost-effective interventions with the broadest reach involve improving how documentation is structured and served.

{% include ads.html %}

## Test what the model already knows

Before authoring new content, determine what the model actually lacks. Modern models already reflect public documentation, code repositories, and developer tutorials in their pretraining data. However, how much a model knows depends on the product. A widely used API shows up in years of Stack Overflow answers and open-source code, while a new or niche product might barely appear at all. Training data also lags behind releases, so even a well-known product's latest version might be missing.

To identify the real gaps, test the baseline first. Open a fresh session without a skill and ask the model to complete representative tasks, such as selecting a product for a specific scenario or drafting an integration. In many cases, the model's output is mostly correct, occasionally outdated, and confident throughout.

[Dachary Carey](https://dacharycarey.com/2026/05/11/agent-skill-more-than-markdown/) proposes a more formal version of this test as the first gate in a skill lifecycle she designed at MongoDB. Anyone proposing a skill supplies the prompts the skill should help with, along with patterns that good output must include and bad output must avoid. Those prompts run through models from several families without the skill. If the output already passes, the proposal is rejected, and the prompts go into a regression suite for later. The gate also forces the proposer to name the failure the skill is supposed to fix, which is harder than it sounds.

The same test works for documentation. Everything the model already answers correctly is content you don't need to duplicate. The errors and hallucinations reveal your real documentation backlog, which is typically much narrower than an entire API reference.

## What to write into the product overview

The natural location for cross-cutting guidance is the overview or landing page for a product family. These pages are often light on technical decision criteria, making them suitable homes for systems-level architecture guidance.

Six types of information belong on this page, each addressing details a model can't derive on its own and retrieval can't assemble from disconnected pages:

**Disambiguation between overlapping products.** State plainly which product to choose under specific technical conditions. If multiple APIs address similar use cases, this comparison is often the most critical guidance on the site.

**Architectural and environmental constraints.** Pretrained models often default to generic patterns. If an API is restricted to server-side execution, state that boundary prominently so agents don't attempt to call it from browser environments.

**Composition and sequencing.** Explain which products are designed to work together, the order of operations, and how data flows between them.

**Versions, deprecations, and anti-patterns.** Training data contains legacy endpoints, obsolete authentication patterns, and old version numbers. Stating the current version of each SDK and API, identifying deprecated methods explicitly, and naming modern replacements help override outdated training priors.

**Constraints that can't be inferred.** Detail rate limits, quota behavior, regional availability, and compliance rules that don't appear in endpoint signatures.

**Precise vocabulary.** When a common term carries a specialized meaning in your system, define it explicitly.

Each of these elements serves human readers as well. A developer visiting your documentation portal for the first time needs the same comparisons, constraints, and warnings that an agent requires. A useful test is whether a section helps human developers: if an explanation would be useless to a human, it probably doesn't belong in documentation.

## Where to put it so retrieval finds it

Writing the content is essential, but retrieval mechanisms must also be able to find it. Because retrieval tools query excerpts based on specific keywords, a prompt like "build a mapping interface" might match individual product pages while missing a high-level comparison page. The following writing practices help ensure guidance surfaces during retrieval:

**Repeat boundaries on individual product pages.** In addition to providing a central comparison page, include concise boundary statements on each product's page specifying when to choose an alternative.

**State what a product isn't for.** Explicit statements, such as noting that an API is server-side only and pointing to a client SDK for web applications, ensure that retrieved snippets carry necessary architectural constraints.

**Put decision content near the top of the page.** Agents don't always see a whole page. Fetch tools truncate long pages, and the agent doesn't necessarily notice. In one of Carey's tests, a fetch tool cut off a 427,000-character MongoDB page at about 150,000 characters, so the agent saw roughly a third of it and carried on as if it had the whole thing ([Agent-friendly docs](https://dacharycarey.com/2026/02/18/agent-friendly-docs/)). Content inside tabs or dropdowns can also run together into one long stream when a page is converted to Markdown. Boundary statements and selection criteria belong early on the page and outside of tabs, where a truncated fetch still includes them.

**Use authentic user terminology.** Incorporate phrasing drawn from search logs and support tickets rather than relying solely on internal feature names. [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html) discusses this approach in detail.

These are standard technical writing practices that help both human readers and automated retrieval systems locate the right information at the point of decision. Whether agents can read the page at all is a separate question, which [Making docs accessible to agents](/ai/product-skills-agent-friendly-docs.html) takes up.

## When a product skill still helps

While core documentation is usually the better target, three specific scenarios justify publishing a product skill:

**Tests show agents still miss the guidance.** If you've updated the documentation and tests still show agents choosing the wrong product, one likely cause is that the agent never read the right page, and a short skill can hedge against that failure. It's tempting to make the skill a compressed copy of the overview, since everything in a copy traces back to a docs page. However, restating correct content doesn't guarantee that a skill helps. In Carey's tests, a skill generated from correct MongoDB documentation made the model's output worse (see [What the research says](/ai/product-skills-research.html#restating-the-docs-can-make-output-worse)). A more useful skill addresses the retrieval failure directly. It tells the agent which page to read before each decision, and it repeats only the few facts that break builds when the agent gets them wrong, such as a server-side-only restriction or the current SDK version. In other words, the docs still hold the details, and the skill makes sure the agent reads them at the right moment.

**The content consists of non-prose logic.** This includes executable scripts for complex calculations (such as quota or pricing math) where models struggle with arithmetic, or harness-specific execution directives that don't belong in human-facing documentation. Scripts don't run everywhere, though. In [cross-platform tests](https://agentskillimplementation.com/guidance/authoring/) of four agent tools, a bundled script ran in non-interactive sessions of Codex CLI and Antigravity CLI but was blocked by the permission system in Claude Code and Copilot CLI. Some companies don't let agents run scripts at all. As such, the skill should describe in prose what the script does and what to do when it can't run.

**The agent can't reach the documentation.** Some agents can't fetch web pages at all, such as agents in sandboxed integrations without network access, or background agents that don't have permission to fetch. A skill bundled with the integration might be the only guidance those agents receive. Even then, the skill's content should come from the documentation so that the two sources stay consistent.

This narrows the scope of product skills considerably. A skill serves as a focused supplement to comprehensive documentation rather than a parallel corpus maintained exclusively for machines.

### What that skill looks like

While published skills often inventory product features, a decision-oriented routing skill focuses on product selection and constraints, pointing to official documentation for reference details. The following example illustrates this structure:

```
---
name: acme-platform-routing
description: Decides which Acme API to use for a given task and flags
  the constraints that break common implementations. Use when a request
  could plausibly be served by more than one Acme product, or involves
  maps, geocoding, or place data in a browser or mobile app.
---

# Choosing an Acme API

This file carries the decisions, not the reference. Before writing
code for an Acme API, fetch its page below and work from that page
rather than from memory. For anything else, start at
https://developers.acme.com/overview.md.

## Which product

| If the user needs... | Use | Not |
|---|---|---|
| A static map image | Embed API | Maps JS (heavier, needs a key per session) |
| An interactive map in a browser | Maps JS SDK | Routes API (server-side only) |
| Travel time between points | Routes API, server-side | Distance Matrix (deprecated 2025) |

## Read before writing code

- Embed API: https://developers.acme.com/embed.md
- Maps JS SDK: https://developers.acme.com/maps-js.md
- Routes API: https://developers.acme.com/routes.md

## Current versions

Older versions are common in training data. Use these:

- Maps JS SDK: 4.x
- Routes API Python client: 3.x

## Constraints that break builds

- Routes API is server-side only. Calling it from browser code
  fails CORS. In a client-side app, proxy it or use Maps JS.
- Place IDs from Places v1 aren't valid in v2 endpoints.

## Do not use

- `acme.maps.legacy.*` (removed 2026-03)
- API keys in client-side code without referrer restrictions
```

The example omits endpoint references, parameter tables, and feature catalogs. It captures only the boundaries and constraints where models routinely make errors, and every rule reflects information published on the canonical documentation pages. The skill also names a specific page to fetch for each product, because a general reminder to check the docs is easy for an agent to skip, whereas an instruction tied to a specific decision gives it a clearer trigger. The list of current versions is the one place where the skill deliberately repeats reference facts. As described in [What the research says](/ai/product-skills-research.html#restating-the-docs-can-make-output-worse), a Stripe skill that taught versioning concepts without the matching facts led the model to invent plausible API calls, and a short reference listing current versions and error classes largely fixed the problem for the APIs it covered. Version numbers change with every release, though, so that list should be generated from the same source as the docs, or at least checked with each release.

The routing skill's shape lines up closely with what Anthropic now recommends for skills in general. In its [guidance on context engineering for Claude 5 generation models](https://claude.dev/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models/), Anthropic describes skills as lightweight guides that help the agent find information when it needs it, and it advises against overconstraining them except in highly important areas. The same post calls it a common myth that SKILL.md and CLAUDE.md files need to hold every practice you know of, on the theory that the agent wouldn't find it otherwise. Instead, it suggests splitting the content into a tree of files that load when they're needed. The post means files in a repository or a skill folder, but for a product skill, the published documentation can play the same role, with the skill naming the page to read at each decision. However, the post is written for people tuning their own Claude Code setup or building their own agents, and it ties the advice to newer models, noting that the stricter rules were needed for older ones. A product skill runs in whatever agent and model the user has, so the few constraints that break builds still belong in the skill as firm rules.

The recommended workflow follows a clear progression: write the comparative guidance into core documentation, place boundary statements where search and retrieval will find them, measure whether agents still make errors, and only then introduce a routing skill if evaluations demonstrate a need.

## Open questions

A few practical questions remain open, and the biggest is whether a skill does better than the same guidance in the documentation. Does a routing skill help when the overview page already contains the comparison? Does it help only when retrieval fails? Or does it add nothing, or even make results worse? The studies reviewed in [What the research says](/ai/product-skills-research.html#summary-of-benchmark-findings) can't answer these questions, because none of them reports a comparison between a skill and good documentation. 

A test that could answer them would run the same real user prompts under four conditions: no help, documentation available to fetch, the skill alone, and the skill plus documentation. If the documentation-only condition performs about as well as the skill, the documentation is the better investment, since it also serves human readers. If the skill adds something on top of good documentation, that difference is what the skill is worth.

It's also still unclear how much retrieval accuracy can be improved through document structuring alone. While embedding boundary statements on product pages helps, certain query patterns may still fail to retrieve comparative overviews at the right moment.

Additionally, cross-product disambiguation across dozens of overlapping APIs represents a substantial authoring effort that often requires coordination across multiple product teams. The organizational effort required to align teams on cross-product boundaries can be significant.

Improving core documentation remains the more durable strategy. It's less expensive to maintain, it reaches a broader audience, and it serves both human developers and agents. A product skill should be introduced only when empirical evaluations show a remaining gap that documentation alone can't bridge.

The five topics that remain are about carrying that out. [Making docs accessible to agents](/ai/product-skills-agent-friendly-docs.html) takes up whether agents can read your documentation at all, [Roles for tech writers](/ai/product-skills-tech-writer-roles.html) takes up who owns the work and why it usually lands nowhere, [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html) takes up how you find the failures worth fixing, [Making fixes from logs](/ai/product-skills-fixes-from-logs.html) takes up which failures to fix first and why they happened, and [Reimagining the documentation experience](/ai/product-skills-reimagining-docs.html) takes up the deliverables that become worth building once documentation is the primary artifact.

<hr/>

*Continue to the next topic: [Making docs accessible to agents](/ai/product-skills-agent-friendly-docs.html)*
