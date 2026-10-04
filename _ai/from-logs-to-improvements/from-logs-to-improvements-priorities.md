---
title: "Stage 3: Weigh product priorities"
permalink: ai/from-logs-to-improvements-priorities.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-03
order: 25
---

{% include_relative draft_notice.html %}

The third stage decides which patterns to fix. Stage 2 ranked the patterns by failed sessions, but frequency alone doesn't tell you what matters. Some frequent failures affect the scenarios the business depends on, and others affect scenarios that barely matter. This stage weighs each pattern against business priorities and picks a short list to fix.

This stage comes before the doc scan on purpose. Scanning the docs is the expensive part of the machine, so it should only run on patterns you've already decided are worth fixing.

| Input | Output | Human checkpoint |
|---|---|---|
| The ranked list of patterns, plus a list of high-value scenarios | The top three patterns to fix | Supply and maintain the high-value scenario list |

## Supply the business priorities

The machine can't judge business value on its own. Logs show what users asked, but not who they are or what they're worth to the business. So this stage needs an input from you, which is a short list of the scenarios that matter most. Build the list with your product managers, since they usually know which integrations, customers, and use cases drive revenue. Update it when priorities shift, such as after a launch.

With that list in hand, the AI can rate each pattern in the head of the ranking as high or low value, based on how closely it matches a listed scenario. Review the ratings, especially for patterns near the boundary.

## Sort patterns into four groups

Combine failed sessions and business value, and sort each pattern into one of four groups:

| Failed sessions | Business value | What to do |
|---|---|---|
| Many | High | Fix these first. |
| Few | High | Fix these next, since the users who hit them are worth the effort. |
| Many | Low | Make only cheap fixes, such as adding a synonym, a link, or a clarifying sentence. |
| Few | Low | Skip these. |

From the first group, pick the top three patterns. Three is enough to make progress in one cycle without spreading yourself thin. The "many failures, low value" group is the one to watch. These issues show up constantly, so they feel urgent. However, a full rewrite for a low-value scenario takes time away from scenarios that matter more.

## The Fire App Builder lesson

When I worked at Amazon, I wrote the documentation for Fire App Builder, a starter kit for building streaming media apps for Fire TV ([Amazon](https://developer.amazon.com/docs/fire-app-builder/overview.html)). After the first year, we realized that most of the developers using the kit were building apps that nobody cared about, like "Bob's vacation journey" or "Sue's journal." My rough guess is that about 90% of the kit's users fell into this group. Meanwhile, the apps that mattered on Fire TV were the big ones, such as Netflix and Hulu, which I'd guess account for 90% or even 99% of the app usage on the platform.

Fire App Builder has since reached the end of its standard support, and Amazon open-sourced the code on [GitHub](https://github.com/amzn/fire-app-builder). In my view, it died because it targeted the wrong audience. The same thing can happen with log analysis. If most of your failed sessions come from hobby projects, fixing them might raise your success rate without doing much for the business.

## Don't rely on the overall success rate

This is also a reason to be careful with the overall success rate as your main metric. It's the number the logs hand you, and it's tempting to report it on its own. However, the overall rate treats every session the same, so a fix for a hobby scenario counts as much as a fix for a high-value one. A team could raise the overall rate for a whole quarter while the scenarios the business depends on stay broken.

When budgets tighten, docs work that doesn't tie to business-critical areas is hard to defend, no matter how many users it helped. Track the success rate for your high-value scenarios alongside the overall number, and lead with it when you report results in stage 7.

## What the skill needs

As a sub-skill, this stage needs the ranked pattern table from stage 2, your list of high-value scenarios, and the rules for the four groups. It should pause for your review of the value ratings before it picks the top three. The output is a short file listing the chosen patterns, why each one was chosen, and the cheap fixes to make for the "many failures, low value" group.

<hr/>

*Continue to the next topic: [Stage 4: Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html)*
