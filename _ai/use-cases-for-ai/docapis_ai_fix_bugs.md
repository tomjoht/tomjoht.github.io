---
title:  "Use cases for AI: Distill needed updates from bug threads"
permalink: ai/docapis_ai_fix_bugs.html
keywords:
course: "AI-powered API documentation"
weight: 14.4
sidebar: sidebar_ai
section: docapisai
path1: ai/index.html
last-modified: 2023-08-06
redirect_from:
- /learnapidoc/docapis_ai_fix_bugs.html
---

{% comment %}
{% include coffeeshopbook.html %}
{% endcomment %}

As a technical writer, I'm frequently making doc updates based on user-reported bugs. A doc bug is a fix that needs to be made to documentation that has already been released, rather than documentation for a new feature.

For example, here's a common scenario: users provide feedback about one of the confusing fields returned in an API. The partner files a bug that kicks off a long back-and-forth thread with the engineers. The engineering team might make a fix or unravel the confusion a bit. As a final step to the fix, the engineers create a doc bug for the technical writer to update the documentation. Sounds simple, right? It's usually anything but simple. 

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## The doc bug process

The total diff you submit might be just a few changed lines, but here's what the process usually looks like with a doc bug:

* During a meeting users have with the product team (or other Developer Relations group), the users bring up an issue with the API. Meeting notes briefly describe the issue, but if you weren't there, much of the context is already lost here.
* The meeting notes indicate that an action item is to log a ticket, but the ticket only briefly notes the discussion. It does not add many details, as it assumes that others involved in the project have the context of the meeting.
* In addition to the ticket description, there's usually a dozen or more comments on the ticket, as the implementation often evolves from the original description of the fix. Some bugs might have such a lengthy comment thread that reading it requires at least an hour or more. Really gnarly bugs can have 75+ half-readable comments, with comments linking to other comments. There could also be associated email threads. Discussions in the threads flip back and forth with different solutions and views.
* At the end of the ticket and comment thread, it's not clear what the problem or resolution actually was, or what docs need to be updated. If you're lucky, there's a code change attached to the ticket, but that code change might not be intelligible or straightforward. Someone just fixed the bug and closed the ticket. You have to guess which comment, if any, describes what the actual fix was. The ticket's resolution might have been privately discussed in a team meeting that the tech writer wasn't part of (e.g., all those daily standups engineers attend).
* The product team communicates the fix back to the users through conversations, chat, team meetings, or other sources. 
* After implementing the fix, the developers file a bug for the tech writer to make a doc update. However, the developers are overstretched already and don't have the time or interest to add easy-to-read descriptions in the ticket. They quickly file a doc bug, describing the needed change in a vague way, and reference the engineering ticket that describes the issue and fix.
* The tech writer sees the ticket in his or her queue. He or she spends a lot of bandwidth parsing through the ticket trying to figure out exactly what the doc update should be.
* Despite reading through the ticket threads and meeting notes, the tech writer still has questions, so he or she reaches out to the product team for clarification.
* The engineers are working on the next release and don't have much time to devote to explaining the maintenance fixes. Plus, isn't all the information in the engineering ticket and other notes already? 
* After spending an hour or two deciphering the needed update and interfacing with engineers through chat, the tech writer updates a few lines in the docs and sends the change out for review.
* There's a bit of back and forth with the review, with engineers correcting and adding to the tech writer's updates before finally approving the updates and publishing the content.

If this sounds familiar, welcome to the club. Making doc updates from an assortment of bugs isn't at the top of my favorite activities. I can't tell you how many times I've gathered up a long list of doc fixes needed based on bugs only to abandon them after a short while. The work is tedious and often doesn't have hard deadlines. 

Plus, once the engineers have resolved the bug, they've moved on to other work. If you ask them questions, they have to re-familiarize themselves with the bug's context as well. The user who complained was usually notified about the fix, and since no one else is making a fuss about the bug, the priority of the update fizzles. Tech writers also tend to focus most of their energy on documentation for the next release, not on bug fixes for existing code.

{% include random_ad3.html %}

## Decomposing excellence into a thousand tiny fixes

I'm just as guilty as focusing on docs for the next release as anyone. However, last week I had an interesting thought about bugs. One afternoon I wanted to know what our partner engineers focus on, so I started looking at all the bugs they've had in our ticket system. Reading through the tickets, I found that the partner engineers were mostly loaded with small bugs with the product, investigating causes and fixes. The extent of their workload seemed to consist of troubleshooting and fixing bugs, and being the interface between users and the product teams. 

And then the larger realization hit me: What if what makes a product excellent isn't some large feature but rather the fixing of thousands of tiny bugs surfaced from users? And if a product achieves excellence through these thousand bug fixes, maybe documentation elevates in the same way? What if documentation achieves excellence through a tech writer's attention to a thousand tiny user-reported bugs? Fix a sentence here, a definition there, a concept on this page, a section on another page, and so on, accruing 1,000 bug fixes until the docs become truly next level.

If a thousand tiny fixes paves the road to a great user experience, then I need to develop a much better system for triaging and fixing bugs&mdash;not just identifying them, but powering through them on a regular basis. In short, I need to develop a better system for making updates based on bugs. 

## Using AI to help with bugs

Can AI help in making doc updates based on bugs? Yes, I think. This is one application I'm particularly excited about. I've only just started trying this out, so keep that in mind. Here's my general approach to using AI to help with bugs:

First, copy all the relevant information from the bug, meeting notes, code diffs, and other sources discussing the bug into a Google Doc.

Then use an AI tool with a high input limit, using the gathered content as an input source. Some tools you could potentially use for this include [Claude.ai](http://claude.ai/), which accepts an extraordinarily high input length, and [NotebookLM](https://notebooklm.google/), which is still in its experimental phase and so access is limited, but you can join the waitlist. (See [Introducing NotebookLM](https://blog.google/technology/ai/notebooklm-google-ai/) for more details.) Other AI tools could also be useful as well. Always consider your company's data policies when using AI tools. In this case, due to data confidentiality, I'm using NotebookLM.


After you've gathered the source material, ask the AI a question such as the following: 
  
<div class="chat">
<p>Based on the input sources, provide a summary of the issue {about ...} and the resolution taken to fix the issue.</p>
</div>

If you can [supply a pattern based on the output you want](docapis_pattern_prompts.html), great. For example, usually the release notes describe the fix like this:

> A bug related to [X feature] was fixed. Previously, [X feature] was doing [Y]. The [X feature] was updated to produce [Z]. For more details, see [X feature].

I haven't quite nailed the prompt here, as I'm still experimenting, but so far this has been helpful. In my experiences, the AI's summaries and other explanations give me confidence that I'm interpreting the bug correctly. I can also ask for simplified explanations if the AI summaries don't make sense.

{% include random_ad4.html %}

Note that even if AI provides a beautiful summary and resolution in the style of a release note or other format, it will likely need tweaking and adjustment. Plus, you have to figure out where to apply the update in the docs, and then graft in the update smoothly within the context around it. The AI tool won't do that for you. You might need to make updates across the docs on multiple pages. Searching for all the sections that need to be updated can be time consuming, as well as sharing links to previews to all those updated pages in a changelist that you review with developers. 

So the process is still time-consuming, but hopefully AI has done some of the heavy lifting with the bug interpretation and reduced the bandwidth required to parse and interpret engineering shorthand and jargon.

Like I've said before, I'm still experimenting with these techniques. But my hope is that using AI to more quickly fix bugs might lead to a speedier and less painful process related to bug fixes. If I can fix twice as many bugs in half the time, it will be a huge win. 

{% include ads.html %}

## Experience in fixing a bug and some risks

Recently I was tackling a difficult bug and realized some adjustments I needed to make in my input sources. The bug I was working on had an associated engineering doc. As is common in the genre, the engineering doc defined the problem, presented a proposed solution, then presented several alternate solutions. I had to reach out to engineers to find out which approach was taken, and which sections were future-facing versus content that had been implemented. Before adding this content as an input to the AI, I stripped out the alternate approaches and future-facing roadmaps, as this confused the AI's responses.

The bug I was working on followed all the hallmarks of what I described earlier. The concepts were actually extremely technical and hard to understand. I found myself asking the AI to define terms, clarify concepts, and simplify explanations over and again. In reading the responses, I had to check their validity.

To check, I couldn't rely on the explanations it generated as truth. So I also read through the engineering tickets, the engineering docs, the email threads, and more. I also had some chats with the product team. You might think, geez, if you have to do all that, what's the point of using the AI? The point is that AI made everything much easier to understand. 

Consider an analogy here. Suppose that instead of a technical problem, you're trying to describe a Calculus-related bug with some equations and the adjusted approach that the team took. Well, it's been 25+ years since I took Calculus, and so despite the explanations that the math team might have written up, it still sounds Greek to me. There's too much jargon, needed background information, and other detail for the content to make sense without some serious study.

But what if AI can make that math content more readable, as it defines unfamiliar terms, simplifies explanations, provides examples, and explains and re-explains things as many times as I want? In this way, AI becomes a kind of tutor, helping me make my way through the landscape more efficiently.

More and more, this is how I'm using AI. Sure, AI could also probably draft some content, and I could copy and paste it into an update that I share and review with engineers, without fully understanding what I'm sending, but that process doesn't scale well. It might present a short-term gain while compromising long-term productivity. It's important for technical writers to have at least a basic understanding of the issues and solutions for the products they document. That knowledge becomes helpful as you work on other parts of the documentation. 

For example, understanding the issues in the bug might unlock understanding in other documentation areas, or raise awareness of other content that needs expansion or clarification. All that insight becomes lost if the tech writer just blindly copies and pastes what AI writes and relies on engineers to review it. That said, if the technical writer leverages the AI-written content as a kind of Cliffnotes to understanding a longer Shakespearean work, it can be a practical, efficient way to learn just enough without spending multiple days fixing a single bug.

## Another risk: rubber-stamped LGTM

Relying on engineers and product team members to vet AI-written content also poses another risk: rubber-stamped LGTMs (looks good to me). By rubber-stamped LGTMs, I mean approvals given without careful analysis and understanding of the content. This YouTube video [How we write/review code in big tech companies](https://www.youtube.com/watch?v=rR4n-0KYeKQ) captures the scenario perfectly. In the video, an engineer doesn't fully understand some code but makes an attempt at a fix and submits the updated code for review, assuming that the reviewer will vet the code and examine whether it's correct. However, the reviewing engineer doesn't fully understand the code either and just adds a quick LGTM and approves it. Although this scenario seems comical, there's truth to it. A lot of people will LGTM a fix without really understanding it or having knowledge to know whether it's right or wrong. They just want to get the pull request or changelist out of their queue, and they assume the author knows the information is correct.

In the case of AI, suppose the tech writer copies AI-written content that looks and sounds plausible but isn't. The reviewer reads it and, not realizing it's written by AI, gets duped by the believability of the content (AI tools are great at sounding convincing). Unless the tech writer discloses that the content was written by AI, chances are the reviewer won't be extra cautious in the review. At least when humans are writing, tech writers are much less likely to slip into fiction mode and will press engineers for answers. 


## Gathering more context

As I described earlier in the typical bug scenario, the main challenge is lack of information and context, which makes the bug hard to understand and take action on. One step I've taken to improve the amount of context/information available is to require people filing bugs to dig deep in providing needed information. Here's a sample bug template that tries to squeeze all the possible information from a requester. I generalized the info, but reading through it you will see my point. 

> Please provide answers to all questions below. Note: Supplying as much info as possible below avoids the need for a follow-up meeting with you to get more details. Remember that we have almost no context for the doc update (no partner meetings, no engineering coding sessions, no post-mortems, etc.), so the information you provide is critical to making this doc update actionable.
> 
> 1. What release is this for? By providing the release, we can better prioritize this work against the other bugs in our queue. If the update is unrelated to a release, indicate "No Release."
> 
> 2. What's the priority for this update? In your view, is this a P0, a P1, P2, or P3? (Feel free to explain/justify a P0 request.)
> 
> 3. Which API are you updating?
> 
> 4. Did you review this change with the API steering committee? If so, provide any related bugs and change request documents presented to the council. If there's a product launch entry, include the link too.
>
> 
> 5. Are there any other source materials (for example, pitch docs, engineering docs, product review documents) that describe the updates? In the documents, please note which solution (among several that might be proposed) was implemented.
>
> 
> 6. Is there an engineering bug related to this doc request? For example, an engineering bug that points to a change request with some code diffs? Are there other bugs that provide more detail as well? List all related bugs that might inform needed doc changes.
>
> 
> 7. If the changelist with related code changes isn't included in the related bugs, please list the changelists here. From the diffs, we can get a better sense of needed doc updates.
>
> 
> 8. Are there any email threads that you can PDF and attach here (or forward)? Any meeting notes that you can point us to? Anything that provides more context for us?
>
> 
> 9. What proto, class, or other source files are being changed in this update? (Since docs are generated from source comments in proto and public class files, identifying the source helps us make any changes to comments.)
>
> 
> 10. Write the release note for this update. Be specific about field or class names. Provide as much detail as is needed for users to understand the update. 
>
> 
> 11. Indicate the release status of the feature.
>
> 
> 12. Does the field/method, etc. appear in other APIs? Which ones? (We want to avoid having duplicate and conflicting descriptions of the same fields across different APIs.)
>
> 
> 13. Does this change affect any code samples in the documentation?
>
> 
> 14. Who should review and approve this content before we submit the updated documentation? Include any relevant stakeholders as well.
>
>
>
> If you have any questions, reach out through email or chat.

As you can see, filing a bug will be time-consuming and somewhat painful for the requester, but ever so sweet for the tech writer. Imagine having all of this information gathered at the time someone requests an update. It might actually make the bug actionable!

{% include image_ad_right.html %}

From this gathered context, you can copy the information into a single Google doc, remove all the parts that might mislead an AI, and then provide the doc as context. Some parts to remove might include the following:

* Wrong answers in email threads
* Alternative solutions never implemented
* Future roadmaps not yet relevant
* Unnecessary fluff unrelated to the needed updates

## Conclusion

Although there are many potential issues with using AI, fixing doc bugs is one area that seems ripe to leverage AI tools. I'll continue exploring different techniques, seeing what works and doesn't, and sharing my experiences here.
