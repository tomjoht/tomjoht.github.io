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

The preceding topics highlighted a key challenge: while agents can discover pages, fetch Markdown text efficiently, and query for factual parameters, they struggle to select among overlapping products. The industry often responds by building standalone product skills. However, benchmark research shows that skills provide the smallest gains in software engineering, and the operational overhead of maintaining separate skill files creates drift and distribution challenges.

These factors support a docs-first approach. The comparative guidance an agent needs to select the right tool is information your documentation should already contain. Writing that guidance into official documentation reaches every agent and human developer without requiring an installation step. This topic outlines the arguments for this approach, describes what content to write, and examines the specific scenarios where a product skill remains useful.

## Why the docs are the better target

Four main arguments support the docs-first approach:

**Reach.** A product skill only helps users who have installed it, and [distribution](/ai/product-skills-anatomy.html) is currently fragmented across multiple disconnected channels. Core documentation, by contrast, reaches every agent that fetches a URL, across every platform and tool, without requiring an installation step. It also serves human developers directly, who are unlikely to install standalone skill files.

**Drift.** Copying technical details into a skill creates a second source of truth. As discussed in [Problems with product skills](/ai/product-skills-problems.html#a-second-source-of-truth), duplicated information inevitably drifts out of sync with official documentation as APIs evolve. Storing this knowledge directly in the documentation eliminates duplicate maintenance.

**The gap is a documentation gap.** Agents struggle to differentiate overlapping products primarily because documentation rarely provides direct comparisons. In many organizations, team boundaries discourage cross-product content, leaving the spaces between products undocumented. Human developers face this same problem. Resolving this gap in the documentation solves the issue for all readers rather than creating a private workaround for agents.

**Measured gains have been docs-side.** In benchmarks, infrastructural documentation improvements—such as adding `/llms.txt` and providing clean Markdown endpoints—substantially reduced agent 404 errors at negligible token cost. By contrast, [SkillsBench](https://arxiv.org/abs/2602.12670) measured only a +4.5 point gain for skills in software engineering. The most cost-effective interventions with the broadest reach involve improving how documentation is structured and served.

{% include ads.html %}

## Assume the model already knows your product

Before authoring new content, determine what the model actually lacks. Modern models already reflect public documentation, code repositories, and developer tutorials in their pretraining data.

To identify genuine gaps, test the baseline first: open a fresh session without a skill and ask the model to complete representative tasks, such as selecting a product for a specific scenario or drafting an integration. In many cases, the model's output is mostly correct, occasionally outdated, and confident throughout.

Everything the model already answers correctly is content you don't need to duplicate. The errors and hallucinations reveal your genuine documentation backlog, which is typically much narrower than an entire API reference.

## What to write into the product overview

The natural location for cross-cutting guidance is the overview or landing page for a product family. These pages are often light on technical decision criteria, making them suitable homes for systems-level architecture guidance.

Six types of information belong on this page, each addressing details a model can't derive on its own and retrieval can't assemble from disconnected pages:

**Disambiguation between overlapping products.** State plainly which product to choose under specific technical conditions. If multiple APIs address similar use cases, this comparison is often the most critical guidance on the site.

**Architectural and environmental constraints.** Pretrained models often default to generic patterns. If an API is restricted to server-side execution, state that boundary prominently so agents don't attempt to call it from browser environments.

**Composition and sequencing.** Explain which products are designed to work together, the order of operations, and how data flows between them.

**Deprecations and anti-patterns.** Training data contains legacy endpoints and obsolete authentication patterns. Explicitly identifying deprecated methods and naming modern replacements helps override outdated training priors.

**Constraints that can't be inferred.** Detail rate limits, quota behavior, regional availability, and compliance rules that don't appear in endpoint signatures.

**Precise vocabulary.** When a common term carries a specialized meaning in your system, define it explicitly.

Each of these elements serves human readers as well. A developer visiting your documentation portal for the first time needs the same comparisons, constraints, and warnings that an agent requires. A useful test is whether a section helps human developers: if an explanation would be useless to a human, it probably doesn't belong in documentation.

## Where to put it so retrieval finds it

Writing the content is essential, but retrieval mechanisms must also be able to find it. Because retrieval tools query excerpts based on specific keywords, a prompt like "build a mapping interface" may match individual product pages while missing a high-level comparison page. Three writing practices help ensure guidance surfaces during retrieval:

**Repeat boundaries on individual product pages.** In addition to providing a central comparison page, include concise boundary statements on each product's page specifying when to choose an alternative.

**State what a product isn't for.** Explicit statements, such as noting that an API is server-side only and pointing to a client SDK for web applications, ensure that retrieved snippets carry necessary architectural constraints.

**Use authentic user terminology.** Incorporate phrasing drawn from search logs and support tickets rather than relying solely on internal feature names. [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html) discusses this approach in detail.

These are standard technical writing practices that help both human readers and automated retrieval systems locate the right information at the point of decision.

## When a product skill still helps

While core documentation is usually the better target, two specific scenarios justify publishing a product skill:

**A skill can be a compressed mirror of the overview.** If you have updated documentation and empirical tests still show agents failing to select the right product, a concise skill restating key decision criteria can hedge against retrieval failures. To prevent drift, the skill should contain no unique information; it should function solely as a compressed mirror of the overview page.

**The content consists of non-prose logic.** This includes executable scripts for complex calculations (such as quota or pricing math) where models struggle with arithmetic, or harness-specific execution directives that don't belong in human-facing documentation.

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

Canonical docs: https://developers.acme.com/overview
Always confirm details against the docs. This file carries the
decisions, not the reference.

## Which product

| If the user needs... | Use | Not |
|---|---|---|
| A static map image | Embed API | Maps JS (heavier, needs a key per session) |
| An interactive map in a browser | Maps JS SDK | Routes API (server-side only) |
| Travel time between points | Routes API, server-side | Distance Matrix (deprecated 2025) |

## Constraints that break builds

- Routes API is server-side only. Calling it from browser code
  fails CORS. In a client-side app, proxy it or use Maps JS.
- Place IDs from Places v1 aren't valid in v2 endpoints.

## Do not use

- `acme.maps.legacy.*` (removed 2026-03)
- API keys in client-side code without referrer restrictions
```

The example omits endpoint references, parameter tables, and feature catalogs. It captures only the boundaries and constraints where models routinely make errors, and every rule reflects information published on the canonical documentation pages.

The recommended workflow follows a clear progression: write the comparative guidance into core documentation, place boundary statements where search and retrieval will find them, measure whether agents still make errors, and only then introduce a compressed routing skill if evaluations demonstrate a need.

## Open questions

A few practical questions remain open. It's still unclear how much retrieval accuracy can be improved through document structuring alone. While embedding boundary statements on product pages helps, certain query patterns may still fail to retrieve comparative overviews at the right moment.

Additionally, cross-product disambiguation across dozens of overlapping APIs represents a substantial authoring effort that often requires coordination across multiple product teams. The organizational effort required to align teams on cross-product boundaries can be significant.

Improving core documentation remains the more durable strategy: it's less expensive to maintain, reaches a broader audience, and serves both human developers and agents. A product skill should be introduced only when empirical evaluations show a remaining gap that documentation alone can't bridge.

The three topics that remain are about carrying that out. [Roles for tech writers](/ai/product-skills-tech-writer-roles.html) takes up who owns the work and why it usually lands nowhere, [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html) takes up how you find the failures worth fixing, and [Reimagining the documentation experience](/ai/product-skills-reimagining-docs.html) takes up the deliverables that become worth building once documentation is the primary artifact.

<hr/>

*Continue to the next topic: [Roles for tech writers with product skills](/ai/product-skills-tech-writer-roles.html)*
