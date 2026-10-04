---
title: "Stage 5: Match user vocabulary"
permalink: ai/from-logs-to-improvements-vocabulary.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-03
order: 27
---

{% include_relative draft_notice.html %}

The fifth stage finds the places where users and the docs use different words for the same thing. When a user's terms don't match the docs, the agent's search can miss the right page even though it exists. Stage 4 flags these cases, and this stage turns them into a list of specific terms to add to the docs.

| Input | Output | Human checkpoint |
|---|---|---|
| The goals from stage 1 for each chosen pattern, plus the docs source | A term map of user terms, doc terms, and the pages to update, plus a published terminology page | Approve which terms to add and where |

Vocabulary gets its own stage because the fix is different from other findability problems, and because the result keeps its value. A term map built this month still applies next month, and it grows with each run.

## Why the words don't match

Users and docs drift apart in predictable ways. [Natural user queries versus product feature lists](/ai/product-skills-chat-analysis.html#natural-user-queries-versus-product-feature-lists) describes several of these, and they're the main ones to look for:

- **Old and renamed features.** A user asks about "legacy analytics," but the feature was rebranded as something like "Insights v2." The docs only use the new name, so nothing connects the two.
- **Goals instead of feature names.** A user asks how to "send a reminder before a payment is due," while the docs describe a "scheduled notification webhook."
- **Terms from other products.** Developers who come from a competitor's product bring that product's vocabulary with them.
- **Shorthand and slang.** Abbreviations, informal names, and error messages pasted as the whole question.

The agent can't bridge these gaps on its own if nothing in the docs links the two terms. It might know the competitor's term in general, but it doesn't know which of your features matches it.

## Build the term map

For each chosen pattern, have the AI pull the key terms from the users' goals, the field stage 1 recorded in the users' own words. Then have it search the docs source for each term. A term that appears in the logs but nowhere in the docs is a candidate for the map. For each candidate, the AI records the following:

| Field | Example |
|---|---|
| User term | legacy analytics |
| Doc term | Insights v2 |
| Type of mismatch | Renamed feature |
| Sessions | The number of sessions that used the term |
| Page to update | The page where the doc term is defined or introduced |

Sort the map by session count. A term that dozens of users typed is worth adding, while a term that one person used probably isn't.

## Add terms where they help

Review the map, and decide which terms to add and where. Add each term once, in a natural place, rather than stuffing lists of keywords into a page. A few placements tend to work well:

- **Headings and intros.** If users describe a goal, use their phrasing in the heading or the first paragraph of the page that covers it.
- **"Formerly called" notes.** For renamed features, a short note such as "Insights v2 (formerly called legacy analytics)" connects the old name to the new one.
- **Glossary entries.** A glossary entry that maps a user term to your term helps both people and agents.
- **Comparison notes.** For terms from other products, a sentence that names the equivalent feature helps developers who are switching over.

## Publish the term map

The placements above fix one page at a time. You can also publish the term map itself, so that agents and people can find every equivalent in one place. Create a page, such as "Terminology and former names," that lists each user term, the term your docs use, and a link to the page that covers it. Then link to that page from your `llms.txt` file, near the top, with a description such as "Former feature names, aliases, and equivalents from other products."

This approach works with `llms.txt` rather than asking it to do something it can't. An `llms.txt` file is an index of links, so it doesn't map terms on its own ([llms.txt proposal](https://llmstxt.org/)). However, it can point agents to a page that does. An agent that reads the index sees the link before it starts searching, and a person looking for an old name can find it through your site search.

The term map can reach a few other places too:

- **The product overview page.** [The docs-first approach](/ai/product-skills-docs-first.html) recommends defining precise vocabulary on the overview page for a product family. The most common equivalents from the map belong there.
- **Site search synonyms.** Many docs search engines let you define synonyms, so a search for the old name returns the new page. That helps people, and it helps agents that query your site search or a search tool on an MCP server.
- **Redirects from old URLs.** Agents often guess URLs, and a guess based on an old feature name might point to a page that no longer exists. A redirect from the old URL to the current page catches those guesses. (See [Moved and broken URLs](/ai/product-skills-agent-friendly-docs.html#pages-the-agent-cant-reach).)
- **A product skill.** If you publish a product skill, a short list of equivalents fits well, since it's the kind of compressed routing information a skill is good for. Keep the docs as the source, though, and generate the skill's list from the same map.

There isn't much evidence yet on how often agents follow a link to a terminology page, so treat it as an experiment. Stage 7 can test it. If queries that use old names start landing on the right pages, the published map is doing its job. Also, keep the published page to terms users actually type, and leave out internal code names that were never public.

## What the skill needs

As a sub-skill, this stage needs the goals for each chosen pattern, read access to the docs source, and the saved term map from previous runs. It should check new terms against the existing map before it adds them. The output is the updated term map, a list of proposed placements for stage 6, and an updated version of the published terminology page. Stage 7 also uses the map, since queries that use the user terms make good test cases.

<hr/>

*Continue to the next topic: [Stage 6: Make the doc updates](/ai/from-logs-to-improvements-doc-updates.html)*
