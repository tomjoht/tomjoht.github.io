---
title: "Stage 4: Scan the doc corpus"
permalink: ai/from-logs-to-improvements-docs-scan.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-03
order: 26
---

{% include_relative draft_notice.html %}

The fourth stage works out why each chosen pattern failed. This is where the machine finally compares the sessions with your docs. A failed session doesn't automatically mean you need to write something new. If the doc already exists but the agent didn't find it, for example, writing a new page just adds a duplicate. Each cause needs a different fix, so the machine has to diagnose the cause before stage 6 changes anything.

| Input | Output | Human checkpoint |
|---|---|---|
| The top three patterns, their failed sessions, and the docs source | A diagnosis for each pattern, with the cause, evidence, proposed fix, and owner | Review the verdicts for a few sessions per pattern |

Research on RAG systems draws the same distinctions this stage does. The Barnett study lists seven failure points, which separate content that's missing, content that exists but doesn't rank high enough to be retrieved, and content that's retrieved but not used in the answer ([Barnett et al.](https://arxiv.org/abs/2401.05856)).

## Give the AI access to the docs

Diagnosing a failure means checking whether a page covers the scenario, whether the agent fetched it, and whether its content is correct. For a product with hundreds of pages, you can't paste all of them into a prompt. There are a few ways to keep this manageable:

- **Scope to your focus product.** This is the main reason stage 1 filters to a single product. The AI only needs that product's docs, not your whole site. For a cross-product journey, add the pages on the other side of the handoff, such as the other product's setup and integration pages, rather than its whole doc set.
- **Use the docs source with a coding agent.** If your docs live in a repository, open the product's docs folder in a coding agent such as Claude Code. Coding agents search files and read only the pages that match, so they don't need to load hundreds of pages at once.
- **Start from the pages fetched.** The session records from stage 1 list the pages the agent retrieved. These are the first pages to check, and they often show where the session went off course.
- **Work one pattern at a time.** Give the AI the failed sessions for a single pattern in each run. Sessions in the same pattern usually involve the same few pages, so the AI searches the docs once rather than once per session.

For each pattern, about 10 failed sessions is probably enough to see the cause. If the sessions point to different causes, the pattern might really be two patterns, and it's worth going back to the categories in stage 2.

## Check the causes in order

Give the AI the following checklist, and have it stop at the first cause that applies. The order matters, because an earlier cause often rules out the later ones.

1. **Could the agent read the page?** If the agent fetched the right URL but got little or no usable text, the problem is technical. JavaScript rendering, bot protection, or page size might be the cause, and no rewrite will fix it. See [Making docs accessible to agents](/ai/product-skills-agent-friendly-docs.html), and run an [AFDocs scan](/ai/product-skills-agent-friendly-docs.html#score-your-site-with-afdocs).
2. **Does a page cover this scenario?** If not, check whether the product supports the scenario. A supported scenario with no page is a content gap. An unsupported scenario with no page needs a boundary statement, which stage 6 covers.
3. **Did the agent retrieve the page?** If the page exists but the agent never fetched it, the problem is findability. A frequent reason is that the user's words don't match the docs, which stage 5 handles. If the terms do match, the page might need a clearer title, links from related pages, or an entry in your `llms.txt` file.
4. **Was the content correct?** If the agent found the right page and relayed it accurately, but the user still hit an error, the page is probably wrong or outdated.
5. **None of the above?** If the user followed correct guidance and still failed, it isn't a docs problem. The cause might be a product bug, a confusing UI, or a model that can't handle a complex task.

Expect a meaningful share of failed sessions to land in the last category. That's useful to know, because it keeps you from spending days trying to patch a broken feature with a paragraph of text.

## Review the verdicts

The AI's diagnosis is a starting point, not a final answer. For each pattern, read the AI's reasoning for a few sessions, and check the pages it cites. Pay the most attention to verdicts of "content is wrong" and "not a docs problem," since those send work to engineers. A wrong verdict there costs someone else's time.

## What the skill needs

As a sub-skill, this stage needs the chosen patterns and their failed sessions, read access to the docs source, the checklist, and a format for the diagnosis. The output is one diagnosis per pattern, listing the cause, the sessions and pages that support it, a proposed fix, and an owner, such as the docs team, the docs platform team, or the product team. Patterns with a vocabulary mismatch also go to stage 5.

<hr/>

*Continue to the next topic: [Stage 5: Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html)*
