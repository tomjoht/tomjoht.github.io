---
title: "Stage 2: Triage the patterns"
permalink: ai/from-logs-to-improvements-triage.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-03
order: 24
---

{% include_relative draft_notice.html %}

The second stage groups the session records into patterns and ranks them. Stage 1 left you with a table of records, each with a goal in the user's own words. Those goals are still too varied to count, since a hundred users might describe the same task a hundred different ways. This stage gives the goals a shared set of categories, so you can see which problems repeat and how often they fail.

| Input | Output | Human checkpoint |
|---|---|---|
| The table of session records | A ranked list of patterns, with session counts and failure rates | Review and edit the goal categories |

## Have the AI propose categories

Give the AI the list of goals from the records, and ask it to propose categories. Ask for roughly 10 to 20 categories, plus an "other" category, each with a one-sentence definition and a session count. Fewer than that and the categories get too broad to suggest a fix. More than that and the AI will struggle to tell them apart when it assigns sessions.

The AI's first draft will probably need work. Some categories will be too broad, such as "general errors" or "getting started." Others will overlap, such as "password reset" and "forgot password." That's expected, and it's why the next step involves you.

## Review the categories

This is the stage where your judgment matters most. Review the proposed categories and edit them before anything gets counted. The test for each category is whether it points to a specific area of the docs that you could fix.

- **Split categories that are too broad.** You can't write a tutorial for "general errors." Break it into the specific errors users hit.
- **Merge categories that lead to the same fix.** If "password reset" and "forgot password" would both send you to the same page, they're one category.
- **Keep categories about goals, not features.** "Deploy to a staging environment" is more useful than "the deploy command," because users describe goals, and a goal can involve several features.
- **Give cross-product journeys their own categories.** A journey such as "authenticate with service A, then call service B" is a pattern in its own right. Don't fold it into a category for either product alone, or the handoff problem disappears from view.

Reviewing a list of 20 categories takes a few minutes, while reading hundreds of sessions would take days. This is the trade the machine makes throughout. The AI handles the volume, and you spend your time on the decisions where knowing the product and the docs pays off.

## Assign sessions to categories

Once the categories look right, have the AI assign each session to exactly one category. Give it the definitions and a couple of example sessions for each. Then check the "other" category. If more than about 10% of sessions land there, or the AI keeps forcing sessions into categories that don't fit, add or split categories and run the assignment again.

The final category list is worth saving. Next month, the machine can reuse it instead of starting over, which makes later runs faster and lets you compare results across months.

## Rank by failed sessions

For each category, count the total sessions, the failed sessions, and the failure rate. Then sort by the number of failed sessions, not total sessions. A goal that shows up in 2,000 sessions with a 95% success rate isn't a problem. A goal with 400 sessions and a 50% failure rate is. Fixing a common failure has a one-to-many effect, since one fix improves the outcome for everyone who hits it.

When you sort, you'll likely see a short head and a long tail. A few goals account for most of the failed sessions, and then a long tail of goals appears only a handful of times each. Focus on the head. Don't write a page for each scenario in the tail, since that buries your docs in narrow pages that few people need.

Don't throw the tail away, though. Tail scenarios with different topics can still share a root cause, such as an undocumented authentication step or a reference table that leaves out a field. Keep the tail in the output file. When stage 4 diagnoses the patterns in the head, a cause that also explains part of the tail is worth more than one that doesn't.

## What the skill needs

As a sub-skill, this stage needs instructions for proposing categories, the rules for a good category, and a pause for your review before it assigns sessions. On later runs, it should start from the saved category list. The output is a table with one row per category, including the definition, total sessions, failed sessions, failure rate, and a few example goals.

<hr/>

*Continue to the next topic: [Stage 3: Weigh product priorities](/ai/from-logs-to-improvements-priorities.html)*
