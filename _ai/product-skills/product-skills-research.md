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

The [previous topic](/ai/product-skills-anatomy.html) described the structure and distribution of product skills. This topic examines the empirical evidence: benchmark studies that measure whether product skills actually improve agent performance.

Three benchmark papers provide data on skill effectiveness: [SkillsBench](https://arxiv.org/abs/2602.12670) from February 2026, and two June 2026 papers on SkillComposer by [Zhao et al.](https://arxiv.org/abs/2606.32025) and [Zhang et al.](https://arxiv.org/abs/2606.06079). [Laurie Voss](https://www.linkedin.com/pulse/how-do-you-write-good-skill-theres-actual-data-now-laurie-voss-hbhdc/) synthesized findings across these studies.

Across all benchmarked tasks, curated skills raised average pass rates from 33.9% to 50.5%. However, those gains varied significantly depending on the domain and skill size. The following sections review the findings relevant to technical documentation.

## Testing a skill

Evaluation frameworks use evaluation files (EVAL files) to measure task success with and without a skill. This methodology is known as ablation testing, introduced in [Testing a skill](/ai/skills-testing.html) in the first chapter. In an ablation test, an evaluator runs identical task prompts under two conditions: one with the skill loaded and one without it. A skill is effective only if the agent completes more tasks with the skill enabled.

Subjective inspection isn't a reliable measure of quality. As Voss noted, outputs generated with skills often appear more polished even when they fail objective execution tests. Furthermore, the difficulty of the evaluation suite determines whether benchmark scores are meaningful. Prompts that merely test recall of definitions stated in the skill produce artificially high scores. A rigorous evaluation requires realistic scenarios that test whether the agent produces functional code.

## Too much information degrades results

Adding content to a skill doesn't reliably improve agent performance. In a post on [context engineering](https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models), Thariq Shihipar from Anthropic observed that modern models need minimal prompt constraints, and that over-constraining a model introduces conflicting rules that degrade reasoning. Shihipar noted that Anthropic removed over 80% of Claude Code's default system prompt for recent models without reducing coding benchmark scores.

Extra instructions in a skill introduce noise. Effective skills encode team conventions, project constraints, and edge cases rather than exhaustive reference manuals. For complex domains, progressive disclosure splits secondary instructions into separate files that load only when needed.

Benchmark data supports this design. Zhao et al. compared two approaches: evaluating an entire library of 196 skills loaded into context versus selecting only task-relevant skills. Loading the entire library reduced coding task pass rates by 16 points and increased input token consumption by 23%. To address this, Zhao et al. built a compact routing model to predict relevant skill identifiers. Selective routing raised pass rates by 23.1 points over baseline. In other words, performance gains come from matching specific skills to specific tasks rather than providing a larger skill library.

## Skills show lower gains in software engineering

SkillsBench measured improvement across multiple domains, with gains ranging from +4.5 percentage points in software engineering to +51.9 percentage points in healthcare. Software engineering showed the smallest gain of any domain evaluated.

The reason is straightforward: base models already ingest extensive software documentation, open-source repositories, and technical discussions during pretraining. Standard API syntax and common programming patterns leave little room for a skill to improve. Despite that narrow margin, software remains the primary area of development; Voss reported that software development accounts for 38% of public skills in the SkillsBench corpus.

Skills add value in software primarily when they avoid restating public API syntax. The material worth encoding consists of undocumented system boundaries, migration rules, and product selection criteria. [The docs-first approach](/ai/product-skills-docs-first.html) discusses how placing that guidance in core documentation serves both human developers and agents.

## Exhaustive skills reduce pass rates

The size and scope of a skill directly affect task success. SkillsBench found that focused skills containing two to three modules consistently outperformed comprehensive documentation. Trying to document an entire API inside a skill can degrade performance: Voss noted that comprehensive skills attempting to cover every feature lowered pass rates below the no-skill baseline, as complete API schemas increase token costs while confusing model reasoning.

In a [podcast discussion on AI automation](https://idratherbewriting.com/blog/podcast-deaton-anthropic-tw-automation), Fabrizio Ferri-Benedetti noted a similar effect with style guides. Rather than embedding an entire style manual, adding a brief instruction to write in Simplified Technical English achieved consistent results. Broad principles rely on knowledge the model already has, whereas long rulebooks increase cognitive load.

{% include ads.html %}

## Self-generated skills versus curated skills

SkillsBench measured task performance across three conditions: no skills, curated skills, and self-generated skills. Curated skills raised the baseline pass rate from 33.9% to 50.5%.

Self-generated skills, by contrast, produced no measurable benefit, averaging 1.3 points below baseline. In that test, an agent generated a skill file immediately before executing a task. The study concluded that models can't reliably author the procedural knowledge they need for execution, identifying three primary causes:

- The agent authored the skill but failed to reference it during the task.
- Generating the skill consumed context tokens needed for task execution.
- The generated skill contained incorrect assumptions that misled the agent.

### Curated versus self-generated definitions

The distinction between curated and self-generated skills centers on validation rather than initial authoring:

- **Self-generated skills**: The agent generates instructions autonomously without human review or testing. SkillsBench tested this unmonitored generation as an experimental control.
- **Curated skills**: A human domain expert reviews, refines, and validates the instructions. In SkillsBench, curated submissions underwent automated linting, maintainer code review, and quality filtering.

Teams can use automated generators to draft initial skill files, but those drafts still require human review and empirical testing before deployment.

### Automated validation improves outcomes

Zhang et al. confirmed that validation is what makes a skill useful. The authors tested autonomous skill generation paired with an automated evaluation filter. The system evaluated generated skills against baseline tasks and discarded any skill that failed to improve benchmark scores. With that filter in place, machine-generated skills produced consistent performance improvements. The authoring method remained automated, while the evaluation filter kept defective skills out of the catalog.

### Implications for technical communicators

Publishing unverified skill files risks degrading agent performance. A team that generates skills from documentation without testing them can ship files that introduce errors and increase token costs.

Validation matters just as much for human-authored skills. In SkillsBench, expert-authored skills decreased performance on 16 of 84 benchmark tasks. Technical communicators add value by defining evaluation criteria, reviewing generated content, and verifying that a skill reliably improves task completion.

## Summary of benchmark findings

Four principles emerge from this research:

- **Selective loading outperforms large libraries.** Loading too many skills reduces accuracy and increases token consumption.
- **Software engineering has low baseline headroom.** Because models already understand common programming syntax, skills must target proprietary workflows and architectural decisions.
- **Focused instructions outperform comprehensive manuals.** Skills that attempt to cover entire APIs reduce pass rates below baseline levels.
- **Validation determines performance.** Skills require empirical evaluation to confirm that they improve task execution.

These four principles describe what belongs in a skill and how to measure its effectiveness. The [next topic](/ai/product-skills-problems.html) turns to the operational and architectural problems that persist even when a skill's content has been verified.

<hr/>

*Continue to the next topic: [Problems with product skills](/ai/product-skills-problems.html)*
