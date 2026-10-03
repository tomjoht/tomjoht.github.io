---
title: "Reimagining the documentation experience"
permalink: ai/product-skills-reimagining-docs.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-09-27
order: 21
---

{% include_relative draft_notice.html %}

Focusing on the docs-first approach highlights how little work a skill file does on its own. Documentation carries the technical weight, while a skill merely steers an agent toward appropriate resources. If the underlying documentation is fragmented or untested, a well-curated skill accomplishes little. As documentation acquires an agent audience, writers have an opportunity to rethink the deliverables they produce.

Many technical writers continue to produce traditional documentation deliverables, perhaps using AI tools to draft content more quickly. However, AI tooling also enables new types of documentation deliverables that were previously impractical to build and maintain manually. The following sections outline several deliverables that support both human developers and agent routing. Consider this a glimpse into what's possible if we reimagine documentation, in a way that could exceed previous quality levels and expectations.

## Cross-product comparisons

A critical deliverable for multi-product portfolios is a high-level comparison guide. When users visit documentation portals featuring dozens of distinct APIs or SDKs, they often find little explanation of when to choose one over another, or how products integrate. This gap usually stems from organizational silos, where writers document assigned products independently without addressing adjacent tools.

Using AI tools, writers can analyze extensive documentation sets, extract functional differences, and build clear comparison charts. For agent readers, cross-product comparisons address a critical failure mode: while a human developer who can't differentiate two products might pause to ask a colleague, an agent will arbitrarily select one product and generate hundreds of lines of code against it. Documenting these distinctions in the core portal provides the foundation that both agents and human developers need. This practice supports systems thinking applied to docs, which is a higher critical skill as it involves consuming and integrating content across wider contexts and product landscapes.

## API tree diagrams

Browsing API reference documentation can be tedious when information is scattered across nested pages or deep tables of parameter definitions.

API tree diagrams display all objects in an API at a glance, linking directly to detailed documentation pages. They serve as visual reference maps for human developers and provide structured hierarchies for agents, offering a comprehensive view of the API while providing entry points into specific elements.

Large API diagrams are difficult to create and maintain manually, but AI-assisted tooling makes them practical. I've explored this technique in [Task decomposition and complex tree diagrams](/ai/prompt-engineering-task-decomposition.html) and in a [worked tree diagram example](/blog/task-decomposition-tree-diagram-example) on my blog.

Since developing that workflow, I have made API diagrams a standard deliverable across the APIs I support. I maintain roughly 20 of them on my documentation site and update them with each release. Some diagrams contain over 350 hierarchical elements, which initially led to generation errors that were difficult to audit. I eventually developed complex Python scripts to automate their generation reliably.

These diagrams have noticeably improved documentation usability. Engineering partners and product managers rely on them regularly, and I use them myself to locate reference content quickly. Tree diagrams also serve as effective routing targets for product skills: rather than describing an API's full schema within a skill file, the skill can direct an agent to the diagram, providing a coherent structural map.

## Reference content editing

Another opportunity involves technical writer participation in API reference content. Technical writers often leave API reference documentation entirely to engineers, resulting in minimal code comments and sparse explanations. Technical writers can ensure that reference content aligns with conceptual topics, verify source code naming conventions, and clarify ambiguous parameter definitions.

Writers should play an active role in configuring and generating reference documentation ("shifting left" to influence the source code comments before they're published as reference documentation on your doc site). This process can be streamlined using internal authoring skills that automate repetitive styling tasks, such as the Javadoc editing skill featured in the [course project](/ai/skills.html#courseproject).

Generating reference documentation directly changes how writers interact with the source material. When engineers control documentation builds, writers can feel detached from the reference material, making it harder to propose edits to source code comments. Taking ownership of the build pipeline allows writers to maintain consistency across conceptual guides and reference topics.

{% include ads.html %}

## Automating release notes

Writers can also automate release note production. In fast-paced release cycles, active products ship updates weekly or biweekly. (Expect this release cadence to accelerate as engineers start coding with AI tools.) Each release requires writers to scan the entire documentation corpus (sometimes hundreds of pages) to identify which pages are affected by code changes. Performing these audits manually is time-consuming, but writers can build internal skills that scan repositories and highlight affected topics.

Writers can also inspect file diffs between release tags to identify code modifications directly, reducing reliance on meetings with developers. When you compare generated reference documentation between builds, the diffs highlight added parameters, changed types, deprecated methods, and more. You use these diffs to form the foundation of release notes. (I explain this workflow in [Using file diffs for better release notes in reference docs](/ai/prompt-engineering-release-notes-reference-docs.html).)

Tracking diffs systematically helps writers prevent documentation drift. Using AI tools to process diffs makes granular release tracking manageable across large documentation sets.

This approach links internal authoring skills with product skills: internal skills maintain accuracy and prevent drift in core documentation, while product skills guide external agents to that up-to-date content.

## Documentation testing

Another approach is implementing automated documentation testing. Documentation consists of technical assertions: that an API endpoint returns specific fields, that a parameter accepts given values, or that a tutorial produces a working application. Verifying these assertions systematically is known as docs as tests, a methodology detailed in Manny Silva's book [*Docs as Tests & AI: A Strategy for Self-Healing Technical Documentation*](https://www.amazon.com/Docs-Tests-Self-Healing-Technical-Documentation/dp/B0H181C5DQ).

Technical writers can use AI to build automated test scripts that validate documentation accuracy. These tests can execute code snippets regularly, identifying regressions in both the product and the documentation. This testing follows the same evaluation methodology used for agent skills, applied directly to the documentation corpus.

Writers can also configure test personas to evaluate documentation across different environments &mdash; such as testing code samples against different operating systems or API versions &mdash; providing automated quality assurance from multiple user perspectives.

## Wrapping up

Product skills are concise artifacts, typically much smaller than full API specifications. However, working with them connects technical writers to broader operational workflows, including evaluation benchmarks, chat log forensics, and automated testing.

If models already understand standard programming syntax and common API patterns, documenting basic mechanics isn't where technical writers provide the greatest value. Pretrained models can't know why an organization built overlapping APIs, which tool best fits a given project, or how to navigate boundaries between separate engineering teams. That contextual knowledge resides with people, and technical writers are uniquely situated to document it across a portfolio.

The immediate step for technical writers is straightforward: review the landing and overview pages for your supported products, and verify whether they clearly state which product to choose under specific conditions. Clarifying those boundaries in official documentation provides the greatest leverage for human readers and AI agents alike.

<hr/>

*This concludes the Product skills chapter. If you haven't worked through the first chapter on building your own [agent skills](/ai/skills.html), start there.*
