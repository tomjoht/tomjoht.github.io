---
title: "Design principles for skills"
permalink: ai/skills-design-principles.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-19
redirect_from:
- /ai/skills-enforce-process.html
---

{% include_relative draft_notice.html %}

## Don't make the skill too rigid

As you're making the skill, you want the agent to follow a consistent process but also include enough flexibility in the skill for the agent to make its own decisions based on the fluctuating needs of the content. In other words, don't make the skill too rigid. Allow for some flexibility by teaching the agent the larger goal and philosophy of the skill, and then allowing the skill to adapt to the situation at hand to achieve that larger goal.

For example, one of my skills is publishing data modeling policy information. The task mostly involves publishing content that's already been reviewed in a Google Doc. I've set up a template and the expected format for each policy. 

However, sometimes the source material in the Google Doc doesn't fit the template, or the source material deviates from our expected format. When this happens, the agent might override the source content to fit the template. I need to improve the skill so that the agent can intelligently know when to leave the source content as is, without trying to force it into a predefined template that might not make sense for the policy.

{% include ads.html %}

## Skills should get better each time you use them

One foundational principle about skill building is that iteratively, the skills should improve each time you use them. (This likely only applies to more complex skills.) You can do this automatically by building self-reflection into the skill itself. Add a step at the end of the skill that tells the agent to examine its friction log, analyze any challenges or obstacles it encountered while doing the task, and to improve the skill so that next time around, the next agent won't struggle with the same issues. Often when I do this, the agent adds the information into a `troubleshooting.md` topic in the reference directory. I assume that the agents consult this topic when they hit a snag in an existing process.

One reason to build self-reflection into skills is that the tools, models, and other environmental factors are constantly changing. What might not be possible one month might suddenly be possible in the next iteration of something. Skills must likewise be constantly evolving, adapting, and improving. This is why skills belong directly in the same directories as your documentation.

Over time, skills should improve in a progressive way, so if you're running a skill that you've run dozens of times, it should be pretty smooth. The topic of self-improvement connects to recursive self improvement (RSI), which is a larger phenomenon. Anthropic recently published a blog post titled [When AI builds itself](https://www.anthropic.com/institute/recursive-self-improvement), arguing that most of Claude's code is written directly by Claude. More and more tech companies are publishing crazy statistics like this, arguing that 50% of code or more is written by AI.

The same applies to skills. I rarely write the skill content myself. Most of the time, I tell the agent what I want to do in the skill, and it adds the appropriate instruction. We're steering the agents to do the skill building, which then generates the documentation. So now the agent is writing instructions for future agents to perform, which is AI propelling AI. I'm still needed to steer this agent, but I don't need to directly hold the steering wheel because all of my steering is captured within the skill. So if I say "Don't do X again," I shouldn't have to keep providing this guidance to the skill. The skill should capture the guidance and remove the behavior for future skill runs.

## Skills enforce consistent process

Now let me touch on an undiscussed aspect of skills I find interesting: skills enforce process. When I run my release documentation skill, I perform the same sequence of steps. As such, skills enforce a consistent process.

Some of the steps incorporate healthy habits into docs. For example, in my robust release docs skills, the following steps are followed:

- Analysis of source code comment tags (and any fixes)  
- Analysis of logs run after the reference docs build to identify elements missing documentation  
- Analysis as to whether any changes/updates constitute breaking changes  
- Analysis of documentation corpus to identify needed changes across docs (and any fixes)

If I were doing these steps on my own, I might cut corners with some releases. For example, I probably wouldn't have time to analyze the log reports or to scan all other documentation for needed updates. The skill helps me do these steps seamlessly.

Additionally, if you define a specific template for publishing, that template gets applied each time you run the skill, which also leads to more consistency. One of my release docs publishing skills takes freeform notes about metrics across a variety of categories and incorporates them into a boilerplate template. The template has more information about each category and placeholders for metrics charts. The skill gathers the latest metrics, populates the placeholders identified by the template, and generates a new page. It works brilliantly. I mention this as an example of combining a template with a skill. The result is a much more consistent, predictable approach to documentation.
