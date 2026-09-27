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

The first chapter of this course focused on internal skills, the kind you build to automate your own authoring tasks, like editing Javadoc comments or generating release notes. But as I noted in the [scope discussion](/ai/skills.html#scope-internal-vs-external-skills), there's a whole other side to skills, the ones built for *external* users of your documentation. This chapter takes up that side.

A product skill is a small package of instructions that you publish alongside your documentation, aimed at the AI coding agents your users run. It tells an agent how to work with your product correctly.

Two things are worth saying up front, because both run against the grain of how the industry currently talks about this. First, your instincts as a tech writer will push you toward coverage that's thorough, complete, and detailed. With product skills, that backfires. A skill built that way overwhelms the model, sends it down rabbit holes it didn't need to go down, and consumes tokens without paying anything back. The benchmark numbers on that are in [What the research says](/ai/product-skills-research.html), and they were the finding I had the hardest time accepting.

Second, and this surprised me as I worked through the research, the product skill probably isn't where your leverage is at all. What the content agents need to work with your product correctly is content your documentation should already contain. Writing it into the docs reaches every agent on every platform, plus every human reader, rather than only the users who installed your skill file. In other words, this chapter ends up arguing for a docs-first approach, with the skill as a compressed mirror of that content rather than a separate artifact built for machines.

I should say plainly that I haven't shipped a product skill to external users myself, though I've been part of groups that have built and shipped product skills. My hands-on experience is with the internal authoring skills covered in the first chapter. What follows is my reading of the benchmark research plus a fair amount of reasoning about where documentation work has always been weakest, and I've tried to mark the uncertain parts rather than smooth them over.

## Why product skills exist

A large share of the traffic hitting developer documentation is no longer human. In June 2026, Cloudflare CEO Matthew Prince [shared Cloudflare Radar data](https://www.tomshardware.com/tech-industry/artificial-intelligence/bots-have-now-passed-human-traffic-online-cloudflare-boss-laments-says-agentic-traffic-wasnt-expected-to-eclipse-real-people-until-next-year) showing that automated systems generate 57.5% of HTTP requests to web content, passing human traffic at 42.5%. Narrowing to developer documentation portals, an April 2026 [Mintlify study](https://www.mintlify.com/blog/state-of-ai) analyzed 790 million requests and found 45.3% came from coding agents, close behind human browser requests at 45.8%. The same study found Claude Code and Cursor account for 95.6% of identified agent traffic.

Treat those percentages carefully. Both count *requests*, not readers, and agents are far more request-hungry than people. Prince's illustration is that a human shopping for a camera visits five websites while an agent doing the same task visits 5,000. The share of your *audience* that is agentic is much smaller than the share of your traffic. The shift is real, but the raw numbers overstate it.

The other thing worth keeping in mind is that agents aren't a separate readership with their own goals. Nearly all agentic traffic traces back to a human request. Someone asked for a feature, and the agent went looking on their behalf. Humans are like puppetmasters here, directing the agents with goals and tasks. So this isn't a new alien intelligence so much as a new intermediary standing between your documentation and the reader you always had.

{% include ads.html %}

## What the agent already knows

The more useful thing to understand about this reader is that it isn't a beginner. An agent arrives already knowing a great deal about your product, and probably more than you think, because your public documentation and everything written about it are already in the training data. Ask a model cold about your authentication flow and you'll usually get an answer that's mostly right, occasionally out of date, and confident throughout.

That changes the job considerably. You aren't filling an empty context so much as correcting an informed one at the specific points where it goes wrong. In other words, most of what you might be tempted to put in a product skill the agent can already supply for itself, and [the research](/ai/product-skills-research.html) shows what happens when you supply it anyway.

## What this chapter covers

The chapter runs in four movements. The first establishes the ground. [From developer experience to agent experience](/ai/product-skills-agent-experience.html) looks at how agents reach your content today, through MCP, retrieval, Markdown, and `/llms.txt`, and at which problem each layer solves. That matters because it establishes what's left unsolved, which turns out to be narrower than the enthusiasm around skills suggests.

The second movement examines the product skill on its own terms. [Anatomy and distribution](/ai/product-skills-anatomy.html) covers what the artifact contains and how it reaches users, [What the research says](/ai/product-skills-research.html) covers the benchmark evidence on whether skills help, and [Problems with product skills](/ai/product-skills-problems.html) covers what goes wrong even when the content is good.

The third movement draws the conclusion. [The docs-first approach](/ai/product-skills-docs-first.html) makes the case I think that evidence supports, along with the narrower situation where a skill still earns its place.

The last movement is about doing the work. [Roles for tech writers](/ai/product-skills-tech-writer-roles.html) covers who owns it, [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html) covers how you find out what's failing for real users, and [Reimagining the documentation experience](/ai/product-skills-reimagining-docs.html) covers what becomes possible once documentation is the primary artifact.

<hr/>

*Continue to the next topic: [From developer experience to agent experience](/ai/product-skills-agent-experience.html)*
