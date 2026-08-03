---
title: "Problems with product skills"
permalink: ai/product-skills-problems.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-08-02
order: 13
---

{% include_relative draft_notice.html %}

Although skills provide a noticeable lift to agents, there are also many challenges associated with skills. This topic walks through the big ones: testing, information overload, AI-generated skills, trust and security, distribution, drift from the docs, and the constantly shifting variables that make evaluation hard.

## Testing a skill

The first question is how to test a skill. Testing frameworks incorporate evaluation logic (contained in EVAL files) to measure how well the skill performs on a task both with and without the skill. This is called ablation testing, and it's the same method I covered for internal skills in [Testing a skill](/ai/skills-testing.html) in the first chapter. [Laurie Voss](https://www.linkedin.com/pulse/how-do-you-write-good-skill-theres-actual-data-now-laurie-voss-hbhdc/), synthesizing the skill benchmark papers, describes it plainly: take a set of tasks, run them twice, once with the skill loaded and once without, holding everything else constant, then score both runs the same way. For skills to be worthwhile, the AI has to perform better with the skill on the task than without. And you can't shortcut the comparison by inspecting the output, because as Voss warns, *"You will not detect that by eyeballing outputs, because the skill-loaded output usually looks more professional even when it passes less often."*

However, the tests you use to evaluate the skill can make a massive difference in the evaluation score. A test that asks the agent to provide an answer to a series of simple questions, all defined in the skill, might make the skill seem to perform well compared to another test that contains much more difficult, rigorous testing criteria. Tests need their own standards of criteria to make sure the test is well-constructed and evaluative of the skill's true capabilities.

## Too much information

In a [recent post about context engineering](https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models) from Anthropic, they said that the Claude 5 generation models performed better with minimal prompt handholding — newer models have better judgment and handle decisions well without explicit rules, while over-constraining just creates conflicts the model has to spend effort resolving. As Anthropic engineers noted regarding prompt compaction, *"We removed over 80% of Claude Code's system prompt for models like Claude Opus 5 and Claude Fable 5 with no measurable loss on our coding evaluations."* The additional information that a skill might provide to the model can act as noise that makes it perform worse than without. The same post frames what skills *should* contain, and it doubles as a thesis for this chapter: skills should encode the opinions, knowledge, and best practices particular to your team or product — not serve as exhaustive reference libraries — with longer skills split into separate files for progressive disclosure.

As models get more saturated with public code, it's less necessary to provide the same information in the skills. [Laurie Voss synthesized the three benchmark papers](https://www.linkedin.com/pulse/how-do-you-write-good-skill-theres-actual-data-now-laurie-voss-hbhdc/) — SkillsBench plus two June 2026 papers confusingly both named SkillComposer — and the skill-composition paper tested the flooding question directly: injecting an exhaustive 196-skill library into context scored 16 percentage points worse on coding tasks than selecting a small, relevant subset, while burning 23% more input tokens. Being selective works much better: the paper's composer — a tiny model that does nothing but pick an ordered handful of relevant skills — raised pass rates by 23.1 percentage points over the no-skill baseline.

SkillsBench also found that skills help most where the model knows least. Gains ranged from 4.5 percentage points in software engineering, where models already have deep pretraining coverage, up to 51.9 points in healthcare. Yet 38% of all published skills the researchers found were software development skills. In other words, the community is building skills mostly where they help least. That's good news for tech writers: your product's specific conventions and workflows are exactly the thin-coverage territory where skills pay off most.

Size matters too. SkillsBench found that compact, focused skills beat exhaustive ones, and that loading four or more skills on a task produced roughly half the gain of loading one or two. The instinct to be thorough, which serves tech writers well in documentation, works against them in skills.

Fabrizio Ferri-Benedetti makes the same point about style guides. You can stuff the entire Simplified Technical English specification into a skill, and it won't produce better results than simply telling the AI to apply STE style to the content. The rules are already known to the model. More instruction isn't automatically more lift, which is why you have to measure.

{% include ads.html %}

## AI-generated skills

In the benchmark study titled [*SkillsBench: Benchmarking Agent Skills across Procedural Domain Knowledge*](https://arxiv.org/abs/2602.12670) (arXiv:2602.12670, Feb 2026), researchers measured agents across 87 tasks and 18 model-harness configurations under different conditions: a no-skills baseline, expert human-curated skills, and (in a subset of configurations) skills the agent generated for itself.

They found that across all configurations, the no-skills baseline averaged a 33.9% pass rate, while expert human-curated skills raised the average pass rate to 50.5% (an average gain of +16.6 percentage points, with individual configuration gains up to +25.7 percentage points).

In contrast, self-generated skills performed worse than when the agent had no skills at all, landing 8 to 11.5 percentage points *below* the 33.9% baseline in all three configurations where the researchers tested them. When the paper's authors traced what went wrong, they found three failure modes. Agents often ignored the skills they had just written. The act of writing them displaced actual progress on the task. And most dangerously, when the skills were used, they locked in confidently incorrect assumptions that sent the agent in the wrong direction.

A critical clarification is what these two conditions actually mean. The curated skills weren't written for the benchmark. Contributors authored them independently, drawing on public repositories or prior domain experience, precisely so that a skill couldn't function as a hidden answer key. They're real procedural knowledge that a human expert owns and stands behind. The self-generated skills, by contrast, were written autonomously by the agent on the fly, using Anthropic's skill-creator right before attempting the task, with no human oversight or validation. The variable that separates the +16.6 outcome from the negative one isn't whether AI touched the skill. It's whether a human with domain knowledge curated and owned the result.

Furthermore, 13 of the 87 tasks in SkillsBench scored worse even with expert skills loaded than without. This shows why teams must run automated ablation testing (with-versus-without evals) as a mandatory quality gate before publishing any skill.

This study is worth evaluating in light of the many automated skill-generation pipelines emerging across the industry. The approach many teams take is to generate product skills using an automated skill creator, rather than more carefully producing them from expert human curation.

## Trust and security

A product skill is a set of instructions, sometimes with executable scripts in its subfolders, that you're asking *someone else's agent* to ingest and act on. That makes skills a security surface, not just a documentation artifact. A malicious or compromised skill is effectively a prompt injection with distribution: it can steer an agent toward exfiltrating data, running unwanted commands, or quietly recommending the wrong thing. Even a well-intentioned skill with a bundled script is asking users to run your code inside their environment.

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

The harness variable is worse than it sounds. SkillsBench ran the same skills across multiple harnesses and found the gains ranged from 4.1 to 25.7 percentage points depending on the model-harness configuration. Claude Code showed the highest skill utilization, while Codex CLI frequently neglected skills entirely, acknowledging the skill's content and then implementing its own solution anyway. Skills turn out to be portable in format but not in behavior. A `SKILL.md` file loads anywhere, but whether the agent actually follows it is a per-harness engineering result. If your product skill serves users across Claude Code, Cursor, Codex, and Gemini CLI, you'd need to test it in each one, multiplying the eval matrix you have to maintain.

<hr/>

*Continue to the next topic: [Roles for tech writers with product skills](/ai/product-skills-tech-writer-roles.html)*
