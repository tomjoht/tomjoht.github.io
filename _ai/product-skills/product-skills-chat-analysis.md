---
title: "Mining users' AI chat sessions: gaps and forensics"
permalink: ai/product-skills-chat-analysis.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-08-02
order: 15
---

{% include_relative draft_notice.html %}

Beyond creating and testing product skills, tech writers have another emerging role: analyzing the conversations users have with AI on documentation portals. These sessions expose documentation gaps and errors with a level of detail we've never had before — if writers have access to the logs.

## Addressing gaps exposed by users' interactive AI sessions

Let's say a user comes to a documentation site, which has an interactive search or chat component to ask questions, powered by AI. Tech writers should have access to the logs of these anonymized sessions. These logs can indicate whether the user found answers to their questions, or whether questions went unanswered and chat sessions abandoned.

One caveat before mining these logs: they're user data. Even anonymized sessions can contain pasted code, internal URLs, or personally identifying details, so log access needs the same privacy governance as any analytics pipeline — retention limits, scrubbing, and clarity about what writers can and can't look at. Getting that governance right is part of making the case for access at all.

Tech writers who don't have these logs will be shooting in the dark in terms of identifying documentation issues and gaps. Tech writers can develop skills to look through logs and identify salient gaps, based on comparison with the user's query and existing documentation. From these logs, the skills can suggest the right additions to the documentation to strengthen it for the next interaction. (Note: Some documentation platforms provide built-in access to search and chat interaction logs.)

AI interfaces on documentation portals provide more info than we've ever had access to previously. Historically, search interfaces provided minimal amounts of information, often showing one or two keywords the user searched for, without much additional information or insight. Having access to entire chat threads provides a level of detail not previously available. It can be like replaying user observation sessions in a transcribed, transparent way.

Tech writers will devote much of their bandwidth to assessing whether the gaps should be plugged, or whether the gaps constitute fringe use cases not worth documenting because they might dilute the other documentation.

{% include ads.html %}

## Documentation forensics to identify causes for errors

Another key role that tech writers will play is to get involved in documentation forensics. Forensics refers to identifying the root cause of hallucinations in assertions made by AI tools. If the AI on the documentation portal provides incorrect information to the user, the tech writer should seek to uncover the reasons for the hallucination.

Uncovering the reasons for the hallucinations or incorrect info means examining the debug trajectories of AI tools to see where things might have gone astray. Was there incorrect information on the site? Was there a gap in information that the AI guessed about? Was the information scattered across many different pages and therefore hard to find?

Note that the errors from the AI can only be explored if tech writers have access to the AI interaction logs from users. This is why much of the tech writer's role and evolution will depend on the capabilities of the documentation platform itself. A documentation platform that doesn't provide any AI capabilities will limit the tech writer's abilities to play any forensic roles at all.

## Closing the loop with your skills

These log-mining and forensic roles also feed directly back into product skills. A gap or hallucination surfaced in the chat logs is a test case waiting to happen: add it to the skill's eval suite, fix the docs (or the skill's routing), and re-run the with-versus-without evals from the [problems topic](/ai/product-skills-problems.html) to confirm the fix actually helped. The logs tell you where the documentation fails real users; the eval loop tells you whether your fix worked. Together they turn skill maintenance from guesswork into something closer to test-driven writing.

<hr/>

*Continue to the next topic: [Reimagining the documentation experience](/ai/product-skills-reimagining-docs.html)*
