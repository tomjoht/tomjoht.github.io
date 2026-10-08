---
title: "Stage 4: Scan the doc corpus"
permalink: ai/from-logs-to-improvements-docs-scan.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-08
order: 26
---

{% include_relative draft_notice.html %}

The previous topic, [Stage 3: Weigh product priorities](/ai/from-logs-to-improvements-priorities.html), picked a short list of two or three patterns worth fixing and spawned one parallel subagent per pattern. At this point, you know which patterns fail most often and matter most to the business, but not why they fail. This topic covers the fourth stage, where each subagent works out the root cause for its assigned pattern by comparing the failed sessions against your docs and agent skills. 

A failed session doesn't automatically mean you need to write something new. If the doc already exists but the agent didn't find it, for example, writing a new page just adds a duplicate. Each cause needs a different fix, so the skill has to diagnose the cause before [Stage 6: Draft bugs proposing doc updates](/ai/from-logs-to-improvements-doc-updates.html) proposes any changes.

| Input | Output | Post-run review focus |
|---|---|---|
| One assigned pattern, its failed sessions, and the target product's docs and agent skills | A diagnosis for the pattern (`stage4_pattern_<k>.md`), with the cause, pinned source file links, proposed fix, and owner | Check the diagnosis and cited source files in each proposed bug, and let the product-area writer verify technical calls |

Research on RAG systems draws the same distinctions this stage does. Barnett and colleagues drew on three case studies of RAG systems in research, education, and biomedical domains, and cataloged where the systems failed ([Barnett et al.](https://arxiv.org/abs/2401.05856)). Their study lists seven failure points, which separate content that's missing, content that exists but doesn't rank high enough to be retrieved, and content that's retrieved but not used in the answer.

{% include ads.html %}

## Give each subagent access to the docs and agent skills

Diagnosing a failure means checking whether a page or skill covers the scenario, whether the agent fetched it, and whether its content is accurate. For a product with hundreds of pages, you can't paste all of them into a prompt. A few practices keep each subagent's context window clean:

- **One subagent per pattern, scoped to one product.** Because Stage 3 dispatches a separate subagent for each shortlisted pattern, each subagent only loads the docs for that single product—plus the handoff pages on the other side if it's a cross-product journey.
- **Point a coding agent at the docs and skill directories.** Many companies keep their docs and agent skills (`SKILL.md` files) as code in a single repository. Pointing a coding agent such as Gemini CLI or Claude Code at the target product's doc and skill directories lets the subagent search files and read only the pages that match, instead of loading hundreds of pages at once.
- **Check agent skills and retrieval tools alongside the docs.** If your team ships product skills (`SKILL.md`) or an MCP documentation server alongside your docs, include those skill directories in Stage 4. Sometimes sessions fail not because a web page is missing, but because a product skill isn't included in a project template or its trigger description misses common phrasing—leaving those sessions to rely on outdated pre-trained model weights.
- **Start from the pages fetched and tools triggered.** Within the product's directory, the first files to check are the pages and skills the agent loaded during the failed sessions, which Stage 1 recorded. They often show where the session went off course.

For each pattern, about 5 to 10 failed sessions is enough to see the cause. If the sessions point to different causes, the pattern might really be two patterns, and the subagent can split the diagnosis into separate bug proposals in Stage 6.

## Check the causes in order

Give each subagent the following checklist, and have it stop at the first cause that applies. The order matters, because an earlier cause often rules out the later ones.

1. **Could the agent read the page?** If the agent fetched the right URL but got little or no usable text, the problem is technical. JavaScript rendering, bot protection, or page size might be the cause, and no rewrite will fix it. See [Making docs accessible to agents](/ai/product-skills-agent-friendly-docs.html), and run an [AFDocs scan](/ai/product-skills-agent-friendly-docs.html#score-your-site-with-afdocs).
2. **Does a page or skill cover this scenario?** If not, check whether the product supports the scenario. A supported scenario with no page is a content gap. An unsupported scenario with no page needs a boundary statement, which Stage 6 covers.
3. **Did the agent retrieve the page or trigger the skill?** If the page or skill exists but the agent never loaded it, the problem is findability or runtime routing. Often the user's words don't match the docs, which [Stage 5: Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html) handles. Other times the product skill isn't exposed in that coding environment, or the page needs a clearer title, links from related pages, or an entry in your `llms.txt` file.
4. **Did the agent relay the page or skill accurately?** If the agent fetched the right page or skill but its answer didn't match what the text says, the material might be easy to misread. A table column without a clear label, a setup step buried behind a cross-link, or an outdated parameter inside a skill reference file leaves the agent room to invent a broken hybrid request.
5. **Was the content correct?** If the agent found the right page or skill and followed it accurately, but the user still hit an error, the documented code or parameter is probably wrong or outdated.
6. **None of the above?** If the user followed accurate guidance and still failed, it isn't a docs problem. The cause might be a product bug, a confusing UI, or a model limitation.

A meaningful share of failed sessions will fall into the last category. That's useful to know, because a product problem needs a bug report even if the docs also call out the behavior. A paragraph of text can help users work around a broken feature, but it can't fix it.

The output is one diagnosis file per pattern (`stage4_pattern_<k>.md`), listing the cause, the session IDs, revision-pinned links to the exact source files and line numbers, a proposed fix, and an owner. Each subagent then moves straight into Stage 5 inside the same thread.

## Reviewing verdicts when you don't know every product deeply

If you run this workflow across a large documentation site, you probably won't know every SDK, API, and product nuance well enough to judge every Stage 4 diagnosis off the top of your head. Sitting in front of the terminal trying to verify unfamiliar products mid-run is a bottleneck.

Instead, require every Stage 4 diagnosis to cite exact source file links and line numbers, and package those links into the recommended bug tickets in Stage 6. When you read the finished report at the end of the run, you can do a quick sanity check on the logic—and then let your triage process assign each recommended bug to the writer and engineering SME who own that product area and know immediately whether the diagnosis holds up. For any "not a docs problem" verdict that sends work to engineers, the assigned writer or SME can verify the reproduction steps before escalating it to the product team.

## Documentation forensics

The work in this stage has a name I like: "documentation forensics." [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html#documentation-forensics-and-hallucination-root-causes) uses the term for tracing an agent's wrong answer back to its root cause. The term fits because, like a crime-scene investigator, you start from a bad outcome and work backward to what caused it.

In a [podcast with Sarah Deaton](/blog/podcast-deaton-anthropic-tw-automation), a technical writer at Anthropic who works on the Claude Code docs, she described a forensics process she runs on every wrong claim, whether it appears in the docs, in a draft, or in an answer from the doc site's AI assistant. "I have this whole forensics thing going of, trace every single false claim," she said. "How did it get there? Why did it get there? How do we stop that from happening?" The answers go into a pitfalls document, and a verification skill checks each docs pull request against it.

One of her examples shows how subtle the causes can be. The AI assistant on the Claude Code docs kept giving a parameter's example value when users asked for its default value. A table had a column of example values, and the assistant saw a value next to the parameter and assumed it was the default, without reading the column header. Nothing on the page was wrong, but the page left room for a wrong reading. That's the kind of cause the fourth item in the checklist looks for.

Sarah said that reviewing assistant conversations isn't the main part of her day. Still, I think my own day will increasingly become a practice in documentation forensics, which means reading failed sessions and working out why the agent did or didn't do something. The skill in this chapter is partly a way to make that work manageable. It narrows thousands of sessions down to a few patterns, so the forensic work goes where it matters most.

<hr/>

*Continue to the next topic: [Stage 5: Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html)*