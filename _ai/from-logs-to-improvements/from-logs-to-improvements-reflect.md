---
title: "Stage 8: Reflect and improve the machine"
permalink: ai/from-logs-to-improvements-reflect.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-04
order: 30
---

{% include_relative draft_notice.html %}

The previous topic, [Stage 7: Test and close the loop](/ai/from-logs-to-improvements-evals.html), checked whether the fixes worked. This topic covers the last stage, which improves the skill itself. The earlier stages improve the docs, but the skill that runs them should also get better each time it runs. On the first run, you'll probably correct the AI often. You might fix goals that lost the user's phrasing, split categories that were too broad, and overturn a few diagnoses. If the skill doesn't learn from those corrections, you'll likely make the same ones on the next run.

| Input | Output | Human checkpoint |
|---|---|---|
| The friction log from the run, plus your corrections at each checkpoint | Proposed changes to the skill and a short summary of learnings | Approve every change to the skill |

This stage applies a principle from the first chapter of this course. As described in [Build self-reflection into the skill](/ai/skills-design-principles.html#build-self-reflection-into-the-skill), a complex skill should end with a step where the agent reviews the friction it ran into and updates the skill, so the next run goes more smoothly.

## Keep a friction log during the run

Reflection probably works best when it draws on notes taken during the run rather than on the agent's memory afterward. Have each sub-skill append to a shared friction log whenever something goes wrong. The most useful entries record the places where you stepped in, since each one points to an instruction that didn't do its job:

- **[Stage 1: Parse the logs](/ai/from-logs-to-improvements-parse.html).** Records that failed the spot-check, such as goals that were rewritten in product terms or sessions marked as successful when the user gave up.
- **[Stage 2: Triage the patterns](/ai/from-logs-to-improvements-triage.html).** Categories you split, merged, or renamed, and how many sessions ended up in "other."
- **[Stage 3: Weigh product priorities](/ai/from-logs-to-improvements-priorities.html).** Value ratings you changed.
- **[Stage 4: Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html).** Diagnoses you overturned, and patterns that turned out to be two patterns.
- **[Stage 5: Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html).** Terms you rejected or placed somewhere else.
- **[Stage 6: Make the doc updates](/ai/from-logs-to-improvements-doc-updates.html).** Drafts you rewrote or rejected during review.
- **[Stage 7: Test and close the loop](/ai/from-logs-to-improvements-evals.html).** Errors that kept showing up after a fix, which suggests the diagnosis was wrong.

The log should also capture friction that didn't involve you, such as steps that needed retries, batches that timed out, inputs that were missing, or a change in the log export's format.

## Review the log and propose changes

After stage 7, have the agent read the friction log and propose specific changes to the skill. Concrete changes are the most useful. They might include a clearer field definition, a new example of a bad goal taken from this run, an updated category list, a new rule in the diagnosis checklist, or a note in a troubleshooting file about a quirk in the log format. The agent should explain which friction each change addresses.

Also look for patterns across runs, not just within one. If you overturned the same kind of diagnosis three runs in a row, the checklist probably needs a new rule. If a stage keeps running slowly, it might need to be split into two stages. This is how the skill grows beyond the stages described in this chapter. The summaries of learnings from earlier runs help here, since together they form a history of how the skill evolved and what was tried.

{% include ads.html %}

## Checkpoint: approve changes to the skill

Treat changes to the skill the same way you treat changes to the docs. Keep the skill under version control, have the agent propose its changes as a diff, and review them before they take effect. A skill that rewrites itself without review can drift over time, as small edits pile up in directions nobody intended. Reviewing a diff of the skill after each run should only take a few minutes, and it keeps you in charge of how the skill works.

## Measure whether the skill is improving

A simple measure of progress is how often you overrule the AI at each checkpoint. You don't need to be precise about it. A rough tally per stage, kept in the friction log, is probably enough to show whether the corrections are going down over time and which stage needs the most help. If one stage keeps needing the same corrections, it might need a new rule, a different checkpoint, or a split into two stages.

There's one caution with this measure. Fewer corrections can also mean the reviews got lighter. After many runs, it's easy to skim a checkpoint you've passed many times and approve whatever the AI proposed. Reading the raw sessions at each checkpoint, not just the AI's summaries, is probably the best guard against that kind of drift in the reviewer.

<hr/>

*This concludes the chapter on turning logs into doc improvements. If you haven't worked through the first chapter on building your own [agent skills](/ai/skills.html), start there.*
