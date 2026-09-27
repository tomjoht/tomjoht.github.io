---
title: "Roles for tech writers with product skills"
permalink: ai/product-skills-tech-writer-roles.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-09-27
order: 17
---

{% include_relative draft_notice.html %}

[The docs-first approach](/ai/product-skills-docs-first.html) argued for where the content should go. This topic takes up who does the work, which is a harder question in practice than deciding what to write.

In enterprise documentation pipelines, there's a lot of detail and technical know-how required in each stage of context engineering. The lifecycle breaks into enough distinct stages that you could dedicate a different team to each one:

- Generating the skills
- Deploying the skills
- Generating tests for the skills
- Running the tests and evaluations
- Identifying areas for improvement
- Making the improvements to the skills
- Making improvements to the content

So what role should technical writers play in all of this? Which stages should we own, and which should we hand off? And how do we take any of it on given everything already in the backlog? Keep in mind that we'd be doing these tasks on top of our existing content development and maintenance roles, which have often become more burdensome due to thinned resources.

## Getting involved in skill creation

Although it's easiest to delegate the creation of skills to an automated product skill creator, the [SkillsBench study](https://arxiv.org/abs/2602.12670) found that models *"cannot reliably author the procedural knowledge they benefit from consuming"*, and self-generated skills provided no benefit on average. As I work through in [What the research says](/ai/product-skills-research.html#self-generated-skills-versus-curated-skills), the variable that matters isn't whether a human typed the words; it's whether a human with domain knowledge reviewed and validated them. Either way, that human has to be someone who knows the product and its documentation deeply.

There's a sharper version of this argument once you take the docs-first position seriously. The systems-level content that agents most need, meaning which of your APIs to use when and how they fit together, doesn't exist in any single product's documentation. A skill generator pointed at that documentation can't produce it, because the knowledge isn't in the source material. It exists in the heads of people who have watched users get confused at the boundaries between products, and tech writers are among the few who accumulate that view across a portfolio.

That reframes the job. The deliverable isn't primarily a skill file. It's the missing documentation, described in [The docs-first approach](/ai/product-skills-docs-first.html), which serves human readers and every agent that fetches a page. A skill may follow once you've measured that the docs alone aren't landing.

## Why tech writers should own skills for the products they support

Here's why tech writers should own product skills:

- Tech writers know the product's capabilities.
- Tech writers know where each capability is described in the documentation.
- Tech writers can assess whether a test's questions and tasks are well suited to the product.
- Tech writers can assess whether the answers an agent provides to a test align with the documentation's answers.
- Tech writers see the seams between products, including the recurring confusions, the questions that arrive at the wrong team, and the workarounds that exist because two products overlap. This is the least substitutable item on the list, and it's the content the research suggests matters most.

Also note that the skill isn't a deep dive into any of the product's capabilities, tasks, or information. It's short, selective, and deliberately incomplete. As I said in the [anatomy discussion](/ai/product-skills-anatomy.html#anatomy-of-a-product-skill), a product skill is essentially a quick reference guide for machines, and quick reference guides are a genre tech writers already own. I wrote a whole series on them years ago, starting with [Quick Reference Guides: The Poetry of Technical Writing](/2008/07/06/quick-reference-guides-the-poetry-of-technical-writing/) back in 2008. The constraints that make a good QRG (radical compression, knowing what to leave out, organizing for lookup rather than reading) are the same constraints that make a good product skill. As such, the tech writer is perfectly suited to own the skills for the products they support.

A tech writer can use a product skill creator to generate a basic skill, and then look at the output and shape, refine, curate, and adjust the skill as needed to align with a good outcome.

## Why they usually don't

If the fit is that good, why is this work mostly happening somewhere else? Tech writers often don't play a bigger role in skills development for the following reasons:

- The skill's format and structure is often unfamiliar.
- The test case format and structure is even more unfamiliar.
- Understanding how to run the test cases using the company's testing framework seems to align more with the QA role.
- Massive numbers of skills need to be generated seemingly all at once.
- It's unclear how tech writers should take action on low-performing eval scores. Is the test bad? Is the content poor?
- There doesn't seem to be a clear publishing destination for skills within an existing documentation site, so it doesn't seem to fit or be relevant there.
- Tech writers have been trained to write for human users, not agents. Even analytics don't distinguish between human users and agents, so it's hard for tech writers to recognize the true audience using their documentation.

Meanwhile, most tech writers are already buried under a mountain of doc requests and issues in their backlog. When you add an additional set of unfamiliar requirements on top of that, it can be overwhelming. I feel this myself every time I consider taking on something new.

{% include ads.html %}

## Investment in the eval loop

There's one more reason tech writers should be involved in skill creation, and it has less to do with authorship than with follow-through. Being in the loop is what makes the loop's output actionable. As soon as we start testing our skills, one outcome will be to improve the skill's score on the tests. If the skill scores poorly on some task that is identified in the product skill, and the evaluation recommendation is to improve some part of the documentation to raise the agent's performance on the task, the tech writer will be much more invested in actually taking action on the recommended improvement if they're the ones trying to actively raise the scores.

In contrast, if an engineering or evaluation team generates an automated pull request (PR) or code change for the tech writer without prior context, it can seem to arrive out of nowhere without a clear sense of user friction, identified error, release change, or other reason. It will simply be a proposed change that materializes out of thin air, with no requester, no audience, and no purpose. In automated documentation pipelines, where machine workflows can propose large volumes of documentation fixes daily, writers need hands-on involvement in evaluation loops to act as effective validation leads and content architects.

## Roadmap for technical writers

The obvious set of expectations is to provide a skill for each product supported, provide tests for each skill, and run the tests regularly. I'd reject the first one. "A skill for each product" is the assumption that produces siloed, overlapping skill libraries, and it encodes the org chart into the artifact. Here's a better set:

- **Know where your product's agent failures are.** Run the unassisted baseline described in [The docs-first approach](/ai/product-skills-docs-first.html), using real user queries rather than invented ones. Until you've done this, you don't know what's missing.
- **Write the missing systems-level content into the docs.** The disambiguation, the composition guidance, the deprecations, and the constraints belong on your product overview pages, where they serve human readers and every agent regardless of tooling.
- **Publish a skill only where a measured gap remains after that.** Sometimes the answer for a given product is no skill at all, and that should be a reportable, respectable outcome rather than a failure to deliver.
- **Provide tests built from real queries**, not from the feature list. See [Evals are not user queries](/ai/product-skills-problems.html#evals-are-not-user-queries).
- **Run the tests regularly and report the metrics**, including the negative results. A skill that stops helping should be deleted, and somebody has to be watching for that.

A dedicated team should still provide the meta skill for all teams, meaning a skill-creator skill that generates product skills, encoding the organization's template, conventions, and quality bar so that individual writers aren't reinventing the structure. But be careful what that meta skill optimizes for. A generator that rewards coverage will produce exhaustive skills, because that's what you asked it to do, and the research says exhaustive skills are the failing condition. Build it so that small is the easy output, and so that the natural move is to point at canonical documentation rather than restate it.

<hr/>

*Continue to the next topic: [Mining users' AI chat sessions: gaps and forensics](/ai/product-skills-chat-analysis.html)*
