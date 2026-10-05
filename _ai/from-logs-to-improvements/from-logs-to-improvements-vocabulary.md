---
title: "Stage 5: Match user vocabulary"
permalink: ai/from-logs-to-improvements-vocabulary.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-04
order: 27
---

{% include_relative draft_notice.html %}

The previous topic, [Stage 4: Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html), diagnosed why each chosen pattern failed. One of the most common causes is findability, where a page exists but the agent never retrieved it. Often that happens because the user's words don't match the words in the docs, so the agent's search misses the right page. This topic covers the fifth stage, which finds those mismatches and turns them into a list of specific terms to add to the docs.

| Input | Output | Human checkpoint |
|---|---|---|
| The first messages from stage 1 for each chosen pattern, plus the docs source | A term map of user terms, doc terms, and the pages to update | Approve which terms to add and where |

Vocabulary gets its own stage because the fix is different from other findability problems, and because the result keeps its value. A term map built on one run still applies on the next, and it grows with each run.

## Why the words don't match

Users and docs drift apart in predictable ways. [Natural user queries versus product feature lists](/ai/product-skills-chat-analysis.html#natural-user-queries-versus-product-feature-lists) describes several of these, and they're the main ones to look for:

- **Old and renamed features.** A user asks about "legacy analytics," but the feature was rebranded as something like "Insights v2." The docs only use the new name, so nothing connects the two.
- **Goals instead of feature names.** A user asks how to "send a reminder before a payment is due," while the docs describe a "scheduled notification webhook."
- **Terms from other products.** Developers who come from a competitor's product bring that product's vocabulary with them.
- **Shorthand and slang.** Abbreviations, informal names, and error messages pasted as the whole question.
- **One name for two versions.** When a product releases a new version and keeps the old one, the plain product name can refer to either. This case works differently from the others, so it gets its own section [below](#when-one-name-covers-two-versions).

The agent can't bridge these gaps on its own if nothing in the docs links the two terms. It might know the competitor's term in general, but it doesn't know which of your features matches it.

## Build the term map

For each chosen pattern, have the AI pull the key terms from the first messages, which [Stage 1: Parse the logs](/ai/from-logs-to-improvements-parse.html) copied word for word. Don't use the goal field for this. Even a close paraphrase is where an unfamiliar term is most likely to get swapped for a familiar one, and the unfamiliar terms are the ones this stage is looking for. Then have the AI search the docs source for each term. A term that appears in the logs but nowhere in the docs is a candidate for the map. On later runs, the AI checks each candidate against the saved map first, so the map grows rather than starting over. For each new candidate, the AI records the following:

| Field | Example |
|---|---|
| User term | legacy analytics |
| Doc term | Insights v2 |
| Type of mismatch | Renamed feature |
| Sessions | The number of sessions that used the term |
| Page to update | The page where the doc term is defined or introduced |

Sort the map by session count. A term that dozens of users typed is worth adding, while a term that one person used probably isn't.

## Checkpoint: choose terms and placements

Review the map, and decide which terms to add and where. For any term you don't recognize, read a session or two that used it, since the context often shows whether it's a real equivalent or a different request. Add each term once, in a natural place, rather than stuffing lists of keywords into a page. A few placements seem likely to work well:

- **Headings and intros.** If users describe a goal, use their phrasing in the heading or the first paragraph of the page that covers it.
- **"Formerly called" notes.** For renamed features, a short note such as "Insights v2 (formerly called legacy analytics)" connects the old name to the new one.
- **Glossary entries.** A glossary entry that maps a user term to your term helps both people and agents.
- **Comparison notes.** For terms from other products, a sentence that names the equivalent feature helps developers who are switching over.

{% include ads.html %}

## Publish the term map

The placements above fix one page at a time, and they're probably the most reliable fix. When the page that covers a feature also contains the user's term, a search for that term can land on the right page directly. You can also publish the term map itself as a page, such as "Terminology and former names," that lists each user term, the term your docs use, and a link to the page that covers it.

It's fair to ask whether an agent would actually use a page like that. Would an agent find the page, see that A means B, and adjust on the fly? It's hard to say, and it probably depends on how the agent searches. An agent that retrieves pages only once per question might pull up the terminology page when a user types an old name, since the page contains that name. However, all it would see is a row in a table that maps the old name to a new one, and the actual answer lives on a different page. An agent that can search several times in a row, as most coding agents can, has a better chance of following the link to that page. Either way, the terminology page is a backstop for the inline placements rather than a replacement for them.

If you publish the page, link to it from your `llms.txt` file, near the top, with a description such as "Former feature names, aliases, and equivalents from other products." This works with `llms.txt` rather than asking it to do something it can't. An `llms.txt` file is an index of links, so it doesn't map terms on its own ([llms.txt proposal](https://llmstxt.org/)). However, it can point agents to a page that does. A person looking for an old name can also find the page through your site search.

The term map can reach a few other places too:

- **The product overview page.** [The docs-first approach](/ai/product-skills-docs-first.html) recommends defining precise vocabulary on the overview page for a product family. The most common equivalents from the map belong there.
- **Site search synonyms.** Many docs search engines let you define synonyms, so a search for the old name returns the new page. That helps people, and it helps agents that query your site search or a search tool on an MCP server.
- **Redirects from old URLs.** Agents often guess URLs, and a guess based on an old feature name might point to a page that no longer exists. A redirect from the old URL to the current page catches those guesses. (See [Moved and broken URLs](/ai/product-skills-agent-friendly-docs.html#pages-the-agent-cant-reach).)
- **A product skill.** If you publish a product skill, a short list of equivalents fits well, since it's the kind of compressed routing information a skill is good for. Keep the docs as the source, though, and generate the skill's list from the same map.

There isn't much evidence yet on how often agents follow a link to a terminology page, so treat it as an experiment. [Stage 7: Test and close the loop](/ai/from-logs-to-improvements-evals.html) can test it. If queries that use old names start landing on the right pages, the published map is doing its job. Also, keep the published page to terms users actually type, and leave out internal code names that were never public.

The output of this stage is the updated term map, a list of proposed placements for [Stage 6: Make the doc updates](/ai/from-logs-to-improvements-doc-updates.html), and, if you publish one, an updated terminology page. Stage 7 also uses the map, since queries that use the user terms make good test cases.

## When one name covers two versions

Some mismatches aren't about users choosing the wrong word. Sometimes the same name now refers to two different things. The Places API in Google Maps Platform is a public example. The current version is called Places API (New), and the older version is now labeled Places API (Legacy) ([Places API overview](https://developers.google.com/maps/documentation/places/web-service/overview)). Legacy isn't the same as deprecated. Google describes Legacy as "an intermediate lifecycle step" between generally available and deprecated services, and says legacy services "will retain full support" ([Legacy products and features](https://developers.google.com/maps/legacy)).

That leaves the plain name "Places API" pointing at two APIs. When a user asks an agent how to search for nearby restaurants with the Places API, which version should the agent use? Should it write code for the legacy endpoints, which probably dominate the older code samples the model saw in training? Or should it use the new version, which is what the docs recommend? A term map that pairs a user term with a doc term doesn't handle this case well, because the user's term matches the docs fine. It just matches two sets of docs.

For this kind of mismatch, the map needs a different kind of row, one that pairs a single user term with both doc terms and says when to use each. In the docs, the fixes are mostly about telling the versions apart. A version label in every page title, a notice on each legacy page that names the current version and links to the migration guide, and separate `llms.txt` entries for each version all help an agent see that there are two APIs and pick the right one. The Places API legacy pages already carry a notice like that.

These sessions are also easy to misjudge in stage 1. If the agent produced working code for the legacy API when the user wanted the current one, the session might look like a success, since the code runs. It's worth checking which version the code used, at least in the spot-check, since a working answer for the wrong version is still a failure.

## Pass naming problems to the product team

A term map helps the agent find the right page, but it doesn't address why the words drifted apart in the first place. What if hundreds of users still call a feature by the name it had a year ago? Did the rename reach the UI, the error messages, and the sales materials? What if users keep reaching for a competitor's term? Does your own name describe what the feature does? These are naming and positioning decisions, and they belong to the product and marketing teams rather than the docs.

When a mismatch shows up at that scale, send the relevant rows of the term map to the product team, along with a few of the sessions. The docs still need the synonyms and "formerly called" notes in the meantime, since users are searching with those words today. However, if the docs quietly absorb every naming problem, the product team might never learn that a name isn't working.

<hr/>

*Continue to the next topic: [Stage 6: Make the doc updates](/ai/from-logs-to-improvements-doc-updates.html)*
