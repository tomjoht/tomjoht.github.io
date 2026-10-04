---
title: "Stage 8: Reflect and improve the machine"
permalink: ai/from-logs-to-improvements-reflect.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-03
order: 30
---

{% include_relative draft_notice.html %}

The last stage improves the machine itself. The earlier stages improve the docs, but the skill that runs them should also get better each time it runs. On the first run, you'll probably correct the AI often. You'll fix goals that lost the user's phrasing, split categories that were too broad, and overturn a few diagnoses. If the skill doesn't learn from those corrections, you'll make the same ones next month.

| Input | Output | Human checkpoint |
|---|---|---|
| The friction log from the run, plus your corrections at each checkpoint | Proposed changes to the skill and a short summary of learnings | Approve every change to the skill |

This stage applies a principle from the first chapter of this course. As described in [Build self-reflection into the skill](/ai/skills-design-principles.html#build-self-reflection-into-the-skill), a complex skill should end with a step where the agent reviews the friction it ran into and updates the skill, so the next run goes more smoothly.

## Keep a friction log during the run

Reflection works best when it draws on notes taken during the run rather than on the agent's memory afterward. Have each sub-skill append to a shared friction log whenever something goes wrong. The most useful entries record the places where you stepped in, since each one shows an instruction that didn't do its job:

- **Stage 1.** Records that failed the spot-check, such as goals that were rewritten in product terms or sessions marked as successful when the user gave up.
- **Stage 2.** Categories you split, merged, or renamed, and how many sessions ended up in "other."
- **Stage 3.** Value ratings you changed.
- **Stage 4.** Diagnoses you overturned, and patterns that turned out to be two patterns.
- **Stage 5.** Terms you rejected or placed somewhere else.
- **Stage 6.** Drafts you rewrote or rejected during review.
- **Stage 7.** Fixed patterns whose failure rate didn't drop, which suggests the diagnosis was wrong.

The log should also capture friction that didn't involve you, such as steps that needed retries, batches that timed out, inputs that were missing, or a change in the log export's format.

## Review the log and propose changes

After stage 7, have the agent read the friction log and propose specific changes to the skill. Good changes are concrete. They might include a clearer field definition, a new example of a bad goal taken from this run, an updated category list, a new rule in the diagnosis checklist, or a note in a troubleshooting file about a quirk in the log format. The agent should explain which friction each change addresses.

Also look for patterns across runs, not just within one. If you overturned the same kind of diagnosis three months in a row, the checklist probably needs a new rule. If a stage keeps running slowly, it might need to be split into two stages. This is how the machine grows beyond the stages described in this chapter.

## Approve changes to the skill

Treat changes to the skill the same way you treat changes to the docs. Keep the skill under version control, have the agent propose its changes as a diff, and review them before they take effect. A skill that rewrites itself without review can drift over time, as small edits pile up in directions nobody intended. Reviewing a diff of the skill each month takes a few minutes and keeps you in charge of how the machine works.

## Measure whether the machine is improving

A simple measure of progress is the number of corrections you make per run. If the skill is learning, you should spot fewer rewritten goals, edit fewer categories, and overturn fewer diagnoses each month. The friction log gives you that count for free. If the number stops dropping, it's worth looking at whether the blueprint itself needs a new stage or a different checkpoint.

## What the skill needs

As a sub-skill, this stage needs the friction log from the run, a record of the corrections you made at each checkpoint, the current skill files, and the learnings summaries from previous runs. The output is a proposed diff to the skill and a short summary of what changed and why. The summary also serves as a history of how the machine evolved.

<hr/>

*This concludes the chapter on turning logs into doc improvements. If you haven't worked through the first chapter on building your own [agent skills](/ai/skills.html), start there.*
