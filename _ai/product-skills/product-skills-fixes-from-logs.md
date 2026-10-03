---
title: "Making fixes from logs"
permalink: ai/product-skills-fixes-from-logs.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-03
order: 20
---

{% include_relative draft_notice.html %}

Suppose you get a large export of logs from people using the AI agent on your docs site. The users were trying to build something with your product, and the logs show how often they succeeded. Your job as a technical writer is to raise that success rate by improving the docs. But where do you start with 10,000 sessions? Do you read them all? Do you hand the whole export to an AI and ask for themes? And once you find problems, which ones do you fix first, and how do you know the fixes worked?

The previous topic, [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html), covered what logs can reveal, such as content gaps, vocabulary mismatches, and hallucinations. This topic covers what to do once you have the logs in hand. The short version is to narrow the logs to the products you care about, find the patterns that repeat, prioritize the ones that matter to the business, and diagnose why each one failed before you write anything. It's also worth knowing why logs matter so much in the first place. A study of RAG systems in three domains found that "validation of a RAG system is only feasible during operation" ([Barnett et al.](https://arxiv.org/abs/2401.05856)). In other words, you won't know how well your docs serve the agent until real users start asking it questions.

## Start with the products in focus

A log export usually covers many products, and a single session might touch several of them. If you analyze everything at once, the sessions about products you don't own can swamp the ones you do. As such, the first step is to filter the export down to the products you're responsible for, or to the products the business is prioritizing right now.

To decide where to focus, a few questions help:

- Which products have the most sessions?
- Which products have the lowest success rate?
- Which products are strategically important even though their volume is low, such as a product that just launched?

If this is your first time working through a log export, it's probably wise to start with just one product. Spreading the analysis across five products at once tends to thin out your effort, and you won't learn as much about what works. Once you have a process that works for one product, you can expand to others.

Sessions that span more than one product deserve their own look. A user who mixes two products in one request often doesn't know they're separate tools, or doesn't know which one to pick. These sessions tend to point to missing comparison or integration guidance, which is the kind of content described in [The docs-first approach](/ai/product-skills-docs-first.html).

## Look for common patterns

Once you've narrowed the logs, the next step is to find the issues that keep coming up. Aren't people generally trying to do similar things? Mostly, yes, and the logs let you measure how similar they are.

### Fix once, help many

The main reason to look for patterns is that a fix to a common issue has a one-to-many effect. If 20% of users run into the same problem, fixing it once improves the outcome for all of them. In contrast, a fix for a one-off issue helps one person, and maybe not even them, since they've probably moved on. Your time is limited, so the patterns are where the payoff is.

### Build a taxonomy from a sample

It might be tempting to give the whole export to an AI tool and ask it to find the themes. Without any guidance, though, the AI tends to produce vague clusters, such as "authentication questions," that don't point to a specific fix. A better approach is to read a sample of sessions yourself first. Read about 50 to 100 sessions, and for each one, note the following:

- **The user's goal.** What were they trying to do, in their own words?
- **The outcome.** Did they succeed, get a wrong answer, or give up?
- **The failure cause.** If the session failed, why? (The causes are covered in [Diagnose why each session failed](#diagnose-why-each-session-failed) below.)

After a few dozen sessions, you'll start to see the same goals and causes repeat. Those repeats become your taxonomy, which is a list of categories that fit your users and your docs. Expect to revise the taxonomy as you go, especially early on.

Before any logs go to an AI tool, redact sensitive content. Users paste code, API keys, internal URLs, and personal information into chat sessions, so the data governance concerns described in [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html#identifying-documentation-gaps-in-chat-logs) apply here too. Open-source tools such as [Presidio](https://github.com/data-privacy-stack/presidio) can detect and mask personal information automatically.

### Use AI to classify the rest

With a taxonomy in hand, you can give AI a much more specific task. Instead of asking it to find themes, ask it to assign each session to one of your categories. Then count the sessions in each category and sort by frequency. AI is pretty good at this kind of classification, and it can work through thousands of sessions that you'd never have time to read.

Check the AI's work, of course. Spot-check a sample of its classifications against the sessions themselves. If many sessions land in "other," or the AI keeps forcing sessions into categories that don't quite fit, your taxonomy probably needs another category.

### The short head and the long tail

When you sort the patterns by frequency, you'll likely see a familiar shape. A small number of goals account for a large share of the sessions. This is the short head, and it's where your highest-leverage fixes are. After that comes a long tail of scenarios that appear only once or twice each.

Don't write a page for each one-off scenario in the long tail. That approach would bury your docs in narrow pages that few people need. However, don't ignore the tail entirely either. Tail items with different topics can still share a root cause, such as a missing concept page, an undocumented authentication step, or a reference table that leaves out a field. When you look at the tail, look for patterns in the causes rather than in the topics. One fix to a shared cause might resolve dozens of scenarios that look unrelated.

{% include ads.html %}

## Focus on what matters to the business

Frequency alone doesn't tell you what to fix first. Some frequent scenarios matter a lot to the business, and others barely matter at all. Before you commit your time, think about which scenarios tie to revenue.

### The Fire App Builder lesson

When I worked at Amazon, I wrote the documentation for Fire App Builder, a starter kit for building streaming media apps for Fire TV ([Amazon](https://developer.amazon.com/docs/fire-app-builder/overview.html)). After the first year, we realized that most of the developers using the kit were building apps that nobody cared about. These were apps like "Bob's vacation journey" or "Sue's journal." My rough guess is that about 90% of the kit's users fell into this group. Meanwhile, the apps that mattered on Fire TV were the big ones, such as Netflix and Hulu, which I'd guess account for 90% or even 99% of the app usage on the platform.

Fire App Builder has since reached the end of its standard support, and Amazon open-sourced the code on [GitHub](https://github.com/amzn/fire-app-builder). In my view, it died because it targeted the wrong audience. Supporting a long tail of small developers didn't move the business, no matter how many of them there were. The same thing can happen with log analysis. If most of your sessions come from hobby projects, fixing their issues might raise your success rate without doing much for the business.

### Reach versus profitability

Some managers argue for reach, meaning you should help as many users as possible. Reach does matter in some situations. Early in a product's life, a broad user base might be the main goal. Free users can also be a funnel that leads to paying customers. And some organizations don't measure their docs by profit at all.

Even so, be careful about adopting a reach strategy just because someone persuasive argues for it. When budgets tighten, the areas that aren't business critical tend to be the first ones cut. If your docs serve an area like that, the docs team and the manager who argued for reach can go with it. Before you commit to reach, check whether the business values it. In most cases, focusing on the scenarios that bring in revenue is the safer bet.

### Weigh frequency against value

To combine frequency and business value, sort each pattern into one of four groups:

| Frequency | Business value | What to do |
|---|---|---|
| High | High | Fix these first. |
| Low | High | Fix these too, since the users who hit them are worth the effort. |
| High | Low | Make only cheap fixes, such as adding a synonym, a link, or a clarifying sentence. |
| Low | Low | Skip these. |

The "high frequency, low value" group is where the Fire App Builder lesson applies most. These issues show up constantly, so they feel urgent. However, a full rewrite for a low-value scenario takes time away from scenarios that matter more.

### Judging value from logs is hard

The hard part is deciding which sessions are high value. Logs show what users asked, but not who they are or what they're worth to the business. There are some signals you can look for, such as the type of app or integration being built, whether the session involves paid features, and whether the phrasing suggests a production deployment rather than a hobby project. Any of these signals can mislead, though, so treat your value ratings as rough.

There are a couple of ways to get a better signal. If your organization allows it, you might be able to join the logs with account data, such as the customer's plan tier. You can also ask the people who own the business side, such as product managers, which scenarios matter most. It's usually easier to keep a short list of high-value scenarios that you've agreed on with them than to infer value from each session's text.

## Diagnose why each session failed

Once you've picked the patterns to work on, figure out why the sessions failed before you write anything. A failed session can have several different causes, and each cause needs a different fix. For example, if the doc already exists but the agent didn't find it, writing a new page just adds a duplicate. Research on RAG systems makes a similar point. The study mentioned earlier lists seven failure points, including content that's missing, content that exists but doesn't rank high enough to be retrieved, and content that reaches the model but doesn't get used in the answer ([Barnett et al.](https://arxiv.org/abs/2401.05856)).

The causes below are listed roughly in the order you'd check them, since an earlier cause often rules out the later ones. To check most of them, you need more than the final answer. You need the retrieval trace, meaning the pages the agent looked up and fetched. As noted in [Documentation forensics](/ai/product-skills-chat-analysis.html#documentation-forensics-and-hallucination-root-causes), platforms that log only the final response let you see that an answer was wrong, but not why.

### The agent couldn't read the content

Sometimes the content exists, but a technical problem keeps the agent from reading it. The page might build its content with JavaScript, bot protection might block the agent, or the page might be so long that the agent's fetch tool cuts it off. In the logs, this usually looks like an agent that fetched the right URL but got back little or no useful text. This cause is worth checking first, since nothing else matters if the agent can't read the page. [Making docs accessible to agents](/ai/product-skills-agent-friendly-docs.html) covers these problems and how to test for them, including running an [AFDocs scan](/ai/product-skills-agent-friendly-docs.html#score-your-site-with-afdocs).

### The doc should exist but doesn't

In this case, the user tried something the product supports, but no page covers it. Without any content to draw on, the agent might give up, or it might make up an answer that sounds plausible. This is a classic content gap, and the fix is to write the missing content, as long as the scenario passes the business-value check described earlier.

### The scenario isn't supported

Sometimes there's no doc because the product doesn't support what the user wanted to do. You might think that means there's nothing to fix, but the absence of content causes its own problem. When nothing is documented, agents tend to invent a path that doesn't work. The Barnett study notes this risk, saying that "for questions that are related to the content but don't have answers the system could be fooled into giving a response."

Don't write a how-to for an unsupported scenario. Instead, state the limitation plainly in the docs, such as "X isn't supported. To do Y, use Z instead." A clear statement gives the agent something to say other than a made-up answer. Also pass the demand along to the product team. If many users want something the product can't do, that's useful feedback.

### The agent didn't find the doc

Here, the answer is on a page, but the agent never retrieved it, or it retrieved a different page instead. In the logs, you'll see the agent searching or fetching, but never landing on the right page. The fix is to improve findability. Clearer titles and headings help, as do links from related pages and entries in your `llms.txt` file. In some cases, the relevant content is buried in a long page about something else, and moving it into its own section or page makes it easier to find.

### The user used different terms

This cause overlaps with the previous one. The user described their goal in words that don't match the docs, so the agent's search didn't connect the two. The user might use a legacy product name, describe a goal instead of naming a feature, or use a term from a competitor's product. The fix is to add the user's terms to your headings, intros, and glossary, so that their phrasing leads to the right page. [Natural user queries versus product feature lists](/ai/product-skills-chat-analysis.html#natural-user-queries-versus-product-feature-lists) describes the kinds of mismatches to look for.

### The doc is wrong or outdated

In this case, everything worked except the content itself. The agent found the right page and passed along what it said, but the page had an old parameter, a broken code sample, or a step that no longer applies. The user followed the guidance and hit an error. The fix is a standard doc update, ideally with a review from an engineer who knows the current behavior.

### It isn't a docs problem

Some failures can't be fixed with docs at all. The user might hit a product bug, or a confusing UI that works differently from what the docs describe. The model might also fail on a complex, multi-step problem even with the right content in front of it. It's worth naming this category in your taxonomy, because a meaningful share of failed sessions might land here. Route these sessions to the product or engineering team rather than trying to document around a broken feature.

### Summary of causes and fixes

The following table summarizes the causes, what each one looks like in the logs, and who usually owns the fix:

| Cause | What the log shows | Fix | Who owns it |
|---|---|---|---|
| The agent couldn't read the content | The agent fetched the right URL but got little or no usable text. | Fix rendering, bot protection, or page size. | Docs platform |
| The doc should exist but doesn't | A supported scenario with no page that covers it. | Write the content, if the scenario has business value. | Docs |
| The scenario isn't supported | The user asked for something the product can't do, and the agent invented a path. | State the limitation, and pass the demand to the product team. | Docs and product |
| The agent didn't find the doc | The answer exists, but the agent never retrieved it. | Improve titles, headings, links, and `llms.txt` entries. | Docs |
| The user used different terms | The user's vocabulary doesn't match the docs. | Add the user's terms to headings, intros, and the glossary. | Docs |
| The doc is wrong or outdated | The agent found the right page, but its content was wrong. | Update the content. | Docs |
| It isn't a docs problem | The user followed correct guidance but still failed. | Route the session to the product or engineering team. | Product or engineering |

## Measure the improvement

After you fix a pattern, you'll want to know whether the fix worked. The best way is to set up the test before you make the fix. Take a few failed queries from the pattern and add them to your evaluation suite, using the users' exact phrasing. Run the suite to record a baseline, make the fix, and then run it again. [Updating evaluation suites and documentation](/ai/product-skills-chat-analysis.html#updating-evaluation-suites-and-documentation) explains why the exact phrasing matters.

If you want more detail than a pass or fail, evaluation frameworks such as [Ragas](https://arxiv.org/abs/2309.15217) score the retrieval and the generated answer separately, "without having to rely on ground truth human annotations." That separation can tell you whether a fix helped the agent find the right page or only improved the answer.

Evals only cover the queries you add to them, though. The real test is the next batch of logs. When the next month's export arrives, check whether the failure rate for the pattern you fixed went down. When you report results, frame them in terms the business cares about, such as the success rate for the high-value scenarios you prioritized.

## Keep a sustainable pace

Improving docs from logs isn't something you finish in a week. A large export might contain dozens of patterns worth fixing, and some of them will take several rounds of fixes before the failure rate drops. If you try to fix everything at once, you'll probably burn out before you see results.

A regular cadence works better. For example, you might pull a new batch of logs each month, classify the sessions, and pick a few patterns to work on. Each round also gives you data on whether the previous round's fixes worked. Over time, the short head should shrink, and more of your time can go to the high-value scenarios further down the list.

If you're starting today, here's a concrete first step. Pull one month of logs for your most important product. Read 50 sessions and build a rough taxonomy. Then use AI to classify the rest, pick the top three patterns that matter to the business, diagnose why they failed, and fix those.

<hr/>

*Continue to the next topic: [Reimagining the documentation experience](/ai/product-skills-reimagining-docs.html)*
