---
title: "Tom's opinionated guide to skill building 101"
permalink: /blog/all-about-skills-intro
date: 2026-06-30
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/all-about-skills-intro
description: "The thing I'm most excited about with AI lately is SKILLs. (I have to capitalize the word at first so you know I'm talking about agent skills rather than just general capabilities; however, I'll subsequently just refer to agent skills as skills.) I've now built about 10 skills for various purposes, and I'd like to write a post that shares some of my thoughts around skill building in a more opinionated way."
---

* TOC
{:toc}

## Why I'm excited about skills {#why-i'm-excited-about-skills}

Skills are essentially a programming language for LLMs. A skill basically “programs” (or encourages) an LLM to complete a particular task in a consistent way. The skill provides a major advantage for how we interact with AI, as it allows us to run programs against repeatable tasks, thereby automating the work. 

Programming an LLM to perform a task through a skill requires a lot of … skill (lowercase). Yes, it takes a lot of skill to make a SKILL that attacks a problem successfully in an automated way. Not all of my skills are bulletproof wins for tackling the problems. Some skills work better than others, and most of my skills are developed through a series of iterations involving trial and error.

I acknowledge that “programming an LLM” is putting it optimistically, as skills aren't usually deterministic scripts. But I like to think of them this way, and keep refining the skill until it yields the consistent result that I want.

Overall, I'm persuaded that tech writers who can build successful skills to automate their tasks will be on their way to the 10x tech writer goal (if that's your aim). The best way tech writers can free up their time is by creating skills to attack those repeatable tasks (like release notes) since repeatable tasks keep chipping away at our productivity week after week. If you can fashion a skill that handles those recurring tasks, then you free up a recurring amount of bandwidth each week.

Additionally, most repeatable tasks fall into the category of mechanical toil that we want to automate with AI anyway. If we can automate the repeatable tasks, then we'll have more time to tackle the one-off complex tasks that don't fall into our laps weekly or biweekly.

{% include ads.html %}

## Reference material + courses on skills {#reference-material-+-courses-on-skills}

With the motivation part out of the way, let me also address some basic info about the skill specs. For the official docs on building skills, see the following:

* [Agent skills](https://agentskills.io/home) (the platform-independent spec)  
* [Agent skills](https://geminicli.com/docs/cli/skills/) (Gemini)  
* [Extend Claude with Skills](https://code.claude.com/docs/en/skills) (Claude)  
* [Agent skills](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) (Claude)  
* [Equipping agents for the real world with Agent Skills](https://www.anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills) (Claude)  
* [Claude skills course](https://anthropic.skilljar.com/introduction-to-agent-skills)

The basic setup and structure of skills isn't hard to figure out. It's already documented with much more detail and organization than I want to repeat here. Instead, my focus is more on an opinionated guide, emphasizing what's working for me now, as a technical writer building skills as I write API documentation, working within the Gemini ecosystem.

## Skills for creating skills {#skills-for-creating-skills}

Read the skills reference, but here's one reason you don't need to memorize the spec. Both Claude and Gemini platforms have built-in skill creators. Gemini has a built-in skill called [skill-creator](https://agentskills.io/home). Claude also has a built-in [skill creator](https://claude.ai/customize/skills). Instead of writing and structuring the skill yourself, just ask your AI to build a skill for doing X, and then add in the details. Gemini or Claude will structure the skill for you (though it doesn't have as much structure as XML). This is a great way to get started, as you can then see the shape of the files and learn first-hand about the specification shape.

Even with skill creators, it can help to know a few basics about skill structure. The `SKILL.md` file has a name and description property in the frontmatter tag, and is typically 500 words or less. The description describes what tasks the skill is for, as well as what the skill isn't to be used for. The additional content can be stored in several subfolders: reference, scripts, and assets. The reference folder can consist of many subskills. In this way, the skill can be as long as you want. 

One of my release notes skills has 14 separate steps in the reference folder. Each step is a separate markdown file. My files are numbered to reflect their sequential order. Some skills rely on scripts stored in the scripts folder. And some skills use a template defined in the assets folder. The simplicity of the skill structure is part of the ingenious nature of the skill specification.

AI tools only look at the frontmatter as they scan for relevant skills. This means the rest of your skill isn't loaded into context until it's actually needed, which reduces token consumption and exhaustion.

## When to build a skill {#when-to-build-a-skill}

Before you get to the structure of the skill, the first step in building a skill is to identify repeatable tasks that are good candidates for skills. For me, the most common recurring task I do is release docs (for which I have four different skills for the various products I support), but there are some others too. Other skills I've built include the following:

- Skill for wrapping lines  
- Skill for posting lunch and learn videos to site  
- Skill for publishing policy docs  
- Skill for syncing reference content with policy doc  
- Skill for converting content to sentence case  
- Skill for configuring documentation generator tool with API docs  
- Skill for linking code elements to their reference docs  
   

You can build a skill for any task you think you might return to and repeat. API overviews and tutorials aren't something I'm making so regularly, but if I were, I'd build a skill for creating them.

If you find yourself thinking, *I don't actually do that many repeatable tasks,* this lack of more repeatable tasks is actually a good thing. If all our tasks were repeatable, it would make our jobs highly susceptible to automation. If I were to put a ballpark number on how many tasks were in the scope of my repeatable tasks, I'd say only about 30-40% of what I do can be partly automated with an intelligent skill. Some tasks might not be fully automatable but do include subtasks that could be converted into repeatable skills, such as verifying content, editing for style, staging and confirming links, etc.

For me, I've focused most of my energy on skills for release documentation, as I have four different products with biweekly releases that consume a lot of my time. Releases are when change gets introduced into the documentation, so this is a ripe opportunity to apply processes to make sure the introduced change is properly handled. 

In other words, the skill should make sure that all content across the documentation corpus is appropriately updated to harmonize with the incoming change. That might mean updating code samples, overviews, glossaries, conceptual pages, and more. This is why my release docs skills do much more than just publish release notes; they implement a whole process of handling change to the body of documentation.

## Where to store a skill {#where-to-store-a-skill}

After you identify a repeatable task that you want to automate with a skill, you can invoke skill creator to create the skill. But you need to decide where to store it. I like to keep my skills next to the documentation they relate to. For example, for a skill that creates release notes for ACME API, I store it in a directory here: `documentation/acme-api/_agents/skills/my-skill-here`.`

The utility of this location is two-fold:

* Because the skill is right next to my other docs, it becomes easier to find, update, and maintain the skill.   
* By placing the skill directly into the documentation directory, if someone else is working on those docs, they can invoke the skill as well, without having to own the skill. (Yes, that's right. By placing the skill within the context of your docs and registering it in the skills.json file in the same directory, you empower others to use the skill to work on those docs.)

For skills that apply to multiple docs, I place them in the root of my documentation folder. For example, I have a text wrapping skill and a skill for linking referenced code elements to their documentation in that general directory.

## Invoking a skill {#invoking-a-skill}

A core idea of skills is that they're invoked through matches to keywords in the skills frontmatter. If someone opens up their agent within the context of that directory and says they want help writing release notes for ACME API, the skill will automatically kick in. Theoretically, skills would just make your agents smarter with a kind of ambient intelligence that kicks in seamlessly based on the tasks you're doing.

However, mostly I just run my own skills more explicitly. When I want Gemini to do a skill, I usually drag the SKILL.md file into Gemini's context and tell it to run the skill. Or I explicitly tell Gemini to run a specific skill. The skill usually requires me to supply some parameters as well, so I provide those parameters.

I'm wary of Gemini doing a skill that I'm unaware of or which I didn't ask it to perform. Since I created the skills, I know exactly what they do. If I were running someone else's skill, I'd want to know just what the skill does before initiating it. The exception would be skills that help me use a particular API or tool. In that case, having a skill that provides a smooth natural language interface for the API or tool would be a strong help.

Additionally, I'd love to leverage more skills to help with various tech writing tasks, especially if the skills apply style edits and perform other solid checks and fixes.

## Internal skills versus external skills {#internal-skills-versus-external-skills}

This brings me to a key point to emphasize: I've only worked with internal skills for authoring. There's a whole other side to building skills for *external* users. Some groups that do this often programmatically generate the skills from the docs. The skills are often snapshots of an API's capabilities rather than a task-oriented workflow skill like writing release notes. I'll have more to say about external skills at some point, but for now my focus is on internal skills. 

However, it's worth noting here that external skills can have tremendous, measurable impact. Some of my colleagues are working on an eval toolchain, and they say that adding skills to the docs has boosted the AI's accuracy on evals by a noticeable margin.

## Skills enforce consistent process {#skills-enforce-consistent-process}

Now let me touch on an undiscussed aspect of skills I find interesting: skills enforce process. When I run my release documentation skill, I perform the same sequence of steps. As such, skills enforce a consistent process.

Some of the steps incorporate healthy habits into docs. For example, in my robust release docs skills, the following steps are followed:

- Analysis of source code comment tags (and any fixes)  
- Analysis of logs run after the reference docs build to identify elements missing documentation.  
- Analysis as to whether any changes/updates constitute breaking changes  
- Analysis of documentation corpus to identify needed changes across docs (and any fixes)

If I were doing these steps on my own, I might cut corners with some releases. For example, I probably wouldn't have time to analyze the log reports or to scan all other documentation for needed updates. The skill helps me do these steps seamlessly.

Additionally, if you define a specific template for publishing, that template gets applied each time you run the skill, which also leads to more consistency. One of my release docs publishing skills takes freeform notes about metrics across a variety of categories and incorporates them into a boilerplate template. The template has more information about each category and placeholders for metrics charts. The skill gathers the latest metrics, populates the placeholders identified by the template, and generates a new page. It works brilliantly. I mention this as an example of combining a template with a skill.

## Some design principles for skills

In this section, I'd like to propose a few design principles for skills.

### Don't make the skill too rigid {#don't-make-the-skill-too-rigid}

As you're making the skill, you want the agent to follow a consistent process but also include enough flexibility in the skill for the agent to make its own decisions based on the fluctuating needs of the content. In other words, don't make the skill too rigid. Allow for some flexibility by teaching the agent the larger goal and philosophy of the skill, and then allowing the skill to adapt to the situation at hand to achieve that larger goal.

For example, one of my skills is publishing data modeling policy information. The task mostly involves publishing content that's already been reviewed in a Google Doc. I've set up a template and the expected format for each policy. 

However, sometimes the source material in the Google Doc doesn't fit the template, or the source material deviates from our expected format. When this happens, the agent might override the source content to fit the template. I need to improve the skill so that the agent can intelligently know when to leave the source content as is, without trying to force it into a predefined template that might not make sense for the policy.

### Skills should get better each time you use them {#skills-should-get-better-each-time-you-use-them}

One foundational principle about skill building is that iteratively, the skills should improve each time you use them. (This likely only applies to more complex skills.) You can do this automatically by building reflection into the skill itself. Add a step at the end of the skill that tells the agent to examine its friction log, analyze any challenges or obstacles it encountered while doing the task, and to improve the skill so that next time around, the next agent won't struggle with the same issues. Often when I do this, the agent adds the information into a troubleshooting.md topic in the reference directory. I assume that the agents consult this topic when they hit a snag in an existing process.

One reason to build self-reflection into skills is that the tools, models, and other environmental factors are constantly changing. What might not be possible one month might suddenly be possible in the next iteration of something. Skills must likewise be constantly evolving, adapting, and improving. This is why skills belong directly in the same directories as your documentation.

Over time, skills should improve in a progressive way, so if you're running a skill that you've run dozens of times, it should be pretty smooth. The topic of self-improvement connects to Recursive Self Improvement, which is a larger phenomenon. Anthropic recently published a blog post titled [When AI builds itself](https://www.anthropic.com/institute/recursive-self-improvement), arguing that most of Claude's code is written directly by Claude. More and more tech companies are publishing crazy statistics like this, arguing that 50% of code or more is written by AI.

The same applies to skills. I rarely write the skill content myself. Most of the time, I tell the agent what I want to do in the skill, and it adds the appropriate instruction. We're steering the agents to do the skill building, which then generates the documentation. So now the agent is writing instructions for future agents to perform, which is AI propelling AI. I'm still needed to steer this agent, but I don't need to directly hold the steering wheel because all of my steering is captured within the skill. So if I say “Don't do X again,” I shouldn't have to keep providing this guidance to the skill. The skill should capture the guidance and remove the behavior for future skill runs.

## Forking and building off existing skills {#forking-and-building-off-existing-skills}

In addition to self-reflection loops for skills, you can also fork other people's skills and adapt them to your own use cases. This isn't something I've actually done before, but all our code is stored in a giant monorepo. I often see the agent searching the repo for other instances of some process or technique I'm asking it to do. The agent learns from these other skills and incorporates that same understanding into the skill I'm building. 

Although I haven't forked other people's skills yet, I have forked my own skills to build new skills. Each of my 4 release docs skills follows a different process, but for one of them, I told the agent to build a skill roughly like the other skill but with some modifications. This way I am standing on the shoulders of a skill that's already covering maybe 60% of the functionality I need in the new skill.

As more tech writers build skills, we can build off each other in more impressive ways. A tech writer who builds a style skill, perhaps enforcing sentence case capitalization, could share the skill with others. I built a sentence case capitalization skill for some Android docs that tries to account for many grey areas around capitalization. I thought the skill would be simple to build, but in reality it proved challenging. Open the Chicago Manual of Style and browse the many different sections around capitalization and you'll see why.

As Google has hundreds of tech writers, I hope to encourage a massive skill building endeavor. Skills to check for broken links, skills to make simple diagrams, skills to verify release notes, skills for developing project plans, and so on. Imagine if we generated a library of 100 tech-writer-specific skills, that we could then share and leverage with each other. That would be epic and would likely send us to another level entirely!

## Subagent architectures in skills

One pattern in building a skill that I'm just now exploring is using subagents within skills. This isn't obvious when you're interacting with an agent, but an agent has at its command a whole army of subagents that it can invoke. Think of it like the self-replicating Agent Smiths in the Matrix. The agent you're talking to is the main Agent Smith. But if you ask Agent Smith to create a subagent to perform a particular task, Agent Smith can do that. When the subagent finishes, the subagent reports back to Agent Smith and Agent Smith then communicates the outcome to you. In this way, you can potentially create a whole swarm of subagents to tackle a particular task. 

I've only started incorporating subagents into some of my skills, so I'm not entirely sure how useful they'll be. Here's how I implemented one subagent. I asked my agent to create a subagent with a fresh context (no history of the existing edits and changes the main agent has made) and to perform a QA on the job done by this main agent. Creating a subagent that doesn't have the session context is powerful because it sidesteps the bias that the main agent typically has. 

For example, if you ask an agent to write some docs and later to perform some QA on the docs, the agent who did the work typically sees fewer imperfections or issues with the work it performed. But if you invoke a new agent that doesn't have this bias (of preferring its own work, given that it has reasons for why it made the changes it did), then the QA tends to be more objective and rigorous.

I often hear of people using hundreds of agents to tackle particular tasks. When you have many agents working together, it's called a “swarm.” One product manager recently showed me how he's been building out a swarm of agents in his shadow realm to replicate all the agents in the physical world. He has developers, product managers, QA engineers, release managers, UX designers, and more. He showed me an extensive workflow diagram about how they work together. One agent finishes a task and hands it off to another agent, and so on, executing a complex workflow to build a product or feature of some kind. He's trained each agent with the role-specific skills it needs to perform the role, so these aren't just blank agents given a task. These agents have training to perform the role he's assigned them.

I'm still wrapping my head around this use case, but it's an interesting one. As you're designing your skills, keep the subagent architecture in mind. One major reason why it might be useful is that sessions typically degrade as the tokens pile up. When your session has consumed near your token limit, the sessions will often compact the history so that the earlier part of the chat is just a summary, not the actual conversation content. This means that long conversations will have fuzzy memories of the beginnings of the conversations, as the memories are based on summaries passed down only. 

If your task involves consuming high amounts of tokens and you want to maximize your agent performing at its best, you might not want to construct a lengthy workflow that involves too many tokens before the agent tackles the most important task. But like I said, I'm still experimenting with subagents, so most of my discussion here is speculative.

## Recursive subroutines

Another pattern I find interesting is recursive subroutines. A recursive subroutine executes through a series of steps and only finishes after some condition is fulfilled. For example:

Complete steps 1 through 3.  
Check to see if the condition is fulfilled.  
If so, continue to step 4.   
If not, repeat steps 1 through 3.

The conditional criterion is one that works extremely well for tasks with concrete results, such as winning a game, getting an app to compile, fixing errors, etc. It's much murkier with content that has subjective evaluation. Even so, I keep coming back to the tremendous breakthroughs that AI models have made in learning games like Go. They could keep playing over and over, learning with each iteration, until they finally win a game. What if we could apply something similar to documentation?

For example, you could check that all links successfully resolve to 200 HTTP response codes. If not, the skill requires that it keep fixing the links and rebuilding the output.

A skill could check that a document passes a desired Flesch-Kincaid reading level in an output. If not, the skill keeps editing the source content and resubmitting the content to the test over and over.

## Reverse engineering a skill

I've also wondered if I could reverse engineer a skill. For example, how would a setup like this go:

1. Examine this output. This is the output I want you to achieve.  
2. Now here's the input. This is all you have to go on.  
3. Create a skill that will transform the input to the output.  
4. Create a subagent to perform the skill and examine whether the subagent's output resembles the output in step 1. Crucial: The subagent isn't allowed to view the output in step 1 before beginning the task. The subagent must rely entirely on the skill to achieve the result.  
5. If the subagent's output closely resembles the desired output (based on a subagent acting as a judge to evaluate), you're done. Otherwise, repeat the earlier steps, refining the skill until the subagent's output matches the desired output.

## Using skills other people have made

One cool thing about skills is that due to the progressive discovery aspect (the AI only reads the frontmatter to decide if the skill is relevant), you can search large code bases and find skills relevant to you. You can then ask AI to summarize those skills. 

But you can take it a step further. Suppose you're working at a place with a monorepo, or maybe you're in open source and you're browsing GitHub for skills. Ask your AI tool (e.g., Gemini or Claude) to identify 20 skills related to a particular task, such as release notes. Then from those results, ask the agent to identify 10 common patterns in those skills. Then based on those common patterns, ask your agent to create a general skill that follows those patterns, which users can then use as a starting point for customizing their own skill.

I did this with release notes skills at my organization. From 38 different release notes skills (mostly created by engineers), I identified 7 salient patterns. It was super interesting! Despite some common patterns, nearly everyone's release notes are different and have unique processes.

## Conclusion

Overall, I'm just scratching the surface with skills here. In the coming weeks, I plan to explore the testing side of skills and product skills. Stay tuned, as I might stick to the topic of skills for a while on my blog.