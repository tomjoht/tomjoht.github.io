---
title: "Stage 2: Triage the patterns"
permalink: ai/from-logs-to-improvements-triage.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-08
order: 24
---

{% include_relative draft_notice.html %}

The previous topic, [Stage 1: Parse the logs](/ai/from-logs-to-improvements-parse.html), turned each raw session into a record, with the user's goal written in their own words. Keeping the users' words preserves their vocabulary, but it also makes the goals hard to count. A hundred users might describe the same task a hundred different ways, so almost no two goals match exactly. In this second stage, the AI sorts the goals into a shared set of categories and then ranks the categories, so you can see which problems repeat and how often they fail. A category, together with the sessions in it, is what the rest of this chapter calls a pattern.

| Input | Output | Post-run review focus |
|---|---|---|
| The table of session records (`stage1_session_records.jsonl`) and your saved `goal_taxonomy.json` (if present) | A ranked list of patterns (`stage2_ranked_patterns.json`), with session counts and failure rates | Check the top failure categories in the final report, and split or merge categories in `goal_taxonomy.json` if needed |

## Why Stages 1 through 3 stay batched together

When you run a heavy log-analysis workflow inside an AI coding assistant, context window limits become a real constraint. It's tempting to wonder whether you should spawn a separate subagent for every individual log entry right from the start, having each subagent run all eight stages on a single user session.

Don't do that for Stages 1 through 3. If you process each session in its own isolated thread, you lose the ability to see patterns across the batch. You can't tell whether an API key failure happened once or forty times, and you can't distinguish the short head of recurring problems from one-off mistakes. Stages 1, 2, and 3 need to see the whole batch together—guided by a deterministic Python script for counting and sorting—before [Stage 3: Weigh product priorities](/ai/from-logs-to-improvements-priorities.html) hands the top patterns off to dedicated subagents for the heavy doc scanning in Stages 4 through 7.

## Have the AI propose and assign categories

Categorizing sessions works a lot like building a taxonomy for a doc site. You define a fixed set of terms, and then you tag each item with one of them. Here, the terms are user goals, and the items are sessions. Once every session carries a category, a script can count the sessions in each category, which you can't do with free-form goals.

For example, suppose your focus product is a payments API, and Stage 1 recorded goals like these:

- "get my api key working, keeps saying 401"
- "where does the token go in postman"
- "sandbox key works but live key doesn't??"
- "remind customer before card is charged"
- "email ppl 3 days before payment due"

None of these goals match word for word. However, the first three are about the same task, which is getting the API to accept a request, and the last two are about notifying a customer before a payment. So the AI might propose two categories, "Authenticate API requests" and "Send a reminder before a payment," each with a one-sentence definition. Across thousands of sessions, the same grouping produces a manageable list.

On the very first run, give the AI the list of goals from the records, and ask it to propose roughly 10 to 20 categories, plus an "other" category, each with a one-sentence definition. With fewer categories, they probably get too broad to suggest a fix. With more, the AI might struggle to tell them apart when it assigns sessions. Have the AI assign each session to one category, check that "other" holds 10% or fewer of the sessions (splitting or adding a category if "other" exceeds 10%), and save the list as `goal_taxonomy.json`.

{% include ads.html %}

## Maintaining the goal taxonomy across runs

Instead of pausing the skill mid-run to approve categories before Stage 3 runs, let the skill finish its uninterrupted pass using `goal_taxonomy.json` and review the top categories when you read the final report. On your first calibration run, or whenever a category in the final report looks suspect, check `goal_taxonomy.json` against a few rules:

- **Split categories that are too broad.** You can't write a tutorial for "general errors." Break it into the specific errors users hit.
- **Merge categories that lead to the same fix.** If "password reset" and "forgot password" would both send you to the same page, they're one category.
- **Keep categories about goals, not features.** "Deploy to a staging environment" is more useful than "the deploy command," because users describe goals, and a goal can involve several features.
- **Give cross-product journeys their own categories.** A journey such as "authenticate with service A, then call service B" is a pattern in its own right. Don't fold it into a category for either product alone, or the handoff problem disappears from view.

Skim a sample of the "other" category too. It's where sessions go when they don't fit anywhere, so it's also where unexpected problems and cross-product journeys the AI didn't spot tend to end up.

On subsequent weekly runs, the AI reads your saved `goal_taxonomy.json` and assigns new sessions to the existing categories rather than inventing a new set from scratch. It proposes a new category only when a cluster of sessions lands in "other." Keeping a fixed taxonomy file lets you compare failure rates across runs: if "Authenticate API requests" means the same thing in Week 1 and Week 6, you can tell whether your doc fixes brought its failure rate down.

## Rank by failed sessions

The ranking answers a simple question, which is where the docs are letting down the most people. For each category, count the total sessions, the failed sessions, and the failure rate. Then sort the categories by the number of failed sessions. Continuing the payments example, the ranking might look like this:

| Category | Total sessions | Failed sessions | Failure rate |
|---|---|---|---|
| Authenticate API requests | 640 | 310 | 48% |
| Send a reminder before a payment | 400 | 200 | 50% |
| Look up a payment's status | 2,000 | 100 | 5% |
| Issue a partial refund | 90 | 60 | 67% |

You could sort by any of the three numbers, but the other two mislead in different ways. Sorting by total sessions would put "Look up a payment's status" at the top, since it's the most common goal. However, 95% of those sessions succeed, so the docs for that goal are mostly working. Sorting by failure rate would put "Issue a partial refund" at the top, but only 60 people failed at it. 

The failed-session count combines both numbers. It tells you how many people hit a problem, so it's a rough measure of how many people a fix could help. In other words, a fix to the authentication docs could help up to 310 users in this batch of logs, while a fix to the refund docs could help at most 60.

## Focus on the short head

When you sort the categories by failed sessions, the failures usually aren't spread evenly. A few categories at the top account for most of them. These top categories are often called the short head, and the many small categories below them are the long tail.

For example, suppose the payments batch has 900 failed sessions in total. The top two categories in the table above, authentication and payment reminders, account for 510 of them, which is more than half. The other 390 failures are spread across the rest of the list. A few of those categories are mid-sized, like payment status lookups with 100 failures and refunds with 60. Most are small categories with 10 or 20 failures each, plus scattered goals in "other."

This distribution tells you where to spend your time. Each run, you can only fix a few things. If you fix the docs for authentication and payment reminders, two fixes address more than half the failed sessions. Reaching the same number of failed sessions in the tail could take a dozen or more fixes, one per small category. Writing a page for every tail scenario also has a cost for the docs. Narrow pages that few people need make the common pages harder to find.

However, the head is only where to look first, not the final list of what to fix. The ranking is based on volume alone, and volume doesn't tell you which failures matter most to the business. [Stage 3: Weigh product priorities](/ai/from-logs-to-improvements-priorities.html) weighs each category by business value, which can move a smaller category, such as refunds, ahead of a bigger one.

Don't throw the tail away, though. Tail scenarios with different topics can still share a root cause, such as an undocumented authentication step or a reference table that leaves out a field. Keep the tail in the output file. When [Stage 4: Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html) diagnoses the patterns in the head, a cause that also explains part of the tail is worth more than one that doesn't.

The output of this stage is a table with one row per category. Each row includes the definition, total sessions, failed sessions, failure rate, and a few example first messages.

<hr/>

*Continue to the next topic: [Stage 3: Weigh product priorities](/ai/from-logs-to-improvements-priorities.html)*