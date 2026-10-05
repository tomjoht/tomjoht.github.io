---
title: "Stage 7: Test and close the loop"
permalink: ai/from-logs-to-improvements-evals.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-04
order: 29
---

{% include_relative draft_notice.html %}

The previous topic, [Stage 6: Make the doc updates](/ai/from-logs-to-improvements-doc-updates.html), turned each diagnosis into a doc change, a ticket, or a bug report. This topic covers the seventh stage, which checks whether those fixes worked. Without this stage, you'd know what you changed but not whether it helped. It has two parts. First, add queries from the failed sessions to your evaluation suite and test the fixes. Second, look at the next batch of logs to see whether the same errors keep showing up.

| Input | Output | Human checkpoint |
|---|---|---|
| The chosen patterns, their failed sessions, the term map, and the doc changes | Eval results, a short report, and updated inputs for the next run | Read new sessions for each fixed pattern, and decide what goes in the report |

The first chapter of this course has a topic on [Testing a skill](/ai/skills-testing.html), which explains how evaluation frameworks work, including test cases, ablation tests, and LLM judges. This stage applies the same ideas to your docs agent rather than to a skill.

## Add the failed queries to your evals

Take the first messages from five to ten failed sessions in each chosen pattern and add them to your evaluation suite. You don't need to run a separate baseline before the fix ships, since the logs already show that these queries failed. After the fix is published, run the suite. If the fix worked, the agent should now find the right page and give a correct answer.

In practice, publishing tends to be continuous, so fixes, other updates, and test runs get mixed together, and it's hard to say exactly which version of the docs a test ran against. If your evaluation framework supports ablation testing, it can help here. As described in [Testing a skill](/ai/skills-testing.html), an ablation test runs the same queries with and without a change. For docs, that might mean giving the agent the old version of a page and then the new one, which isolates the effect of your fix from everything else that changed.

Use the users' exact phrasing in each query. It's tempting to clean up a query like "thingamajig won't connect" before adding it, but that defeats the purpose. Whether the agent finds the right page depends on the exact words in the query, so a cleaned-up query tests a different search than the one that failed. [Updating evaluation suites and documentation](/ai/product-skills-chat-analysis.html#updating-evaluation-suites-and-documentation) covers this point in more detail. This is also why [Stage 1: Parse the logs](/ai/from-logs-to-improvements-parse.html) copies the first message word for word instead of relying on the AI's goal summary. If the eval queries came from the AI's paraphrases, you'd be testing whether the agent can answer the AI's tidy version of the question. Keep any pasted error messages and code in the query too, since they can change what the agent retrieves.

The term map from [Stage 5: Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html) helps here too, since queries that use the user terms make good test cases.

{% include ads.html %}

## Compare errors across runs

Passing an eval is a good sign, but it's still a test you wrote. The real test is whether users stop failing in the same way. Measuring that precisely is probably the messiest part of this whole process, so it's worth keeping the comparison simple.

The skill already saves the patterns and example sessions from each run, along with the tracking bugs from [Stage 6: Make the doc updates](/ai/from-logs-to-improvements-doc-updates.html#explain-the-reasoning-behind-each-change). Those files are your record of previous errors. When the skill runs on new logs, have it compare the new patterns with the ones you've already worked on. Are you seeing the same errors as before, even after the fixes? If so, the fix didn't work, or it hasn't reached the pages the agent uses, or the diagnosis was wrong. If an error you fixed stops showing up, the fix probably worked. If you keep seeing new errors instead of old ones, that's a good sign too, since it means you're working your way through the list.

Expect progress to look slower than it is. Suppose one run identifies 20 errors worth fixing, and by the next run you've fixed only 5 of them. The next run will still show the other 15, along with any new ones, so the overall picture might barely change. For that reason, compare only the errors you actually fixed, and give the comparison some time. A couple of months of logs probably tells you more than a single week.

Some errors might never go away, no matter how many times you fix the docs. Users might call things "APIs" that are really just methods, or confuse two products that overlap in ways the docs can't untangle, or keep using a name from an earlier version of the product. These are naming and product problems more than doc problems. When an error keeps coming back after a reasonable fix, mark it as a known issue so it doesn't skew the comparison, and pass it to the product team, as described in [Stage 5: Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html#pass-naming-problems-to-the-product-team).

## Checkpoint: review the results

The comparison comes from the same AI parsing that produced the earlier results, so it shares the same blind spots. Before you write the report, read a few of the new sessions for each pattern you fixed. Are users getting to the right page now? Are they failing somewhere new instead? A handful of sessions won't prove the fix worked, but they'll often show you something the comparison can't. Then decide, for each pattern, whether it's fixed, needs another round, or needs a different diagnosis.

When you report results, lead with the high-value scenarios, as discussed in [Stage 3: Weigh product priorities](/ai/from-logs-to-improvements-priorities.html#dont-rely-on-the-overall-success-rate). A short report works best. List the errors you fixed, which ones stopped showing up, which ones keep coming back, the bug reports you filed, and the patterns you plan to tackle next.

## Run the skill regularly

Improving docs from logs isn't something you finish in one pass. Some patterns take several rounds of fixes, and new patterns appear as the product changes. How often to run the skill depends on how many logs you get and how quickly you can make fixes, whether that's weekly or monthly. Each run, the skill pulls new logs, reuses the saved categories and term map, and helps you pick the next patterns to fix.

Watch the "other" category from run to run. If a cluster of new goals starts forming there, especially after a launch, it's an early sign of a new problem area. Add a category for it so the next run counts it properly.

## Beyond product docs

This chapter has focused on logs from an agent on a public docs site, but the same skill could work on internal docs too. Many companies run chatbots over their engineering wikis, onboarding guides, and HR policies, and those chatbots produce logs as well. The stages are the same. Parse the sessions, find the patterns that fail most, weigh them by what matters to the company, and fix the docs behind them. It's quite possible that employees are as lost in internal docs as users are in public ones, and the logs would show it.

<hr/>

*Continue to the next topic: [Stage 8: Reflect and improve the machine](/ai/from-logs-to-improvements-reflect.html)*
