---
title: "Problems with product skills"
permalink: ai/product-skills-problems.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-09-27
order: 15
---

{% include_relative draft_notice.html %}

The previous topic, [What the research says about product skills](/ai/product-skills-research.html), covered what benchmark research reveals about skill effectiveness. Here I'll examine the operational and architectural problems that arise even when skill content is carefully written.

These challenges fall into two categories: content challenges (how skills are written and evaluated) and structural challenges (the overhead of maintaining a separate artifact). While the first two problems can be addressed through disciplined writing, the remaining four stem from publishing a separate file.

## Greedy descriptions

The first problem follows directly from how agents select skills. The `description` field in a skill's frontmatter is the only text an agent reads during startup. Because it determines whether a skill is loaded, authors face an incentive to write descriptions as broadly as possible to maximize trigger rates.

Consequently, descriptions often become overly broad. Authors accumulate every potential use case and synonym a user might type, attempting to ensure the skill triggers under every possible scenario.

Broad descriptions create two distinct failure modes. First, the skill triggers for tasks it can't meaningfully assist with, wasting tokens and introducing irrelevant instructions. Second, when an organization publishes multiple broad skills across a product line, the descriptions overlap. The agent then faces several applicable-sounding skills without a clear basis for choosing between them, reproducing the disambiguation problem at the metadata level.

To prevent this, descriptions should be written to exclude irrelevant tasks as clearly as they include appropriate ones. Specifying what a skill doesn't cover &mdash; and indicating which adjacent tool or skill handles that workflow &mdash; improves routing accuracy.

## Evaluation suites aren't user queries

While ablation testing measures whether a skill improves performance on a given test suite, eval-driven development carries a common blind spot for documentation teams.

Evaluation suites are typically written by the authors of the skill, who share the product team's mental model. Consequently, evaluation prompts tend to use official product terminology, cite features as they appear in internal documentation, and structure tasks according to product roadmaps. Under these conditions, the skill passes because both the skill and the test reflect the same internal perspective.

Real user queries rarely match that structure. Users often describe high-level goals rather than product features, use terminology from legacy versions, conflate distinct products into a single request, or operate under unstated environmental constraints (such as running in a browser rather than a server). Internal test suites written from feature specifications rarely anticipate these variations.

As a result, a skill can achieve high pass rates on an internal test suite while failing to help real users, simply because the tests didn't reflect authentic user behavior. An evaluation corpus drawn from artificial prompts can create false confidence.

To build meaningful evaluations, teams should source queries from real user interactions. Documentation search logs, support tickets, community forums, and unsuccessful chat queries provide authentic user language. While evaluation sets drawn from real queries are messier to score, they provide a more accurate measure of performance than prompts derived from feature lists. [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html) discusses how to extract this data.

{% include ads.html %}

## A second source of truth

Content challenges can be resolved through better test design and clearer writing. In contrast, structural challenges inherent to maintaining a separate artifact are harder to fix.

Any technical details included in a skill or its reference directory **duplicate** information already present in documentation. Over time, that duplicated content drifts. When an API update changes a parameter, alters an endpoint, or deprecates a method, the skill and the documentation risk contradicting each other. Agents might then act on outdated guidance depending on which source they consulted. Technical writers will recognize this as a classic single-sourcing problem.

This maintenance overhead is a compelling reason to keep skills concise. A skill that focuses primarily on routing &mdash; that is, on directing the agent to canonical documentation rather than restating API details &mdash; has a smaller surface area for drift. For larger product catalogs, keeping skills synchronized with documentation requires automated drift detection, as implemented in Elastic's [agent-skills repository](https://github.com/elastic/agent-skills).

## Distribution and discovery

There's currently no unified distribution channel for agent skills. While specification efforts such as [Agent Skills](https://agentskills.io/home) establish file structure conventions, delivery mechanisms remain fragmented. Vercel's [skills.sh](https://www.skills.sh/) registry, package managers like `npx skills`, Claude Code plugin repositories, Gemini CLI extensions, web chat zip uploads, and public GitHub repositories all coexist without shared infrastructure.

Because distribution is decentralized, authors can't publish to a single registry and reach all users. Similarly, users have no central location to discover available skills. Until distribution consolidates, organizations must support multiple packaging formats or accept that their skills will reach only a fraction of their target audience.

This fragmentation also affects internal workflow ownership, as discussed in [Roles for tech writers with product skills](/ai/product-skills-tech-writer-roles.html). Without an established publishing pipeline, teams often struggle to determine whether technical writers, developer advocates, or engineering teams should own skill releases.

## Trust and security

Product skills also introduce security and governance challenges. Unlike internal authoring skills, where the team building the skill assumes any operational risks, product skills execute in external user environments. A product skill provides instructions, and occasionally executable scripts, that run within someone else's agent.

This makes skills a potential attack surface. Compromised or poorly audited skills can misdirect agents, execute unwanted terminal commands, or expose sensitive project data. Even well-intentioned skills containing helper scripts ask users to run untrusted code locally.

Anthropic's [skills documentation](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) advises users to install skills only from trusted creators or official sources, and to audit third-party skills thoroughly. Many enterprise security policies block external skills entirely until provenance, code signing, and verification standards mature.

For documentation teams, this means product skills require the same governance as production code: version control, security reviews for executable scripts, and transparent ownership.

## Constantly shifting variables

Evaluating product skills is further complicated by shifting dependencies across the development stack. Documentation undergoes continuous updates as products evolve. Simultaneously, underlying model architectures, system prompts, and agent harnesses change on rapid release cycles. When an agent's performance shifts, it can be difficult to determine whether the change resulted from skill updates, documentation revisions, model updates, or harness modifications.

Harness behavior varies considerably. Benchmark evaluations in SkillsBench showed that identical skills yielded vastly different improvements depending on the harness used, with gains ranging from +4.1 points to +25.7 points. The same model produced varying results in different environments. Furthermore, some harnesses frequently ignored loaded skills entirely, acknowledging the instructions but generating code independently.

Because skill execution depends heavily on the harness, verifying a skill across tools like Claude Code, Cursor, Codex, and Gemini CLI requires maintaining a multi-harness evaluation matrix.

## Does a routing skill earn its keep?

If a product skill functions primarily as an index &mdash; that is, as a curated list of links pointing an agent to documentation pages &mdash; it's worth evaluating what unique value it provides. Documentation search tools exposed over MCP already retrieve relevant excerpts on demand. An `/llms.txt` file supplies a navigation map at low token cost. Against that baseline, an index-only skill risks duplicating navigation that other layers provide more efficiently.

A skill justifies its token cost when it supplies judgment that the model lacks and retrieval can't assemble at the point of decision. Routing is simply the delivery mechanism for that judgment, not the value itself. If a skill only provides routing links, it assumes navigation is the bottleneck, even though benchmark data suggests navigation can be addressed with static index files.

This leads to an essential question: if comparative judgment is the most valuable element, and that judgment benefits human readers as well, why place it in an external skill file rather than directly in the documentation? For most organizations, that content belongs in the documentation itself. And if the comparative judgement is available directly from the documentation itself, why do agents need a product skill that repeats the same judgement, in a more condensed, abbreviated form?

## Summary of the problems

To summarize:

* **Descriptions often claim too much scope.** Overly broad descriptions cause skills to trigger on irrelevant tasks and create conflicts with adjacent skills.
* **Internal evaluations don't mirror real user queries.** Tests created from product specifications reflect internal naming rather than the ambiguous phrasing used by real developers.
* **Skills introduce a second source of truth.** Restating API details in a skill creates content drift between the skill and core documentation.
* **Distribution remains fragmented.** Lack of a central package registry forces teams to maintain multiple distribution formats.
* **Skills present security risks.** Third-party skills execute instructions and scripts inside user environments, leading security-conscious organizations to restrict their use.
* **Underlying variables shift constantly.** Frequent updates to documentation, model capabilities, and agent harnesses complicate long-term evaluation.
* **Purely navigational skills duplicate existing tools.** Link catalogs inside skills offer little advantage over MCP search and `/llms.txt` files.

Drift, distribution fragmentation, security friction, harness variance, and selection issues are all consequences of maintaining a separate file rather than flaws in the technical knowledge itself. These issues largely disappear when the comparative guidance lives directly within the documentation that agents query, which is the focus of the [next topic](/ai/product-skills-docs-first.html).

<hr/>

*Continue to the next topic: [The docs-first approach](/ai/product-skills-docs-first.html)*
