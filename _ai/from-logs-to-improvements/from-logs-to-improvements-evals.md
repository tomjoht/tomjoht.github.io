---
title: "Stage 7: Test and close the loop"
permalink: ai/from-logs-to-improvements-evals.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-03
order: 29
---

{% include_relative draft_notice.html %}

The seventh stage checks whether the fixes worked, and then feeds the results into the next run. Without this stage, you'd know what you changed but not whether it helped. It has two parts. First, add failed queries to your evaluation suite and test the fixes. Second, check the next month's logs to see whether real users are succeeding more often.

| Input | Output | Human checkpoint |
|---|---|---|
| The chosen patterns, their failed sessions, the term map, and the doc changes | Eval results, a monthly report, and updated inputs for the next run | Decide what goes in the report |

## Set up the tests before the fix ships

Run the baseline before the stage 6 changes are published. Take five to ten failed queries from each chosen pattern and add them to your evaluation suite. Run the suite against the current docs and record the results, which should mostly fail. After the changes ship, run the suite again. If the fix worked, the agent should now find the right page and give a correct answer.

Use the users' exact phrasing in each query. It's tempting to clean up a query like "thingamajig won't connect" before adding it, but that defeats the purpose. Whether the agent finds the right page depends on the exact words in the query, so a cleaned-up query tests a different search than the one that failed. [Updating evaluation suites and documentation](/ai/product-skills-chat-analysis.html#updating-evaluation-suites-and-documentation) covers this point in more detail. The term map from stage 5 helps here too, since queries that use the user terms make good test cases.

## Check the next batch of logs

Passing an eval is a good sign, but it's still a test you wrote. The real test is the next batch of logs. When the next month's export arrives, run it through stages 1 and 2 with the saved categories, and compare the failure rate for each pattern you fixed with the previous month. If a pattern's failure rate didn't drop, the diagnosis might have been wrong, or the fix might not have reached the pages the agent actually uses.

When you report results, lead with the success rate for your high-value scenarios, as discussed in [stage 3](/ai/from-logs-to-improvements-priorities.html#dont-rely-on-the-overall-success-rate). Include the overall rate too, but don't let it carry the report. A short report works best. List the patterns you fixed, the before and after failure rates, the bug reports you filed, and the patterns you plan to tackle next.

## Run the machine monthly

Improving docs from logs isn't something you finish in a week. Some patterns take several rounds of fixes before the failure rate drops, and new patterns appear as the product changes. A monthly cycle is probably a sustainable pace for most teams. Each month, the machine pulls new logs, reuses the saved categories and term map, and helps you pick the next three patterns.

Watch the "other" category from month to month. If a cluster of new goals starts forming there, especially after a launch, it's an early sign of a new problem area. Add a category for it so the next run counts it properly. Over time, the failures in the short head should shrink, and more of your time can go to the high-value scenarios further down the list.

## Beyond product docs

This chapter has focused on logs from an agent on a public docs site, but the same machine could work on internal docs too. Many companies run chatbots over their engineering wikis, onboarding guides, and HR policies, and those chatbots produce logs as well. The stages are the same. Parse the sessions, find the patterns that fail most, weigh them by what matters to the company, and fix the docs behind them. It's quite possible that employees are as lost in internal docs as users are in public ones, and the logs would show it.

<hr/>

*Continue to the next topic: [Stage 8: Reflect and improve the machine](/ai/from-logs-to-improvements-reflect.html)*
