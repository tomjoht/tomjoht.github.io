---
title: "Stage 8: Reflect and improve the machine"
permalink: ai/from-logs-to-improvements-reflect.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-08
order: 30
---

{% include_relative draft_notice.html %}

The previous topic, [Stage 7: Test and close the loop](/ai/from-logs-to-improvements-evals.html), tracked prior `[Chat Log Bot]` bugs and saved local test prompts. This topic covers the final stage, where the main agent collects the outputs from the pattern subagents, publishes a concise top-down report for you to read in one sitting, and uses the run's friction log to improve the skill itself.

| Input | Output | Post-run review focus |
|---|---|---|
| Stages 1–3 scratch files, prior bug status, per-pattern subagent outputs (Stages 4–7), and `friction_log.md` | A new, short top-down report document (for example, a new Google Doc) plus proposed improvements to the skill | Read the report in 10–15 minutes, challenge any questionable conclusions, approve which `[Chat Log Bot]` bugs to file, and review any skill updates |

## Publish a new, short top-down report for each run

Left to its defaults, an agent tends to print every intermediate table from Stages 1 through 8 in the order it produced them, often appending them to whatever document it wrote to last. That causes two problems. Outputs from different runs and datasets get mixed together in the same document, and a 15-page chronological log can take an hour to read before you reach the proposed doc fixes at the bottom. Two rules make the output much easier to review:

1. **Create a brand-new report document for each run** (for example, a new Google Doc titled with the run date and dataset label) so every run's funnel counts, prior-bug tracking, and proposed tickets stay self-contained.
2. **Write the report in inverted, top-down executive order (~3 pages total)** so you can read it in one 10-to-15-minute sitting without wading through intermediate JSON tables:
   - **Section 1: Dataset funnel, health snapshot, and prior bug tracking (half a page to 1 page).** How many raw rows filtered down to genuine product sessions, the high-value scenario success rate alongside the overall success rate, the top two or three shortlisted failure patterns, and the **Prior `[Chat Log Bot]` bug tracking** table from Stage 7.
   - **Section 2: Recommended new `[Chat Log Bot]` bugs with diffs (~2 pages).** The self-contained bug proposals from Stage 6—each with its five-part chain of reasoning, paraphrased session evidence, suggested SMEs, and exact unified `diff` block. This is the main payload you review and approve for filing into your triage queue.
   - **Section 3: Friction summary and pointers to local scratch files (brief).** Any technical snags recorded during the run, plus file paths to your local `stage1_session_records.jsonl`, `goal_taxonomy.json`, `stage2_ranked_patterns.json`, and `term_map.json` files so you only open intermediate tables when auditing a specific claim.

Because the skill runs end-to-end without pausing at every stage, you can kick off a run, let it finish in the background, and review the whole three-page report over a cup of coffee. If you disagree with a conclusion in Section 2, you can challenge it, have the agent re-run from the saved scratch file for that stage, or drop that bug proposal before filing the rest.

{% include ads.html %}

## Keep a friction log during the run

As described in [Build self-reflection into the skill](/ai/skills-design-principles.html#build-self-reflection-into-the-skill), a multi-stage skill should also improve itself each time it runs. Reflection works best when it draws on notes taken during the run rather than on the agent's memory afterward. Have the main agent and each pattern subagent append to a shared `friction_log.md` file whenever they hit a snag—and append any corrections you make when you review the final report:

- **[Stage 1: Parse the logs](/ai/from-logs-to-improvements-parse.html).** Export schema quirks, false-positive intent noise that slipped through the filter, or sessions marked successful when the user gave up.
- **[Stage 2: Triage the patterns](/ai/from-logs-to-improvements-triage.html).** Categories you split, merged, or renamed, and whether "other" crept above 10%.
- **[Stage 3: Weigh product priorities](/ai/from-logs-to-improvements-priorities.html).** Business-value ratings you overruled.
- **[Stage 4: Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html).** Root-cause diagnoses you or a product-area writer overturned.
- **[Stage 5: Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html).** Terms you rejected or moved to a skill routing table instead of a doc page.
- **[Stage 6: Draft bugs proposing doc updates](/ai/from-logs-to-improvements-doc-updates.html).** Bug proposals you rejected, split into smaller tickets, or scrubbed for privacy.
- **[Stage 7: Test and close the loop](/ai/from-logs-to-improvements-evals.html).** Fixed patterns that kept failing weeks after their pull request shipped, pointing to a wrong diagnosis or a product naming issue.

## Review the friction log and update the skill under version control

After you review the run's Google Doc and file the approved `[Chat Log Bot]` bugs, have the agent read `friction_log.md` and propose concrete updates to the skill—such as a tighter filter rule in your preprocessing script, a new category in `goal_taxonomy.json`, a privacy guardrail in the bug template, or an architectural tweak to how subagents fan out.

Treat changes to the skill the same way you treat changes to documentation: keep the skill files (`SKILL.md`, checklists, and scripts) under version control, review the proposed diff before it takes effect, and run your skill validation tests. A rough tally of how often you overrule the AI's conclusions from run to run will show you which stage still needs tuning—and keeping the human review focused on a short, top-down report at the end makes running the machine every week realistic.

## Zooming out: a relay of specialized machines

Stepping back from the eight stages, the most durable lesson from building this workflow is that you shouldn't try to build one gargantuan agent that handles the entire documentation lifecycle in a single pass. A single mega-skill that tries to parse logs, learn your org chart, edit twenty unfamiliar doc sets, and merge pull requests will hit context limits and stall on human review.

Instead, design a relay of smaller, specialized machines that pass structured batons through queues your team already uses:

- **The log-analysis machine** turns messy weekly transcripts into two or three evidence-backed `[Chat Log Bot]` bug proposals in a central intake queue.
- **The automated triage and routing machine** watches that intake queue on a schedule, verifies completeness, calibrates priority, and uses a version-controlled routing matrix to assign each ticket to the right writer pod.
- **The bug-to-PR machine** (the next machine on my build list) picks up a triaged ticket, stages its proposed diff in a clean branch, runs deterministic build and style checks, and opens a focused pull request for the writer and engineering SME.

Each machine has a clear boundary, writes an auditable artifact at the handoff point, and improves through its own friction log—letting automation carry the volume while writers stay in control of judgment and accuracy.

<hr/>

*This concludes the chapter on turning logs into doc improvements. If you haven't worked through the first chapter on building your own [agent skills](/ai/skills.html), start there.*