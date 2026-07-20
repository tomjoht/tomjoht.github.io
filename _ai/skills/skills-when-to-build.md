---
title: "When to build a skill"
permalink: ai/skills-when-to-build.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-19
---

{% include_relative draft_notice.html %}

Before you get to the structure of the skill, the first step in building a skill is to identify repeatable tasks that are good candidates for skills. This sounds obvious, but it's the step where a lot of people get stuck. Many tech writers will say, "I don't really do that many repeatable tasks." And they might be right — or they might just not be seeing the patterns yet.

## How to spot repeatable tasks

The easiest way to find skill candidates is to track what you do for a couple of weeks. Keep a simple log of your tasks — even just a bullet list at the end of each day. After two weeks, look for anything you did more than once. Common patterns to watch for:

* Any task triggered by a recurring event (a biweekly release, a sprint, a monthly report)
* Any multi-step process where you follow the same sequence each time
* Any task where you find yourself thinking, "I did this exact thing last month"
* Any task where you re-explain the same instructions to your AI agent across multiple sessions

That last one is especially telling. If you keep giving the same prompt, with the same context, over and over — that's a skill waiting to happen.

## Examples of skills I've built

For me, the most common recurring task I do is release docs (for which I have four different skills for the various products I support), but there are some others too. Here are some recent skills I've built, with a brief description of what each does:

- **Wrapping lines** — reformats long lines in markdown files to a consistent line width
- **Posting lunch-and-learn videos** — takes a video URL and metadata, generates a blog post in the right format, and publishes it to a site
- **Publishing policy docs** — converts reviewed content from a Google Doc into properly formatted documentation pages using a template
- **Syncing reference content** — compares a reference doc against its source policy doc and flags where they've drifted apart
- **Converting to sentence case** — applies sentence case capitalization to headings while preserving proper nouns and acronyms
- **Configuring documentation generator** — sets up and runs a documentation generator tool against an API spec, resolving common configuration issues
- **Linking code elements to reference docs** — scans documentation for code references (classes, methods, fields) and adds hyperlinks to their reference documentation

{% include ads.html %}

## Don't overlook subtasks within unique tasks

If you find yourself thinking, *I don't actually do that many repeatable tasks,* this lack of repeatable tasks is actually a good thing. If all our tasks were repeatable, it would make our jobs highly susceptible to automation. If I were to put a ballpark number on how many tasks were in the scope of my repeatable tasks, I'd say only about 30-40% of what I do can be partly automated with an intelligent skill.

But here's the key insight: even tasks that aren't fully repeatable often contain repeatable *subtasks*. You might not write the same tutorial twice, but every tutorial you write probably involves verifying content accuracy, editing for style, checking links, and staging for review. Each of those subtasks is a skill candidate — even if the larger task around them is always unique.

This is where many people miss opportunities. They look at their work as a collection of one-off projects and conclude there's nothing to automate. But if you look at the *ingredients* within those projects, you'll often find plenty of recurring patterns.

## When NOT to build a skill

Not every repeatable task is worth automating with a skill. Building and maintaining a skill has a cost — even a simple skill takes time to write, test, and refine. A few signals that a skill might not be worth the investment:

* **Low frequency:** If you only do the task once a quarter and it takes 15 minutes, the skill might cost more time to build than it saves.
* **High variability:** If the task changes significantly each time, a rigid skill will fight you more than it helps. (Though a flexible, principle-based skill can handle some variability — see the article on design principles.)
* **One-off context:** If the task requires so much unique context each time that you'd spend as long setting up the skill as doing the task manually, it's probably not a good candidate.

The sweet spot is tasks that are frequent enough to justify the investment, consistent enough that a skill can reliably handle them, and complex enough that they take meaningful time.

## Why I focus on release docs

For me, I've focused most of my energy on skills for release documentation, as I have four different products with biweekly releases that consume a lot of my time. Releases are when change gets introduced into the documentation, so this is a ripe opportunity to apply processes to make sure the introduced change is properly handled.

In other words, the skill should make sure that all content across the documentation corpus is appropriately updated to harmonize with the incoming change. That might mean updating code samples, overviews, glossaries, conceptual pages, and more. This is why my release docs skills do much more than just publish release notes; they implement a whole process of handling change to the body of documentation.

<hr/>

*Continue to the next topic: [Skill structure and creation](/ai/skills-structure-creation.html)*
