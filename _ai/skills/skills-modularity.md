---
title: "Modularity of skills"
permalink: ai/skills-modularity.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-17
redirect_from:
- /ai/skills-hurdles-to-adoption.html
---

{% include_relative draft_notice.html %}

## Hurdles preventing skill adoption

If you make a skill yourself, you know its origin and utility. But can you make a skill that others will use? Several factors prevent writers from embracing and using the skills made by others:

* **Lack of awareness that the skill exists.** Many tech writers are just unaware that the skills exist. It helps if the organization has a monorepo where agents can search for `SKILL.md` files in a single place. Even so, with thousands of files, agents might be highly swayed by skill names or descriptions and overlook skills that are otherwise more helpful.
* **Irrelevance of part of the skill.** Tech writing tends to be idiosyncratic. One TW's processes in one group differ just enough from the next person that it's hard to share a skill. For example, in one analysis I did, I found 38 different release notes skills in my company. We all do release notes just a little differently, though there are common patterns. The same goes for many other things as well, from table formatting preferences to API overviews and more.
* **Megaskills combine too many miscellaneous tasks.** Some skills function as megaskills that do a variety of tasks, from editing to moving files to reviewing content and more. This might be a personal checklist a tech writer has for a particular doc set. The problem, however, is that this same grab-bag of tasks might not fit other writers who don't have the same needs in aggregate. A writer might look at the skill and reject it because 20% feels irrelevant or misguided. Skills instead should focus on a specific task and do it well.
* **Lack of trust in the skill.** Before TWs set a skill loose on their content, they want more assurance about what the skill will actually do, and how well. Skills should have evaluation components that test the skill, giving the writer confidence in the skill's quality. Granted, eval files can be easily manipulated to pass tests, making the skill look high quality even if the skill doesn't work. Likewise, eval files can be poorly written or conceived, resulting in failing scores even for skills that do the job fantastically.

The solution to most of these hurdles is modularity. Each skill should perform a single task, named and described clearly, so there's no confusion about what it does.

## Why modularity matters

If you've done any single sourcing as a tech writer, this concept will feel familiar. Single sourcing is about breaking content into reusable components so you can assemble them into different outputs. Skill modularity is the same idea applied to agent instructions: break tasks into standalone skills, then compose them into larger workflows.

The temptation when building a skill is to load it up with every subtask directly. However, this results in megaskills that do 10 things. If the tasks might be reused in other skills, you should make each task its own standalone skill, then reference those tasks as part of a larger skill.

For example, let’s say that a release notes task for ACME API consists of the following tasks:

1. Analyze source code release stage tags
2. Run build script to regenerate reference docs
3. Analyze build errors
4. Compare Gerrit diffs
5. Summarize the technical changes
6. Connect the technical changes to roadmap features
7. Identify breaking changes
8. Summarize bug fixes
9. Summarize doc fixes
10. Check technical accuracy
11. Update API diagrams
12. Link code elements to reference docs
13. Perform style check
14. Look for errors in links, syntax, and configuration
15. Reflect and improve the skill

This is the list of steps I go through for a release notes skill for one of my products. However, I write release notes for multiple products. Some other release notes have different processes. One product doesn't have a roadmap, for example. Another product doesn't have any Gerrit diffs to compare to. And so on. However, many of the other steps are similar.

The approach is straightforward: modularize each of these components so they can be reused — just like you'd modularize content in a documentation project. Many of the above steps should be packaged as standalone skills, each performing a single task. The release notes skill for ACME API then becomes a **routing skill** — a choreographer that orchestrates the sub-skills in the right sequence, like this:

1. Run this skill: Analyze source code release stage tags
2. Run build script to regenerate reference docs
3. Run this skill: Analyze build errors
4. Run this skill: Compare Gerrit diffs
5. Run this skill: Summarize the technical changes
6. Connect the technical changes to roadmap features
7. Run this skill: Identify breaking changes
8. Run this skill: Summarize bug fixes
9. Run this skill: Summarize doc fixes
10. Run this skill: Check technical accuracy
11. Run this skill: Update API diagrams
12. Run this skill: Link code elements to reference docs
13. Run this skill: Perform style check
14. Run this skill: Look for errors in links, syntax, and configuration
15. Run this skill: Reflect and improve the skill

Now we end up with a dozen or so standalone skills that can be repurposed into other skills. The routing skill still might provide its own inline instructions for areas that don't make sense to break out — for example, "Run build script to regenerate reference docs" is likely a particular configuration and directory unique to these docs. But most of the other skills can be reused.

In your `SKILL.md`, referencing a sub-skill can be as simple as:

```markdown
## Step 3: Analyze build errors

Run the `analyze-build-errors` skill located at 
`_agents/skills/analyze-build-errors/SKILL.md`. 
Pass the build log output from the previous step as input.
```

The routing skill doesn't need to contain the full instructions for analyzing build errors — it just points to the sub-skill and passes along any necessary context.

{% include ads.html %}

By breaking skills down to a single task, this not only unlocks reuse for you; it also unlocks reuse for other writers. Whereas the megaskill would have caused many writers to say, "Sorry, this doesn't work for me because of these small points," now the same writers can pick and choose the individual skills that work for them. Most likely 50-70% of these sub-skills might apply to another writer's release notes situation, as different as their overall process might be.

In a modular skill design, skill building becomes an act of recipe creation. You have a cupboard full of ingredients, and as the recipe maker, you pick and choose the combination, order, and sequence. 

And here's the real payoff: other writers can use *your* ingredients to create *their own* recipes. You built a great style-checking skill? Someone on another team can drop it into their tutorial-publishing workflow alongside their own skills that you've never seen. That's the kind of cross-pollination that makes the [100-skills vision](/ai/skills#100twskills) actually work.

<hr/>

*Continue to the next topic: [Design principles for skills](/ai/skills-design-principles.html)*