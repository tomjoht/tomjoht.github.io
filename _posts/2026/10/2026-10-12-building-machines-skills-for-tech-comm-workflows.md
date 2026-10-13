---
title: "Building machines that work with other machines"
permalink: /blog/building-machines-skills-for-tech-comm-workflows
date: 2026-10-12
categories:
- ai
keywords: agent skills, sidecar skills, bug triage, website feedback, AI chat log analysis, documentation logistics, documentation workflows, subagents, scheduled automation, self-improving skills, tech writer role, AI and technical writing
rebrandly: https://idbwrtng.com/building-machines-skills-for-tech-comm-workflows
description: "In the past couple of months, my focus as a tech writer has shifted from writing to building machines, which in reality are elaborate skills that do things. One skill triages incoming bugs and website feedback on an hourly schedule, and another analyzes AI chat logs to recommend documentation improvements and hands its bugs off to the triage skill. This post describes both skills and reflects on documentation logistics, comparing them to the many processes that keep a city running."
linkedin: https://lnkd.in/p/g52vsSRq
---

* TOC
{:toc}

{% include ads.html %}

I've shifted my focus as a tech writer in the past couple of months. I'm no longer writing; instead, I'm building *machines,* so to speak. I like to think of them as machines because it suggests invention, creativity, and engineering. In reality, the machines are just elaborate agent skills that do things.

## A bug triage skill

First, I built a skill that does bug triage for my team. This might seem like a simple skill, but it's more complex than it looks. Bugs come in from multiple sources, both from internal teams (like product managers requesting release notes) and from website feedback. The skill looks at the incoming request and decides what to do with it.

For the internal team doc requests, it's mostly a matter of assigning the ticket to the right subteam. Then the subteam handles their own triage. Subteams (consisting of 3 writers each) provide some balance and flexibility so that one writer doesn't have a mountain of work while others have little.

The more interesting challenge is what to do with website feedback. The skill analyzes whether the feedback is related to the page it was sent from, whether the feedback is actionable in some way, what product the feedback is related to, and which team the ticket should be routed to. It also adds a brief summary about the recommended fix.

The skill is a sidecar skill, meaning it runs on an automation schedule — every hour during the workday. It sends an email to the team or person it assigned the bug to, and copies me so I can evaluate how it's working. Now instead of a weekly triage meeting, the skill continuously triages incoming work. Sidecar skills are another level of awesome because it means you'll actually run the skill regularly, and can therefore fine-tune and improve it. Especially if you bake the self-improvement directly into the skill's tasks, the skill's quality improves rapidly.

## An AI chat analyzer skill

The other skill I've been building is an AI chat analyzer skill. It takes logs as its input and generates actionable recommendations for documentation improvements. The focus on the documentation itself is intentional. Rather than trying to build product skills that solve the docs' problems on their own, I'd rather fix the docs directly. This is the ["docs-first" approach]((/ai/product-skills-docs-first.html)) I argue for in my series on [product skills](/ai/product-skills.html).

This AI chat analyzer skill is more ambitious and data intensive, as the log files I input can be large (database-size) datasets. This skill has 8 stages. First it parses the logs, then it makes sense of the logs (defines goals the user had, vocabulary used, related products, outcome success, etc.). The next stage looks for patterns of failure and root causes. Later stages kick off various subagents to look for the needed improvements in the documentation, and then create bugs that provide recommendations on the documentation improvements, explaining the reasons why. 

The bugs this skill creates are then handed off to the bug triage skill, which identifies the right subteam for the work, including any SMEs. I've been writing up a version of this skill in the course [From logs to doc improvements](/ai/from-logs-to-improvements.html), which walks through each stage more or less at a conceptual, high-level. The skill is still in its infancy. I anticipate many rounds of iteration and refinement before it matures.

## From prompting to engineering

Overall, I like building skills like this. It has taken the initial act of prompting and converted it into more of an engineering-level task. Ideally, a good skill handles all of the complex situations flawlessly. A bad skill might just create noise and make bad recommendations. Either way, my role has shifted toward creating skills that handle the work rather than making the updates.

If the agents are doing the writing, then where beyond skill building is my value? I also have to develop **judgment** about the recommended actions that the AI takes — are these proposed doc updates the right ones? Why or why not? If they aren't, how do we improve the skill so that it makes the right recommendations next time? With each iteration, the skills become more refined, potentially complex (or simplified), streamlined, and smooth. But the end result of either a skill or generated changelist is a judgment decision from me about whether it's right/good/accurate.

## The logistics of documentation

These two skills are very much about the *logistics of documentation.* Logistics is something I was reflecting on the other day. How does a request travel from the requester to implementation? How do we ensure that every piece of a larger machine is working and integrating well with the other pieces? In my scenario, what's the handoff or trigger from one skill to the next?

If you look at a city from a logistics perspective, there are lots of processes that must function efficiently for the city to work. The sanitation workers have to collect the garbage and make it disappear. The sidewalks need to be cleared of trash. The stoplights need to be functioning properly. The buses need to be up and running, and on time. Police need to patrol to keep traffic violations down and criminals at bay. Cafes and restaurants need to be open. Coffee shops need to provide the early morning fuel for workers. Businesses need to employ workers. And so on.

All of these components of a city need to be functioning for the city to work. Remove any of the above and chaos ensues. I like to think of documentation in similar ways. What are the logistics of documentation, the individual components? And how can we design those individual components to run more smoothly? Ideally, the time it takes for a doc request to come in and for the update to be made and received by users and agents should be streamlined and efficient. Hence, I'm building machines that interact with other machines. Zoom in and you'll see cogs interacting with other cogs and spinning wheels to generate content.
