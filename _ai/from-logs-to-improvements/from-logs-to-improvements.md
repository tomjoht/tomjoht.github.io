---
title: "From logs to doc improvements"
permalink: ai/from-logs-to-improvements.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-04
order: 22
redirect_from:
- /ai/product-skills-fixes-from-logs.html
---

{% include_relative draft_notice.html %}

Suppose you get a large export of logs from people using the AI agent on your docs site. The users were trying to build something with your product, and the logs show how often they succeeded. Your job is to raise that success rate by improving the docs. But where do you start with 10,000 sessions? Do you read them all? Do you hand the export to an AI and ask for themes? And which problems do you fix first?

This chapter describes a machine for that job. The machine is really just a skill made up of sub-skills, one for each stage of the work, but I like to think of skills as *machines* because that's essentially what they are. Logs go in one end, and strategic doc improvements come out the other. AI does the reading, sorting, and drafting, and you make the decisions that need judgment. There's no way I'm going to read 10,000 sessions myself, so the goal is to automate as much of the process as possible while keeping a person in charge of what ships.

The Product skills chapter has a topic on [mining users' AI chat sessions](/ai/product-skills-chat-analysis.html), which covers what logs can reveal, such as content gaps, vocabulary mismatches, and hallucinations. This chapter picks up from there and turns that analysis into a repeatable process.

## A blueprint, not a finished skill

This chapter is a blueprint for the machine rather than the skill itself. I haven't built or run the skill yet, so treat the stages as a starting design that will probably change once it meets real logs. You'd build the actual skill on your own, fitted to your log format, your docs platform, your agent, and your eval tools. The skill will change often. Models improve, tools change, and log exports change format, so the instructions inside each sub-skill will keep evolving. Even so, the blueprint should change less often than the skill does. The stages, what each one takes in and puts out, and where a person checks the work don't depend on any particular tool.

In practice, you could give this chapter to an agent, describe your environment, and ask it to draft the skill. The pages are written for you, not for that agent. They describe what each stage does, why, and where you step in, and a capable agent can work out its own instructions from that description plus the details of your setup.

{% include ads.html %}

## Why logs are worth the effort

You might wonder why you can't just test the agent before launch and skip the logs. The problem is that internal tests use the right (officially sanctioned) terminology. Your team asks questions the way the docs are organized, while real users describe goals in their own words, mix up products, and ask for things the product can't do. As [Problems with product skills](/ai/product-skills-problems.html#evaluation-suites-arent-user-queries) notes, test suites written from internal specifications rarely look like real user queries.

Research on RAG systems points the same way. Barnett and colleagues drew on three case studies of RAG systems in research, education, and biomedical domains, and cataloged where the systems failed ([Barnett et al.](https://arxiv.org/abs/2401.05856)). Two of their main conclusions are that "validation of a RAG system is only feasible during operation," and that "the robustness of a RAG system evolves rather than designed in at the start." They also note that "RAG systems receive unknown input at runtime requiring constant monitoring," and that offline evaluation methods depend on "having access to labelled question and answer pairs."

In other words, you can't fully test the agent before launch, because you don't know yet what users will ask. The logs are the record of what they asked, and they supply the real questions that offline tests lack. The second conclusion fits the machine too. Your docs get more robust through repeated rounds of fixes, not through one big effort up front, which is why the skill is meant to run repeatedly rather than once.

## The stages of the machine

This chapter covers eight separate stages. Each stage reads the output of the previous one and writes a file for the next one. The list isn't fixed, though. As you build and run the machine, you might split a stage in two or add new ones.

| Stage | What it does | What comes out |
|---|---|---|
| [1. Parse the logs](/ai/from-logs-to-improvements-parse.html) | Turns each raw session into a short structured record, and filters to the sessions that involve your focus product. | A table of session records |
| [2. Triage the patterns](/ai/from-logs-to-improvements-triage.html) | Groups sessions by user goal and ranks the groups by failed sessions. | A ranked list of patterns |
| [3. Weigh product priorities](/ai/from-logs-to-improvements-priorities.html) | Rates each pattern by business value and picks a short list to fix. | A short list of patterns to fix |
| [4. Scan the doc corpus](/ai/from-logs-to-improvements-docs-scan.html) | Checks each pattern's failed sessions against the docs to find the cause. | A diagnosis for each pattern |
| [5. Match user vocabulary](/ai/from-logs-to-improvements-vocabulary.html) | Compares the users' terms with the docs' terms. | A term map of user terms and doc terms |
| [6. Make the doc updates](/ai/from-logs-to-improvements-doc-updates.html) | Drafts fixes, boundary statements, and bug reports, each with the reasoning behind it. | Reviewable changes, tickets, and tracking bugs |
| [7. Test and close the loop](/ai/from-logs-to-improvements-evals.html) | Adds failed queries to evals and checks the next batch of logs. | Eval results and a report |
| [8. Reflect and improve the machine](/ai/from-logs-to-improvements-reflect.html) | Reviews what went wrong during the run and proposes changes to the skill. | Proposed updates to the skill |

Each stage is a sub-skill in the larger skill. Keeping the stages separate makes each one easier to test and rerun, which is the same reasoning behind the [modularity of skills](/ai/skills-modularity.html). If the categories from stage 2 look wrong, for example, you can fix them and rerun stage 2 without redoing stage 1.

On each stage page, the work the AI does and the work you do are kept apart. The human checkpoint gets its own section, with a heading that starts with "Checkpoint," so you can see where the AI's work stops and yours starts. Writing a prompt and reviewing a result call for different kinds of attention, and it's easier to switch between them when the page makes the switch obvious.

## Design principles

The following principles shape how the skill works, and they come up again in each stage.

**Start from one product, but follow the journeys.** A log export usually covers many products. If you analyze everything at once, the sessions about products you don't own swamp the ones you do, and the doc corpus gets too big for the AI to search in stage 4. So pick one product as your focus. However, users don't always stay inside one product. A journey might start in one product and finish in another, such as setting up authentication in one service and then calling a second one. These cross-product journeys often expose the worst gaps, since no single team owns the handoff. Keep every session that involves your focus product, including the cross-product ones, and treat the journeys as patterns in their own right.

**Run cheap passes before expensive ones.** Summarizing and sorting sessions is fast and cheap, so it runs on every session. Diagnosing a failure means checking the docs, which is slow and expensive, so it runs only on the few patterns worth fixing. It's like sorting the mail before you read the letters.

**Keep the users' own words.** If a user writes "thingamajig won't connect," don't let the AI rewrite it as "device connection failure." The messy phrasing is the data. It shows the vocabulary your docs need to match, and it's what your evals need to test. It's also easy to lose, because each stage reads the output of the previous one. If stage 1 tidies a goal, the categories, the term map, and the eval queries all inherit the tidy version, and nothing downstream shows you what the user typed. As such, every session record keeps a session ID and the user's first message copied word for word, and the stages that depend on the users' words pull from that copy rather than from the AI's summary.

**Write a file at every stage.** Each stage saves its output as a table or a document you can open and inspect. When something looks off, you can see which stage went wrong.

**Keep a person at the checkpoints, and show them raw sessions.** The skill processes the volume, and you decide what matters. Every stage has a checkpoint, but the most important ones are reviewing the goal categories in stage 2, reviewing the value ratings in stage 3, approving every doc change in stage 6, and approving every change to the skill in stage 8. However, a checkpoint that only shows you the AI's summaries inherits the AI's mistakes. Each stage builds on the one before it, so an error in an early stage carries through to every later one. If the AI misread a session in stage 1, the categories, the priorities, and the diagnoses all rest on that misreading. For that reason, most checkpoints include reading a few raw sessions, not just the AI's records of them. It's a small sample, but it keeps you in contact with how users write and what they were trying to do.

## What you need before you start

To run the skill, you'll probably need a few inputs:

- **A log export** with the full transcript of each session, not just the final answer.
- **The retrieval trace** for each session, meaning the pages the agent looked up and fetched. Without the trace, stage 4 has to guess at what the agent saw, and stages 1 and 7 lose a way to check the AI's reading of a session against the pages the agent fetched. As noted in [Documentation forensics](/ai/product-skills-chat-analysis.html#documentation-forensics-and-hallucination-root-causes), platforms that log only the final response show you that an answer was wrong, but not why.
- **Access to your docs source**, ideally a repository you can open in a coding agent.
- **A short list of high-value scenarios**, based on company-level priorities such as OKRs and filled in with your product managers.
- **An evaluation suite** for your docs agent, meaning a set of test queries that you can run against the agent, each with an expected answer or a rubric for scoring the response. Stage 7 adds queries from failed sessions to it, so you need a way to add queries and rerun the suite. This could be an evaluation framework, such as [RAGAS](https://github.com/explodinggradients/ragas), which is designed for RAG systems, or the evaluation tooling your agent platform provides. [Testing a skill](/ai/skills-testing.html) describes how evaluation frameworks generally work.

<hr/>

*Continue to the next topic: [Stage 1: Parse the logs](/ai/from-logs-to-improvements-parse.html)*
