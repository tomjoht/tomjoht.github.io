---
title: "Stage 6: Draft bugs proposing doc updates"
permalink: ai/from-logs-to-improvements-doc-updates.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-08
order: 28
---

{% include_relative draft_notice.html %}

The previous topic, [Stage 5: Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html), built a term map of the words users type and the words the docs and agent skills use. At this point, each pattern subagent knows why its assigned pattern failed and which terms users need. This topic covers the sixth stage, which turns each diagnosis into a bug that proposes a specific doc or skill change. The skill doesn't edit the docs itself. It drafts the bugs, and writers who own each product area make the actual edits later.

| Input | Output | Post-run review focus |
|---|---|---|
| The diagnosis from Stage 4, the term map from Stage 5, and existing open `[Chat Log Bot]` bugs | Self-contained bug proposals (one per recommended doc or skill change), each with an explicit `diff` block, five-part reasoning chain, and suggested SMEs | Read the proposed bugs and diffs in the final report, decide which ones to file into the triage queue, and let product-area writers ship the pull requests |

## Why proposing atomic bugs beats editing docs directly

It might seem simplest to have the AI edit the documentation source files directly and open pull requests for you to merge. However, that approach breaks down at scale. A single log-analysis run often uncovers fixes across three different products, multiple doc sets, and several agent skill files (`SKILL.md`), each owned by different writers and engineering teams. Having the agent open one giant multi-product pull request creates an unreviewable bottleneck—and as the person running the log skill, you probably aren't the subject matter expert for every product area it touches.

Instead, have Stage 6 package **each distinct recommended doc or skill update into its own self-contained bug ticket**—complete with an explicit unified `diff` block right in the ticket body—and route it to your documentation team's triage intake queue:

- **One bug per recommended doc or skill update.** Separate doc page edits from agent skill edits (and separate different products) so each ticket can be assigned to a single writer who knows that area.
- **Check open tickets first to avoid weekly duplicates.** Before drafting a new bug proposal, have the skill search your bug tracker for open `[Chat Log Bot]` tickets. If an open ticket from last week's run already covers the same fix, skip proposing a duplicate while the writer works on it.
- **Let triage assign each ticket to the right author.** Once you approve and file the recommended tickets after reading the final report, your triage process routes each bug to the writer or pod who owns that product area. That writer can assess the AI's reasoning, adjust the proposed `diff`, and open a focused pull request.

## Handing the baton to an automated triage bot (and a future PR bot)

A natural worry with filing `[Chat Log Bot]` tickets every week is whether you're just shifting the bottleneck from log reading to manual bug triage. If a human had to manually sort, priority-score, and route every bot-filed ticket across dozens of APIs, the intake queue would back up quickly.

Instead, treat Stage 6 as a baton handoff between specialized machines:

- **Machine 1 (`[Chat Log Bot]`) files into one central intake queue.** The log-analysis skill shouldn't hard-code your organization's writer assignments or team hierarchy, which change over time. It simply drops each self-contained `[Chat Log Bot]` ticket into a central documentation intake queue, complete with the target page URL, repository path, unified `diff`, and recent contributors from `git log`.
- **Machine 2 (an automated triage and routing bot) screens and routes the intake queue.** A separate scheduled skill (for example, an hourly sidecar automation) monitors that central intake queue alongside user feedback and stakeholder requests. For each incoming ticket, the triage bot checks completeness (whether the ticket specifies a bounded deliverable, target location, verifiable source of truth, and sign-off reviewer), calibrates priority and severity, and reads a version-controlled **routing matrix**—a Markdown table in your repo that maps documentation paths and product areas to writer pods or team aliases. Assigning routed tickets to a pod alias rather than an individual writer lets each sub-team distribute work based on current bandwidth.
- **Machine 3 (a bug-to-PR skill) turns routed tickets into pull requests.** Once a ticket sits in a pod's triaged queue with a validated target path and a proposed unified `diff`, the next machine in the relay—a dedicated bug-fixing skill—can pick up the ticket, apply the edit in a branch, run linters and link checks, and stage a pull request for the writer to review.

Breaking the workflow into these baton handoffs keeps each skill modular and prevents any single automation from making unreviewed leaps from raw customer logs straight into production docs.

## Match the fix to the cause

Each cause from [Stage 4: Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html) leads to a different kind of proposed ticket:

| Cause | What the skill drafts inside the bug proposal | Owner |
|---|---|---|
| The agent couldn't read the page | A platform ticket describing the rendering, bot protection, or page size problem, with the affected URLs | Docs platform |
| A supported scenario has no page | A content brief or initial draft diff | Docs |
| The scenario isn't supported | A boundary statement diff (`"X isn't supported. To do Y, use Z instead."`) for the page and product skill | Docs, plus feedback to product |
| The agent didn't retrieve the page or skill | Vocabulary additions from Stage 5, a clearer title, `llms.txt` entries, or runtime skill registration | Docs / skill owners |
| The agent misread the page or skill | A diff adding clearer table labels, inline setup steps, or anti-substitution rules in `SKILL.md` | Docs / skill owners |
| The content was wrong | A correction diff with suggested engineering SMEs from version history | Docs |
| It isn't a docs problem | A product bug report with reproduction steps, plus a doc note if the behavior is unintuitive | Product or engineering, plus docs |

Small fixes—such as vocabulary bridges, inline setup steps, boundary statements, and skill rules—work well as exact unified `diff` blocks inside the bug description. For a large content gap where a whole new guide is needed, a structured brief inside the bug ticket works better than a speculative 500-line draft.

## Document the boundaries

When users ask for something the product doesn't support, it might seem like there's nothing to write. However, silence in the docs is a prime source of hallucinations. If the docs say nothing about a feature, the agent has no way to know the feature doesn't exist. It sees related terms and tries to invent a path, often with steps that look plausible. 

The Barnett study notes this risk, saying that "for questions that are related to the content but don't have answers the system could be fooled into giving a response" ([Barnett et al.](https://arxiv.org/abs/2401.05856)). If you want an agent to tell users that the product can't do something, the docs and product skill have to say so explicitly.

Product managers usually want the docs to focus on what a product can do, and staying quiet about a limitation draws less attention to it than writing it down. That approach worked better when people read the docs directly, since a human reader who found nothing could conclude the feature didn't exist. An agent, in contrast, tends to fill the gap with an invented endpoint or an unauthorized substitution.

The fix is a plain statement of the limitation, such as "X isn't supported. To do Y, use Z instead," placed on the page for the closest supported feature and in your product skill's routing rules. Pairing the limitation with a supported alternative gives the agent something true to say and points users toward a path that works.

## Call out unintuitive behavior, and report the bug

Some patterns turn out to be product bugs or confusing UI. For these, both the docs and the product need attention. If a feature behaves in an unintuitive way, propose a callout in the docs along with a workaround if one exists—users are hitting the problem today, and a product fix might take months to ship. At the same time, file a companion bug for the product team so the docs don't quietly absorb a broken workflow forever.

{% include ads.html %}

## Explain the reasoning behind each bug—without leaking confidential customer transcripts

A bug report or pull request that shows up with a proposed change and no context is easy to reject. Engineers and writers are reasonably skeptical of AI-generated tickets, because an agent can misread a session. To make each ticket verifiable in a few minutes, structure every bug body around a five-part chain of reasoning:

1. **The pattern.** The category, its failed and total session counts, and its failure rate from [Stage 2: Triage the patterns](/ai/from-logs-to-improvements-triage.html).
2. **Why it was chosen.** The business value rating and the high-value scenario it affects from [Stage 3: Weigh product priorities](/ai/from-logs-to-improvements-priorities.html).
3. **The evidence (paraphrased, never verbatim customer quotes).** Don't quote user turns word for word in the bug report. Raw chat transcripts are almost always classified as confidential customer data because users paste company names, unreleased product ideas, personal data, and credentials into chat sessions—while internal bug trackers are typically visible across your whole company. Instead, cite the `session_id` and the restricted log table (so authorized team members can look up the raw transcript if needed), **paraphrase** the developer's goal and where the assistant broke down, and quote only individual 1-to-3-word technical terms or error strings being mapped (such as `"legacy analytics"` or `"401 invalid_token"`).
4. **The diagnosis.** The Stage 4 check, the pages or skills involved, and revision-pinned repository links to the exact source lines (never local `file:///` paths from your workstation).
5. **The proposed change and unified diff.** An explicit `diff` block showing the exact lines to add or edit, plus a note on how [Stage 7: Test and close the loop](/ai/from-logs-to-improvements-evals.html) will track whether the error stops appearing.

## Flag AI-filed bugs clearly so nobody thinks you wrote them by hand

When an agent files bugs through a CLI under your account, the bug tracker shows your name as the reporter. Without clear labeling, triagers and engineers will assume you personally investigated and wrote every word.

Make the AI authorship unmistakable in three places:

- **Prefix the bug title:** Start every ticket title with a bracketed bot tag, such as `[Chat Log Bot] Payments API: Add inline API key setup to quickstart.md`, so triage rules and readers immediately see where the ticket came from.
- **Open with a bold bot banner and review disclaimer:** Start the description with a bold header (`✦ Doc bug filed by Chat Log Bot` or something similar) followed by a one-sentence preface explaining that the bug was generated from an automated analysis of chat logs and asking the writer to review and assess carefully whether the change should be made.
- **Close with an attribution footer:** End the ticket with a short footer (`✦ Posted by the Chat Log Bot, an AI agent, after running the <skill name>.`).

To help triage route the ticket, have the subagent inspect the git history of each target file (`git log` or `git blame`) and list the writers and engineering reviewers who most recently worked on that section inside the bug body.

<hr/>

*Continue to the next topic: [Stage 7: Test and close the loop](/ai/from-logs-to-improvements-evals.html)*