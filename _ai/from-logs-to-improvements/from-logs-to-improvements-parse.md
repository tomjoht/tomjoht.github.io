---
title: "Stage 1: Parse the logs"
permalink: ai/from-logs-to-improvements-parse.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-08
order: 23
---

{% include_relative draft_notice.html %}

The previous topic, [From logs to doc improvements](/ai/from-logs-to-improvements.html), introduced the eight stages of the skill. This topic covers the first stage, which turns a pile of raw transcripts into a table you can sort and count. Raw logs are hard to work with because each session is a free-form conversation. One session might be three lines long, and the next might run for forty turns with pasted code and error messages. Until each session is reduced to the same few fields, you can't compare them.

| Input | Output | Post-run review focus |
|---|---|---|
| The raw log export | A local file of session records for your focus product, with cross-product journeys and tool traces flagged | Spot-check about a dozen records if a pattern in the final report looks suspicious |

## Getting the data is half the battle

Before the skill even runs, getting access to real chat logs is usually harder than designing the prompts. Production chat transcripts are typically classified as confidential customer data because users paste proprietary code, internal project details, personal data, and occasional API keys into the chat box. You'll likely need to request access permissions, work with a data engineering or business intelligence team that owns the logging pipeline, and figure out how their upstream PII redaction and sampling affect the transcripts you see.

Even after you get access, the raw table is rarely in a neat format you can pass straight to an agent. Each row might pack forty turns of user prompts, assistant responses, and tool calls into nested JSON or multi-turn transcript strings. Plan on writing (or rather, asking your AI agent to write) a deterministic preprocessing script (for example, in Python) to unpack the export format, extract the structural fields, and save a clean local JSONL or CSV file before the AI reads a single conversation.

## Don't ask for themes

The tempting shortcut is to upload the whole export to an AI tool and ask it to find the themes. Given thousands of raw sessions at once, the AI tends to return something like "users are asking about authentication." That tells you almost nothing about what to fix, since authentication is a category, not a problem. The AI also can't hold thousands of sessions in view at once, so its themes reflect whatever it happened to read most closely.

Instead, have a deterministic script extract the exact structural fields first, and then have the AI work through the sessions in manageable batches to summarize each user's goal and outcome. The structure does the work that a vague request for themes can't. The result is a local table, such as a JSONL or CSV file, with one record per session.

## The session record

Each session record has the following fields:

| Field | What it contains |
|---|---|
| Session ID (`session_id`) | The ID from the log export, so any record can be traced back to its raw transcript in the restricted data table. |
| First message (`first_message`) | The first message the user typed into the chat, copied word for word, including typos, pasted errors, and code. |
| Products | The products or APIs the session involves. |
| Goal | What the user was trying to do, as a short phrase that keeps the user's own words. |
| Outcome | Succeeded, wrong answer, or gave up. |
| What went wrong | One sentence describing where the session broke down, if it failed. |
| Pages fetched and tools triggered | Which doc pages the agent retrieved, whether it loaded a product skill (`SKILL.md`), and whether it called a documentation search or MCP tool. |

The first two fields and the retrieval trace aren't written by the AI at all. A script can pull them straight from the export, which guarantees that nothing gets cleaned up along the way. Recording whether the agent triggered a product skill or documentation tool is just as helpful as recording which URLs it fetched—often a session fails because the agent relied entirely on its pre-trained weights and never called your docs or skill in the first place.

The `first_message` field gets special treatment because it's the most direct record of the user's own words. The first message usually states the goal before the agent has replied, so the agent's vocabulary hasn't influenced it yet. Later stages depend on that. [Stage 5: Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html) pulls user terms from it, and [Stage 7: Test and close the loop](/ai/from-logs-to-improvements-evals.html) saves a subset of first messages as local test queries. However, a verbatim message can also contain whatever the user pasted, such as proprietary code or credentials. Keep the `first_message` field in your local scratch directory, and don't paste it into shared bug reports or public documents later.

The goal field is the AI's summary, and the instruction to keep the user's words is the one the AI is most likely to ignore. Models like to tidy things up. If a user writes "thingamajig won't connect," the AI might record "device connection failure." That goal reads well, but [Stage 2: Triage the patterns](/ai/from-logs-to-improvements-triage.html) builds its categories from the goals, and categories built from tidy goals tend to mirror your doc headings rather than what users were trying to do. Tell the AI explicitly to quote or closely paraphrase the user, and show it an example of a good goal and a bad one.

Don't ask for the failure cause yet. Working out why a session failed means checking the docs, which is slow and expensive. The skill does that in [Stage 4: Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html), and only for the patterns worth fixing.

## Filter to your focus product (and drop false-positive intent noise)

After every session has a record, filter the table to the sessions that involve your focus product. Even if your data team already filtered the export using an upstream intent classifier (such as a flag for "payments intent"), inspect what's inside. Upstream intent flags often catch any session that mentions a domain word, even when the user isn't touching your APIs. 

For example, in a log export filtered for "payments intent," a large share of sessions can turn out to be users building generic websites that happen to display a static pricing table or a mock checkout button—without calling a single payments SDK or REST endpoint. Dropping generic non-API noise early prevents hobby prompts from swamping developer workflows (often more than half of the rows in a keyword-filtered export turn out to be generic mentions rather than genuine product sessions).

Don't put on blinders when you filter, though. Keep the sessions where your product is one of several, and flag them as cross-product journeys. Users often move across products to get one task done. Sometimes they're following a real workflow, such as setting up authentication in one service and then calling another. Other times they're mixing up two products because they don't know which one to pick. 

Either way, these sessions tend to point to missing integration or comparison guidance, which is the kind of content described in [The docs-first approach](/ai/product-skills-docs-first.html). Since no single team owns the handoff between products, these gaps are easy to miss and often serious.

Spotting a cross-product journey works best when you combine two checks: the AI's reading of the conversation (for when a user names two products) and the script's check of the retrieval trace (for when the agent fetches pages or skills from more than one product, even if the user only named one). A journey can also span several sessions if a user starts a new chat an hour later; unless the logs include a pseudonymous account ID, single-session logs will undercount those multi-session journeys.

{% include ads.html %}

## Why the skill saves to disk and keeps moving (instead of pausing at every stage)

It might seem safer to add a human approval checkpoint at the end of every stage. However, sitting at your desk for an hour while an agent parses logs, waits for your approval, categorizes patterns, waits again, scans docs, and waits again is tedious—especially when you don't know every product area well enough to judge intermediate tables on the fly.

Instead of pausing execution after Stage 1, have the skill write `stage1_session_records.jsonl` to a local scratch directory and proceed automatically through all eight stages, producing a single, short top-down report at the end. Saving each stage's output file to disk gives you the same safety net without the idle waiting: if a conclusion in the final report looks questionable, you can open `stage1_session_records.jsonl`, spot-check a dozen records against the raw transcripts, tighten the Stage 1 prompt if the AI rewrote user phrasing or misjudged outcomes, and re-run from Stage 2 forward without re-parsing the raw export.

<hr/>

*Continue to the next topic: [Stage 2: Triage the patterns](/ai/from-logs-to-improvements-triage.html)*