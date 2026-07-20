---
title: "Subagent architectures in skills"
permalink: ai/skills-subagent-architectures.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-19
---

{% include_relative draft_notice.html %}

One pattern in building a skill that I'm just now exploring is using subagents within skills. This isn't obvious when you're interacting with an agent, but an agent has at its command a whole army of subagents that it can invoke. Think of it like the self-replicating Agent Smiths in the Matrix. The agent you're talking to is the main Agent Smith. But if you ask Agent Smith to create a subagent to perform a particular task, Agent Smith can do that. When the subagent finishes, the subagent reports back to Agent Smith and Agent Smith then communicates the outcome to you. In this way, you can potentially create a whole swarm of subagents to tackle a particular task. 

I've only started incorporating subagents into some of my skills, so I'm not entirely sure how useful they'll be. Here's how I implemented one subagent. I asked my agent to create a subagent with a fresh context (no history of the existing edits and changes the main agent has made) and to perform a QA on the job done by this main agent. Creating a subagent that doesn't have the session context is powerful because it sidesteps the bias that the main agent typically has. 

For example, if you ask an agent to write some docs and later to perform some QA on the docs, the agent who did the work typically sees fewer imperfections or issues with the work it performed. But if you invoke a new agent that doesn't have this bias (of preferring its own work, given that it has reasons for why it made the changes it did), then the QA tends to be more objective and rigorous.

{% include ads.html %}

I often hear of people using hundreds of agents to tackle particular tasks. When you have many agents working together autonomously, it's called a "swarm." One product manager recently showed me how he's been building out a swarm of agents in his shadow realm to replicate all the agents in the physical world. He has developers, product managers, QA engineers, release managers, UX designers, and more. He showed me an extensive workflow diagram about how they work together. One agent finishes a task and hands it off to another agent, and so on, executing a complex workflow to build a product or feature of some kind. He's trained each agent with the role-specific skills it needs to perform the role, so these aren't just blank agents given a task. These agents have training to perform the role he's assigned them.

I'm still wrapping my head around this use case, but it's an interesting one. As you're designing your skills, keep the subagent architecture in mind. One major reason why it might be useful is that sessions typically degrade as the tokens pile up. When your session has consumed near your token limit, the sessions will often compact the history so that the earlier part of the chat is just a summary, not the actual conversation content. This means that long conversations will have fuzzy memories of the beginnings of the conversations, as the memories are based on summaries passed down only. 

If your task involves consuming high amounts of tokens and you want to maximize your agent performing at its best, you might not want to construct a lengthy workflow that involves too many tokens before the agent tackles the most important task. Subagents can handle these tasks using their own separate contexts. But like I said, I'm still experimenting with subagents, so most of my discussion here is speculative.
