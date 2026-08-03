---
title: "Agent skills"
permalink: ai/skills.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-17
order: 1
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

## The vision: 100 tech-writer-specific skills {#100twskills}

Consider this idea: A company has 100 tech-writer-specific skills that are highly adopted and used across the organization. This collection of skills, focusing on internal authoring skills, has skills for doing virtually anything related to tech writing that you can imagine — fixing a bug, applying a style edit, checking release notes for accuracy, fixing comments in proto styles, and more. The skills don’t do the job entirely themselves but rather act as power tools for the writers, accelerating and amplifying their work.

Not everyone uses all 100 of the tech writer skills. Instead, each tech writer registers the skills most relevant to their tasks in their agent's configuration. Some have even created virtual agents that have these skills.

Is this 100 TW skills idea worthwhile? The merits of the 100 skills idea are questionable; there are many problems associated with it — skills are hard to share because tech writing processes are idiosyncratic, monolithic skills that try to do too much get rejected, and there's a fundamental trust problem when running someone else's skill on your content. And yet, I think the idea could be interesting. We would essentially be externalizing the skills of an entire profession in a way that could be used cross-organizationally, by any role. This is unsettling as it may lead to our irrelevance. But there's also a high possibility of amplification: by externalizing our skills, we build upon each others' strengths. Is it possible to construct skills in such a way that other writers, particularly those who didn't make the skills, find them useful?

In this series, I'll build out these ideas into a course on skills.

## Scope: internal vs. external skills

I've mostly worked with internal skills for authoring. There's a whole other side to building skills for *external* users. Some groups that do this often programmatically generate the skills from the docs. The skills are often snapshots of an API's capabilities rather than a task-oriented workflow skill like writing release notes. This course now covers that external side in its own chapter — [Product skills](/ai/product-skills.html) — but the topics in this first chapter focus on internal skills.

However, it's worth noting here that external skills can have tremendous, measurable impact. Some of my colleagues are working on an eval toolchain, and they say that adding skills to the docs has boosted the AI's accuracy on evals by a noticeable margin.

In the articles that follow, I'll cover when to build a skill, how to structure one, where to store it, and how to design skills that are modular, testable, and shareable with others.

## The course project: a Javadoc editing skill {#courseproject}

Reading about skills will only get you so far — you learn skill building by building one. So this course includes a hands-on project that threads through every topic: a skill called `edit-javadoc-comments` that edits the Javadoc comments in Java source files. The skill fixes tag syntax, corrects link formats, enforces Javadoc conventions, and tightens the language — all without touching the code itself.

Why this particular skill? A few reasons:

* **It's a real tech writer task.** If you work on Java or Android SDK documentation, editing source comments is a recurring request. Engineers write the comments; writers polish them.
* **The conventions are unfamiliar territory.** Most tech writers can edit prose in their sleep, but Javadoc has its own rules that trip people up: the first sentence must be a standalone summary fragment ("Returns the user name," not "This method returns the user name"), `@param` descriptions are lowercase phrases without periods, links use `{@link ClassName#methodName(ArgType)}` syntax, and unescaped angle brackets like `List<String>` break the build. A skill that encodes these rules is genuinely useful — and building it teaches you how to encode *any* specialized knowledge into a skill.
* **It's easy to test.** A handful of Java files with deliberately seeded comment problems gives you a complete, self-contained test environment. No live systems, no company-specific tooling.
* **It has a sharp constraint.** The skill must *never* change code — not a string literal, not an operator, nothing outside the comments. A grammar edit that accidentally "fixes" a typo inside a string literal is a real bug. This constraint makes the project a vivid lesson in blast radius, which comes up again in the testing topic.

Each topic in this course ends with an activity that advances the project. By the end, you'll have a modular, tested, hardened, licensed skill — plus an eval report proving what it does.

If Javadoc is new to you, I cover it in the [Native library APIs chapter](/learnapidoc/nativelibraryapis.html) of my API documentation course. The [Java crash course](/learnapidoc/nativelibraryapis_java_crash_course.html) and [Javadoc tags](/learnapidoc/nativelibraryapis_javadoc_tags.html) topics are the most relevant background reading.

## A note on how this course was written

This course is a collaboration between me and AI. In some places I wrote the initial drafts, ideas, and examples from my own experience, then used AI agents to help flesh out the content, fill in gaps, and improve clarity. Other times I directed the agent about what to write, or asked for help and elaboration. In those cases, I acted more like a backseat driver.

As a result of this collaboration, some sections are more mine, while others were substantially shaped by the agent. It would be a little ironic to write a course on agent skills without actually using one, right? (If this bothers you, at least I'm transparent here.)

## Activity: Set up your practice files and capture a baseline

Before building anything, set up the practice environment for the [course project](#courseproject) and capture a baseline of what your AI agent does *without* a skill. This baseline becomes important later — in the [testing topic](/ai/skills-testing.html), you'll measure your skill's improvement against it.

{: .note}
This activity (and every one that follows) assumes you have an agentic AI environment — an editor or CLI where an agent can read and write local files and run scripts. If you don't have that yet, or you're not sure, read [Getting set up: editor, models, and environment](/ai/skills-setup.html) first and run its smoke test. Then come back here.

One reassurance before you start: **you don't need to know Java.** You'll never write or even read the code — your agent does all the work in this course, and your job is to direct it and review what it reports back. Each activity is a handful of prompts, about five minutes total.

**1. Ask AI to generate the practice files.** Open your project folder (the one from the [setup topic](/ai/skills-setup.html) smoke test, or any new folder) and paste this prompt:

```
Generate five small Java files (40-60 lines each) for a fictional
coffee shop ordering system. I'm using these files to practice editing
Javadoc comments, so the code should be simple and plausible, but the
Javadoc comments must contain deliberately seeded problems. Do not fix
the problems — seed them exactly as described. At the top of each
file, add a regular // comment (not Javadoc) listing that file's
seeded problems, so I have an answer key.

1. CoffeeMaker.java — language problems in the Javadoc: first
   sentences that aren't summary fragments ("This method gets the brew
   temperature..."), passive voice, future tense ("will return"),
   wordiness, and at least one typo.

2. MenuService.java — Javadoc syntax problems: a broken link like
   {@link MenuService.getItems()} (correct form is {@link
   #getItems()}), an unescaped generic like List<String> in running
   text, a <code> tag where {@code} is conventional, and an @param
   description written as a capitalized full sentence ending in a
   period.

3. OrderUtils.java — completeness problems: a public method missing
   an @param tag for one of its parameters, a method with a return
   value but no @return tag, and a method that throws
   IllegalArgumentException with no @throws tag.

4. LegacyImporter.java — a curveball file: an Apache 2.0 license
   header comment with slightly awkward legal phrasing, a block of
   commented-out code, and an overridden method whose only Javadoc is
   {@inheritDoc}. Keep the actual Javadoc problems minor — the point
   of this file is what should NOT be edited.

5. Inventory.java — a trap file: the Javadoc is already correct and
   conventional, but the code contains a typo inside a string literal
   ("Recieved shipment") and a suspicious comparison (using == to
   compare strings). Nothing in this file should be changed by a
   comment-editing skill.
```

**2. Ask AI to double-check its work.** Say: *"Compare each file's answer-key comment against the problems actually seeded in the Javadoc, and regenerate any file that's too clean."* (Agents sometimes fix the very problems they were told to seed.)

**3. Capture the baseline.** In a *fresh* session (no skill, no extra context), say: *"Edit the comments in CoffeeMaker.java, MenuService.java, and OrderUtils.java to improve them. Save the edited copies to a folder called baseline."*

**4. Ask AI to grade the baseline.** Say: *"Compare the files in the baseline folder against the answer-key comments in the originals. Which seeded problems were missed? Was anything changed that shouldn't have been?"* Typically the no-skill agent fixes the grammar but misses the Javadoc conventions — it leaves broken `{@link}` syntax alone and turns `@param` fragments into full sentences. Hold onto this gap list: your skill will close these gaps, and in the [testing topic](/ai/skills-testing.html) you'll measure the improvement.

<hr/>

*Continue to the next topic: [Getting set up: editor, models, and environment](/ai/skills-setup.html)*
