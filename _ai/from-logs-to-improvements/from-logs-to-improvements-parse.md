---
title: "Stage 1: Parse the logs"
permalink: ai/from-logs-to-improvements-parse.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-03
order: 23
---

{% include_relative draft_notice.html %}

The first stage of the machine turns a pile of raw transcripts into a table you can sort and count. Raw logs are hard to work with because each session is a free-form conversation. One session might be three lines long, and the next might run for forty turns with pasted code and error messages. Until each session is reduced to the same few fields, you can't compare them.

| Input | Output | Human checkpoint |
|---|---|---|
| The raw log export | A table of session records for your focus product, with cross-product journeys flagged | Spot-check about a dozen records |

## Don't ask for themes

The tempting shortcut is to upload the whole export to an AI tool and ask it to find the themes. Given thousands of raw sessions at once, the AI tends to return something like "users are asking about authentication." That tells you almost nothing about what to fix, since authentication is a category, not a problem. The AI also can't hold thousands of sessions in view at once, so its themes reflect whatever it happened to read most closely.

Instead, have the AI work through the sessions in small batches, and produce the same short record for each one. The structure does the work that a vague request for themes can't.

## The session record

For each session, the AI fills in the following fields:

| Field | What the AI records |
|---|---|
| Products | The products the session involves. |
| Goal | What the user was trying to do, as a short phrase that keeps the user's own words. |
| Outcome | Succeeded, wrong answer, or gave up. |
| What went wrong | One sentence describing where the session broke down, if it failed. |
| Pages fetched | The doc pages the agent retrieved during the session, if the log records them. |

The goal field matters most, and the instruction to keep the user's words is the one the AI is most likely to ignore. Models like to tidy things up. If a user writes "thingamajig won't connect," the AI might record "device connection failure," which loses the vocabulary stage 5 needs and the phrasing stage 7 needs to test. Tell the AI explicitly to quote or closely paraphrase the user, and show it an example of a good goal and a bad one.

Don't ask for the failure cause yet. Working out why a session failed means checking the docs, which is slow and expensive. The machine does that in stage 4, and only for the patterns worth fixing.

## Filter to your focus product

Once every session has a record, filter the table to the sessions that involve your focus product. Pick the product that matters most to the business right now, which is usually either the one with the most sessions or a recent launch the company is betting on. If you analyze every product at once, the sessions about the products you don't own will swamp the ones you do. A single focus product also keeps the doc corpus manageable when the AI has to search it in stage 4.

Don't put on blinders, though. Keep the sessions where your product is one of several, and flag them as cross-product journeys. Users often move across products to get one task done. Sometimes they're following a real workflow, such as setting up authentication in one service and then calling another. Other times they're mixing up two products because they don't know which one to pick. Either way, these sessions tend to point to missing integration or comparison guidance, which is the kind of content described in [The docs-first approach](/ai/product-skills-docs-first.html). Since no single team owns the handoff between products, these gaps are easy to miss and often serious.

## Spot-check the records

Before you move on, compare about a dozen records with the raw sessions. Pick them at random, and include a few from each outcome. Check two things in particular:

- **Did the AI keep the user's phrasing?** If the goals read like product documentation headings, the AI rewrote them.
- **Did the AI judge the outcome correctly?** A common error is labeling a session as successful because the agent produced an answer, even though the user gave up partway through or said the answer didn't work.

If either problem shows up more than once or twice, tighten the instructions and run the batch again. This tuning takes a little time on the first run, but once the instructions work, you can reuse them every month.

## What the skill needs

As a sub-skill, this stage needs instructions that define each field, examples of good and bad records, the list of allowed outcomes, and the batch size. A batch of a few dozen sessions probably keeps the AI focused without making the run take forever. The output is a table, such as a CSV file, with one row per session.

<hr/>

*Continue to the next topic: [Stage 2: Triage the patterns](/ai/from-logs-to-improvements-triage.html)*
