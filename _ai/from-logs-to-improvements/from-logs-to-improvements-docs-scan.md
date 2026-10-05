---
title: "Stage 4: Scan the doc corpus"
permalink: ai/from-logs-to-improvements-docs-scan.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-04
order: 26
---

{% include_relative draft_notice.html %}

The previous topic, [Stage 3: Weigh product priorities](/ai/from-logs-to-improvements-priorities.html), picked a short list of patterns worth fixing. At this point, you know which patterns fail most often and matter most to the business, but not why they fail. This topic covers the fourth stage, which works out the cause for each chosen pattern. It's also where the skill finally compares the sessions with your docs. A failed session doesn't automatically mean you need to write something new. If the doc already exists but the agent didn't find it, for example, writing a new page just adds a duplicate. Each cause needs a different fix, so the skill has to diagnose the cause before [Stage 6: Make the doc updates](/ai/from-logs-to-improvements-doc-updates.html) changes anything.

| Input | Output | Human checkpoint |
|---|---|---|
| The chosen patterns, their failed sessions, and the docs source | A diagnosis for each pattern, with the cause, evidence, proposed fix, and owner | Review the verdicts against raw sessions, and reproduce any "not a docs problem" verdict |

Research on RAG systems draws the same distinctions this stage does. The Barnett study lists seven failure points, which separate content that's missing, content that exists but doesn't rank high enough to be retrieved, and content that's retrieved but not used in the answer ([Barnett et al.](https://arxiv.org/abs/2401.05856)).

{% include ads.html %}

## Give the AI access to the docs

Diagnosing a failure means checking whether a page covers the scenario, whether the agent fetched it, and whether its content is correct. For a product with hundreds of pages, you can't paste all of them into a prompt. There are a few ways to keep this manageable:

- **Scope to your focus product.** This is the main reason [Stage 1: Parse the logs](/ai/from-logs-to-improvements-parse.html) filters to a single product. The AI only needs that product's docs, not your whole site. For a cross-product journey, add the pages on the other side of the handoff, such as the other product's setup and integration pages, rather than its whole doc set.
- **Point a coding agent at the docs directories.** Many companies keep their docs as code, often in a single repository with a top-level docs folder and a subdirectory for each product or project. If your docs are set up this way, you can point a coding agent such as Gemini CLI or Claude Code at the product's directory and let it work through the subdirectories on its own. Coding agents search files and read only the pages that match, so they don't need to load hundreds of pages at once. A single repository makes this much easier than docs split across disconnected repositories, especially for cross-product journeys, where the agent needs to read both products' docs.
- **Start from the pages fetched.** Within the product's directory, the first pages to check are the ones the agent retrieved during the failed sessions, which stage 1 recorded. They often show where the session went off course.
- **Work one pattern at a time.** Give the AI the failed sessions for a single pattern in each run. Sessions in the same pattern usually involve the same few pages, so the AI searches the docs once rather than once per session.

For each pattern, about 10 failed sessions is probably enough to see the cause. If the sessions point to different causes, the pattern might really be two patterns, and it's worth going back to the categories in [Stage 2: Triage the patterns](/ai/from-logs-to-improvements-triage.html).

## Check the causes in order

Give the AI the following checklist, and have it stop at the first cause that applies. The order matters, because an earlier cause often rules out the later ones.

1. **Could the agent read the page?** If the agent fetched the right URL but got little or no usable text, the problem is technical. JavaScript rendering, bot protection, or page size might be the cause, and no rewrite will fix it. See [Making docs accessible to agents](/ai/product-skills-agent-friendly-docs.html), and run an [AFDocs scan](/ai/product-skills-agent-friendly-docs.html#score-your-site-with-afdocs).
2. **Does a page cover this scenario?** If not, check whether the product supports the scenario. A supported scenario with no page is a content gap. An unsupported scenario with no page needs a boundary statement, which stage 6 covers.
3. **Did the agent retrieve the page?** If the page exists but the agent never fetched it, the problem is findability. A frequent reason is that the user's words don't match the docs, which [Stage 5: Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html) handles. If the terms do match, the page might need a clearer title, links from related pages, or an entry in your `llms.txt` file.
4. **Did the agent relay the page accurately?** If the agent fetched the right page but its answer didn't match what the page says, the page might be easy to misread. A value in a table without a clear label, or an error message with no explanation of why it occurs, leaves the agent room to fill in a plausible answer. The fix is usually a clearer label or an added sentence of explanation rather than new content.
5. **Was the content correct?** If the agent found the right page and relayed it accurately, but the user still hit an error, the page is probably wrong or outdated.
6. **None of the above?** If the user followed correct guidance and still failed, it isn't a docs problem. The cause might be a product bug, a confusing UI, or a model that can't handle a complex task.

It's quite possible that a meaningful share of failed sessions will land in the last category. That's useful to know, because a product problem needs a bug report even if the docs also call out the behavior. A paragraph of text can help users work around a broken feature, but it can't fix it.

The output is one diagnosis per pattern. Each diagnosis lists the cause, the session IDs and pages that support it, a proposed fix, and an owner, such as the docs team, the docs platform team, or the product team. Patterns with a vocabulary mismatch also go to stage 5.

## Checkpoint: review the verdicts

The AI's diagnosis is a starting point, not a final answer. For each pattern, open a few of the raw sessions the diagnosis relies on, and read them alongside the AI's reasoning. Then check the pages it cites. The AI's reasoning can sound convincing even when it's built on a misread session, and the raw transcript is the quickest way to tell.

Pay the most attention to verdicts of "content is wrong" and "not a docs problem," since those send work to engineers. A wrong verdict there costs someone else's time. The "not a docs problem" verdict is also probably the hardest one to get right from a log. From the transcript alone, a missing step in the docs and a confusing UI can look the same. Before you accept that verdict, try the task yourself by following the docs. If you can reproduce the failure, you have a bug report an engineer can act on, and your steps go into it. If you can't, the docs might be missing something the user needed, and the pattern goes back through the checklist.

## Documentation forensics

The work in this stage has a name I like, documentation forensics. [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html#documentation-forensics-and-hallucination-root-causes) uses the term for tracing an agent's wrong answer back to its root cause. The term fits because, like a crime-scene investigator, you start from a bad outcome and work backward to what caused it.

In a [podcast with Sarah Deaton](/blog/podcast-deaton-anthropic-tw-automation), a technical writer at Anthropic who works on the Claude Code docs, she described a forensics process she runs on every wrong claim, whether it appears in the docs, in a draft, or in an answer from the doc site's AI assistant. "I have this whole forensics thing going of, trace every single false claim," she said. "How did it get there? Why did it get there? How do we stop that from happening?" The answers go into a pitfalls document, and a verification skill checks each docs pull request against it.

One of her examples shows how subtle the causes can be. The AI assistant on the Claude Code docs kept giving a parameter's example value when users asked for its default value. A table had a column of example values, and the assistant saw a value next to the parameter and assumed it was the default, without reading the column header. Nothing on the page was wrong, but the page left room for a wrong reading. That's the kind of cause the fourth item in the checklist looks for.

Sarah said that reviewing assistant conversations isn't the main part of her day. Still, I think my own day will increasingly become a practice in documentation forensics, which means reading failed sessions and working out why the agent did or didn't do something. The skill in this chapter is partly a way to make that work manageable. It narrows thousands of sessions down to a few patterns, so the forensic work goes where it matters most.

<hr/>

*Continue to the next topic: [Stage 5: Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html)*
