---
title: "Problems with product skills"
permalink: ai/product-skills-problems.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-09-27
order: 15
---

{% include_relative draft_notice.html %}

The [previous topic](/ai/product-skills-research.html) covered what the benchmark research says about whether skills help. This one covers what goes wrong even when the content inside the skill is good.

The problems sort into two groups, and the split matters more than any individual item. The first two are about the content of the skill and how you measure it, so they're problems you can write your way out of. The four after that are costs of publishing a *separate artifact* at all, and no amount of good writing removes them. That distinction turns out to be where this chapter is heading, so it's worth noticing as you go. The last section asks the question all of it builds toward.

## Greedy descriptions

Here's a failure mode that gets almost no attention, and it follows directly from the selection problem in the previous topic. The `description` field in your skill's frontmatter is the only thing the agent sees until it decides your skill is relevant. That makes it the highest-leverage text in the whole artifact, which creates an incentive to write it as broadly as possible. If the description covers more ground, the skill fires more often, and firing more often feels like winning. Product teams and PMs reinforce this, because a skill that rarely triggers looks like a skill nobody wanted.

So descriptions get greedy. They accumulate every use case the product might conceivably serve, every synonym a user might conceivably type, until the description is less a description than a claim on territory.

Greedy descriptions tend to fail in two directions at once. The skill loads for tasks it can't help with, spending tokens and attention on irrelevant procedure. And when a company publishes one greedy skill per product, the descriptions start overlapping, so the agent faces a shelf of skills that all sound applicable and no basis for choosing between them. You've reproduced, at the metadata layer, the routing problem the skills were supposed to solve.

The discipline that helps is writing the description to be *exclusionary* as much as inclusive, saying plainly what the skill is not for and which neighboring skill handles that instead. A description that rules things out is doing more work than one that grabs everything.

## Evals are not user queries

The [previous topic](/ai/product-skills-research.html#testing-a-skill) described ablation testing as the way to know whether a skill works. That's right, and I don't want to walk it back. However, there's a failure mode inside eval-driven development that the with-versus-without machinery can't detect, and I think it's the one most likely to bite documentation teams.

Evals get written by the same people who wrote the skill, from the same mental model of the product. So the eval prompts tend to use the product's official vocabulary, name features the way the feature matrix names them, and describe tasks the way a product manager would scope them. Then the skill passes, because the skill and the eval are two expressions of one shared understanding. You've built a closed loop and measured the inside of it.

Real user queries don't look like that. They're vaguer, longer, and full of the wrong words. Users describe outcomes rather than capabilities ("I need the app to tell people how far away the driver is"), name your features by whatever they were called three versions ago, blend two products into one request without realizing they're separate, and arrive with unstated constraints, such as that they're prototyping in the browser, that they're on the free tier, or that they've already half-built it a different way. A capability list written by the people who own the capability almost never anticipates this.

The uncomfortable implication, and this is the part that nags at me, is that a skill might score well on its eval suite and still fail most of the traffic that reaches it, simply because the suite never contained a query phrased the way real users phrase things. Worse, the eval scores give you confidence proportional to how artificial your test set is.

The fix isn't to stop running evals, of course. It's to stop sourcing eval cases from your own head. Real user queries exist, and documentation teams increasingly have access to them: docs-site chat logs, support tickets, community forum posts, the search strings that returned nothing. Those are your eval corpus. A test suite built from questions real people actually asked will be messier and harder to score, but it's considerably more honest than one you wrote from the feature list. I'd take the messier one every time. This is a large part of why I think the log-mining work in [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html) is not a side activity but a prerequisite.

{% include ads.html %}

## A second source of truth

The two problems above are content problems, and better writing fixes them. The four that follow are different, because they arrive with the file itself. The first of them is the one tech writers will see coming.

Whatever product detail you pack into a skill and its reference folder is a copy of something your documentation already says, and copies drift. The moment a release changes an endpoint or renames a parameter, your skill and your docs can disagree, and the agent may act on whichever it read. Tech writers will recognize this. It's the single-sourcing problem in new clothes.

This is the strongest practical argument for keeping skills thin. A skill that mostly *routes*, pointing the agent at canonical docs rather than restating them, has far less surface area to fall out of date. It's also why Elastic's [agent-skills repository](https://github.com/elastic/agent-skills) pairs its skills with automated staging and drift-detection pipelines. At any real scale, keeping skills honest against the docs becomes its own maintenance workload, one you should plan for before publishing skill number one.

## Distribution and discovery

There's also no settled answer yet for how users find your skill in the first place. An [emerging spec](https://agentskills.io/home) covers the skill format, but distribution remains fragmented. The closest thing to an npm for skills, Vercel's [skills.sh](https://www.skills.sh/) registry and its `npx skills` CLI, has momentum, but it's one of several parallel ecosystems. Claude Code plugin marketplaces, Gemini CLI extensions, claude.ai's zip-upload flow, and plain GitHub repos all coexist, and none of them talks to the others. (I walk through these channels in detail in [How product skills reach users](/ai/product-skills-anatomy.html#how-product-skills-reach-users).) A publisher can't yet pick one channel and reach everyone, and a user can't yet look in one place and find everything. Until this consolidates, every vendor is publishing into fragmentation and hoping they've covered the doors their users actually walk through.

This distribution gap has a writer-facing consequence too, which I'll return to in [Roles for tech writers with product skills](/ai/product-skills-tech-writer-roles.html). If there's no obvious publishing destination for a skill, it's hard for anyone, writer or engineer, to feel ownership over shipping one.

## Trust and security

Drift and distribution are both problems of getting your skill in front of users accurately. This next one is about whether anyone will let it run at all. Product skills differ from internal skills in one uncomfortable way. You're not the one who bears the risk of a bad skill. Your users are. A product skill is a set of instructions, sometimes with executable scripts in its subfolders, that you're asking *someone else's agent* to ingest and act on. That makes skills a security surface, not just a documentation artifact. A malicious or compromised skill is a prompt injection with distribution. It can steer an agent toward exfiltrating data, running unwanted commands, or recommending the wrong thing. Even a well-intentioned skill with a bundled script is asking users to run your code inside their environment.

Anthropic's own [documentation on skills](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) is blunt about this, advising users to install skills only from sources they created themselves or obtained from Anthropic, and to audit anything else thoroughly before use. That's the posture your skill will be met with.

So enterprises are starting to ask the questions you'd expect. Who published this skill? Has it been reviewed? What do its scripts actually do? Should our agents consume third-party skills at all? In the [first chapter](/ai/skills.html#skills100), I noted the fundamental trust problem with running someone else's skill on your content. For external product skills, that problem scales up to every user who installs yours. Until signing, provenance, and review conventions mature, publishers can expect some security-conscious organizations to block third-party skills outright, no matter how good the content is.

For documentation teams, the practical implication is that skills need the same review rigor as code: version control, code review for scripts, and a clear owner. A skill published under your product's name carries your product's credibility with it.

## Constantly shifting variables

The last of the separate-artifact costs is that evaluating skills is difficult because the variables are constantly shifting across the software industry. Documentation is in a constant state of flux, with new features and functionality regularly being added or modified, often on a biweekly cadence. Just as the documentation is changing, so are the models and their capabilities, as well as the agent harnesses. All of this makes it difficult to know whether a skill is improving or degrading based on changes you might make to the skill content itself.

The harness variable is worse than it sounds. SkillsBench ran the same skills across multiple model-harness configurations and found that the gains varied widely, from +4.1 points in some setups to +25.7 in others. Even the same model produced noticeably different results depending on which harness it ran in. The skill's benefit depends not just on its content but on how the harness surfaces it, prompts with it, and executes around it.

SkillsBench also found that getting the agent to *read* your skill doesn't guarantee anything. Claude Code showed the highest skill utilization, while Codex CLI frequently neglected skills entirely, acknowledging the skill's content and then implementing its own solution anyway. Skills turn out to be portable in format but not in behavior. A `SKILL.md` file loads anywhere, but whether the agent acts on it varies by harness. If your product skill serves users across Claude Code, Cursor, Codex, and Gemini CLI, you'd need to test it in each one, multiplying the eval matrix you have to maintain.

## Does a routing skill earn its keep?

That brings me to the most uncomfortable question in the chapter, which I've saved for last because I don't have a settled answer to it. If a product skill is essentially an index, a curated list of links pointing the agent at the right documentation pages, then what is it actually contributing? A docs search tool exposed over MCP already retrieves relevant chunks on demand. An `/llms.txt` file already supplies a map at near-zero token cost. The model already knows how REST APIs work. So what's left? Against that baseline, an index-shaped skill is paying context rent to duplicate navigation that other layers supply more cheaply.

My hunch is that a link index alone doesn't justify itself. It might, of course, and the measurement to settle the question is straightforward enough in principle. But I haven't seen it published anywhere, and I'd be pretty cautious of anyone claiming the answer confidently in either direction.

What seems defensible from the research is narrower. A skill earns its context when it carries judgment the model lacks and retrieval can't assemble at the moment of the decision. Routing is the delivery mechanism for that judgment, not the value itself. A skill that only routes is betting that navigation was the bottleneck, and the Mintlify benchmark suggests navigation was already solved by a static file.

Which leaves a question worth putting plainly. If the judgment is the valuable part, and that judgment would serve human readers too, why is it in a skill rather than in the documentation? For most teams I don't think it should be, and the rest of this chapter follows from that answer.

## Summary of the problems

Distilled:

* **Descriptions grab for too much.** The description field is the only thing the agent reads by default, which tempts publishers to claim as much territory as possible. Greedy descriptions make skills fire on tasks they can't help with, and a shelf of overlapping ones recreates the routing problem at the metadata layer.

* **Passing your evals isn't the same as helping your users.** Eval prompts written by the skill's authors inherit the authors' vocabulary and mental model, so the skill and the test agree with each other by construction. Source eval cases from real logs, not from the feature list.

* **Skills become a second source of truth.** Any product detail copied into a skill drifts from your docs.

* **There's no settled distribution channel.** Registries, plugin marketplaces, CLI extensions, and GitHub repos coexist without talking to each other. You can't pick one channel and reach everyone.

* **Skills are a security surface.** You're asking someone else's agent to ingest your instructions and possibly run your scripts. Expect security-conscious organizations to scrutinize or block third-party skills until signing and provenance conventions mature.

* **The ground keeps moving.** Your docs change, the models change, and the harnesses change. The same skill produces different gains depending on where it runs, and agents sometimes read a skill and then ignore it.

* **An index-shaped skill may not earn its context.** If the skill is a list of links, it duplicates what docs search, MCP retrieval, and `/llms.txt` already do more cheaply.

Now notice what these have in common. Drift, distribution fragmentation, security review, harness variance, and the selection problem are all properties of shipping a separate file. None of them is a property of the knowledge itself. They would mostly disappear if the same content lived in documentation that agents fetch directly, which is the argument of the [next topic](/ai/product-skills-docs-first.html).

<hr/>

*Continue to the next topic: [The docs-first approach](/ai/product-skills-docs-first.html)*

