---
title: "From logs to doc improvements"
permalink: ai/from-logs-to-improvements.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-08
order: 22
redirect_from:
- /ai/product-skills-fixes-from-logs.html
---

{% include_relative draft_notice.html %}

Suppose you get a large export of logs from people using an AI assistant or coding agent with your product. The users were trying to build something, and the logs show how often they succeeded. Your job is to raise that success rate by improving your documentation and agent skills. Where do you start with 10,000 sessions? Do you read them all? Do you hand the export to an AI and ask for themes? Which problems do you fix first?

This chapter describes a machine for that job. The machine is a skill made up of eight stages, paired with deterministic scripts and isolated subagents. I like to think of multi-stage skills as *machines* because that's how they operate: messy logs go in one end, and reviewable documentation and skill updates come out the other. AI does the reading, categorizing, doc scanning, and diff drafting, while you review a concise report at the end and decide which tickets enter your team's triage queue. Nobody is going to read 10,000 sessions by hand, so the goal is to automate the heavy lifting while keeping writers in charge of what ships.

The Product skills chapter has a topic on [mining users' AI chat sessions](/ai/product-skills-chat-analysis.html), which covers what logs can reveal, such as content gaps, vocabulary mismatches, and hallucinations. This chapter picks up from there and turns that analysis into a repeatable weekly workflow.

## A blueprint for the machine

This chapter is a blueprint for the machine rather than a copy-paste prompt. A few design choices run through all eight stages, and each one exists because the simpler approach breaks down on real production logs:

- **Getting and cleaning the data takes real engineering.** Production transcripts are typically classified as confidential customer data, packed into nested export tables, and diluted by upstream intent filters that flag generic website mentions alongside real API usage.
- **Mid-run approval stops are a bottleneck.** Sitting at your desk for an hour to approve intermediate tables across products you don't own is tedious. Writing each stage's output to local scratch files lets the skill run end-to-end unattended so you can read a single three-page report at the end.
- **Scanning multiple doc sets in one thread causes context compaction.** Keeping Stages 1 through 3 batched together (to count patterns across the dataset) and then spawning one fresh-context subagent per shortlisted pattern for Stages 4 through 7 prevents context-window degradation.
- **Atomic bug proposals beat giant multi-product pull requests.** Packaging each recommended doc or skill change into its own `[Chat Log Bot]` ticket—with a unified `diff`, paraphrased evidence, and suggested SMEs—lets your triage queue route each fix to the writer who knows that product area.
- **Weekly longitudinal tracking beats synthetic mid-run evals.** Because doc changes haven't shipped yet when a weekly log pass finishes, tracking whether failure rates drop across subsequent weekly runs for resolved `[Chat Log Bot]` tickets is how you measure real-world impact.

You'll fit the actual skill to your own log schema, docs repository, issue tracker, and coding agent. Models improve and export formats shift, so the scripts and prompts inside each stage will evolve, while the underlying eight-stage structure stays stable.

## A relay of machines: passing batons through your issue tracker

You might notice that this skill stops at filing `[Chat Log Bot]` tickets into a central intake queue rather than opening and merging pull requests directly. That boundary is deliberate. Instead of building one giant skill that tries to read logs, navigate team ownership, edit twenty product doc sets, and merge pull requests in a single loop, it works much better to build a relay of specialized skills that pass structured batons to each other through your issue tracker:

1. **The log-analysis machine (`[Chat Log Bot]`):** Runs weekly, distills thousands of raw sessions into two or three high-priority failure patterns, and files self-contained bug tickets—each with an explicit unified `diff`, paraphrased session evidence, and source links—into a central documentation intake queue.
2. **An automated triage and routing machine:** Runs on a separate schedule (for example, hourly on weekdays) watching that central intake queue alongside human-filed requests and page-feedback widgets. It checks each ticket for completeness and necessity, calibrates priority, and consults a version-controlled routing matrix (mapping doc URL paths and products to writer pods or team aliases) to route the ticket to the right pod queue.
3. **A bug-to-pull-request machine (the next baton in the relay):** Once a ticket is triaged and routed to a pod queue, a separate bug-fixing skill can pick up the structured ticket, apply or refine its proposed `diff` in a clean branch, run style and build checks, and stage a focused pull request for the product-area writer and engineering SME to review.

Passing batons through an issue tracker keeps each machine bounded enough to fit in a clean context window, decouples log analysis from team reorganizations, and leaves an auditable record at every handoff where a writer can step in, adjust a priority, or override a decision.

{% include ads.html %}

## The stages of the machine

This chapter covers eight stages. Stages 1 through 3 run across the whole batch to count and rank patterns; Stages 4 through 7 run in parallel subagents (one per shortlisted pattern); and Stage 8 collects everything into a single top-down report.

| Stage | What it does | What comes out |
|---|---|---|
| [1. Parse the logs](/ai/from-logs-to-improvements-parse.html) | Unpacks the export, turns each session into a structured record with tool traces, and filters out non-API intent noise. | Local session records (`stage1_session_records.jsonl`) |
| [2. Triage the patterns](/ai/from-logs-to-improvements-triage.html) | Groups sessions into a saved goal taxonomy and ranks categories by failed sessions. | Ranked failure patterns (`stage2_ranked_patterns.json`) |
| [3. Weigh product priorities](/ai/from-logs-to-improvements-priorities.html) | Rates each pattern by business value, picks 2 to 3 patterns to fix, and spawns one parallel subagent per pattern. | Shortlist (`stage3_priority_shortlist.json`) and isolated pattern subagents |
| [4. Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html) | Each subagent checks its pattern's failed sessions against the product's docs and agent skills (`SKILL.md`) to find the cause. | Root-cause diagnosis per pattern (`stage4_pattern_<k>.md`) |
| [5. Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html) | Compares verbatim user terms with the terms in your docs and agent skills. | Cumulative term map (`term_map.json`) |
| [6. Draft bugs proposing doc updates](/ai/from-logs-to-improvements-doc-updates.html) | Packages each recommended doc or skill change into a self-contained `[Chat Log Bot]` bug proposal with an explicit `diff` and reasoning chain. The skill doesn't edit the docs itself. | Reviewable bug proposals for your triage queue |
| [7. Test and close the loop](/ai/from-logs-to-improvements-evals.html) | Checks open and closed `[Chat Log Bot]` bugs across weekly runs to track longitudinal failure-rate drops, and saves local test prompts. | Prior-bug tracking table and local test queries (`stage7_eval_queries.jsonl`) |
| [8. Reflect and improve the machine](/ai/from-logs-to-improvements-reflect.html) | Compiles a concise, three-page top-down report for the run and reviews the friction log to update the skill. | Top-down executive report and proposed skill updates |

Keeping the stages modular makes each one easy to inspect and rerun (see [Modularity of skills](/ai/skills-modularity.html)). Instead of halting after every stage for human sign-off, each stage writes its output to a local scratch file and passes control straight to the next stage. Each stage page opens with a summary table showing its input, its local output file, and your **post-run review focus** when you read the finished report at the end of the run. If a diagnosis or category in the final report looks off, you can open the saved scratch file for that stage, adjust the taxonomy or prompt, and rerun from that point forward.

## What you need before you start

To build and run a workflow like this, you'll need five things:

- **A log export and a deterministic preprocessing script.** You'll need access to full session transcripts (not just final answers), clarity on your company's data-privacy rules for customer logs, and a script (for example, in Python) to unpack nested export rows into structured fields.
- **The retrieval and tool trace for each session.** Knowing which doc pages the agent fetched and whether it triggered a product skill (`SKILL.md`) or MCP search tool separates "missing doc" from "unretrieved skill" or "misread table." As noted in [Documentation forensics](/ai/product-skills-chat-analysis.html#documentation-forensics-and-hallucination-root-causes), platforms that log only the final response show you that an answer was wrong, but not why.
- **Access to your docs and agent skill source.** Opening your documentation repository and `SKILL.md` files inside a coding agent lets pattern subagents search exact filenames, verify line numbers, and draft unified diffs.
- **A short list of high-value scenarios.** Company-level priorities (such as OKRs and product-manager input) let Stage 3 separate business-important developer workflows from hobby projects.
- **An issue-tracker triage queue (plus optional skill-testing tools).** Because Stage 6 proposes atomic `[Chat Log Bot]` tickets for product-area writers and Stage 7 tracks those tickets across weekly runs to measure whether failure rates drop over time, you need a way to search and file tickets in your issue tracker—along with optional evaluation tooling (see [Testing a skill](/ai/skills-testing.html)) when writers want to run local before-and-after tests on a skill change.

<hr/>

*Continue to the next topic: [Stage 1: Parse the logs](/ai/from-logs-to-improvements-parse.html)*