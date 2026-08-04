---
title: "Problems with product skills"
permalink: ai/product-skills-problems.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-08-04
order: 13
---

{% include_relative draft_notice.html %}

Although skills provide a noticeable lift to agents, there are also many challenges associated with skills. This topic walks through the big ones: testing, information overload, the gap between self-generated and curated skills, trust and security, distribution, drift from the docs, and the constantly shifting variables that make evaluation hard.

## Testing a skill

The first question is how to test a skill. Testing frameworks incorporate evaluation logic (contained in EVAL files) to measure how well the skill performs on a task both with and without the skill. This is called ablation testing, and it's the same method I covered for internal skills in [Testing a skill](/ai/skills-testing.html) in the first chapter. [Laurie Voss](https://www.linkedin.com/pulse/how-do-you-write-good-skill-theres-actual-data-now-laurie-voss-hbhdc/), co-founder of npm, synthesized the recent skill benchmark papers and describes it plainly: take a set of tasks, run them twice, once with the skill loaded and once without, holding everything else constant, then score both runs the same way. For skills to be worthwhile, the AI has to perform better with the skill on the task than without. And you can't shortcut the comparison by inspecting the output, because as Voss warns, *"You will not detect that by eyeballing outputs, because the skill-loaded output usually looks more professional even when it passes less often."*

However, the tests you use to evaluate the skill can make a massive difference in the evaluation score. A test that asks the agent to provide an answer to a series of simple questions, all defined in the skill, might make the skill seem to perform well compared to another test that contains much more difficult, rigorous testing criteria. Tests need their own standards of criteria to make sure the test is well-constructed and evaluative of the skill's true capabilities.

## Too much information

One reason testing matters so much is that more skill content doesn't automatically mean better performance. In fact, one of the most counterintuitive findings from the research is that too much information can make an agent perform worse. In a [recent post about context engineering](https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models), Thariq Shihipar, a member of technical staff at Anthropic, said that the Claude 5 generation models performed better with minimal prompt handholding. Newer models have better judgment and handle decisions well without explicit rules, while over-constraining just creates conflicts the model has to spend effort resolving. Regarding prompt compaction, Shihipar noted, *"We removed over 80% of Claude Code's system prompt for models like Claude Opus 5 and Claude Fable 5 with no measurable loss on our coding evaluations."* 

The additional information that a skill provides can act as noise that makes the model perform worse than without it. The same post frames what skills *should* contain, and it doubles as a thesis for this chapter: skills should encode the opinions, knowledge, and best practices particular to your team or product, not serve as exhaustive reference libraries. For longer skills, split the content into separate files so the agent loads details only when it needs them (progressive disclosure).

As models get more saturated with public code, it's less necessary to provide the same information in the skills. The benchmark papers Voss synthesized bear this out: [SkillsBench](https://arxiv.org/abs/2602.12670), plus two June 2026 papers whose systems are confusingly both named SkillComposer ([Zhao et al.](https://arxiv.org/abs/2606.32025) and [Zhang et al.](https://arxiv.org/abs/2606.06079)). The Zhao paper tested the information-overload question directly. The researchers compared two setups: dumping a library of 196 skills into the agent's context all at once, versus using a small routing model to pick out just the few skills relevant to the task at hand. Selecting a few relevant skills won decisively. The agent buried under the full library scored 16 points worse on coding tasks and burned through more tokens doing it. As the authors put it, *"flooding the context is not enough."*

To be clear, the agent with the full library still did better than an agent with no skills at all. The skills themselves weren't the problem. The point is that nearly all the benefit came from matching the right skill to the right task, not from making more skills available. For a publisher, the takeaway is that a bigger skill library doesn't help your users. What helps is making sure the agent can find the one skill it actually needs.

SkillsBench also found that skills help most where the model knows least. Domain gains ranged from about 10 points in mathematics and software engineering, where models already have deep pretraining coverage, up to about 29 points in natural science. Software engineering sat near the bottom of the list precisely because models already know so much about it.

Yet that's where nearly everyone is building. SkillsBench's survey of over a million marketplace skill assignments found tools (22.4%) and development (14.3%) leading all categories, with testing and security (9.8%) and DevOps (7.8%) close behind. The community is concentrating its effort where skills pay off least. That's good news for tech writers: your product's specific conventions and workflows are exactly the thin-coverage territory where skills pay off most.

Size matters too. SkillsBench found that one to three focused skills produced the best gains, while loading four or more skills on a task cut the benefit roughly in half. Skill length followed the same pattern: compact skills outperformed detailed ones, and exhaustive, comprehensive documentation provided almost no lift at all. The instinct to be thorough, which serves tech writers well in documentation, works against them in skills.

Fabrizio Ferri-Benedetti made a similar point about style guides in [our recent podcast conversation](https://idratherbewriting.com/blog/podcast-deaton-anthropic-tw-automation): rather than stuffing a whole style spec into a skill, *"you just put in the base prompt of Claude or any AI, 'always write using Simplified Technical English,' and it works wonders."* The rules are already known to the model. More instruction isn't automatically more lift, which is why you have to measure.

{% include ads.html %}

## Self-generated skills versus curated skills

If information overload is one way skills go wrong, letting the agent write its own skills is another. The [SkillsBench](https://arxiv.org/abs/2602.12670) study tested this scenario directly. Across 87 tasks, the researchers compared a baseline condition with no skills against runs where curated skills were loaded. Curated skills lifted the average pass rate from about 34% to 50%, a gain of nearly 17 percentage points.

In a subset of configurations, the researchers added a third condition: the agent generated a skill for itself, on the fly, right before attempting the task. This went badly. Self-generated skills performed *worse* than no skills at all, dropping pass rates 8 to 11.5 points below the baseline. When the researchers audited what went wrong, they found three failure modes. The agent often never used the skill it had just written. The effort spent writing the skill displaced effort on the actual task. And when the agent did use its skill, the skill sometimes contained confidently wrong assumptions that steered the whole attempt in the wrong direction.

### What "curated" and "self-generated" actually mean

This SkillsBench finding is the one most likely to be misread, and I misread it myself at first. Neither label is about whether a human typed the words.

**Self-generated** does not mean "AI-written." It refers to one specific and fairly strange experimental setup: the agent used Anthropic's skill-creator to author a skill on its own, then immediately solved the task with only that skill. A single agent, no human anywhere in the loop, inventing procedural knowledge about a task moments before attempting that same task, with no opportunity to find out whether the skill helps. Nobody read it. Nothing validated it. Nothing was reused or refined across tasks. That's a clean scientific control, but it isn't how any team actually ships a skill. The study did not test AI *authorship*. It tested AI authorship with zero feedback and zero oversight.

**Curated** does not mean "hand-written." It means a human with domain knowledge was substantively involved in composing, reviewing, and validating the result. In SkillsBench, contributors sourced the curated skills from public repositories or wrote them from their own domain experience, and plenty of them were almost certainly drafted with AI help; the paper never claims otherwise. What matters is what the skills went through afterward: automated quality checks, at least 30 minutes of maintainer review for every submission, and selection from only the top quality tier.

So the variable separating the big gains from the losses isn't AI involvement. It's whether a human owner and a validation process stood between the draft and the shelf. This distinction matters because many teams now use meta-skills (skill-creator skills) to generate their product skills, and nothing in the SkillsBench data says that approach fails. A skill generated by a meta-skill and then reviewed, steered, tested against real tasks, and owned by someone who can vouch for it sits on the curated side of the line. A skill generated and shipped unread sits on the other side, no matter who or what produced it.

### More evidence that validation is the missing ingredient

The second SkillComposer paper, [Zhang et al.](https://arxiv.org/abs/2606.06079), backs this up. It's a paper about getting models to generate their own skills *successfully*, and it starts from the same observation: when models generate skills autonomously with no quality control, the skills often hurt more than they help.

The fix the researchers landed on is simple to describe. Before any generated skill was allowed into the library, they tested whether the agent performed better with the skill than without it, and threw away skills that didn't clear the bar. With that filter in place, machine-generated skills went from harmful to reliably helpful. Nothing about the authorship changed. What changed was that every skill had to prove its value before being kept. That's the same with-versus-without ablation testing from [Testing a skill](/ai/skills-testing.html), just automated.

### Why this matters for documentation teams

The takeaway isn't "don't let AI write your skills." AI will write most product skills, and the research doesn't say it shouldn't. The takeaway is that an unvalidated skill is worse than no skill at all. If you point a skill generator at your docs and publish whatever comes out, without ever measuring whether it helps, you're rerunning the SkillsBench experiment that produced the negative result.

And validation matters even for skills written by human experts. In SkillsBench, 13 of the 87 tasks scored *worse* with expert curated skills loaded than without them. Nobody caught those regressions by reading the skills. Only the evals caught them. For documentation teams, the durable contribution isn't drafting the skill; it's the curation around it: deciding what belongs in the skill, reviewing it for wrong assumptions, and testing that it actually improves outcomes.

## Trust and security

Everything so far has been about whether your skill works. The next problem is whether anyone will let it run at all. Product skills differ from internal skills in one uncomfortable way: you're not the one who bears the risk of a bad skill, your users are. A product skill is a set of instructions, sometimes with executable scripts in its subfolders, that you're asking *someone else's agent* to ingest and act on. That makes skills a security surface, not just a documentation artifact. A malicious or compromised skill is effectively a prompt injection with distribution: it can steer an agent toward exfiltrating data, running unwanted commands, or quietly recommending the wrong thing. Even a well-intentioned skill with a bundled script is asking users to run your code inside their environment.

Anthropic's own [documentation on skills](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) is blunt about this, advising users to install skills only from sources they created themselves or obtained from Anthropic, and to audit anything else thoroughly before use. That's the posture your skill will be met with.

So enterprises are starting to ask the questions you'd expect. Who published this skill? Has it been reviewed? What do its scripts actually do? Should our agents consume third-party skills at all? In the [first chapter](/ai/skills.html#skills100), I noted the fundamental trust problem with running someone else's skill on your content. For external product skills, that problem scales up to every user who installs yours. Until signing, provenance, and review conventions mature, publishers can expect some security-conscious organizations to block third-party skills outright, no matter how good the content is.

For documentation teams, the practical implication is that skills need the same review rigor as code: version control, code review for scripts, and a clear owner. A skill published under your product's name carries your product's credibility with it.

## Distribution and discovery

There's also no settled answer yet for how users find your skill in the first place. An [emerging spec](https://agentskills.io/home) covers the skill format, but distribution remains fragmented. The closest thing to an npm for skills, Vercel's [skills.sh](https://www.skills.sh/) registry and its `npx skills` CLI, has momentum, but it's one of several parallel ecosystems. Claude Code plugin marketplaces, Gemini CLI extensions, claude.ai's zip-upload flow, and plain GitHub repos all coexist, and none of them talks to the others. (I walk through these channels in detail in [How product skills reach users](/ai/product-skills-agent-experience.html#how-product-skills-reach-users).) A publisher can't yet pick one channel and reach everyone, and a user can't yet look in one place and find everything. Until this consolidates, every vendor is publishing into fragmentation and hoping they've covered the doors their users actually walk through.

This distribution gap has a writer-facing consequence too, which I'll return to in [Roles for tech writers with product skills](/ai/product-skills-tech-writer-roles.html). If there's no obvious publishing destination for a skill, it's hard for anyone, writer or engineer, to feel ownership over shipping one.

## A second source of truth

Whatever product detail you pack into a skill and its reference folder is a copy of something your documentation already says, and copies drift. The moment a release changes an endpoint or renames a parameter, your skill and your docs can disagree, and the agent may act on whichever it read. Tech writers will recognize this instantly: it's the single-sourcing problem, wearing a new outfit.

This is the strongest practical argument for keeping skills thin. A skill that mostly *routes*, pointing the agent at canonical docs rather than restating them, has far less surface area to fall out of date. It's also why Elastic's [agent-skills repository](https://github.com/elastic/agent-skills) pairs its skills with automated staging and drift-detection pipelines. At any real scale, keeping skills honest against the docs becomes its own maintenance workload, one you should plan for before publishing skill number one.

## Constantly shifting variables

Finally, evaluating skills is difficult because the variables are constantly shifting across the software industry. Documentation is in a constant state of flux, with new features and functionality regularly being added or modified, often on a biweekly cadence. Just as the documentation is changing, so are the models and their capabilities, as well as the agent harnesses. All of this makes it difficult to know whether a skill is improving or degrading based on changes you might make to the skill content itself.

The harness variable is worse than it sounds. SkillsBench ran the same skills across 18 model-harness configurations and found that the gains varied widely, from about 4 points in some setups to about 26 in others. Even the same model produced noticeably different results depending on which harness it ran in. The skill's benefit depends not just on its content but on how the harness surfaces it, prompts with it, and executes around it.

SkillsBench also found that getting the agent to *read* your skill doesn't guarantee anything. Agents frequently opened a skill and then failed anyway, doing something else with what they'd read. Skills turn out to be portable in format but not in behavior. A `SKILL.md` file loads anywhere, but whether the agent acts on it varies by harness. If your product skill serves users across Claude Code, Cursor, Codex, and Gemini CLI, you'd need to test it in each one, multiplying the eval matrix you have to maintain.

## Summary of the problems

That's a lot of ground, so here are the seven problems distilled:

* **Testing is harder than it looks.** You can't tell whether a skill works by reading its output, because a skill-loaded response looks more polished even when it's wrong more often. You need ablation testing (running the same task with and without the skill), and the quality of your test criteria determines whether the score means anything.

* **More information often makes things worse.** Skills add noise as easily as signal. One to three compact, focused skills outperform bigger bundles, and exhaustive reference documentation stuffed into a skill provides almost no lift. Skills should carry your team's opinions and conventions, not restate what the model already knows.

* **Unvalidated skills are worse than no skills.** The distinction that matters isn't AI-written versus human-written; it's validated versus unvalidated. Using a meta-skill to generate your product skill is fine. Shipping that output without a human reviewing it and an eval proving it helps is not.

* **Skills are a security risk.** You're asking someone else's agent to ingest your instructions and possibly run your scripts. Expect security-conscious organizations to scrutinize or outright block third-party skills until signing and provenance conventions mature.

* **There's no settled distribution channel.** Registries, plugin marketplaces, CLI extensions, and GitHub repos all coexist without talking to each other. You can't pick one channel and reach everyone.

* **Skills become a second source of truth.** Any product detail you copy into a skill will drift from your docs. Skills that route to canonical documentation rather than restating it have far less surface area to go stale.

* **The ground keeps moving.** Your docs change, the models change, and the harnesses change. The same skill produces different gains depending on which model and harness it runs in, and agents sometimes read a skill and then ignore it. Skills are portable in format but not in behavior, so serving users across multiple agents means testing in each one.

The through-line across all seven is that a skill is a claim about improving agent behavior, and claims need evidence. Most of the difficulty in publishing product skills comes down to building the measurement and ownership around the skill rather than writing the skill itself.

<hr/>

*Continue to the next topic: [Roles for tech writers with product skills](/ai/product-skills-tech-writer-roles.html)*
