---
title:  "Using AI to create doc updates based on bugs"
permalink: learnapidoc/docapis_ai_fix_bugs.html
keywords:
course: "Documenting REST APIs"
weight: 14.5
sidebar: docapis
section: docapisai
path1: learnapidoc/ai.html
last-modified: 2023-08-06
---

{% include coffeeshopbook.html %}

As a technical writer, I'm frequently making doc updates based on user-reported bugs. For example, here's a common scenario: users provided feedback about one of the fields returned in the API; then the engineering team fixed the field, changing the name and the responses it provided. As a final step to the fix, the engineers create a doc bug for the technical writer to update the documentation. Sounds simple, right? It's usually anything but simple. 

## The doc bug process

The total diff you submit might be just a few changed lines, but here's what the process usually looks like:

* During a meeting users had with the product team (or other Developer Relations role), the users brought up an issue with the API. The users explained an error or incorrect design with the API in some way. Meeting notes briefly describe the issue.
* The discussion gets noted in an engineering ticket for engineers to fix. The engineering ticket assumes others have the context of the meeting, and rarely adds details in a clear way. 
* In addition to the ticket body, there's usually a dozen or more comments on the ticket, as the implementation evolved from the original description of the fix. Some bugs might have such a lengthy comment thread that reading it requires at least a half hour or more. Really gnarly bugs can have 75+ half-readable comments, with comments linking to other comments.
* At the end of the ticket and comment thread, it's not clear what the problem or resolution actually was, or what docs need to be updated. If you're lucky, there's a code change attached to the ticket, but that code change might not be intelligible or straightforward. Someone just fixed the bug and closed the ticket. You have to guess which comment describes what the actual fix was.
* The product team communicates the fix back to the users through conversations, chat, team meetings, or other sources. 
* After implementing the fix, the developers file a bug for the tech writer to make a doc update. However, the developers are overstretched already and don't have the time or interest to add easy-to-read descriptions in the ticket. They add a quick doc bug, describing the needed change in a vague way, and reference the engineering ticket that describes the fix.
* The tech writer sees the ticket in their queue. He or she spends a lot of parsing bandwidth sorting through the ticket and figuring out exactly what the doc update should be.
* Despite reading through the ticket threads and meeting notes, the tech writer still has questions, so he or she reaches out to the product team for clarification.
* The engineers are working on the next release and don't have much time to devote to explaining the maintenance fixes. Plus, isn't all the information in the engineering ticket and other notes already? Can't the tech writer just figure it out?
* After spending an hour or two deciphering the needed update and interfacing with engineers through chat, the tech writer updates a few lines in the docs and sends the change out for review. 

{% include random_ad2.html %}

If this sounds familiar, welcome to the club. Making doc updates from an assortment of bugs isn't at the top of my favorite activities. I can't tell you how many times I've gathered up a long list of doc fixes needed based on bugs only to abandon them after a short while. The work is tedious and often doesn't have hard deadlines. 

Plus, once the engineers have resolved the bug, they've moved on to other work. If you ask them questions, they have to re-familiarize themselves with the bug's context as well. The user who complained was notified about the fix, and since no one else is making a fuss about the bug, the priority of the doc update fizzles. Tech writers tend to focus most of their energy on documentation for the next release.

{% include random_ad3.html %}

## Decomposing excellence into a thousand tiny fixes

I'm just as guilty as focusing on docs for the next release as anyone. However, the other month I had an interesting thought. One afternoon I wanted to know what our partner engineers focus on, so I started looking at all the bugs they've had in our ticket system. Reading through the tickets, I found that they were mostly loaded with small bugs with the product, investigating causes and fixes. The extent of their workload seemed to be troubleshooting and fixing issues, and being the interface between users and the product teams. 

And then the larger realization hit me: What if what makes a product excellent isn't some large feature but rather the refinement of thousands of tiny fixes surfaced from users? And if a product achieves that great user experience through these thousand fixes, maybe documentation elevates in the same way? What if documentation becomes excellent through a tech writer's attention to a thousand tiny user-reported bugs? Fix a sentence here, a definition there, a concept on this page, a section on another page, and so on until the docs become truly excellent.

If a thousand tiny fixes paves the road to a great user experience, then I need to develop a much better system for triaging and fixing bugs—not just identifying them, but powering through them on a regular basis. I need to develop a better system for making updates based on bugs. 

## Using AI to help with bugs

Can AI help in making doc updates based on bugs? Yes, I think. This is one application I'm particularly excited about. I've only just started trying this out. (The delay was more due to permission around data confidentiality and tools.) But now that I've found a tool and method, I'm exploring approaches more regularly.

Here's my general approach to using AI to help with bugs:

* Copy all the relevant information from the bug, meeting notes, code diffs, and other sources discussing the bug into a single Google Doc.
* Use an AI tool like NotebookLM and add the Google Doc as an input source. (Note that this tool is in an experimental phase with restricted access. Other tools might work equally well, depending on what you can access based on your company's data restrictions and allowances. NotebookLM restricts its input to the sources you provide. You can read more about it here: [Introducing NotebookLM](https://blog.google/technology/ai/notebooklm-google-ai/).)
* Ask the AI a question such as the following: 
  
  <div class="chat">Provide a summary of the issue and the resolution taken to fix the issue. Then, acting as a technical writer, create a documentation update describing the fix.
  </div>

Usually the release notes describe the fix like this:

> A bug related to [X feature] was fixed. Previously, [X feature] was doing [Y]. The [X feature] was updated to produce [Z]. For more details, see [X feature].

I haven't quite nailed the prompt here, as I'm still experimenting, but so far this has been helpful. In my experiences, the summaries and other explanations give me confidence that I'm interpreting the bug correctly. I can also ask for simplified explanations if the AI summaries don't make sense to me. For example, if the explanation of the bug fix isn't clear, I might ask for simplified explanations and examples to clarify.

{% include random_ad4.html %}

Because NotebookLM restricts its knowledge to the input sources only, if I need an explanation of something not captured in the Google Doc (e.g., "what's a user build in Android?") I might open another AI tool for a general explanation.

Note that even if AI provides a beautiful summary and resolution in the style of a release note, it will likely need tweaking and adjustment. Plus, you have to figure out where to apply the update in the docs, and then graft in the update smoothly within the context around it. The AI tool won't do that for you. You might need to make updates across the docs on multiple pages. Searching for all the sections that need to be updated can be time consuming, as well as sharing links to previews to all those updated pages in a changelist that you review with developers. So the process is still time-consuming, but hopefully AI has done some of the heavy lifting with the bug interpretation and reduced the bandwidth required to parse and interpret engineering shorthand and jargon.

{% include ads.html %}

## Early experimentation

Like I've said before, I'm still experimenting with these techniques. But my hope is that using AI to more quickly fix bugs might lead to a speedier and less painful process related to bug fixes. If I can fix twice as many bugs in half the time, it will be a huge win. I'll revisit this doc and provide updates as I gain more experience with the methods and techniques described here.

In the meantime, I'd like to gather any input you have on your bug fixing process, whether it includes AI or not. For example:

* What's your approach to triaging and managing bugs? 
* Have you found a process that works for powering through a long list of bugs?
* How do you focus on maintenance updates rather than docs for the next release?
* How do you communicate the bugs in release notes?
