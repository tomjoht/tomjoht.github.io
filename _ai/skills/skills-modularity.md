---
title: "Modularity of skills"
permalink: ai/skills-modularity.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-17
---


In creating a skill to accomplish a task, it’s tempting to load up the skill with the full lists of subtasks directly in the skill. However, this is a mistake, as this results in megaskills that do 10 things. Megaskills don’t work for other writers because, due to the idiosyncratic nature of tech writing, these other writers don’t have the same set of tasks. Instead, if the tasks might be reused in other skills, you should make each task its own standalone skill. Then reference those tasks as part of the skill.

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

This is the list of steps I go through for a release notes skill for one of my products. However, I write release notes for multiple products. Some other release notes have different processes. One product doesn’t have a roadmap, for example. Another product doesn’t have any Gerrit diffs to compare to. And so on. However, many of the other steps are similar.

If this were a documentation project, the approach any technical writer would take would be straightforward: modularize each of these components so they can be re-used. We follow a similar pattern when designing skills. 

This means many of the above skills should be packaged as a standalone skill, to be used as needed for any other skill. The release notes skill for ACME API thus becomes more of a routing skill, with instructions such as the following:

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

Now we end up with a dozen or so standalone skills that can be repurposed into other skills. The release notes skill ends up being more like a routing skill, or an overarching meta. It still might provide its own instruction in places, for areas or tasks that don’t make sense to break out into their own skills. For example, “Run build script to regenerate reference docs” - this is likely a particular configuration and directory unique to these docs. But most of the other skills can be reused.

By breaking skills down to a single task, this not only unlocks re-use for the author making the skills; it also unlocks re-use for other writers. Whereas the megaskill would have caused many writers to say sorry, this skill doesn’t work for me because of these small points, now the same writers can pick and choose the skills that work for them. Most likely 50-70% of these skills might apply to another writer’s release notes situation, as different as the release notes process might be.

In a modular skill design, skill building becomes an act of recipe creation. You have a cupboard full of ingredients, and as the recipe maker, you pick and choose the combination, order, and sequence of ingredients to use.