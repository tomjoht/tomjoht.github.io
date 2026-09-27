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

The [previous topic](/ai/product-skills-anatomy.html) described what a product skill is and how one reaches users. Now for the harder question. Do they actually help? If so, by how much, in which domains, and under what conditions? And how would you even know?

Until 2026, the honest answer was folklore. We had conference talks, tweets, and a lot of trial and error. Three benchmark papers changed that, and they measured skills the way the industry measures everything else. Run the tasks, score the results, compare the conditions. Those papers are [SkillsBench](https://arxiv.org/abs/2602.12670) from February, plus two June 2026 papers whose systems are both named SkillComposer, one from [Zhao et al.](https://arxiv.org/abs/2606.32025) and one from [Zhang et al.](https://arxiv.org/abs/2606.06079). [Laurie Voss](https://www.linkedin.com/pulse/how-do-you-write-good-skill-theres-actual-data-now-laurie-voss-hbhdc/), co-founder of npm, synthesized all three into a set of rules I'd recommend reading in full, and I lean on his reading throughout this topic.

The headline is pretty encouraging. Curated skills raised average pass rates from 33.9% to 50.5% across the tasks tested, which is a substantial lift by any measure. However, the details underneath that number are considerably less comfortable, especially for anyone documenting software, and they ended up shaping everything the rest of this chapter recommends. Four findings do most of that work, and the sections below take them one at a time.

## Testing a skill

The first question is how to test a skill. Testing frameworks incorporate evaluation logic (contained in EVAL files) to measure how well the skill performs on a task both with and without the skill. This is called ablation testing, and it's the same method I covered for internal skills in [Testing a skill](/ai/skills-testing.html) in the first chapter. Voss describes it plainly. Take a set of tasks, run them twice, once with the skill loaded and once without, holding everything else constant, then score both runs the same way. For skills to be worthwhile, the AI has to perform better with the skill on the task than without. And you can't shortcut the comparison by inspecting the output, because as Voss warns, *"You will not detect that by eyeballing outputs, because the skill-loaded output usually looks more professional even when it passes less often."*

However, the tests you use to evaluate the skill can make a massive difference in the evaluation score. A test that asks the agent to provide an answer to a series of simple questions, all defined in the skill, might make the skill seem to perform well compared to another test that contains much more difficult, rigorous testing criteria. Tests need their own standards of criteria to make sure the test is well-constructed and evaluative of the skill's true capabilities.

## Too much information

One reason testing matters so much is that more skill content doesn't automatically mean better performance. In fact, one of the most counterintuitive findings from the research is that too much information can make an agent perform worse. In a [recent post about context engineering](https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models), Thariq Shihipar, a member of technical staff at Anthropic, said that the Claude 5 generation models performed better with minimal prompt handholding. Newer models have better judgment and handle decisions well without explicit rules, while over-constraining just creates conflicts the model has to spend effort resolving. Regarding prompt compaction, Shihipar noted, *"We removed over 80% of Claude Code's system prompt for models like Claude Opus 5 and Claude Fable 5 with no measurable loss on our coding evaluations."* 

The additional information that a skill provides can act as noise that makes the model perform worse than without it. The same post frames what skills *should* contain, and it doubles as a thesis for this chapter. Skills should encode the opinions, knowledge, and best practices particular to your team or product, rather than serve as exhaustive reference libraries. For longer skills, split the content into separate files so the agent loads details only when it needs them (progressive disclosure).

As models get more saturated with public code, it's less necessary to provide the same information in the skills. The benchmark papers bear this out. The Zhao paper tested the information-overload question directly. The researchers compared two setups. One dumped a library of 196 skills into the agent's context all at once. The other selected only the few skills relevant to the task at hand. Selecting won decisively. The agent buried under the full library scored **16 points worse** on coding tasks and burned **23% more input tokens** doing it. Flooding the context failed on accuracy and cost simultaneously.

Their fix is worth noting, because it reframes the problem. They treated skill choice as a separate architectural concern and built a dedicated composer, a tiny 3.9-million-parameter model whose only job is to emit an ordered list of skill IDs. That composer raised pass rates 23.1 points over the no-skill baseline. The lesson generalizes past their implementation. A skill is only as good as the mechanism that decides when to load it. Selection is not a detail of the skill. It's a problem sitting above the skill.

The skills themselves weren't the problem here. The point is that nearly all the benefit came from matching the right skill to the right task, not from making more skills available. For a publisher, the takeaway is that a bigger skill library doesn't help your users. What helps is making sure the agent can find the one skill it needs, and just as often, that it doesn't reach for one it doesn't.

## Skills help least in software

SkillsBench also found that skills help most where the model knows least, and the spread here is not subtle. This is the finding I keep coming back to. The paper's own abstract reports gains ranging from **+4.5 points for software engineering to +51.9 points for healthcare**. Software engineering finished dead last. The models have already ingested GitHub, Stack Overflow, and the better part of every API tutorial ever published, so there is very little headroom left for a skill to add.

I think this should unsettle anyone publishing a product skill, and it unsettled me. A product skill for a software API is aimed squarely at the domain where skills showed the *smallest* measured benefit in the entire study. That doesn't make product skills worthless, but it does mean the burden of proof sits a lot higher than the enthusiasm around them suggests.

Software is where most people are building. Voss reports that SkillsBench's crawl of the public skill ecosystem found **38% of all skills are software development skills**. The community is concentrating its effort where the measured payoff is thinnest.

The way out of that trap is to stop aiming at the part of the problem the model has already solved. Your API's request syntax sits in the +4.5 zone. Your organization's undocumented reasons for having three overlapping APIs that all look like the right answer are not in the model's pretraining at all, because nobody ever wrote them down. That's the content [The docs-first approach](/ai/product-skills-docs-first.html) argues belongs in your product overview, where it helps every agent and every human rather than only the users who installed a file.

## Exhaustive skills can be worse than nothing

Size matters too, and the paper is direct about it. *"Focused Skills with 2–3 modules outperform comprehensive documentation."* Note what that sentence is comparing. The losing condition isn't a slightly longer skill. It's *comprehensive documentation*, the exhaustive, every-capability-covered artifact that a documentation team's instincts and tooling both push toward by default.

Exhaustive skills don't just help less. Voss's reading of the data is that comprehensive skills, the ones that try to document everything, *"actually lowered pass rates below the no-skill baseline."* A skill that documents your whole API can leave the agent worse off than handing it nothing, while you pay tokens for the privilege.

In other words, the instinct to be thorough, which serves us well in documentation, works against us in skills. This is the hardest adjustment in the whole chapter, and I say that as someone who had to read the finding several times before accepting it, because thoroughness isn't only a habit for tech writers. It's most of the professional identity.

Fabrizio Ferri-Benedetti made a similar point about style guides in [our recent podcast conversation](https://idratherbewriting.com/blog/podcast-deaton-anthropic-tw-automation): rather than stuffing a whole style spec into a skill, *"you just put in the base prompt of Claude or any AI, 'always write using Simplified Technical English,' and it works wonders."* The rules are already known to the model. More instruction isn't automatically more lift, which is why you have to measure.

{% include ads.html %}

## Self-generated skills versus curated skills

If information overload is one way skills go wrong, letting the agent write its own skills is another. The [SkillsBench](https://arxiv.org/abs/2602.12670) study tested this scenario directly. The researchers evaluated every task under three conditions: no skills, curated skills, and self-generated skills. Curated skills lifted the average pass rate from 33.9% to 50.5%, a gain of roughly 16 percentage points. That's a great result, and it's worth stating plainly before getting to the caveats.

In a subset of configurations, the researchers added a third condition. The agent generated a skill for itself, on the fly, right before attempting the task. This went badly. The paper's conclusion is that self-generated skills *"provide no benefit on average, showing that models cannot reliably author the procedural knowledge they benefit from consuming"*, landing about 1.3 points below the no-skill baseline by Voss's reading. When the researchers audited what went wrong, they found three failure modes. The agent often never used the skill it had just written. The effort spent writing the skill displaced effort on the actual task. And when the agent did use its skill, the skill sometimes contained confidently wrong assumptions that steered the whole attempt in the wrong direction.

### What "curated" and "self-generated" actually mean

This SkillsBench finding is the one most likely to be misread, and I misread it myself at first. Neither label is about whether a human typed the words.

**Self-generated** does not mean "AI-written." It refers to one specific experimental setup. The agent used Anthropic's skill-creator to author a skill on its own, then solved the task with only that skill. A single agent, no human anywhere in the loop, inventing procedural knowledge about a task moments before attempting that same task, with no opportunity to find out whether the skill helps. Nobody read it. Nothing validated it. Nothing was reused or refined across tasks. That's a clean scientific control, but it isn't how any team actually ships a skill. The study did not test AI *authorship*. It tested AI authorship with zero feedback and zero oversight.

**Curated** does not mean "hand-written." It means a human with domain knowledge was substantively involved in composing, reviewing, and validating the result. In SkillsBench, contributors sourced the curated skills from public repositories or wrote them from their own domain experience, and plenty of them were almost certainly drafted with AI help; the paper never claims otherwise. What matters is what the skills went through afterward: automated quality checks, at least 30 minutes of maintainer review for every submission, and selection from only the top quality tier.

So the variable separating the big gains from the losses isn't AI involvement. It's whether a human owner and a validation process stood between the draft and the shelf. This distinction matters because many teams now use meta-skills (skill-creator skills) to generate their product skills, and nothing in the SkillsBench data says that approach fails. A skill generated by a meta-skill and then reviewed, steered, tested against real tasks, and owned by someone who can vouch for it sits on the curated side of the line. A skill generated and shipped unread sits on the other side, no matter who or what produced it.

### More evidence that validation is the missing ingredient

The second SkillComposer paper, [Zhang et al.](https://arxiv.org/abs/2606.06079), backs this up. It's a paper about getting models to generate their own skills *successfully*, and it starts from the same observation. When models generate skills autonomously with no quality control, the skills often hurt more than they help.

The fix the researchers landed on is simple to describe. Before any generated skill was allowed into the library, they tested whether the agent performed better with the skill than without it, and threw away skills that didn't clear the bar. With that filter in place, machine-generated skills went from harmful to reliably helpful. Nothing about the authorship changed. What changed was that every skill had to prove its value before being kept. That's the same with-versus-without ablation testing from [Testing a skill](/ai/skills-testing.html), just automated.

### Why this matters for documentation teams

The takeaway isn't "don't let AI write your skills." AI will write most product skills, and the research doesn't say it shouldn't. The takeaway is that an unvalidated skill is worse than no skill at all. If you point a skill generator at your docs and publish whatever comes out, without ever measuring whether it helps, you're rerunning the SkillsBench experiment that produced the negative result.

And validation matters even for skills written by human experts. In SkillsBench, 16 of 84 tasks showed negative deltas, meaning they scored *worse* with expert curated skills loaded than without them. Nobody caught those regressions by reading the skills. Only the evals caught them. For documentation teams, the durable contribution isn't drafting the skill. It's the curation around it, which means deciding what belongs in the skill, reviewing it for wrong assumptions, and testing that it improves outcomes.

## What the evidence adds up to

Collected in one place, four findings matter most for a documentation team.

- **More skills is not better.** A 196-skill library scored 16 points worse than a small relevant subset while burning 23% more input tokens. Selection is a first-class problem sitting above the skill.
- **Skills help least in software.** The gain was +4.5 points for software engineering against +51.9 for healthcare. Models are saturated with public code, so a skill explaining your API's mechanics competes with knowledge the model already has.
- **Exhaustive skills can make things worse.** Focused skills with two to three modules outperformed comprehensive documentation, and skills that tried to document everything pushed pass rates below the no-skill baseline.
- **Validation is the variable, not authorship.** Self-generated skills provided no benefit on average, but the distinction that mattered was whether a human with domain knowledge reviewed and tested the result, not who typed it.

None of this says skills are worthless, and honestly I want to be careful not to overcorrect here. Curated skills produced a real, measured gain. What the data says is narrower. The headroom in software documentation is thin, the failure modes are easy to trigger, and you can't tell which side you landed on without measuring. The [next topic](/ai/product-skills-problems.html) covers the problems that remain even when the content inside the skill is right.

<hr/>

*Continue to the next topic: [Problems with product skills](/ai/product-skills-problems.html)*
