---
title: "What the research says about product skills"
permalink: ai/product-skills-research.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-09-27
order: 14
---

{% include_relative draft_notice.html %}

The previous topic, [Anatomy and distribution of a product skill](/ai/product-skills-anatomy.html), described the structure and distribution of product skills. This topic examines the empirical evidence on whether product skills actually improve agent performance, and on how they can make it worse.

Three benchmark papers provide data on skill effectiveness: [SkillsBench](https://arxiv.org/abs/2602.12670), first released in February 2026, and two June 2026 papers on SkillComposer by [Zhao et al.](https://arxiv.org/abs/2606.32025) and [Zhang et al.](https://arxiv.org/abs/2606.06079). [Laurie Voss](https://www.linkedin.com/pulse/how-do-you-write-good-skill-theres-actual-data-now-laurie-voss-hbhdc/), head of Devrel at Arize, synthesized findings across these studies. SkillsBench has been revised several times, and some of its numbers have shifted between versions, so earlier write-ups (including Voss's) cite different figures. The SkillsBench figures here come from the latest version (v4, June 2026).

A fourth source looks at skills from a different angle. [Dachary Carey](https://dacharycarey.com/about/), who was the quality owner for MongoDB's first official agent skills and now works on agent experience at NVIDIA, audited 673 published skills and tested how skills change a model's output. Her findings are covered in [Restating the docs can make output worse](#restating-the-docs-can-make-output-worse).

Across all benchmarked tasks, curated skills raised average pass rates from 33.9% to 50.5%. However, those gains varied significantly depending on the domain and skill size. The following sections review the findings relevant to technical documentation.

## Testing a skill

Evaluation frameworks use evaluation files (EVAL files) to measure task success with and without a skill. This methodology is known as ablation testing, introduced in [Testing a skill](/ai/skills-testing.html) in the first chapter. In an ablation test, an evaluator runs identical task prompts under two conditions: one with the skill loaded and one without it. A skill is effective only if the agent completes more tasks with the skill enabled.

Subjective inspection isn't a reliable measure of quality. As Voss noted, outputs generated with skills often appear more polished even when they fail objective execution tests. Furthermore, the difficulty of the evaluation suite determines whether benchmark scores are meaningful. Prompts that merely test recall of definitions stated in the skill produce artificially high scores. A rigorous evaluation requires realistic scenarios that test whether the agent produces functional code.

## Too much information degrades results

Adding content to a skill doesn't reliably improve agent performance. In a post on context engineering, [The new rules of context engineering for Claude 5 generation models](https://claude.dev/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models/), Thariq Shihipar from Anthropic wrote that Anthropic had been overconstraining Claude Code through its system prompt and its own CLAUDE.md files and skills. Instructions from the system prompt, skills, and user requests sometimes conflicted within a single request, and the model had to think through those conflicts before deciding what to do. Anthropic removed over 80% of Claude Code's system prompt for models like Claude Opus 5 and Claude Fable 5, with no measurable loss on its own coding evaluations.

Extra instructions in a skill introduce noise. Effective skills encode team conventions, project constraints, and edge cases rather than exhaustive reference manuals. For complex domains, progressive disclosure splits secondary instructions into separate files that load only when needed.

Benchmark data supports this design. Zhao et al. compared several ways of supplying skills from a library of 196, including loading the entire library into context and selecting only task-relevant skills. On GPT-5.2-Codex, loading the entire library helped somewhat, raising the pass rate from 22.2% with no skills to 29.3%, but it captured only a small part of the available gain. Zhao et al. also built a compact routing model to predict relevant skill identifiers, and that selective routing raised pass rates by 23.1 points over the no-skill baseline. Compared with the routed selection, the full library scored 16 points lower and used about 23% more input tokens. In other words, performance gains come from matching specific skills to specific tasks rather than providing a larger skill library.

## Skills show lower gains in software engineering

SkillsBench measured improvement across eight domains. In the latest version, gains ranged from +9.7 percentage points in mathematics and operations research to +28.8 points in the natural sciences, with software engineering second from the bottom at +11.6 points. The software engineering number has moved quite a bit between versions (the February 2026 version reported only +4.5 points), but it has stayed near the bottom of the range.

The SkillsBench authors attribute the pattern to pretraining coverage. Domains that depend on specialized procedural knowledge the models rarely saw in pretraining improve the most, while domains with strong pretraining and tooling coverage benefit less. Base models already ingest extensive software documentation, open-source repositories, and technical discussions during pretraining, so standard API syntax and common programming patterns leave little room for a skill to improve. Despite that narrow margin, software remains the primary area of skill development. Voss notes that when the SkillsBench authors crawled the public skill ecosystem, 38% of the skills they found were for software development.

Skills add value in software primarily when they avoid restating public API syntax. The material worth encoding consists of undocumented system boundaries, migration rules, and product selection criteria. [The docs-first approach](/ai/product-skills-docs-first.html) discusses how placing that guidance in core documentation serves both human developers and agents.

## Exhaustive skills reduce pass rates

The size and scope of a skill directly affect task success. SkillsBench found that focused skills with at most three modules outperformed larger or exhaustive bundles. Trying to document an entire API inside a skill can degrade performance. Voss noted that comprehensive skills, the ones that try to document everything, lowered pass rates below the no-skill baseline.

In a [podcast discussion on AI automation](/blog/podcast-deaton-anthropic-tw-automation), Fabrizio Ferri-Benedetti noted a similar effect with style guides. Instead of embedding an entire style manual, adding a brief instruction to write in Simplified Technical English achieved consistent results. Broad principles rely on knowledge the model already has, whereas long rulebooks increase cognitive load.

{% include ads.html %}

## Self-generated skills versus curated skills

SkillsBench compared two main conditions, no skills and curated skills, and ran a third condition with self-generated skills on three of its model and harness configurations. Curated skills raised the baseline pass rate from 33.9% to 50.5%.

Self-generated skills, by contrast, landed below the no-skill baseline on all three configurations, by 8.1 to 11.5 points. In that test, the agent first wrote its own skills using Anthropic's skill-creator and then attempted the task with only those skills. An audit of the agents' work traced the shortfall to three primary causes:

- The agent authored the skill but failed to use it during the task.
- Writing the skill used up time and context the agent needed for the task itself.
- The generated skill contained confidently wrong content that misled the agent.

### Curated versus self-generated definitions

The distinction between curated and self-generated skills centers on validation rather than initial authoring:

- **Self-generated skills**: The agent generates instructions autonomously without human review or testing. SkillsBench ran this condition separately from its main comparison.
- **Curated skills**: A human domain expert reviews, refines, and validates the instructions. In SkillsBench, curated submissions underwent automated linting, maintainer code review, and quality filtering.

Teams can use automated generators to draft initial skill files, but those drafts still require human review and empirical testing before deployment.

### Automated validation improves outcomes

Zhang et al. took a related approach to automated generation. They trained a model to create, improve, and merge skills, and they built its training data by keeping only the candidate skills that measurably raised an executor model's pass rate. The resulting system outperformed the baselines across its three benchmarks, although the gains were modest (up to +4.5 points on agent tasks and +3.4 points on code tasks). The authoring stayed automated, but a with-and-without measurement decided which generated skills counted as good examples.

### Implications for technical communicators

Publishing unverified skill files risks degrading agent performance. A team that generates skills from documentation without testing them can ship files that introduce errors and increase token costs.

Validation matters just as much for human-authored skills. In SkillsBench, expert-authored skills decreased performance on 13 of 87 benchmark tasks. Technical communicators add value by defining evaluation criteria, reviewing generated content, and verifying that a skill reliably improves task completion.

## Restating the docs can make output worse

The previous section warned that generating skills from documentation without testing them can introduce errors. That warning might seem overcautious. If the docs are correct, wouldn't a skill built from them be correct too? And if every sentence in the skill is accurate, how could it do any harm?

Carey tested this approach while working on MongoDB's official skills. She built a pipeline that generated skills from MongoDB's documentation, with no LLM rewriting any of the content, and then compared the model's output with and without the skill loaded. Without the skill, the model produced correct code across many runs. With the skill loaded, it produced incorrect output 66% of the time ([Can agent skills make output worse?](https://dacharycarey.com/2026/05/07/can-agent-skills-make-output-worse/)). The experiment was small, but the result is hard to dismiss, since the skill's content came entirely from correct, human-written documentation.

To understand why, Carey audited 673 published skills from 41 repositories ([Agent Skill Report](https://agentskillreport.com/)). She used an LLM as a judge to score each skill on clarity, actionability, token efficiency, scope discipline, directive precision, and novelty, meaning information the model doesn't already have from training. The first five scores tended to rise and fall together, but novelty varied on its own, and it was the weakest dimension overall. Company-published skills showed the gap most clearly. They ranked first among eight sources on scope discipline, clarity, actionability, and token efficiency, but fifth on novelty. In other words, companies were publishing well-written documentation for products the models already knew. Carey's report suggests asking one question before building a skill: whether it teaches the agent something it doesn't already know.

Her case study of Stripe's `upgrade-stripe` skill shows how accurate, concise content can still mislead a model ([Case study: upgrade-stripe](https://dacharycarey.com/2026/02/27/case-study-upgrade-stripe-skill/)). The skill explains Stripe's API versioning in about 1,300 tokens, and it reads like a good migration guide. With the skill loaded, though, the model invented plausible Stripe methods and constants that don't exist, and it used an outdated version of the Go SDK. Carey's explanation is that the skill taught the API's vocabulary and concepts without the matching facts, so the model filled the gaps with confident guesses.

She then tested two reference files alongside the same skill. A short file of about 2,000 tokens, listing current versions, client setup, and error classes, largely eliminated the problem on the tasks it covered. A comprehensive file of about 8,600 tokens made results worse than the original skill. The short file also protected only the APIs it covered, and scores dropped on tasks outside that coverage. Even with the right reference, the model sometimes combined current class names from the reference with older calling patterns from its training data, producing code that looked current but used the wrong conventions.

These results need some care. Carey describes her behavioral testing, which covered 19 skills, as exploratory, and she designed the test tasks to provoke the failures she suspected. Across those 19 skills, the average effect was a small decline (−0.08 on a 5-point scale). Loading each skill alongside a realistic agent context (a system prompt plus conversation history) shrank that decline to −0.02. The Stripe skill was the exception, since the realistic context made its fabrications worse. Taken together, the results suggest that a skill restating what the model already knows usually does nothing measurable, and that it occasionally hurts in ways that are hard to predict from reading the skill. As such, the only reliable check is to test the skill with and without it loaded, in a realistic context, on the models and tools your users run.

## Summary of benchmark findings

Five principles emerge from this research:

- **Selective loading outperforms large libraries.** Loading too many skills captures only a fraction of the possible gain and increases token consumption.
- **Software engineering has low baseline headroom.** Because models already understand common programming syntax, skills must target proprietary workflows and architectural decisions.
- **Focused instructions outperform comprehensive manuals.** Skills that attempt to cover entire APIs can reduce pass rates below baseline levels.
- **Novelty matters more than polish.** A well-written skill that restates what the model already knows rarely helps, and correct content can still introduce errors.
- **Validation determines performance.** Skills require empirical evaluation, with and without the skill loaded, to confirm that they improve task execution.

None of these studies reports a comparison between a skill and the same guidance placed in documentation. SkillsBench compares curated skills with no skills (and with self-generated ones), and its June 2026 revision lists retrieval-only documentation as a baseline that future work still needs. Carey's first experiment did include a condition where the model received a relevant docs page, but her write-up reports only the results with and without the skill. As a result, the question that matters most for documentation teams, whether a skill does better than good documentation, is still open. [The docs-first approach](/ai/product-skills-docs-first.html#open-questions) returns to it.

These principles describe what belongs in a skill and how to measure its effectiveness. The [next topic](/ai/product-skills-problems.html) turns to the operational and architectural problems that persist even when a skill's content has been verified.

<hr/>

*Continue to the next topic: [Problems with product skills](/ai/product-skills-problems.html)*
