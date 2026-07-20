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

One of the most compelling aspects of modular skills is that they can be shared, forked, and recombined. You don't have to build every skill from scratch. But forking raises practical and ethical questions: When should you fork versus customize? Can you copyright a skill? What if someone's skill is 90% brilliant but 10% wrong for your needs?

## Forking your own skills

The simplest form of forking is building a new skill from one you've already written. For example, I have a release notes skill for one product. When I needed a release notes skill for a different product, I didn't start from scratch — I told the agent to build a new skill roughly like the existing one but with modifications for the different product's process. This way I stood on the shoulders of a skill that already covered 60% of the functionality I needed.

The same applies outside of release notes. If you've built a thorough style-checking skill for one doc set, forking it for another doc set is far faster than starting from zero. You'll still need to customize — different doc sets have different style quirks, different templates, different publishing workflows — but the underlying structure carries over.

## Forking other people's skills

In addition to forking your own work, you can fork skills that other people have built. I haven't done this explicitly yet, but I see it happening implicitly all the time. All our code is stored in a giant monorepo, and I often see the agent searching the repo for other instances of some process or technique I'm asking it to do. The agent learns from these other skills and incorporates that understanding into the skill I'm building.

This is where the consistent `SKILL.md` format really shines. Because every skill uses the same file name and frontmatter structure, an agent can grep a massive repo for `SKILL.md` files and read just the `name` and `description` fields in each frontmatter block — without loading the full instructions. It's progressive discovery in action: the agent scans thousands of files, narrows down to the handful that match, and only then reads the full skill. You can find relevant skills across a huge codebase remarkably fast.

As more tech writers build skills, we can build off each other in more impressive ways. A tech writer who builds a great style skill could share it with others. I built a sentence case capitalization skill for some Android docs that tries to account for many grey areas around capitalization. I thought it would be simple to build, but in reality it proved challenging. (Open the Chicago Manual of Style and browse the many different sections around capitalization and you'll see why.) That kind of effort shouldn't have to be repeated by every writer from scratch.

## When to fork versus customize

Not every disagreement with a skill warrants a full fork. Suppose you find someone's style-checking skill that does a masterful job — but it enforces title case instead of sentence case, and it formats tables in Markdown instead of HTML. Do you fork it?

Consider a spectrum:

* **Minor preferences** (e.g., table format, capitalization convention): These are often easier to handle with a thin wrapper skill that runs the original skill and then applies your overrides. You don't need to maintain a full copy of their skill just to change two rules.
* **Structural disagreements** (e.g., the skill's entire approach to organizing output doesn't match your needs): This probably warrants a fork. You'll want your own copy to restructure without being tied to their updates.
* **Philosophical differences** (e.g., you disagree with the skill's core assumptions about what "good" looks like): Definitely fork. You're building something fundamentally different.

The key question is maintenance cost. A fork is a snapshot — you own it now, and any improvements the original author makes won't flow to your copy unless you manually merge them. For a skill you'll run twice a year, maybe that's fine. For a skill you rely on weekly, you might prefer to use the original and layer your preferences on top.

{% include ads.html %}

## Ethics, licensing, and copyright

Skills are text files — instructions written by humans (or by agents steered by humans). Can you copyright a skill? Can you copy someone's skill creator for your own use?

The short answer: **standard copyright and licensing rules apply.** Skills are creative works, and the same principles that govern open-source software apply here:

* **If a skill has no explicit license**, standard copyright applies. You can view it (especially if it's in a shared repo or on GitHub), but you don't have formal permission to copy, modify, or redistribute it.
* **If a skill has an explicit license** (MIT, Apache-2.0, etc.), you can fork it according to the terms of that license. Most permissive licenses require you to preserve attribution — keep the original author's name and copyright notice intact.
* **If a skill is in your company's monorepo**, your company's internal policies around code reuse likely apply. In most organizations, internal skills are implicitly shared for internal use, but check with your team.

The agentskills.io specification supports a `license` field in the `SKILL.md` frontmatter, and it's good practice to include a `LICENSE` file in the skill directory. If you're sharing a skill publicly (on GitHub, for example), adding an explicit license removes ambiguity for anyone who wants to build on your work.

As for substantial skills like skill creators — these are often proprietary tools with significant engineering behind them. Copying one wholesale (like ripping out an IDE's built-in skill creator for your own use) would likely violate the tool's terms of service, even if you can technically access the underlying files. The ethical line is the same as with any software: use, fork, and attribute according to the license.

In practice, within a company monorepo, the culture around skills is usually collaborative. People expect their skills to be discovered and adapted. But if you're forking someone's work, it's good practice to let them know — partly as a courtesy, and partly because they might have context about gotchas you'd otherwise discover the hard way.

## Mining patterns from existing skills

Beyond forking individual skills, there's a higher-order technique: mining patterns across many skills to identify common approaches.

Suppose you're working at a place with a monorepo, or maybe you're browsing GitHub for open-source skills. Ask your AI tool to identify 20 skills related to a particular task, such as release notes. Then from those results, ask the agent to identify common patterns across those skills. Based on those common patterns, ask your agent to create a general skill that follows those patterns, which users can then use as a starting point for customizing their own skill.

I did this with release notes skills at my organization. From 38 different release notes skills (mostly created by engineers), I identified 7 salient patterns. It was super interesting! Despite some common patterns, nearly everyone's release notes are different and have unique processes. Even so, most skills tackled ways to separate signal from noise in examining bugs and changelists across a spectrum of dates.

This kind of pattern mining is powerful because it surfaces the collective wisdom of your organization. No single person invented all 7 patterns — they emerged from dozens of people independently solving the same problem. By distilling those patterns into a general-purpose skill, you're creating something better than any individual could have built alone.

<hr/>

*Continue to the next topic: [Testing agent skills](/ai/skills-testing.html)*