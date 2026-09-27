---
title: "Mining users' AI chat sessions: gaps and forensics"
permalink: ai/product-skills-chat-analysis.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-09-27
order: 18
---

{% include_relative draft_notice.html %}

Beyond creating and testing product skills, tech writers have another emerging role, which is analyzing the conversations users have with AI on documentation portals. These sessions expose documentation gaps and errors with a level of detail we've never had before, provided writers have access to the logs.

This can read like an optional extra, a nice-to-have for teams with mature analytics. It's closer to a prerequisite. The reason is spelled out in [Evals are not user queries](/ai/product-skills-problems.html#evals-are-not-user-queries). A skill tested only against prompts its own authors invented will pass its evals while failing the traffic that reaches it. Chat logs are where the real queries live, which makes them the raw material for any eval suite worth trusting.

## Addressing gaps exposed by users' interactive AI sessions

Let's say a user comes to a documentation site, which has an interactive search or chat component to ask questions, powered by AI. Tech writers should have access to the logs of these anonymized sessions. These logs can indicate whether the user found answers to their questions, or whether questions went unanswered and chat sessions abandoned.

Tech writers who don't have access to these logs are shooting in the dark when it comes to identifying documentation issues and gaps. Tech writers can develop skills to look through logs and identify salient gaps, based on comparison with the user's query and existing documentation. From these logs, the skills can suggest the right additions to the documentation to strengthen it for the next interaction.

One caveat applies before you mine any of this. These logs are user data. Even anonymized sessions can contain pasted code, internal URLs, or personally identifying details, so log access needs the same privacy governance as any analytics pipeline: retention limits, scrubbing, and clarity about what writers can and can't look at. Getting that governance right is part of making the case for access at all.

Some documentation platforms provide this access out of the box. [Mintlify](https://www.mintlify.com) is one platform that surfaces these analytics to the team running the docs. You can see the user-facing half of this pattern at [claude.com/docs](https://claude.com/docs), where a box at the top of the page lets you ask the assistant a question about the documentation. On the other side of that box, tech writers can review the logs of those interactions and act on them. If you ask a question the assistant can't answer, that's a gap the writers can go close.

AI interfaces on documentation portals provide more info than we've ever had access to previously. Historically, search interfaces provided minimal amounts of information, often showing one or two keywords the user searched for, without much additional information or insight. Having access to entire chat threads provides a level of detail not previously available. It can be like replaying user observation sessions in a transcribed, transparent way.

Reading the logs is the easy half. Tech writers will devote much of their bandwidth to the harder judgment, which is assessing whether a given gap should be plugged at all, or whether it represents a fringe use case not worth documenting because covering it would dilute the rest of the documentation.

{% include ads.html %}

## Real queries don't look like your feature list

[Evals are not user queries](/ai/product-skills-problems.html#evals-are-not-user-queries) described the mismatch between how we phrase things and how users phrase them. The logs are where you see the size of that mismatch. Real questions are vaguer than any test prompt I'd write from a feature list, they name features by whatever they were called two versions ago, and they leave out the constraint that turns out to decide the answer. None of this shows up in a capability inventory, because product managers scope features and nobody scopes the thousand ways someone might ask for one.

That has a consequence worth stating plainly. When I draft eval prompts from a product's own documentation, the resulting test set inherits the product's vocabulary and the product's mental model, so a skill that passes it has proven only that it agrees with the people who wrote it. The logs are the only corpus that doesn't have that defect built in.

Two things follow for documentation work. The first is vocabulary. The terms in the logs belong in your docs and in your skill descriptions, because those are the words agents match against. The second is that the *shape* of real queries, which is vague, outcome-oriented, spanning products, and missing context, is itself evidence about what a product skill needs to do. A query that names no product at all is a routing problem. A query that blends two products is a disambiguation problem. Those are exactly the interventions described in [The docs-first approach](/ai/product-skills-docs-first.html), and the logs tell you which ones your users actually need.

## Documentation forensics to identify causes for errors

Another key role that tech writers will play is to get involved in documentation forensics. Forensics refers to identifying the root cause of hallucinations in assertions made by AI tools. If the AI on the documentation portal provides incorrect information to the user, the tech writer should seek to uncover the reasons for the hallucination.

Uncovering the reasons for the hallucinations or incorrect info means examining the debug trajectories of AI tools to see where things might have gone astray. Was there incorrect information on the site? Was there a gap in information that the AI guessed about? Was the information scattered across many different pages and therefore hard to find?

Note that the errors from the AI can only be explored if tech writers have access to the AI interaction logs from users. This is why much of the tech writer's role and evolution will depend on the capabilities of the documentation platform itself. A documentation platform that doesn't provide any AI capabilities will limit the tech writer's abilities to play any forensic roles at all.

## Closing the loop with your skills

These log-mining and forensic roles also feed directly back into product skills. A gap or hallucination surfaced in the chat logs is a test case waiting to happen. Add it to the skill's eval suite *in the user's own words*, fix the docs or the skill, and re-run the with-versus-without evals from the [problems topic](/ai/product-skills-problems.html) to confirm the fix actually helped. Preserving the original phrasing matters, because the moment you clean up a query into proper product terminology, you've deleted the thing that made it a useful test.

The logs tell you where the documentation fails real users; the eval loop tells you whether your fix worked. Together they turn skill maintenance from guesswork into something closer to test-driven writing. And if your organization doesn't give writers access to these logs, that's worth escalating as a blocker rather than accepting as a constraint, because without them you're left writing skills against imagined users and grading yourself on your own imagination.

<hr/>

*Continue to the next topic: [Reimagining the documentation experience](/ai/product-skills-reimagining-docs.html)*
