---
title: "Recursive subroutines and reverse engineering"
permalink: ai/skills-recursive-patterns.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-19
---

{% include_relative draft_notice.html %}

## Recursive subroutines

Another pattern I find interesting is recursive subroutines. A recursive subroutine executes through a series of steps and only finishes after some condition is fulfilled. For example:

Complete steps 1 through 3.  
Check to see if the condition is fulfilled.  
If so, continue to step 4.   
If not, repeat steps 1 through 3.

The conditional criteria is one that works extremely well for tasks with concrete results, such as winning a game, getting an app to compile, fixing errors, etc. It's much murkier with content that has subjective evaluation. Even so, I keep coming back to the tremendous breakthroughs that AI models have made in learning games like Go. They could keep playing over and over, learning with each iteration, until they finally win a game. What if we could apply something similar to documentation?

For example, you could check that all links successfully resolve to 200 HTTP response codes. If not, the skill requires that it keep fixing the links and rebuilding the output.

A skill could check that a document passes a desired Flesch-Kincaid reading level in an output. If not, the skill keeps editing the source content and resubmitting the content to the test over and over.

{% include ads.html %}

## Reverse engineering a skill

I've also wondered if I could reverse engineer a skill. For example, how would a setup like this go:

1. Examine this output. This is the output I want you to achieve.  
2. Now here's the input. This is all you have to go on.  
3. Create a skill that will transform the input to the output.  
4. Create a subagent to perform the skill and examine whether the subagent's output resembles the output in step 1. Crucial: The subagent isn't allowed to view the output in step 1 before beginning the task. The subagent must rely entirely on the skill to achieve the result.  
5. If the subagent's output closely resembles the desired output (based on a subagent acting as a judge to evaluate), you're done. Otherwise, repeat the earlier steps, refining the skill until the subagent's output matches the desired output.
