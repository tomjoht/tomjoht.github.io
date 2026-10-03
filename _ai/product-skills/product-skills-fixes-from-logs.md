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

Suppose you get a large export of logs from people using the AI agent on your docs site. The users were trying to build something with your product, and the logs show how often they succeeded. Your job is to raise that success rate by improving the docs. But where do you start with 10,000 sessions? Do you read them all? Do you hand the export to an AI and ask for themes? And which problems do you fix first?

The previous topic, [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html), covered what logs can reveal. This topic lays out a process for turning a messy export into a short list of doc fixes. Logs are worth this effort because there isn't a substitute for them. A study of RAG systems in three domains found that "validation of a RAG system is only feasible during operation" ([Barnett et al.](https://arxiv.org/abs/2401.05856)). In other words, you won't know how well your docs serve the agent until real users start asking it questions.

## The process at a glance

Work through the logs in this order:

1. **Filter to one product.** Narrow the export to the sessions about a single product.
2. **Summarize each session.** Have AI turn every session into a short, structured record.
3. **Group the goals.** Have AI propose categories of user goals, review them, and then have AI assign each session to a category.
4. **Rank the patterns.** Sort by failed sessions and business value, and pick the top three.
5. **Diagnose the cause.** Have AI check each pattern's failed sessions against the docs to work out why they failed.
6. **Fix and measure.** Set up evals, make the fix, and check the next batch of logs.
7. **Repeat monthly.** Run the cycle again with new logs.

AI does most of the reading in this process. Your job is to set up each step, review what the AI produces, and make the calls that need judgment, such as which categories make sense and which patterns matter to the business. The order matters too. Each step narrows the data for the next one, and skipping ahead tends to produce fixes for the wrong problems. A common mistake is jumping straight to step 6, writing new content before you know why the sessions failed.

## Step 1: Filter to one product

Start with one product. A log export usually covers many products, and if you analyze everything at once, the sessions about products you don't own will swamp the ones you do. One product also keeps the docs manageable in Step 5, when the AI has to check failed sessions against your pages. Pick the product that matters most to the business right now, which is usually either the one with the most sessions or a recent launch the company is betting on. Once the process works for one product, you can add more.

Set aside the sessions that span multiple products rather than discarding them. A user who mixes two products in one request often doesn't know which one to pick. These sessions tend to point to missing comparison or integration guidance, which is the kind of content described in [The docs-first approach](/ai/product-skills-docs-first.html). They're worth a separate pass later.

## Step 2: Summarize each session

Don't hand the whole export to an AI tool and ask it to find themes. Given thousands of raw sessions at once, AI tends to produce vague clusters, such as "authentication questions," that don't point to a specific fix. Instead, have the AI work through the sessions in batches and produce the same short record for each one:

| Field | What the AI records |
|---|---|
| Goal | What the user was trying to do, as a short phrase that keeps the user's own words. |
| Outcome | Succeeded, wrong answer, or gave up. |
| What went wrong | One sentence describing where the session broke down, if it failed. |
| Pages fetched | The doc pages the agent retrieved during the session, if the log records them. |

The records turn a pile of transcripts into a table you can sort and count. Don't ask the AI for the failure cause yet. Working out why a session failed means checking the docs, which is slower work, and you only need to do it for the patterns worth fixing.

Spot-check a dozen or so records against the raw sessions before you move on. You're checking whether the AI kept the user's phrasing and judged the outcome correctly. If it labels sessions as successful when the user gave up partway through, tighten the definitions and run the batch again.

## Step 3: Group the goals

Next, give the AI the list of goals from the records and ask it to propose categories. Ask for roughly 10 to 20 categories, plus an "other" category, each with a one-sentence definition and a session count. Fewer than that and the categories get too broad to suggest a fix. More than that and the AI will struggle to tell them apart when it assigns sessions.

This is where your judgment matters most. Review the proposed categories and edit them before anything gets counted. A useful test is whether each category points to a specific area of the docs. If a category is too broad to suggest a fix, split it. If two categories would lead to the same fix, merge them. Reviewing a list of 20 categories takes a lot less time than reading hundreds of sessions, and it's where your knowledge of the product and the docs pays off.

Once the categories look right, have the AI assign each session to exactly one category. If more than about 10% of sessions land in "other," or the AI keeps forcing sessions into categories that don't fit, add or split categories and run the assignment again.

## Step 4: Rank the patterns

For each goal category, count the total sessions, the failed sessions, and the failure rate. Then sort by the number of failed sessions, not total sessions. A goal that shows up in 2,000 sessions with a 95% success rate isn't a problem. A goal with 400 sessions and a 50% failure rate is. Fixing a common failure has a one-to-many effect, since one fix improves the outcome for everyone who hits it.

When you sort, you'll likely see a short head and a long tail. A few goals account for most of the failed sessions, and then a long tail of goals appears only a handful of times each. Focus on the head. Don't write a page for each scenario in the tail, since that buries your docs in narrow pages that few people need. Tail scenarios can still share a root cause, though, such as an undocumented authentication step. You'll catch those when you diagnose causes in Step 5.

### Weigh failures against business value

Frequency alone doesn't tell you what to fix first. Rate each pattern in the head as high or low value to the business, and sort it into one of four groups:

| Failed sessions | Business value | What to do |
|---|---|---|
| Many | High | Fix these first. |
| Few | High | Fix these next, since the users who hit them are worth the effort. |
| Many | Low | Make only cheap fixes, such as adding a synonym, a link, or a clarifying sentence. |
| Few | Low | Skip these. |

From the first group, pick the top three patterns. Three is enough to make progress in one cycle without spreading yourself thin. If you aren't sure which scenarios are high value, ask your product managers.

### The Fire App Builder lesson

When I worked at Amazon, I wrote the documentation for Fire App Builder, a starter kit for building streaming media apps for Fire TV ([Amazon](https://developer.amazon.com/docs/fire-app-builder/overview.html)). After the first year, we realized that most of the developers using the kit were building apps that nobody cared about, like "Bob's vacation journey" or "Sue's journal." My rough guess is that about 90% of the kit's users fell into this group. Meanwhile, the apps that mattered on Fire TV were the big ones, such as Netflix and Hulu, which I'd guess account for 90% or even 99% of the app usage on the platform.

Fire App Builder has since reached the end of its standard support, and Amazon open-sourced the code on [GitHub](https://github.com/amzn/fire-app-builder). In my view, it died because it targeted the wrong audience. The same thing can happen with log analysis. If most of your failed sessions come from hobby projects, fixing them might raise your success rate without doing much for the business.

This is also a reason to be careful with the overall success rate as your main metric. It's the number the logs hand you, and it's tempting to report it on its own. However, the overall rate treats every session the same, so a fix for a hobby scenario counts as much as a fix for a high-value one. When budgets tighten, docs work that doesn't tie to business-critical areas is hard to defend, no matter how many users it helped. Report the success rate for your high-value scenarios alongside the overall number.

{% include ads.html %}

## Step 5: Diagnose the cause

For each pattern you picked, have the AI work through about 10 of its failed sessions and decide why each one failed. Don't skip this step. A failed session can have several causes, and each one needs a different fix. If the doc already exists but the agent didn't find it, for example, writing a new page just adds a duplicate. Research on RAG systems draws the same distinction, separating content that's missing from content that exists but isn't retrieved, and from content that's retrieved but not used in the answer ([Barnett et al.](https://arxiv.org/abs/2401.05856)).

### Give the AI access to the docs

Diagnosing a failure means comparing the session with your docs. The AI needs to check whether a page covers the scenario, whether the agent fetched it, and whether its content is correct. For a product with hundreds of pages, you can't paste all of them into a prompt. There are a few ways to keep this manageable:

- **Scope to one product.** This is another reason for Step 1. The AI only needs the docs for the product you're working on, not your whole site.
- **Use the docs source with a coding agent.** If your docs live in a repository, open the product's docs folder in a coding agent such as Claude Code. Coding agents search files and read only the pages that match, so they don't need to load hundreds of pages at once.
- **Start from the pages fetched.** The records from Step 2 list the pages the agent retrieved. These are the first pages to check, and they often show where the session went off course.
- **Work one pattern at a time.** Give the AI the failed sessions for a single pattern in each run. Sessions in the same pattern usually involve the same few pages, so the AI searches the docs once rather than once per session.

The retrieval trace matters here too. As noted in [Documentation forensics](/ai/product-skills-chat-analysis.html#documentation-forensics-and-hallucination-root-causes), platforms that log only the final response show you that an answer was wrong, but not why. Without the list of pages fetched, the AI has to guess at what the agent saw.

### Check the causes in order

Give the AI the following checklist, and have it stop at the first cause that applies. Then review its verdicts for a few sessions in each pattern before you act on them.

1. **Could the agent read the page?** If the agent fetched the right URL but got little or no usable text, the problem is technical. JavaScript rendering, bot protection, or page size might be the cause. The docs platform team owns this fix. See [Making docs accessible to agents](/ai/product-skills-agent-friendly-docs.html), and run an [AFDocs scan](/ai/product-skills-agent-friendly-docs.html#score-your-site-with-afdocs).
2. **Does a page cover this scenario?** If not, check whether the product supports it.
   - If it's supported, write the missing content.
   - If it isn't supported, don't write a how-to. State the limitation plainly instead, such as "X isn't supported. To do Y, use Z." When nothing is documented, agents tend to invent a path. The Barnett study notes that "for questions that are related to the content but don't have answers the system could be fooled into giving a response." Also pass the demand to the product team.
3. **Did the agent retrieve the page?** If the page exists but the agent never fetched it, compare the user's words with the page's headings. If the user used a legacy name, a competitor's term, or a goal instead of a feature name, add their terms to your headings, intros, and glossary. (See [Natural user queries versus product feature lists](/ai/product-skills-chat-analysis.html#natural-user-queries-versus-product-feature-lists).) If the terms match, improve findability with clearer titles, links from related pages, and `llms.txt` entries.
4. **Was the content correct?** If the agent found the right page and relayed it accurately, but the user still hit an error, the page is probably wrong or outdated. Update it, ideally with a review from an engineer.
5. **None of the above?** If the user followed correct guidance and still failed, it isn't a docs problem. The cause might be a product bug, a confusing UI, or a model that can't handle a complex task. Route these sessions to the product or engineering team rather than documenting around a broken feature.

Expect a meaningful share of failed sessions to land in the last category. That's useful to know, because it keeps you from spending time on problems the docs can't solve.

## Step 6: Fix and measure

Set up the test before you make the fix. Take five to ten failed queries from the pattern and add them to your evaluation suite, using the users' exact phrasing. Run the suite to record a baseline, make the fix, and run it again. [Updating evaluation suites and documentation](/ai/product-skills-chat-analysis.html#updating-evaluation-suites-and-documentation) explains why the exact phrasing matters.

Evals only cover the queries you add to them, though. The real test is the next batch of logs. When the next export arrives, check whether the failure rate for each pattern you fixed went down. When you report results, frame them in terms the business cares about, such as the success rate for high-value scenarios.

## Step 7: Repeat monthly

Improving docs from logs isn't something you finish in a week. Some patterns will take several rounds of fixes before the failure rate drops, and new patterns appear as the product changes. A monthly cycle is a sustainable pace for most teams. Each month, pull new logs, update the categories if new goals appear, and pick the next three patterns. Each cycle also tells you whether the previous cycle's fixes worked.

You don't need to rebuild the categories from scratch each month. Reuse the previous month's categories, and look at what lands in "other." If a new goal shows up there often, add a category for it. Over time, the failures in the short head should shrink, and more of your time can go to the high-value scenarios further down the list.

<hr/>

*Continue to the next topic: [Reimagining the documentation experience](/ai/product-skills-reimagining-docs.html)*
