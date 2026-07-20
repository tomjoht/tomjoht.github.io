---
title: "Skills"
permalink: ai/skills.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-17
redirect_from:
- /ai/skills-internal-external.html
---

{% include_relative draft_notice.html %}

## Why skills matter

At its simplest, a skill is a set of structured instructions — typically a `SKILL.md` file with supporting resources — that tells an AI agent how to perform a specific task. Skills follow an emerging open specification ([agentskills.io](https://agentskills.io/home)) and are supported by platforms like Gemini and Claude.

In a sense, skills are a programming language for LLMs. A skill "programs" (or encourages) an LLM to complete a particular task in a consistent way. The skill provides a major advantage for how we interact with AI, as it allows us to run programs against repeatable tasks, thereby automating the work. 

Programming an LLM to perform a task through a skill requires a lot of ... skill (lowercase). Yes, it takes a lot of skill to make a SKILL that attacks a problem successfully in an automated way. Not all of my skills are bulletproof wins for tackling the problems. Some skills work better than others, and most of my skills are developed through a series of iterations involving trial and error.

I acknowledge that "programming an LLM" is putting it optimistically, as skills aren't usually deterministic scripts. But I like to think of them this way, and keep refining the skill until it yields the consistent result that I want.

Overall, I'm persuaded that tech writers who can build successful skills to automate their tasks will be on their way to the 10x tech writer goal (if that's your aim). The best way tech writers can free up their time is by creating skills to attack those repeatable tasks (like release notes) since repeatable tasks keep chipping away at our productivity week after week. If you can fashion a skill that handles those recurring tasks, then you free up a recurring amount of bandwidth each week.

Additionally, most repeatable tasks fall into the category of mechanical toil that we want to automate with AI anyway. If we can automate the repeatable tasks, then we'll have more time to tackle the one-off complex tasks that don't fall into our laps weekly or biweekly.

{% include ads.html %}

## The vision: 100 tech-writer-specific skills

Consider this idea: A company has 100 tech-writer-specific skills that are highly adopted and used across the organization. This collection of skills, focusing on internal authoring skills, has skills for doing virtually anything related to tech writing that you can imagine — fixing a bug, applying a style edit, checking release notes for accuracy, fixing comments in proto styles, and more. The skills don’t do the job entirely themselves but rather act as power tools for the writers, accelerating and amplifying their work.

Not everyone uses all 100 of the tech writer skills. Instead, each tech writer adds the skills most relevant to their tasks in a skills.json file. Some have even created virtual agents that have these skills.

Is this 100 TW skills idea worthwhile? The merits of the 100 skills idea are questionable; there are many problems associated with it — skills are hard to share because tech writing processes are idiosyncratic, monolithic skills that try to do too much get rejected, and there's a fundamental trust problem when running someone else's skill on your content. And yet, I think the idea could be interesting. We would essentially be externalizing the skills of an entire profession in a way that could be used cross-organizationally, by any role. This is unsettling as it may lead to our irrelevance. But there's also a high possibility of amplification: by externalizing our skills, we build upon each others' strengths. Is it possible to construct skills in such a way that other writers, particularly those who didn't make the skills, find them useful?

In this series, I'll build out these ideas into a course on skills.

## Scope: internal vs. external skills

I've only worked with internal skills for authoring. There's a whole other side to building skills for *external* users. Some groups that do this often programmatically generate the skills from the docs. The skills are often snapshots of an API's capabilities rather than a task-oriented workflow skill like writing release notes. I'll have more to say about external skills at some point, but for now my focus is on internal skills.

However, it's worth noting here that external skills can have tremendous, measurable impact. Some of my colleagues are working on an eval toolchain, and they say that adding skills to the docs has boosted the AI's accuracy on evals by a noticeable margin.

In the articles that follow, I'll cover when to build a skill, how to structure one, where to store it, and how to design skills that are modular, testable, and shareable with others.
