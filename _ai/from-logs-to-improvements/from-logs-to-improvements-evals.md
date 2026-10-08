---
title: "Stage 7: Test and close the loop"
permalink: ai/from-logs-to-improvements-evals.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-08
order: 29
---

{% include_relative draft_notice.html %}

The previous topic, [Stage 6: Draft bugs proposing doc updates](/ai/from-logs-to-improvements-doc-updates.html), packaged each diagnosis into a self-contained `[Chat Log Bot]` bug proposal for your triage queue. This topic covers the seventh stage, which addresses the question leadership will eventually ask you: *How do you know whether these changes made any difference?*

| Input | Output | Post-run review focus |
|---|---|---|
| Assigned pattern, open and closed `[Chat Log Bot]` bugs, failed `first_message` prompts, and Stage 6 bug proposals | Prior-bug tracking notes (`stage7_pattern_<k>_tracking.md`) and local evaluation queries (`stage7_eval_queries.jsonl`) | Review the **Prior `[Chat Log Bot]` bug tracking** table in the final report to see which patterns are open in triage, awaiting propagation, or dropping in failure rate after fix |

## Why you shouldn't run a full eval suite inside the weekly log run

It might seem natural to have the skill run a live evaluation suite at the end of every run to prove that the fixes worked. However, Stage 6 files `[Chat Log Bot]` bugs for writers to review rather than editing the docs, so no changes have shipped yet when the run finishes. There's nothing new for an evaluation suite to test.

Instead, separate **per-pull-request testing** from **weekly longitudinal measurement**:

- **Save verbatim failed prompts locally for optional pull-request testing.** Have a script pull five to ten verbatim `first_message` prompts for each chosen pattern into a local `stage7_eval_queries.jsonl` file (kept out of broadly visible bug tickets for data privacy). When a writer picks up a product-skill ticket and opens a pull request, those exact user queries—typos, pasted errors, and all—are ready if they want to run a before-and-after ablation test (see [Testing a skill](/ai/skills-testing.html) and [Updating evaluation suites and documentation](/ai/product-skills-chat-analysis.html#updating-evaluation-suites-and-documentation)).
- **Measure real-world improvement across weekly runs.** Passing a synthetic eval is encouraging, but it's still a test you wrote. The real measure is whether developers stop failing in the same way in future log batches—and you can track that directly from the weekly runs you're already doing, without maintaining a separate evaluation pipeline.

{% include ads.html %}

## Compare prior bugs against this week's patterns

Each `[Chat Log Bot]` bug comes from one pattern, which is one category in `goal_taxonomy.json`. Because the taxonomy stays the same from run to run, each new batch of logs gives you a fresh failure count for the category behind every bug you've filed. In other words, each weekly run is also a check on whether your earlier bugs are making a difference.

On each run, have the skill look up all `[Chat Log Bot]` bugs in your bug tracker, both open and closed. For each bug, it finds the bug's category in this week's ranked list (`stage2_ranked_patterns.json`) and records the category's current failure count. What happens next depends on the bug's status:

| Bug status | What the skill does |
|---|---|
| Open | Adds this week's failure count to the bug, and doesn't file a duplicate bug for the same pattern. |
| Fixed in the last few weeks | Notes that it's too early to judge, since the fix might not have reached the agent yet. |
| Fixed more than a few weeks ago | Compares the category's failure rate before and after the fix date. |

The open and recently fixed rows exist because fixes take time. A bug filed in Week 1 might take two or three weeks to get triaged, reviewed by an SME, and published. Without the check, the same pattern would show up in Weeks 2 and 3, and the skill would file a duplicate bug each week. After the fix is published, it still has to reach the agent. A fix to an agent skill (`SKILL.md`) takes effect as soon as the updated skill ships. A fix to a doc page might take days or weeks to show up in documentation search or MCP tools, and months to reach the training data of future models.

For the last row, compare only the categories that have fixed bugs, not the overall success rate. Suppose one run finds 15 failing categories and writers fix 3 of them. The overall success rate might barely move, because the other 12 categories are still failing. However, if "Authenticate API requests" failed in 48% of sessions when the bug was filed and in 20% of sessions six weeks after the fix, that's a result you can report. Keep tracking a fixed category even after it drops out of the top of the ranking, since dropping out is the result you want.

## Flag persistent product and naming issues

Some errors won't go away no matter how clearly you rewrite the docs. Users might keep calling a method an "API," confuse two overlapping products, or use a legacy name from years ago. You can spot these when a pattern keeps failing several weeks after its fix has reached the agent, and the retrieval traces show that the agent is reading the updated page or skill. When that happens, mark the category as a known issue in `goal_taxonomy.json` (`"known_issue": true`) so it doesn't skew your doc metrics. Then send the multi-week trend to the product team, as described in [Stage 5: Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html#pass-naming-problems-to-the-product-team).

## Watch the "other" category from run to run

Improving docs from logs isn't something you finish in one pass. Each weekly or biweekly run reuses your saved `goal_taxonomy.json` and `term_map.json`, checks the status of prior `[Chat Log Bot]` bugs, and proposes tickets for the next two or three patterns. Keep an eye on the "other" category from run to run. When a cluster of new goals starts forming there after a product launch, it's an early signal to add a category so the next run tracks it properly.

## Beyond product docs

This chapter has focused on logs from an agent on a public docs site, but the same skill could work on internal docs too. Many companies run chatbots over their engineering wikis, onboarding guides, and HR policies, and those chatbots produce logs as well. The stages are the same. Parse the sessions, find the patterns that fail most, weigh them by what matters to the company, and fix the docs behind them. It's quite possible that employees are as lost in internal docs as users are in public ones, and the logs would show it.

<hr/>

*Continue to the next topic: [Stage 8: Reflect and improve the machine](/ai/from-logs-to-improvements-reflect.html)*