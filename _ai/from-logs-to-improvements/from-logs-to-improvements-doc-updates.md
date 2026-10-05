---
title: "Stage 6: Make the doc updates"
permalink: ai/from-logs-to-improvements-doc-updates.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-04
order: 28
---

{% include_relative draft_notice.html %}

The previous topic, [Stage 5: Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html), built a term map of the words users type and the words the docs use. At this point, the skill knows which patterns to fix, why they failed, and which terms users need. This topic covers the sixth stage, which turns each diagnosis into a change. Some fixes are doc changes, but others are tickets for the docs platform team or bug reports for engineering.

| Input | Output | Human checkpoint |
|---|---|---|
| The diagnoses from stage 4 and the term map from stage 5 | Reviewable doc changes, platform tickets, and bug reports, each with a tracking bug that explains it | Approve every change before it ships |

## Match the fix to the cause

Each cause from [Stage 4: Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html) leads to a different kind of output:

| Cause | What the skill drafts | Owner |
|---|---|---|
| The agent couldn't read the page | A ticket describing the rendering, bot protection, or page size problem, with the affected URLs | Docs platform |
| A supported scenario has no page | New content, or a brief for new content | Docs |
| The scenario isn't supported | A boundary statement | Docs, plus feedback to product |
| The agent didn't retrieve the page | Term additions from stage 5, or a clearer title, links, and `llms.txt` entries | Docs |
| The agent misread the page | Clearer labels, or a sentence that explains a value or an error | Docs |
| The content was wrong | A correction, flagged for engineering review | Docs |
| It isn't a docs problem | A bug report with the session evidence, plus a note in the docs if the behavior is unintuitive | Product or engineering, plus docs |

Small fixes, such as term additions, links, and corrections, are good candidates for the AI to draft in full. New content is harder. The AI can draft it, but the result needs more of your attention, since it has to fit your docs' structure and be accurate. For a large gap, a brief that describes what's missing, quotes the users' phrasing, and lists the sessions might be a better output than a full draft. Templates for boundary statements, briefs, tickets, and bug reports keep the drafts consistent from run to run, and your style guide helps them match the rest of the docs.

## Document the boundaries

When users ask for something the product doesn't support, it might seem like there's nothing to write. However, silence in the docs is a likely source of hallucinations. If the docs say nothing about a feature, the agent has no way to know the feature doesn't exist. It sees related terms and tries to invent a path, often with steps that look plausible. The Barnett study notes this risk, saying that "for questions that are related to the content but don't have answers the system could be fooled into giving a response" ([Barnett et al.](https://arxiv.org/abs/2401.05856)). In other words, if you want an agent to tell users that the product can't do something, the docs have to say so explicitly. An agent can't infer a limitation from a missing page.

This can be a hard case to make. Product managers usually want the docs to emphasize what a product can do, and staying quiet about a limitation draws less attention to it than writing it down. That approach worked better when people read the docs directly, since a reader who found nothing could conclude the feature didn't exist. An agent, in contrast, tends to fill the gap with an answer. The logs help you make the case, since they show how many users asked for the missing feature and what the agent told them. A session where the agent invented steps for an unsupported feature is a strong argument for writing the limitation down.

The fix is a plain statement of the limitation, such as "X isn't supported. To do Y, use Z instead." Put it where users would look for the feature, such as the page about the closest supported feature. A clear boundary gives the agent something true to say. Pairing the limitation with an alternative also tends to go over better with product managers, since it points users toward something the product does do. If many users ask for the same unsupported feature, also pass that demand to the product team, since it's evidence for the roadmap.

## Call out unintuitive behavior, and report the bug

Some patterns turn out to be product bugs or confusing UI. For these, both the docs and the product need attention. If a feature behaves in an unintuitive way, call it out in the docs, along with a workaround if one exists. Users are running into the problem today, and a product fix might take months or years to ship, if it ships at all. A note that explains the behavior also gives the agent something true to say in the meantime.

However, don't let the doc note be the only outcome. File a bug report too, so the product team learns about the problem. If the docs quietly absorb every confusing behavior, the people who could fix it might never hear about it. When the product changes, update or remove the note.

## Explain the reasoning behind each change

A pull request that shows up with changes and no explanation is easy to reject. A reviewer who sees a reworded heading or a new paragraph will reasonably wonder why the change is needed and what the larger context is. The same goes for a bug report that an AI drafted from chat logs. Engineers might be skeptical of it, and the skepticism is reasonable, since the AI could have misread the sessions.

For that reason, each change from this stage should come with a tracking bug that records the chain of reasoning behind it. The skill has already produced most of that chain in earlier stages, so it mostly needs to collect it in one place:

- **The pattern.** The category, its session count, and its failure rate, from [Stage 2: Triage the patterns](/ai/from-logs-to-improvements-triage.html).
- **Why it was chosen.** The business value rating and the high-value scenario it matches, from [Stage 3: Weigh product priorities](/ai/from-logs-to-improvements-priorities.html).
- **The evidence.** A few relevant turns from the sessions, quoted word for word with their session IDs.
- **The diagnosis.** The cause from stage 4 and the pages involved. For a product problem, include the steps you followed to reproduce it.
- **The proposed change.** What the change does, and how [Stage 7: Test and close the loop](/ai/from-logs-to-improvements-evals.html) will test it.

Then link the doc change, ticket, or bug report to the tracking bug. A reviewer can check the reasoning in a few minutes, and anyone who comes across the change later can see why it was made. In contrast, a batch of 20 changes or AI-summarized bug reports with no evidence is easy to ignore, and it might make the next batch easier to ignore too. File a few well-supported changes rather than everything the skill flags.

The output of this stage is a set of doc changes, tickets, and bug reports, each linked to a tracking bug that explains it.

{% include ads.html %}

## Coordinate cross-product fixes

Fixes for cross-product journeys often touch docs that another team owns. The fix might be an integration guide that spans both products, a comparison page that helps users pick one, or a link from your page to the right page in the other product's docs. Draft the change, but share the tracking bug and the example sessions with the other product's writers before it ships. Handoffs between products tend to stay broken when each team assumes the other one owns them.

## Checkpoint: review every change

Review every change before it ships. The skill drafts quickly, but it can still misread a session or describe the product inaccurately. For corrections to technical content, ask a subject matter expert who knows the current behavior to review them too.

Finding the right expert can be a challenge in itself. At a large company, hundreds of engineers might work on a product, and the docs team often doesn't know the content well enough to make every call alone. The page's version history is a good place to start. If your docs system records who wrote each change and who approved it, the skill can dig through the history of the affected page and suggest the people who most recently worked on that section. They might not still be the right people, since teams change, but the history is a better starting point than a guess.

For bug reports and tickets, check that the quoted sessions show what the report claims, since those go to people outside the docs team and carry your name.

<hr/>

*Continue to the next topic: [Stage 7: Test and close the loop](/ai/from-logs-to-improvements-evals.html)*
