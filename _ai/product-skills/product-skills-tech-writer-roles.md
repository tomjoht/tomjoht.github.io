---
title: "Roles for tech writers with product skills"
permalink: ai/product-skills-tech-writer-roles.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-09-27
order: 17
---

{% include_relative draft_notice.html %}

[The docs-first approach](/ai/product-skills-docs-first.html) addressed where comparative content should live. This topic focuses on operational ownership: who authors, tests, and maintains this guidance.

In enterprise documentation pipelines, context engineering involves several distinct stages that could each be assigned to different teams:

- Generating skills
- Deploying skills
- Authoring evaluation test cases
- Running tests and benchmarks
- Identifying failure points
- Updating skill files
- Updating core documentation

What role should technical writers play in this lifecycle? Which stages belong with writers, and which belong with engineering or developer relations? And how do teams balance these tasks against existing documentation backlogs?

## Getting involved in skill creation

It's tempting to delegate skill creation entirely to automated generators. However, the [SkillsBench study](https://arxiv.org/abs/2602.12670) found that models *"cannot reliably author the procedural knowledge they benefit from consuming"*, with self-generated skills offering no measurable benefit on average. As I explained in [What the research says](/ai/product-skills-research.html#self-generated-skills-versus-curated-skills), effectiveness depends on whether a human with domain expertise reviews and validates the instructions.

This argument becomes clearer in a docs-first framework. The cross-cutting guidance that agents require &mdash; such as determining which API to use under specific conditions &mdash; rarely exists in single-product documentation. An automated generator can't infer this guidance because the information is missing from the underlying source material. It typically resides with technical writers, support teams, and developer advocates who observe user friction across product boundaries.

From this perspective, the primary deliverable is the missing comparative documentation rather than a standalone skill file. Updating core documentation serves both human developers and agents directly. A skill file becomes necessary only when evaluations show that documentation alone fails to guide the agent.

## Why tech writers should own skills for the products they support

Technical writers are well positioned to guide product skills for several reasons. First, they won't fall prey to duplicating their documentation into a secondary artifact (a product skill) &mdash; at least not as easily, as this directly introduces risks for documentation drift. Good tech writers would first seek to single-source the product skill if asked. But a good tech writer would also instinctively choose to improve the documentation rather than creating a one-off skill artifact that lives outside the docs.

If the focus turns to improving docs rather than creating unique skill artifacts, as it should, then a tech writer is absolutely the right role to make the improvements. The reasons why hardly need enumerating:

- Tech writers understand product capabilities across a portfolio.
- Tech writers know where each capability is documented.
- Tech writers can evaluate whether test queries reflect realistic developer scenarios.
- Tech writers can determine whether an agent's answers align with official documentation.
- Tech writers recognize the seams between products, including recurring user confusion, misdirected support tickets, and workarounds created when APIs overlap.

A product skill isn't an exhaustive reference manual; it's concise, selective, and focused on boundaries, unintuitive gotchas, and high-level judgement. 

## Why they usually don't

Despite this alignment, technical writers don't always lead skill authoring efforts. Several factors contribute to this:

- Skill formats and directory structures are often unfamiliar to writing teams.
- Evaluation test formats and tooling are often viewed as software QA responsibilities.
- Teams often face pressure to generate large numbers of skills simultaneously.
- Writers may be unsure how to interpret low evaluation scores: whether the failure reflects poor documentation, an inaccurate test prompt, or model limitations.
- Existing documentation platforms rarely provide an obvious publishing location for skill files.
- Analytics systems track page views rather than agent requests, making it difficult for writers to see how automated tools interact with their docs.

Additionally, technical writers already manage demanding backlogs of documentation requests and bug fixes, making it difficult to absorb new testing workflows without dedicated bandwidth.

My thesis is that if tech writers lead product skill efforts, the attention shifts from the product skill to the documentation, which is where the bulk of the improvements can and should be made.

{% include ads.html %}

## Investment in the eval loop

Technical writer involvement is also critical for acting on evaluation results. When writers participate in testing, evaluation output directly informs documentation improvements. If an agent fails a benchmark task and the evaluation recommends clarifying specific product boundaries, a writer involved in the process can update the documentation immediately.

In contrast, when an external team sends automated pull requests generated by an evaluation suite, the proposed changes often lack context. Imagine if you're a tech writer and you receive a dozen proposed changes from an automated system. Without understanding the user query or test scenario that triggered the change, writers may find it difficult to evaluate the edit. Active participation in evaluation loops gives writers the context needed to review and refine proposed changes effectively.

## Roadmap for technical writers

Standard roadmaps often recommend publishing a skill for every supported product. However, creating a separate skill for each product produces siloed, overlapping libraries that mirror internal team structures. A more practical roadmap focuses on measurement and documentation first:

- **Identify where agent failures occur.** Establish an unassisted baseline using authentic user queries rather than artificial prompts.
- **Add missing systems-level content to the documentation.** Document product boundaries, architectural constraints, sequencing, and deprecations on overview pages.
- **Publish a skill only when a measurable gap remains.** If documentation updates resolve the failure, a standalone skill is unnecessary.
- **Build test cases from authentic user queries.** Sourcing evaluations from chat logs and support tickets produces more realistic benchmarks than using product feature lists.
- **Run evaluations regularly and track regressions.** Remove skills that no longer provide measurable improvement.

Central platform teams can assist by providing a meta-skill or scaffolding generator that standardizes formatting and linting rules. However, generators should be designed to encourage concise instructions and link back to canonical documentation, rather than incentivizing exhaustive feature inventories that reduce model accuracy.

<hr/>

*Continue to the next topic: [Mining users' AI chat sessions: gaps and forensics](/ai/product-skills-chat-analysis.html)*
