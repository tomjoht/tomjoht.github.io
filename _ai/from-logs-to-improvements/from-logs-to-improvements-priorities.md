---
title: "Stage 3: Weigh product priorities"
permalink: ai/from-logs-to-improvements-priorities.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-04
order: 25
---

{% include_relative draft_notice.html %}

The previous topic, [Stage 2: Triage the patterns](/ai/from-logs-to-improvements-triage.html), sorted the session records into categories and ranked them by failed sessions. That ranking shows you where the most users are failing. However, frequency alone doesn't tell you what matters to the business. Some frequent failures affect the scenarios the business depends on, and others affect scenarios that barely matter. This topic covers the third stage, which weighs each pattern against business priorities and picks a short list to fix.

This stage comes before the doc scan on purpose. Scanning the docs is the expensive part of the skill, so it should only run on patterns you've already decided are worth fixing.

| Input | Output | Human checkpoint |
|---|---|---|
| The ranked list of patterns, plus a list of high-value scenarios | A short list of patterns to fix | Review the value ratings and confirm the short list |

## Supply the business priorities

The skill can't judge business value on its own. Logs show what users asked, but usually not who they are or what they're worth to the business. So this stage needs an input from you, which is a short list of the scenarios that matter most.

Getting that list is harder than it sounds. If you ask product managers, each one will probably rank their own product's scenarios highest, which doesn't tell you how their products compare with each other. It helps to look for priorities set above the product level. Your company's OKRs (objectives and key results) are usually a good indicator, since they show which projects leadership has committed to. All-hands meetings are another source, since they tend to cover which products drive revenue and which launches the company is betting on. Once you know which products and projects matter most, the product managers for those products can fill in the specific integrations, customers, and use cases. The ranked list from stage 2 is useful to bring to those conversations, since it shows where users are failing. Update the list when priorities shift, such as after a launch or a new round of OKRs.

If your log export includes anything about who the user is, such as an account tier or a plan type, use it too. A pattern that fails mostly for enterprise accounts is high value no matter how users phrased their questions. That kind of metadata is a firmer signal than the AI's reading of the goal, since a confused user from a big customer might describe their problem in terms that don't match any listed scenario.

With the list in hand, the AI rates every pattern as high or low value, based on how closely it matches a listed scenario and on any account metadata the logs carry. Rating the whole list is cheap, since there are only 10 to 20 categories, and it's the only way to find the "few failures, high value" patterns described in the next section. If the AI rated only the head of the ranking, those patterns would never come up.

## Sort patterns into four groups

Combine failed sessions and business value, and sort each pattern into one of four groups:

| Failed sessions | Business value | What to do |
|---|---|---|
| Many | High | Fix these first. |
| Few | High | Fix these next, since the users who hit them are worth the effort. |
| Many | Low | Make only cheap fixes, such as adding a synonym, a link, or a clarifying sentence. |
| Few | Low | Skip these. |

From the first group, pick as many patterns as you can realistically fix before the next run, and stop there. If you're the only writer on the product, that might be only two or three. A longer list tends to produce half-finished fixes, and it also makes it harder to tell in [Stage 7: Test and close the loop](/ai/from-logs-to-improvements-evals.html) which fix made which error go away.

The "many failures, low value" group is the one to watch. These issues show up constantly, so they feel urgent. However, a full rewrite for a low-value scenario takes time away from scenarios that matter more.

## Checkpoint: review the value ratings

Before the skill picks the short list, review the value ratings. The ratings are the AI's best guess, and the ones near the boundary between high and low are the most worth a second look. For any rating you're unsure about, read a few of the pattern's first messages. Then confirm the short list, or swap patterns in or out.

The output is a short file listing the chosen patterns, why each one was chosen, and the cheap fixes to make for the "many failures, low value" group.

{% include ads.html %}

## The Fire App Builder lesson

When I worked at Amazon, I wrote the documentation for Fire App Builder, a starter kit for building streaming media apps for Fire TV ([Amazon](https://developer.amazon.com/docs/fire-app-builder/overview.html)). After the first year, we realized that most of the developers using the kit were building apps that nobody cared about, like "Bob's vacation journey" or "Sue's journal." My rough guess is that about 90% of the kit's users fell into this group. Meanwhile, the apps that mattered on Fire TV were the big ones, such as Netflix and Hulu, which I'd guess account for 90% or even 99% of the app usage on the platform. All of the important apps had sufficient developer resources that they didn't need a starter kit to build an app -- they already had deep resources to build robust, interesting, unique multimedia apps.

Fire App Builder has since reached the end of its standard support, and Amazon open-sourced the code on [GitHub](https://github.com/amzn/fire-app-builder). In my view, it died because it targeted the wrong audience. The same thing can happen with log analysis. If most of your failed sessions come from hobby projects, fixing them might raise your success rate without doing much for the business.

## Don't rely on the overall success rate

This is also a reason to be careful with the overall success rate as your main metric. It's the number the logs hand you, and it's tempting to report it on its own. However, the overall rate treats every session the same, so a fix for a hobby scenario counts as much as a fix for a high-value one. A team could raise the overall rate for a whole quarter while the scenarios the business depends on stay broken.

When budgets tighten, docs work that doesn't tie to business-critical areas is hard to defend, no matter how many users it helped. Always try to tie your documentation work to business critical projects &mdash; that's the secret to avoiding layoffs. Track the success rate for your high-value scenarios alongside the overall number, and lead with it when you report results in stage 7.

<hr/>

*Continue to the next topic: [Stage 4: Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html)*
