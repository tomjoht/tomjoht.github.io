---
title: "Forking and sharing skills"
permalink: ai/skills-forking-sharing.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-19
---

{% include_relative draft_notice.html %}

## Forking and building off existing skills

In addition to self-reflection loops for skills, you can also fork other people's skills and adapt them to your own use cases. This isn't something I've actually done before, but all our code is stored in a giant monorepo. I often see the agent searching the repo for other instances of some process or technique I'm asking it to do. The agent learns from these other skills and incorporates that same understanding into the skill I'm building. 

Although I haven't forked other people's skills yet, I have forked my own skills to build new skills. Each of my 4 release docs skills follows a different process, but for one of them, I told the agent to build a skill roughly like the other skill but with some modifications. This way I am standing on the shoulders of a skill that's already covering maybe 60% of the functionality I need in the new skill.

As more tech writers build skills, we can build off each other in more impressive ways. A tech writer who builds a style skill could share the skill with others. I built a sentence case capitalization skill for some Android docs that tries to account for many grey areas around capitalization. I thought the skill would be simple to build, but in reality it proved challenging. (Open the Chicago Manual of Style and browse the many different sections around capitalization and you'll see why.)

As Google has hundreds of tech writers, I hope to encourage a massive skill building endeavor. Skills to check for broken links, skills to make simple diagrams, skills to verify release notes, skills for developing project plans, and so on. Imagine if we generated a library of 100 tech-writer-specific skills that we could then share and leverage with each other. That would be epic and would likely send us to another level entirely.

{% include ads.html %}

## Using skills other people have made

One cool thing about skills is that due to the progressive discovery aspect (the AI only reads the frontmatter to decide if the skill is relevant), you can search large code bases and find skills relevant to you. You can then ask AI to summarize those skills. 

But you can take it a step further. Suppose you're working at a place with a monorepo, or maybe you're in open source and you're browsing GitHub for skills. Ask your AI tool (e.g., Gemini or Claude) to identify 20 skills related to a particular task, such as release notes. Then from those results, ask the agent to identify 10 common patterns in those skills. Based on those common patterns, ask your agent to create a general skill that follows those patterns, which users can then use as a starting point for customizing their own skill.

I did this with release notes skills at my organization. From 38 different release notes skills (mostly created by engineers), I identified 7 salient patterns. It was super interesting! Despite some common patterns, nearly everyone's release notes are different and have unique processes. Even so, most skills tackled ways to separate signal from noise in examining bugs and changelists across a spectrum of dates.
