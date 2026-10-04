---
title: "Stage 6: Make the doc updates"
permalink: ai/from-logs-to-improvements-doc-updates.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-03
order: 28
---

{% include_relative draft_notice.html %}

The sixth stage turns each diagnosis into a change. By this point, the machine knows which patterns to fix, why they failed, and which terms users need. Now it drafts the fixes. Some fixes are doc changes, but others are tickets for the docs platform team or bug reports for engineering. All of them are outputs of the machine.

| Input | Output | Human checkpoint |
|---|---|---|
| The diagnoses from stage 4 and the term map from stage 5 | Reviewable doc changes, platform tickets, and bug reports | Approve every change before it ships |

## Match the fix to the cause

Each cause from stage 4 leads to a different kind of output:

| Cause | What the machine drafts | Owner |
|---|---|---|
| The agent couldn't read the page | A ticket describing the rendering, bot protection, or page size problem, with the affected URLs | Docs platform |
| A supported scenario has no page | New content, or a brief for new content | Docs |
| The scenario isn't supported | A boundary statement | Docs, plus feedback to product |
| The agent didn't retrieve the page | Term additions from stage 5, or a clearer title, links, and `llms.txt` entries | Docs |
| The content was wrong | A correction, flagged for engineering review | Docs |
| It isn't a docs problem | A bug report with the session evidence | Product or engineering |

Small fixes, such as term additions, links, and corrections, are good candidates for the AI to draft in full. New content is harder. The AI can draft it, but the result needs more of your attention, since it has to fit your docs' structure and be accurate. For a large gap, a brief that describes what's missing, quotes the users' phrasing, and lists the sessions might be a better output than a full draft.

## Document the boundaries

When users ask for something the product doesn't support, it might seem like there's nothing to write. However, silence in the docs is where hallucinations come from. If the docs say nothing about a feature, the agent doesn't know the feature doesn't exist. It sees related terms and tries to invent a path. The Barnett study notes this risk, saying that "for questions that are related to the content but don't have answers the system could be fooled into giving a response" ([Barnett et al.](https://arxiv.org/abs/2401.05856)).

The fix is a plain statement of the limitation, such as "X isn't supported. To do Y, use Z instead." Put it where users would look for the feature, such as the page about the closest supported feature. A clear boundary gives the agent something true to say. If many users ask for the same unsupported feature, also pass that demand to the product team, since it's evidence for the roadmap.

## Don't document around a broken feature

Some patterns turn out to be product bugs or confusing UI. It's tempting to add a paragraph that explains the workaround, but that hides the problem and leaves the bug in place. Route these sessions to engineering instead. The machine can draft the bug report, with the user's goal, what happened, and links to a few sessions. A good bug report is a legitimate outcome of this process, even though it doesn't change a single doc page.

## Coordinate cross-product fixes

Fixes for cross-product journeys often touch docs that another team owns. The fix might be an integration guide that spans both products, a comparison page that helps users pick one, or a link from your page to the right page in the other product's docs. Draft the change, but share the diagnosis and the example sessions with the other product's writers before it ships. Handoffs between products tend to stay broken when each team assumes the other one owns them.

## Keep every change traceable

Each change the machine drafts should link back to the pattern and sessions that prompted it. If the docs live in a repository, have the machine open one pull request per pattern, with the diagnosis and example sessions in the description. That makes review easier, and it lets you trace a later change in the logs back to a specific fix.

Review every change before it ships. The machine drafts quickly, but it can still misread a session or describe the product inaccurately. For corrections to technical content, ask an engineer who knows the current behavior to review them too.

## What the skill needs

As a sub-skill, this stage needs the diagnoses, the term map, write access to a branch of the docs source, and templates for boundary statements, briefs, tickets, and bug reports. Your style guide helps too, so the drafts match the rest of the docs. The output is a set of pull requests, tickets, and bug reports, each linked to its pattern.

<hr/>

*Continue to the next topic: [Stage 7: Test and close the loop](/ai/from-logs-to-improvements-evals.html)*
