---
title: "Stage 1: Parse the logs"
permalink: ai/from-logs-to-improvements-parse.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-04
order: 23
---

{% include_relative draft_notice.html %}

The previous topic, [From logs to doc improvements](/ai/from-logs-to-improvements.html), introduced the eight stages of the skill and the principles behind them. This topic covers the first stage, which turns a pile of raw transcripts into a table you can sort and count. Raw logs are hard to work with because each session is a free-form conversation. One session might be three lines long, and the next might run for forty turns with pasted code and error messages. Until each session is reduced to the same few fields, you can't compare them.

| Input | Output | Human checkpoint |
|---|---|---|
| The raw log export | A table of session records for your focus product, with cross-product journeys flagged | Spot-check about a dozen records |

## Don't ask for themes

The tempting shortcut is to upload the whole export to an AI tool and ask it to find the themes. Given thousands of raw sessions at once, the AI tends to return something like "users are asking about authentication." That tells you almost nothing about what to fix, since authentication is a category, not a problem. The AI also can't hold thousands of sessions in view at once, so its themes reflect whatever it happened to read most closely.

Instead, have the AI work through the sessions in small batches and produce the same short record for each one. A batch of a few dozen sessions probably keeps the AI focused without making the run take forever. The structure does the work that a vague request for themes can't. The result is a table, such as a CSV file, with one row per session.

## The session record

Each session record has the following fields:

| Field | What it contains |
|---|---|
| Session ID | The ID from the log export, so any record can be traced back to its raw transcript. |
| First message | The user's opening question, copied word for word, including typos, pasted errors, and code. |
| Products | The products the session involves. |
| Goal | What the user was trying to do, as a short phrase that keeps the user's own words. |
| Outcome | Succeeded, wrong answer, or gave up. |
| What went wrong | One sentence describing where the session broke down, if it failed. |
| Pages fetched | The doc pages the agent retrieved during the session, if the log records them. |

The first two fields aren't written by the AI at all. A script can usually copy them straight from the export, which guarantees that nothing gets cleaned up along the way. The first message is the raw material for later stages. [Stage 5: Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html) pulls user terms from it, and [Stage 7: Test and close the loop](/ai/from-logs-to-improvements-evals.html) uses it as an eval query.

The goal field is the AI's summary, and the instruction to keep the user's words is the one the AI is most likely to ignore. Models like to tidy things up. If a user writes "thingamajig won't connect," the AI might record "device connection failure." That goal reads well, but [Stage 2: Triage the patterns](/ai/from-logs-to-improvements-triage.html) builds its categories from the goals, and categories built from tidy goals tend to mirror your doc headings rather than what users were trying to do. Tell the AI explicitly to quote or closely paraphrase the user, and show it an example of a good goal and a bad one.

Don't ask for the failure cause yet. Working out why a session failed means checking the docs, which is slow and expensive. The skill does that in [Stage 4: Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html), and only for the patterns worth fixing.

## Filter to your focus product

After every session has a record, filter the table to the sessions that involve your focus product. Pick the product that matters most to the business right now, which is usually either the one with the most sessions or a recent launch the company is betting on. If you analyze every product at once, the sessions about the products you don't own will swamp the ones you do. A single focus product also keeps the doc corpus manageable when the AI has to search it in stage 4.

Don't put on blinders, though. Keep the sessions where your product is one of several, and flag them as cross-product journeys. Users often move across products to get one task done. Sometimes they're following a real workflow, such as setting up authentication in one service and then calling another. Other times they're mixing up two products because they don't know which one to pick. Either way, these sessions tend to point to missing integration or comparison guidance, which is the kind of content described in [The docs-first approach](/ai/product-skills-docs-first.html). Since no single team owns the handoff between products, these gaps are easy to miss and often serious.

Spotting a cross-product journey isn't always easy, though. The AI decides which products a session involves by reading the conversation, and a user who's stuck at a handoff often knows the name of only one of the two products. For example, a user might ask why the token they got from product A keeps getting rejected, without ever naming product B, the service that rejects it. From that conversation, the AI would list only product A in the Products field. However, the retrieval trace for the same session might show that the agent fetched pages from both product A's docs and product B's docs. A script can check the trace and flag any session where the agent fetched pages from more than one product's docs, whatever the user called things. As such, it's worth using both checks, the AI's reading of the conversation and the script's check of the trace, since each one probably catches journeys the other misses.

A journey can also span several sessions. A user might ask about authentication in one session and then start a new session an hour later to ask about calling the second service. Session records can't connect those two sessions unless the logs include a user or account ID, so the number of cross-product journeys you find is likely lower than the real number.

{% include ads.html %}

## Checkpoint: spot-check the records

Before you move on, compare about a dozen records with the raw sessions. Pick them at random, and include a few from each outcome and a few flagged as cross-product journeys. Check two things in particular:

- **Did the AI keep the user's phrasing?** If the goals read like product documentation headings, the AI rewrote them.
- **Did the AI judge the outcome correctly?** One likely error is labeling a session as successful because the agent produced an answer, even though the user gave up partway through or said the answer didn't work.

If either problem shows up more than once or twice, tighten the instructions and run the batch again. This tuning probably takes some time on the first run, but once the instructions work, you can reuse them with each iteration.

A dozen records out of 10,000 might seem like too few to mean anything. However, the spot-check isn't trying to measure the AI's accuracy across the whole export. It's looking for instructions that fail in a consistent way, and a consistent failure tends to show up even in a small sample. If the AI rewrites goals in product terms, it'll probably do it in several of your twelve records, not just one. Rarer errors are harder to catch here, which is one reason the checkpoints in later stages also include reading raw sessions.

<hr/>

*Continue to the next topic: [Stage 2: Triage the patterns](/ai/from-logs-to-improvements-triage.html)*
