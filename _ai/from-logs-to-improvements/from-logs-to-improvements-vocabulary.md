---
title: "Stage 5: Match user vocabulary"
permalink: ai/from-logs-to-improvements-vocabulary.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-08
order: 27
---

{% include_relative draft_notice.html %}

The previous topic, [Stage 4: Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html), diagnosed why each chosen pattern failed. One of the most common causes is findability, where a page or skill exists but the agent never retrieved it. Often that happens because the user's words don't match the words in the docs or the agent skill routing table, so the search misses the right material. This topic covers the fifth stage, where each pattern subagent finds those mismatches and turns them into specific terms to add in Stage 6.

| Input | Output | Post-run review focus |
|---|---|---|
| The first messages from Stage 1 for the assigned pattern, plus the product's docs and agent skills | An updated `term_map.json` of user terms, doc terms, and target files | Check the proposed vocabulary additions inside the Stage 6 bug diffs in the final report |

Vocabulary gets its own stage because the fix is different from other findability problems, and because the result keeps its value. A term map built on one run still applies on the next, and it grows with each run.

## Why the words don't match

Users and docs drift apart in predictable ways. [Natural user queries versus product feature lists](/ai/product-skills-chat-analysis.html#natural-user-queries-versus-product-feature-lists) describes several of these, and they're the main ones to look for:

- **Old and renamed features.** A user asks about "legacy analytics," but the feature was rebranded as something like "Analytics v2." The docs only use the new name, so nothing connects the two.
- **Goals instead of feature names.** A user asks how to "send a reminder before a payment is due," while the docs describe a "scheduled notification webhook."
- **Terms from other products.** Developers who come from a competitor's product bring that product's vocabulary with them.
- **Shorthand and slang.** Abbreviations, informal names, and error messages pasted as the whole question (such as `"401 invalid_token"` or `"webhook signature mismatch"`).
- **One name for two versions.** When a product releases a new version and keeps the old one, the plain product name can refer to either. This case works differently from the others, so it gets its own section [below](#when-one-name-covers-two-versions).

The agent can't bridge these gaps on its own if nothing in the docs or the product skill links the two terms. It might know the competitor's term or the legacy name from pre-training, but it doesn't know which current endpoint replaces it.

## Why testing before launch misses these mismatches

You might wonder why you can't catch these mismatches by testing the agent before launch. The problem is that internal tests use officially sanctioned terminology. Your team asks questions the way the docs are organized, while real users describe goals in their own words, mix up products, and ask for things the product can't do. As [Problems with product skills](/ai/product-skills-problems.html#evaluation-suites-arent-user-queries) notes, test suites written from internal specifications rarely look like real user queries.

The Barnett study that [Stage 4: Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html) draws on points the same way ([Barnett et al.](https://arxiv.org/abs/2401.05856)). Two of its main conclusions are that "validation of a RAG system is only feasible during operation," and that "the robustness of a RAG system evolves rather than designed in at the start." The authors also note that "RAG systems receive unknown input at runtime requiring constant monitoring," and that offline evaluation methods depend on "having access to labelled question and answer pairs."

In other words, you can't fully test the agent before launch, because you don't know yet what words users will type. The logs are the record of what they typed, and they supply the real phrasing that offline tests lack. The second conclusion fits this stage too. Your docs and agent skills get sturdier through repeated rounds of small fixes rather than one big effort up front, which is one reason the skill runs weekly and saves the term map between runs.

## Build the term map

Inside each pattern subagent, have the AI pull candidate terms from the verbatim `first_message` field in your local `stage1_session_records.jsonl` file. Don't use the goal summary for this. Even a close paraphrase is where an unfamiliar term is most likely to get swapped for a familiar one, and the unfamiliar terms are the ones this stage is looking for.

Next, have a deterministic script search the target product's doc files and agent skill files (`SKILL.md`) for each candidate term, keeping only the terms that are missing (`--missing-only`). On later runs, the script checks each candidate against your saved `term_map.json` first, so the map grows rather than starting over. For each new mismatch, the subagent records:

| Field | Example |
|---|---|
| User term | legacy analytics |
| Doc term | Analytics v2 |
| Type of mismatch | Renamed feature |
| Sessions | The number of sessions that used the term |
| File to update | The overview page or `SKILL.md` routing table where the doc term is introduced |

Sort the map by session count. A term that several users typed is worth adding, while a one-off typo usually isn't.

## Where to place the terms (in docs and agent skills)

Rather than pausing the run after Stage 5 to approve individual words, each subagent carries its missing terms directly into Stage 6 and drafts exact placements inside the proposed bug diffs. Add each term once, in a natural place, rather than stuffing lists of keywords into a page:

- **Headings and intros.** If users describe a goal (such as "send a reminder before a payment is due"), work their phrasing into the heading or opening paragraph of the page that covers it.
- **"Formerly called" notes.** For renamed features, a short note such as "Analytics v2 (formerly called legacy analytics)" connects the old name to the new one.
- **Agent skill routing tables (`SKILL.md`).** If you publish a product skill for coding agents, its routing table is one of the fastest places to bridge vocabulary gaps. A single row mapping a common user phrase (like `"payment reminder"` or `"legacy analytics"`) to the right capability and anti-substitution rule steers every session that loads the skill—without waiting for search indexes or model retraining.
- **Glossary entries and comparison notes.** A glossary entry or comparison sentence helps developers switching from another product find your equivalent feature.

{% include ads.html %}

## Publish the term map

The placements above fix one page or skill at a time, and they're the most reliable fix. When the page that covers a feature also contains the user's term, a search for that term reaches the right page directly. You can also publish the term map itself as a page, such as "Terminology and former names," that lists each user term, the term your docs use, and a link to the page that covers it.

Would an agent find a standalone terminology page, see that A means B, and follow the link? An agent that retrieves pages only once per question might pull up the terminology page without reaching the target guide, whereas a coding agent that searches several times in a row has a better chance of following the link. Either way, a standalone terminology page is a backstop for inline placements and skill routing tables rather than a replacement for them.

If you publish the page, link to it near the top of your `llms.txt` file with a description such as "Former feature names, aliases, and equivalents from other products." An `llms.txt` file is an index of links ([llms.txt proposal](https://llmstxt.org/)), so it can't map terms on its own, but it can point agents to a page that does.

The term map can also feed:

- **The product overview page.** [The docs-first approach](/ai/product-skills-docs-first.html) recommends defining precise vocabulary on the overview page for a product family.
- **Site search synonyms.** Many docs search engines let you define synonyms so a query for the old name returns the new page—helping both human readers and agents that call your search MCP server.
- **Redirects from old URLs.** Agents often guess URLs based on legacy feature names. A redirect from the old URL to the current page catches those guesses (see [Moved and broken URLs](/ai/product-skills-agent-friendly-docs.html#pages-the-agent-cant-reach)).

Keep any published page restricted to public terms users type—never internal code names—and let [Stage 7: Test and close the loop](/ai/from-logs-to-improvements-evals.html) track whether sessions using those terms stop failing over time. Each subagent saves its updates to `term_map.json` and moves straight into Stage 6.

## When one name covers two versions

Some mismatches aren't about users choosing the wrong word. Sometimes the same name now refers to two different things. The Places API in Google Maps Platform is a public example. The current version is called Places API (New), and the older version is now labeled Places API (Legacy) ([Places API overview](https://developers.google.com/maps/documentation/places/web-service/overview)). Legacy isn't the same as deprecated. Google describes Legacy as "an intermediate lifecycle step" between generally available and deprecated services, and says legacy services "will retain full support" ([Legacy products and features](https://developers.google.com/maps/legacy)).

That leaves the plain name "Places API" pointing at two APIs. When a user asks an agent how to search for nearby restaurants with the Places API, which version should the agent use? Should it write code for the legacy endpoints, which probably dominate the older code samples the model saw in training? Or should it use the new version, which is what the docs recommend? A term map that pairs a user term with a doc term doesn't handle this case well, because the user's term matches the docs fine. It just matches two sets of docs.

For this kind of mismatch, the map needs a different kind of row, one that pairs a single user term with both doc terms and says when to use each. In the docs, the fixes are mostly about telling the versions apart. A version label in every page title, a notice on each legacy page that names the current version and links to the migration guide, and separate `llms.txt` entries for each version all help an agent see that there are two APIs and pick the right one. The Places API legacy pages already carry a notice like that.

These sessions are also easy to misjudge in Stage 1. If the agent produced working code for the legacy API when the user wanted the current one, the session might look like a success, since the code runs. It's worth checking which version the code used, at least in the spot-check, since a working answer for the wrong version is still a failure.

## Pass naming problems to the product team

A term map helps the agent find the right page, but it doesn't address why the words drifted apart in the first place. What if hundreds of users still call a feature by the name it had a year ago? Did the rename reach the UI, the error messages, and the sales materials? What if users keep reaching for a competitor's term? Does your own name describe what the feature does? These are naming and positioning decisions, and they belong to the product and marketing teams rather than the docs.

When a mismatch shows up at that scale, send the relevant rows of the term map to the product team, along with a few of the sessions. The docs still need the synonyms and "formerly called" notes in the meantime, since users are searching with those words today. However, if the docs quietly absorb every naming problem, the product team might never learn that a name isn't working.

<hr/>

*Continue to the next topic: [Stage 6: Draft bugs proposing doc updates](/ai/from-logs-to-improvements-doc-updates.html)*