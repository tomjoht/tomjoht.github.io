---
title: "Product skills"
permalink: ai/product-skills.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-09-27
order: 11
---

{% include_relative draft_notice.html %}

The first chapter of this course focused on internal skills, which you build to automate your own authoring tasks such as editing Javadoc comments or generating release notes. As noted in the [scope discussion](/ai/skills.html#scope-internal-vs-external-skills), there's another side to skills: building skills for external users of your documentation. These types of skills are called "product skills."

A product skill is a small package of instructions published alongside documentation to guide the AI coding agents your users run. It tells an agent how to work with your product correctly.

As we explore product skills here, let me call out two warnings up front. First, a tech writer's instinct is often to provide thorough, complete, and detailed coverage. With product skills, that approach tends to backfire. An exhaustive skill can overwhelm the model, lead it down unnecessary paths, and consume tokens without improving the output. The benchmark data behind that finding is covered in [What the research says](/ai/product-skills-research.html).

Second, a product skill isn't where your leverage is. The content an agent needs to work with is likely within your documentation already. Writing the product skill's guidance directly into your docs reaches every agent on every platform, along with every human reader, rather than only the users who installed your skill file. In other words, this chapter argues for a docs-first approach, where the product skill serves as a compressed mirror of core content rather than a separate artifact built exclusively for machines.

Also, a bit of a disclaimer: I'm new to working with product skills. I've been part of groups that built and shipped them, but they still feel exploratory and are an area where no one really knows the best approach. Evaluative feedback from real users, based on chat logs, is slow and complex to unravel. What follows is my reading of the benchmark research, combined with observations about where technical documentation has traditionally been weakest (silos, lack of systems thinking, which agents need to steer through API choices). I've tried to mark the uncertain areas rather than smooth them over.

## Why product skills exist

Before we jump into product skills, let's set the scene a bit by defining the "audience." A large share of the traffic hitting developer documentation is no longer human. In June 2026, Cloudflare CEO Matthew Prince [shared Cloudflare Radar data](https://www.tomshardware.com/tech-industry/artificial-intelligence/bots-have-now-passed-human-traffic-online-cloudflare-boss-laments-says-agentic-traffic-wasnt-expected-to-eclipse-real-people-until-next-year) showing that automated systems generate 57.5% of HTTP requests to web content, passing human traffic at 42.5%. Narrowing to developer documentation portals, an April 2026 [Mintlify study](https://www.mintlify.com/blog/state-of-ai) analyzed 790 million requests and found 45.3% came from coding agents, close behind human browser requests at 45.8%. The same study found that Claude Code and Cursor account for 95.6% of identified agent traffic.

We can read those agent-heavy statistics with some nuance. Agents are far more request-hungry than people. Prince noted that a human shopping for a camera visits roughly five websites, whereas an agent performing the same task can visit 5,000. The share of your audience that is agentic is much smaller than the share of your traffic. The shift to agents as a primary audience is real, though, even if raw request numbers overstate it.

It also helps to remember that agents aren't a separate readership with independent goals. Nearly all agentic traffic traces back to a human request. A developer asks for a feature, and the agent searches the documentation on their behalf. Humans direct the agents with goals and tasks. The agent is an intermediary standing between your documentation and the reader you already had, rather than an entirely new kind of audience.

{% include ads.html %}

## What the agent already knows

What do we know about our new agent audience? We know that agents aren't beginners. Agents arrive already knowing a great deal about your product because your public documentation, tutorials, and code repositories are already part of their training data. If you ask a model about your authentication flow, you'll usually get an answer that's mostly correct, occasionally out of date, and confident throughout.

That changes the job of preparing documentation. You aren't filling an empty context so much as correcting an informed one at the specific points where it goes wrong. In other words, most of what you might be tempted to put in a product skill the agent can already supply for itself, and [the research](/ai/product-skills-research.html) shows what happens when you supply it anyway.

## What this chapter covers

The topics that follow fall into four groups. The first group establishes the foundation. [From developer experience to agent experience](/ai/product-skills-agent-experience.html) looks at how agents reach your content today through MCP, retrieval, Markdown, and `/llms.txt`, and examines which problems each layer solves. This overview clarifies what existing tools solve and highlights the specific gaps that remain.

The second group examines the product skill on its own terms. [Anatomy and distribution](/ai/product-skills-anatomy.html) covers what the artifact contains and how it reaches users, [What the research says](/ai/product-skills-research.html) reviews the benchmark evidence on whether skills help, and [Problems with product skills](/ai/product-skills-problems.html) covers what can go wrong even when the skill content is sound.

The third group presents the argument for a docs-first approach. [The docs-first approach](/ai/product-skills-docs-first.html) discusses why updating core documentation is usually more effective than building standalone skills, along with the specific situations where a skill is still useful. [Making docs accessible to agents](/ai/product-skills-agent-friendly-docs.html) then covers the delivery work that lets agents read that documentation in the first place.

The final group focuses on implementation. [Roles for tech writers](/ai/product-skills-tech-writer-roles.html) examines ownership, [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html) covers how to identify real failure points, and [Reimagining the documentation experience](/ai/product-skills-reimagining-docs.html) explores deliverables that become possible when documentation is treated as the primary interface.

<hr/>

*Continue to the next topic: [From developer experience to agent experience](/ai/product-skills-agent-experience.html)*
