---
title: "My first vibecoding project"
permalink: /blog/my-first-vibecoding-project
date: 2025-06-04
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/my-first-vibecoding-project
description: "I'm starting a new series describing the various AI experiements I do. I've been looking for my next area of focus, and I realized that more than anything else, I like <i>experimenting</i> with new tools, techniqes, ideas, etc. So I'm writing a series of posts called AI experiments."
---

This week I'm tackling my first "vibecoding" project. I've been reluctant to use the term *vibecoding* because people tend to use it to describe nearly anything AI-generated, but now I get the point of the term. Vibecoding is when you're using AI agents to write a bunch of code that you have little idea about. And that's exactly what I've been doing. 

I started my first vibecoding project as a tool that automates weekly reports, which we call "snippets" at my work. A single snippet is basically a short bullet point describing some work you accomplished during the week. When you write your snippets, you list out bullet points of everything notable you did during the week.

Since I'm a tech writer working on docs that are version controlled, I can easily get a list of all the changelists (the code commits) I made. Like any code commit, each changelist has a brief description of the changes (which I wrote manually). Presumably I can just gather up all the descriptions and submit this as a list of my accomplishments. This is what most people do, combining their changelists (submitted, in-progress, and reviewed) with the efforts outside of version control.

However, much of the time, my changelist descriptions are terse and uninformative. They don't describe the bulk of the changes I committed. In fact, many times I'll create a changelist, describe it briefly, and then keep adding to it without expanding the initial brief description. I don't want to overwhelm reviewers with a novel, so the changelist description remains pretty short.

I have a theory about a central tenet or principle for working with LLMs and documentation. **In a version control system, everything you do is already documented. The file diff of your commit already describes the work completed.** So when you submit a changelist, why are you even manually describing the changes? It's redundant to do so. The changelist already contains the documentation.

How do you pull human-readable documentation out of the changelist? The trick is to get a file diff of the changelist. In Git, this is usually done with `git diff`. We have a customized version control system so the commands are slightly different. But run the `git diff` on any changelist (or commit), and then ask AI for a human-readable summary. Like magic, you now have a precise, accurate description of the commit (at least the "what" of the commit, but not the "why."). 

{% include ads.html %}

The idea of unlocking the documentation from commit file diffs is an insight that's useful beyond just writing snippets, by the way. Everything engineers do has a version-controlled commit that you can extract and mine for documentation purposes.

For my project, I wanted to automatically get the human-readable diffs of every changelist I submitted for the week. I described this idea to a colleague, and he jump-started some of the code within an hour using Gemini. This gave me confidence and I started building from there, taking it over. The project grew, and evolved, and changed, and grew some more. 

I've become kind of obsessed working on it. I've spent more time working on the project than I have on documentation this week, sadly. I'm using an agent with Gemini for the project, and it's writing in Go (not a language I'm familiar with). But here's what I've realized. Designing a program requires *a lot of thought*. I used to think it was just a matter of technical prowess with a language, but no, although that's certainly part of it. I've found that it's challenging just to name things. 

For example, I've already changed the program's name from "AI snippets" to "AI CLs" to "CL Analyzer" (for "CL" == changelist). This is because snippets actually include to much more than just changelists; there are countless people working outside of version control who don't even have changelists, so using "snippets" is misleading. Anyway, my point is that I expanded the purpose, so I had to change the name too.

Additionally, instead of just getting my own AI-written changelists, I made it so the tool would get any other user's changelists for the week. And then changelists for an entire group of people (as defined in a yaml file). And another parameter to specify the number of days to look for changelists.

Then wait, I had an even bigger idea. What if I compiled about 40 engineers and writers working on related projects, and grabbed their weekly changelists. Then I could define an interest, which would establish a topic, like "ACME API." I could ask Gemini to look at the long lists of changelists from the 40 people and list any changelists related to "ACME API." Through this interests file, I could increase awareness of everything going on around me. 

Yes, this project that started out as a mere tool for automating my weekly snippets had grown into an intercommunication awareness engine, something that could potentially solve some of the most pesky problems of internal discommunication. Just the other week, a technical project manager was complaining how teams didn't have a good sense of how the changes one team made impacted other teams, etc. The old silo problem. This project I was undertaking could potentially change that, I felt.

I worked on parameters. Parameters for a single user, a group, and a set of interests. Should the parameters files be JSON or YAML? My parser required extra steps for YAML, so I switched to JSON. Then I remembered JSON doesn't allow comments in the files. WTF? Back to YAML. Now rename the parameters to be more consistent. Wait, the `user` parameter accepts a string but the other parameters are booleans. Why can't the other parameters work like the `user` parameter, accepting a string? I ask Gemini to make the parameter default to a certain boolean value but also accept a custom string if supplied. Gemini objects, says Go doesn't work like that and a parameter that's a boolean can't also accept a string, sorry. 

I keep refining my parameters, changing the names. Changing some of the logic. Now custom files are specified with additional parameters. Now I'm making the names consistent. Then building out reports, and making those names consistent. Grouping the reports inside a reports directory. How do I gitignore that directory? Crap, can't. What's the workaround? 

And so on the project went, with me thinking up new ideas, adjusting the parameters, changing the names, and also trying to keep the companion documentation updated. The functionality of agents is amazing. Whereas a chat session would require you to implement all of these ideas from the chat thread, the agent just does it &mdash; creating files, writing to those files, and making updates across an entire directory as needed. The agent I'm working with has many limitations; for example, it can't initialize go modules or build the system, but it can read files, write files, edit files, and much more. (I'm using an internal agent, but it's similar to Cursor AI's agent. BTW, [Cursor AI](https://www.cursor.com/) with [Gemini Code Assist](https://codeassist.google/) seems to be a great setup! I've already switched over from VS Code.)

My takeaway from the week? Project design is hard. The technical part has overshadowed the value of product design. Getting the design right so that it's intuitive, solves the user's problem, implements consistent, predictable logic, etc., is hard. But I also had another thought: I might actually be good at it. Without having to worry about technical details, I could focus on the design, almost like prototyping. Sure, the code might look hideous. Or it might be beautiful. I don't really care so long as it works and runs fast and doesn't have security issues. 

If you haven't experimented yet with agents, this is a next-level activity. If chats are *AI 1.0*, agents are *AI 2.0*. Autonomous agents that are more and more capable are going to crush us all, or empower us &mdash; perhaps we choose. Imagine an agent that enters a self-learning loop, making edits, evaluating those edits, evaluating the new content, making more edits, and so on running continuously. That acceleration is when everything is going to change, and it's right around the corner.