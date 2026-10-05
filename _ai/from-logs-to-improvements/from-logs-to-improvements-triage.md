---
title: "Stage 2: Triage the patterns"
permalink: ai/from-logs-to-improvements-triage.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-04
order: 24
---

{% include_relative draft_notice.html %}

The previous topic, [Stage 1: Parse the logs](/ai/from-logs-to-improvements-parse.html), turned each raw session into a record, with the user's goal written in their own words. Keeping the users' words preserves their vocabulary, but it also makes the goals hard to count. A hundred users might describe the same task a hundred different ways, so almost no two goals match exactly. In this second stage, the AI sorts the goals into a shared set of categories and then ranks the categories, so you can see which problems repeat and how often they fail. A category, together with the sessions in it, is what the rest of this chapter calls a pattern.

| Input | Output | Human checkpoint |
|---|---|---|
| The table of session records | A ranked list of patterns, with session counts and failure rates | Review and edit the goal categories |

## Have the AI propose and assign categories

Categorizing sessions works a lot like building a taxonomy for a doc site. You define a fixed set of terms, and then you tag each item with one of them. Here, the terms are user goals, and the items are sessions. Once every session carries a category, you can count the sessions in each category, which you can't do with free-form goals.

For example, suppose your focus product is a payments API, and stage 1 recorded goals like these:

- "get my api key working, keeps saying 401"
- "where does the token go in postman"
- "sandbox key works but live key doesn't??"
- "remind customer before card is charged"
- "email ppl 3 days before payment due"

None of these goals match word for word. However, the first three are about the same task, which is getting the API to accept a request, and the last two are about notifying a customer before a payment. So the AI might propose two categories, "Authenticate API requests" and "Send a reminder before a payment," each with a one-sentence definition. Across thousands of sessions, the same grouping produces a manageable list.

On the first run, give the AI the list of goals from the records, and ask it to propose roughly 10 to 20 categories, plus an "other" category, each with a one-sentence definition. That range is a guess rather than a tested number. With fewer categories, they probably get too broad to suggest a fix. With more, the AI might struggle to tell them apart when it assigns sessions.

Then have the AI assign each session to exactly one category, using the definitions and a couple of example sessions for each. This first assignment is a draft, and its purpose is to give you something concrete to review. For each category, you'll see how many sessions landed in it and a few example first messages, so you're reviewing categories with real sessions in them rather than names on a list.

The AI's first draft will probably need work. Some categories will be too broad, such as "general errors" or "getting started." Others will overlap, such as "password reset" and "forgot password." That's expected, and it's why the next step involves you.

{% include ads.html %}

## Checkpoint: review the categories

This is probably the checkpoint where your judgment matters most. Review the proposed categories and edit them before anything gets ranked. The test for each category is whether it points to a specific area of the docs that you could fix. The AI can tell that two goals mean similar things, but it usually can't tell that they'd send you to the same page, since it doesn't know how your docs are organized.

- **Split categories that are too broad.** You can't write a tutorial for "general errors." Break it into the specific errors users hit.
- **Merge categories that lead to the same fix.** If "password reset" and "forgot password" would both send you to the same page, they're one category.
- **Keep categories about goals, not features.** "Deploy to a staging environment" is more useful than "the deploy command," because users describe goals, and a goal can involve several features.
- **Give cross-product journeys their own categories.** A journey such as "authenticate with service A, then call service B" is a pattern in its own right. Don't fold it into a category for either product alone, or the handoff problem disappears from view.

Read the example first messages under each category, not just its name and definition. A category name can sound right while the sessions inside it are about something else. Then skim a sample of the "other" category. It's where sessions go when they don't fit anywhere, so it's also where unexpected problems and cross-product journeys the AI didn't recognize tend to end up. As a rough rule of thumb, if more than about 10% of sessions land in "other," or the AI keeps forcing sessions into categories that don't fit, add or split categories.

Reviewing a list of 20 categories and a few dozen example sessions takes maybe half an hour, while reading hundreds of sessions would take days. This is the trade the skill makes throughout. The AI handles the volume, and you spend your time on the decisions where knowing the product and the docs pays off.

When the list looks right, have the AI assign the sessions again with the final categories. Then save the category list as a file, like the other outputs. The saved list becomes your taxonomy of user goals. On the next run, the AI reads that file and assigns the new sessions to the existing categories rather than inventing a new set. It proposes a new category only when a group of sessions doesn't fit any existing one, and you approve the addition at this checkpoint. Nothing more elaborate than that one file is needed. You maintain it over time the way you'd maintain any taxonomy, adding, splitting, and retiring terms as the product changes. A fixed taxonomy also lets you compare runs. If "Authenticate API requests" means the same thing in both runs, you can tell whether its failure rate went up or down.

## Rank by failed sessions

The ranking answers a simple question, which is where the docs are letting down the most people. For each category, count the total sessions, the failed sessions, and the failure rate. Then sort the categories by the number of failed sessions. Continuing the payments example, the ranking might look like this:

| Category | Total sessions | Failed sessions | Failure rate |
|---|---|---|---|
| Authenticate API requests | 640 | 310 | 48% |
| Send a reminder before a payment | 400 | 200 | 50% |
| Look up a payment's status | 2,000 | 100 | 5% |
| Issue a partial refund | 90 | 60 | 67% |

You could sort by any of the three numbers, but the other two mislead in different ways. Sorting by total sessions would put "Look up a payment's status" at the top, since it's the most common goal. However, 95% of those sessions succeed, so the docs for that goal are mostly working. Sorting by failure rate would put "Issue a partial refund" at the top, but only 60 people failed at it. The failed-session count combines both numbers. It tells you how many people hit a problem, so it's a rough measure of how many people a fix could help. In other words, a fix to the authentication docs could help up to 310 users in this batch of logs, while a fix to the refund docs could help at most 60.

## Focus on the short head

When you sort the categories by failed sessions, the failures probably won't be spread evenly. A few categories at the top, often called the short head, account for most of the failed sessions. Below them is a long tail of small categories and scattered goals in "other," each with only a handful of failures. If the top three or four categories hold most of the failed sessions, then fixing those three or four areas of the docs addresses most of the failures. Covering the same number of users from the tail might take dozens of separate fixes.

The strategy behind this is about where to spend limited time. Each run, you can only fix a few things, so it makes sense to start where one fix helps the most people. It also protects the docs. If you wrote a page for each scenario in the tail, you'd bury your docs in narrow pages that few people need, which makes the common pages harder to find.

The head is where to look first, not the final list of what to fix. It's ranked by volume alone, and volume doesn't tell you which failures matter most to the business. [Stage 3: Weigh product priorities](/ai/from-logs-to-improvements-priorities.html) weighs each category by business value, which can move a smaller category, such as the refund one, ahead of a bigger one.

Don't throw the tail away, though. Tail scenarios with different topics can still share a root cause, such as an undocumented authentication step or a reference table that leaves out a field. Keep the tail in the output file. When [Stage 4: Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html) diagnoses the patterns in the head, a cause that also explains part of the tail is worth more than one that doesn't.

The output of this stage is a table with one row per category. Each row includes the definition, total sessions, failed sessions, failure rate, and a few example first messages.

<hr/>

*Continue to the next topic: [Stage 3: Weigh product priorities](/ai/from-logs-to-improvements-priorities.html)*
