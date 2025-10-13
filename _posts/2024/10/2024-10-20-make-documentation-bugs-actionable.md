---
title: "Strategies for making doc bugs actionable"
permalink: /blog/make-documentation-bugs-actionable
linkedin: https://www.linkedin.com/posts/tomjoht_strategies-for-making-doc-bugs-actionable-activity-7254916865846624258-34_e
date: 2024-10-20
categories:
- technical-writing
keywords: 
rebrandly: https://idbwrtng.com/make-documentation-bugs-actionable
description: "Some people dream of reaching inbox zero; I have a similar dream for doc bugs: I want to get my doc bug count to zero, or close to it. To try to achieve this, I've started focusing my energy on analyzing why some doc bugs aren't actionable."
---

* TOC
{:toc}

<figure><img style="max-width: 600px" src="{{site.media}}/bugplanningandstrategy.jpeg" alt="Bug strategies to reduce non-actionable bugs" /></figure>

## The problem with having a large number of bugs

When someone has a doc request, they usually file a bug in an issue tracking system (like JIRA). I currently have about 60 bugs in my component. Having 60+ bugs means that when someone files a new bug, there's a high risk that it will fall through the cracks. I'd be so much more productive if I could start fresh and tackle bugs as soon as they come in, like a chef handling incoming orders at a restaurant.

## Why they become stale

Why do I have so many bugs just sitting in my queue? Many of them aren't actionable. Meaning, they aren't something I can simply do but they require more information or have another timeline or other dependencies. For example:

- The bug might require code samples from an engineering team that doesn't have bandwidth or expertise to provide them.
- The bug might contain contradictory information with other documentation and require me to interface with multiple teams to sort out the contradictions.
- The bug might be filed in anticipation of future features that will be released on an unknown timeline.
- The bug might be stale and was simply never marked as resolved.
- The bug might be assigned to an engineer who hasn't taken any action on it.
- The bug has almost no information but links to another bug with an endless thread full of many different viewpoints, links, and assertions.

You can probably add a dozen more reasons for the many bugs in your queue.

{% include ads.html %}

## Preventing engineers from submitting non-actionable bugs

Ideally, it would be good to prevent engineers from submitting non-actionable bugs in the first place. Otherwise, they clog up my component with a bunch of bugs I can't immediately act upon. 

I met with a technical program manager the other week who recommended that I require engineers to include an outline and even ask for a draft for the bugs they file. I told him this isn't how things work, and if people regularly submitted drafts of technical content to me, my job would be easy. He countered that sometimes if you ask engineers to do something, and you're specific about the request, they will do it. 

It certainly couldn't hurt to ask, even if the engineers don't write anything. One of my plans is to refactor my doc request template to require engineers to do more writing and cross my fingers that it will lead to more actionable information.

## Focusing my energy on making bugs actionable

Another strategy I've been contemplating is to shift my focus to making the bugs actionable. Instead of working through the content&mdash;editing and publishing it, or whatever&mdash;I'll instead devote my time to converting the bug into a clear task that I can assign to a more junior tech writer or contractor. For example, I'll use my relationships with teams and my knowledge of the products to sift through the information, identify exactly what the needed updates are, and then rewrite the bug to contain this clarity. If the bug requires content to be written from scratch, I'll either make sure all information is available or will even do some of this writing and attach it to the bug.

It usually doesn't take too much time to put content into our system and publish it, but there can be a lot of back and forth with SMEs in the review. There can also be hiccups with our publishing system (required tags to be added, linter alerts to fix, owners to track down and ping, etc.). Why exhaust my senior-tech-writer bandwidth on this part of the process if it can be carried out by another writer? If a senior technical writer should focus on complex, ambiguous tasks, then let me focus on that. 

## Following up on delegated tasks

Delegating a task to an engineer or another writer often requires follow-through bandwidth. For example, let's say you assign an engineer a few tasks: add some missing documentation in reference files, add required or optional tags for some fields, or provide code usage samples. Engineers might dismiss these requests and not do them until you pester them for a few weeks. What's the best strategy for a weekly reminder about pending tasks? 

The same program manager who told me engineers should be providing drafts of content also suggested that I provide a biweekly bug status indicating who has bugs assigned to them, the date they've had them assigned, and the status. He'll help make it visible (i.e., shame them) on my behalf.

It takes a lot of organization and management prowess to keep track of bugs like this. Some bugs are assigned to various engineers on different teams, others to tech writers, others tagged for future work, others tagged as being non-actionable, and so on. I mostly have tagging capabilities with bugs, and admittedly don't have a great system for managing it all. Managing all the tickets, analyzing them, following up regularly, figuring out why they're blocked, etc., is the work of a program manager. But no one's going to do this for tech writers, so it's a skill we have to incorporate.

## Tasks requiring skilled writing

Finally, there are some tasks that require a writer's skills. These tasks might involve the following:

- Synthesizing information from various bug threads and other sources (sometimes from 50+ pages).
- Integrating information into existing documentation where it makes sense (which might mean adding a section on one page, a note on another, a cross-link from another, and so on).
- Analyzing whether the information aligns with the other information in the documentation, including terminology as well.
- Distilling large amounts of information into more concise explanations.
- Simplifying complex processes into sections and steps that are easier to follow.
- Researching unknown areas to surface the needed information, whether it involves interfacing with SMEs, digging into internal documents, or knowing the right groups to ping.

This work is typically what it means to be a writer. I get frustrated when some technical writers can only function as stylistic editors and publishers. Writing is a core talent that many people lack, and it becomes apparent when you ask them to tackle a larger task where information isn't clear.

## Conclusion

Thinking back to the 60+ bugs in my queue, it's clear there's a lot more strategy I could implement to reduce or eliminate many of these bugs. My primary goal is to reduce the number of non-actionable bugs coming in and to put more emphasis on engineers drafting content. If you have a good strategy for eliminating non-actionable bugs, I'd love to hear them.
