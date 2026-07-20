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

One pattern in building a skill that I'm just now exploring is using subagents within skills. This isn't obvious when you're interacting with an agent, but an agent has at its command a whole army of subagents that it can invoke. Think of it like the self-replicating Agent Smiths in the Matrix. The agent you're talking to is the main Agent Smith. But if you ask Agent Smith to create a subagent to perform a particular task, Agent Smith can do that. When the subagent finishes, the subagent reports back to Agent Smith and Agent Smith then communicates the outcome to you. In this way, you can potentially create a whole swarm of subagents to tackle a particular task. 

I've only started incorporating subagents into some of my skills, so I'm not entirely sure how useful they'll be. Here's how I implemented one subagent. I asked my agent to create a subagent with a fresh context (no history of the existing edits and changes the main agent has made) and to perform a QA on the job done by this main agent. Creating a subagent that doesn't have the session context is powerful because it sidesteps the bias that the main agent typically has. 

For example, if you ask an agent to write some docs and later to perform some QA on the docs, the agent who did the work typically sees fewer imperfections or issues with the work it performed. But if you invoke a new agent that doesn't have this bias (of preferring its own work, given that it has reasons for why it made the changes it did), then the QA tends to be more objective and rigorous.

{% include ads.html %}

I often hear of people using hundreds of agents to tackle particular tasks. When you have many agents working together autonomously, it's called a "swarm." One product manager recently showed me how he's been building out a swarm of agents in his shadow realm to replicate all the agents in the physical world. He has developers, product managers, QA engineers, release managers, UX designers, and more. He showed me an extensive workflow diagram about how they work together. One agent finishes a task and hands it off to another agent, and so on, executing a complex workflow to build a product or feature of some kind. He's trained each agent with the role-specific skills it needs to perform the role, so these aren't just blank agents given a task. These agents have training to perform the role he's assigned them.

I'm still wrapping my head around this use case, but it's an interesting one. As you're designing your skills, keep the subagent architecture in mind. One major reason why it might be useful is that sessions typically degrade as the tokens pile up. When your session has consumed near your token limit, the sessions will often compact the history so that the earlier part of the chat is just a summary, not the actual conversation content. This means that long conversations will have fuzzy memories of the beginnings of the conversations, as the memories are based on summaries passed down only. 

If your task involves consuming high amounts of tokens and you want to maximize your agent performing at its best, you might not want to construct a lengthy workflow that involves too many tokens before the agent tackles the most important task. Subagents can handle these tasks using their own separate contexts. But like I said, I'm still experimenting with subagents, so most of my discussion here is speculative.

## Recursive subroutines

Another pattern I find interesting is recursive subroutines. A recursive subroutine executes through a series of steps and only finishes after some condition is fulfilled. For example:

Complete steps 1 through 3.  
Check to see if the condition is fulfilled.  
If so, continue to step 4.   
If not, repeat steps 1 through 3.

The conditional criteria is one that works extremely well for tasks with concrete results, such as winning a game, getting an app to compile, fixing errors, etc. It's much murkier with content that has subjective evaluation. Even so, I keep coming back to the tremendous breakthroughs that AI models have made in learning games like Go. They could keep playing over and over, learning with each iteration, until they finally win a game. What if we could apply something similar to documentation?

For example, you could check that all links successfully resolve to 200 HTTP response codes. If not, the skill requires that it keep fixing the links and rebuilding the output.

A skill could check that a document passes a desired Flesch-Kincaid reading level in an output. If not, the skill keeps editing the source content and resubmitting the content to the test over and over.

## Reverse engineering a skill

I've also wondered if I could reverse engineer a skill. For example, how would a setup like this go:

1. Examine this output. This is the output I want you to achieve.  
2. Now here's the input. This is all you have to go on.  
3. Create a skill that will transform the input to the output.  
4. Create a subagent to perform the skill and examine whether the subagent's output resembles the output in step 1. Crucial: The subagent isn't allowed to view the output in step 1 before beginning the task. The subagent must rely entirely on the skill to achieve the result.  
5. If the subagent's output closely resembles the desired output (based on a subagent acting as a judge to evaluate), you're done. Otherwise, repeat the earlier steps, refining the skill until the subagent's output matches the desired output.
