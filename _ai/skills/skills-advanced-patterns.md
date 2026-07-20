---
title: "Advanced patterns: subagents, loops, and reverse engineering"
permalink: ai/skills-advanced-patterns.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-19
redirect_from:
- /ai/skills-subagent-architectures.html
- /ai/skills-recursive-patterns.html
---

{% include_relative draft_notice.html %}

The patterns in this article are ones I'm still exploring. They push beyond basic skill building into more experimental territory — subagent architectures, recursive loops, and reverse engineering skills from outputs. I include them here because they hint at where skill design is heading, even if I don't have all the answers yet.

## Subagent architectures

One pattern I'm just now exploring is using subagents within skills. When you interact with an agent, you're talking to a single agent with a single context window. But that agent can spawn subagents — separate agents with their own fresh contexts — to handle specific tasks. When the subagent finishes, it reports back to the main agent, which synthesizes the results and communicates them to you.

The most compelling use case I've found so far is **fresh-context QA**. Here's the idea: after your main agent finishes a complex task (like writing release notes), you have it spawn a subagent with a completely clean context — no history of the edits, no memory of the reasoning behind the changes — and ask that subagent to perform quality assurance on the output.

Why does this matter? Because an agent that did the work has an inherent bias toward its own output. It made specific choices and has reasons for each one. When you ask that same agent to review its own work, it tends to see fewer issues. A fresh subagent doesn't carry that bias. It reads the output cold and evaluates it on its merits, which typically produces more rigorous QA.

In a skill, this might look like adding a final step:

> Spawn a subagent with no session history. Provide the subagent with the output files and the original requirements. Ask the subagent to evaluate the output for accuracy, completeness, and adherence to the style guide. Report any issues back.

{% include ads.html %}

### The swarm concept

Taking subagents further, some people are building "swarms" — many agents working together autonomously. I recently saw a demo where a product manager had built agents representing developers, QA engineers, UX designers, and release managers, each trained with role-specific skills. One agent finishes a task and hands it off to the next, executing a complex workflow. 

I'm still wrapping my head around whether swarms make sense for documentation workflows, but the concept is worth tracking. As you design skills, keep the subagent architecture in mind for one practical reason: **sessions degrade as tokens pile up.** When your conversation approaches the token limit, the system compacts earlier history into summaries, meaning the agent has increasingly fuzzy memories of earlier work. For long, multi-step workflows, breaking tasks into subagent calls — each with its own clean context — can keep performance high throughout the process.

## Recursive subroutines

Another pattern I find interesting is recursive subroutines. A recursive subroutine executes through a series of steps and only finishes after some condition is fulfilled:

1. Complete steps 1 through 3.  
2. Check to see if the condition is fulfilled.  
3. If so, continue to step 4.   
4. If not, repeat steps 1 through 3.

This pattern works best when the success condition is concrete and measurable. For example:

* **Link validation**: Check that all links resolve to 200 HTTP response codes. If not, fix the broken links, rebuild the output, and check again.
* **Readability targets**: Check that a document passes a desired Flesch-Kincaid reading level. If not, simplify the language and re-check.
* **Build errors**: Run a build, check for errors, fix them, and rebuild until the build succeeds.

The pattern is murkier with subjective evaluation. "Is this document good?" doesn't have a clean pass/fail condition. But you can approximate it by breaking "good" into measurable proxies — link health, reading level, style guide compliance — and looping on each one individually.

In a skill, you might write this as:

> ## Step 5: Validate links
>
> Run the link checker against the output directory. If any links return non-200 status codes, fix the source content and re-run the link checker. Repeat until all links resolve successfully, up to a maximum of 3 attempts. If links still fail after 3 attempts, log the failures and continue.

Note the escape hatch: "up to a maximum of 3 attempts." Without a limit, a recursive subroutine can loop indefinitely, burning tokens on a problem it can't solve. Always include a maximum iteration count.

## Reverse engineering a skill

The last pattern I've been wondering about is reverse engineering. Instead of writing a skill from your knowledge of the process, what if you worked backward from a known-good output?

1. Examine this output. This is the result I want you to achieve.  
2. Now here's the input. This is all you have to go on.  
3. Create a skill that will transform the input into the output.  
4. Spawn a subagent to perform the skill. The subagent isn't allowed to view the desired output — it must rely entirely on the skill instructions.
5. Have a third agent (acting as a judge) compare the subagent's output to the desired output.
6. If the outputs closely match, the skill is good. Otherwise, refine the skill and repeat.

This is essentially test-driven skill development — you define the expected output first, then iterate on the skill until it produces that output reliably. I haven't fully tested this approach, but the logic is sound: if a skill can reliably transform input to output without the agent ever seeing the answer, then the skill itself captures the necessary knowledge.

The approach connects back to [testing](/ai/skills/skills-testing): if you can express your desired output as a set of eval criteria, you have a natural eval suite built into the skill development process itself.

