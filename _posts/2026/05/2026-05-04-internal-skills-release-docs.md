---
title: "Developing internal skills for recurring documentation processes like release notes"
permalink: /blog/internal-skills-release-docs
date: 2026-05-04
categories:
- technical-writing
- ai
keywords: ai skills, release notes, technical writing automation, repeatable processes, agent skills, documentation workflows, ai agents, singularity
rebrandly: https://idbwrtng.com/internal-skills-release-docs
description: "My hypothesis this year around AI was that if I develop some agent skills to speed up repeatable processes, it might clear up my bandwidth and free up time for me to work on non-repeatable doc tasks. <i>It appears to be working.</i>"
linkedin: https://www.linkedin.com/posts/tomjoht_technicalwriting-ai-documentation-share-7457078687893557248-n2xw
---

* TOC
{:toc}

## The recurring task of release docs

The primary repeatable tasks I do involve writing release docs. For several API products, every two weeks I do the following:

- Regenerate the reference docs
- Programmatically see what's changed (e.g, new methods, enums, descriptions)
- Write release notes mainly based on the changes
- Update API diagrams representing all elements in the APIs
- Update other docs that are affected by the changes
- Add new docs for any new features

The regular software releases (~every two weeks) define and regulate the rhythm of my documentation work. The releases are the main vehicle of change, and my job is to make the documentation keep pace with all the changes to the APIs. (Not everything is API-based, but most is.)

Even though I work in the automotive domain, there are a surprising number of changes to the APIs I document. (If you're wondering how APIs are used in car navigation systems, imagine APIs for everything you see in Google Maps plus much more. The hope is that someday, the car can have all the info it needs to navigate the roads autonomously.)

## Chasing down gremlins

This past week, I finally had a "no-gremlin" release for one of the products. By no-gremlin release, I mean there wasn't some issue that complicated the skills I'd developed for AI agents to write the release notes.

In previous weeks, there always seemed to be gremlins that got in the way. Sample gremlins might include migrated directories that broke scripts, deprecated APIs merged with other APIs, rollbacks at the last minute (often due to errors I find), errors in the source code with release tags, problems in the build system, and more. All of these issues required human intervention and workarounds. But I expect these gremlins will get fewer and fewer.

Honestly, though, one clean release after many previously problematic ones is a reminder that the real bottleneck often isn't the SKILL's quality &mdash; it's the upstream environment. No amount of skill-tuning can prevent a last-minute rollback or a broken build system. The SKILL handles the *predictable* parts of the process well; the unpredictable parts still need a human.

I have separate skills for each product's release. That means I have a separate SKILL file for products A, B, C, and D. Sadly, the release processes aren't uniform across teams and vary just enough that no common skill can be used across products for release notes. Each team seems to do things a bit differently. (Some have a roadmap, some don't; some follow 3 release stages, others just two, etc.) With each iteration through a release, I update the SKILL to get better and better. 

Usually, I'm not personally making the changes in the SKILL's content. Instead, I tell the agent what to write, change, or update in the SKILL. As long as the SKILL produces the output I want, I'm not too concerned with how it's written or formatted.

{% include ads.html %}

## Iterating toward reliability

In the beginning, I made a lot of updates to the skill files, but here's the great thing: with each iteration through the skill, the output gets measurably better. Early on, I might leave 15–20 comments on the agent's output for a single release. After a dozen iterations, that's down to maybe 3–5 comments, mostly edge cases. I'm constantly telling AI to make updates to the skill's steps and processes based on issues I'm seeing. For example, I might tell the agent to do the following:

- Let the human user know all the required inputs up front before beginning.
- Write the changelist description a certain way with some staged links.
- Follow a particular format for documentation summaries.
- Doublecheck the accuracy of the release notes by comparing the content against the file changes in the changelist.
- Check the source code's release stage tags against the yaml files that insert those same visibility conditions to make sure they match.
- Check the accuracy of the screenshots by launching a sub-agent and comparing the output against the original.

Also, different models have different capabilities, so when I switch models or tools, the new model/tool might need updates to the skill that previous agents didn't require.

## The senior-junior writer analogy

To use an analogy about my process, compare the scenario to a senior tech writer (TW) working next to a junior TW, where the senior TW mostly provides observation and feedback (in this analogy, the junior TW represents the AI agent). The junior TW creates some docs and presents them to the senior TW, who leaves comments explaining what needs to change. The junior TW takes notes about all the feedback in a journal. By the end of the process, the junior TW has three pages of notes.

After the process finishes, those notes aren't lost. They form the basis of the SKILL file. The next time the senior TW sits down with another junior TW (a different one, as the session changed), the new junior TW produces much better output thanks to the notes. With each iteration, the notes get more detailed &mdash; anticipating common errors, adding validation checks, laying a foundation so that each step doesn't build from faulty information. After a dozen iterations, the senior TW finds they have less and less feedback to give.

Eventually, the senior TW no longer needs to sit next to the junior TW in close observation. The junior TW proceeds autonomously through each step in the SKILL and just shows the final result. One key difference from real mentorship, though: the AI agent doesn't carry any memory between sessions. It reads the SKILL file cold each time. All the "learning" lives in the document, not in the agent. This makes the SKILL file itself the critical asset &mdash; if it's vague or incomplete, the agent's output regresses immediately.

## When AI starts designing for AI

The genius of this process is that the senior TW didn't have to roll up their sleeves and spend a ton of time writing skills docs; instead, the senior TW had the junior TW do it. When you get AI writing and refining processes that AI will later follow, you get a small taste of something much larger. In [*Life 3.0*](https://www.amazon.com/dp/1101970316), physicist Max Tegmark describes the idea of the singularity using the analogy of a continuously rising sea level:

> "As the sea level keeps rising [as AI keeps improving], it may one day reach a tipping point triggering dramatic change. This critical sea level [critical point in AI development] is the one corresponding to machines becoming able to perform AI design. Before this tipping point is reached, the sea-level rise is caused by *humans* improving machines; afterward, the rise can be driven by *machines* improving machines, potentially much faster than humans could have done, submerging all land. This is the fascinating and controversial idea of the *singularity* ...." (54)

To be clear, what I'm doing isn't even close to the singularity &mdash; I'm still the one directing every change to the SKILL. The human remains the designer; the AI is the scribe. But it does feel like a proto-version of Tegmark's idea: instead of writing all the process documentation myself, I'm telling the AI what went wrong and the AI makes the fix. The feedback loop tightens with each cycle. Even in this hybrid mode, AI is doing the heavy lifting in writing and editing the skills, and I suspect the balance will keep shifting.

## Dividends of efficiency

Coming back to my original hypothesis, if I can shorten the time required to perform repeatable processes, that increased efficiency will pay strong dividends over time (because this is a recurring process). Before skills were available, I used to generate reference docs for a Java API by proceeding through about 15 different steps on the command line. About two years ago, I created (with the help of AI) a script that would go through each of the 15 steps in one click. It was beautiful and brilliant. Instead of requiring 20 minutes of tedious human effort to regenerate those reference docs, it became a matter of configuring a few input values and then triggering a script. This saved a lot of time, since this is a recurring task rather than a one-off task.

Now the time savings is amplified even more through the addition of this skill, which not only runs the script to regenerate the reference docs but also writes release notes and updates other parts of the documentation. As for quality, the AI-generated release notes are pretty good. They occasionally require cleanup and adjustments (e.g., maybe they miss nuance about why a change matters to developers), but the structure, accuracy, and formatting are solid. The time savings more than make up for the review pass I still do.

The skill has cleared up my bandwidth to focus on other, less repeatable doc work &mdash; things like updating reference doc content, improving conceptual guides, and other work I'd been putting off for months. That's the real payoff: not just doing the same work faster, but finally getting to the work I wasn't doing at all.