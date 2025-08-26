---
title: "Defining bug zero and two obstacles: Reducing review time and gathering context"
permalink: /blog/defining-bug-zero-and-obstacles
date: 2025-08-26
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/defining-bug-zero-and-obstacles
description: "In my <a href='/blog/goal-get-to-bug-zero'>previous post about achieving bug zero</a>, I introduced the goal and some motivations for it, but I didn't fully articulate the whole connection to AI. I also didn't explain much of what a doc bug queue is in my context, or why it even matters. In this post, I'll define doc bugs in more depth and explore two major obstacles to accelerating documentation work: review time and context gathering."
---

* TOC
{:toc}

## What's a doc bug or issue

In my documentation worldview, and indeed much of engineering, every task is assigned, tracked, and reported on through an issue tracking system. In the commercial world, the issue tracking system is often JIRA. In my workplace, it's a custom issue tracker. A doc bug queue thus represents all the work of a technical writer. 

The term "doc bug" is actually misleading, as it suggests a minor error or correction. Actually, everything I do is tracked in a doc bug of some kind, from documenting a new API to fixing a simple broken link. They're all doc *bugs* or doc *tickets* or doc *issues*.

Within the issue tracker, there can be many different directories or components that house the issues. For tech writers working on public sites with a lot of traffic, they may see a constant stream of incoming bugs/tickets/issues from public-facing users. The bugs might include issues as small as broken links to long rants about the product or company to notes about broken functionality, or even spam. Triaging the stream of incoming bugs is typically a weekly activity.

Because I work on docs behind access control, with a small group of users, I don't have a constant stream of incoming bugs. In fact, I have about 50 bugs in my issue component. Each week about 10 come in, and each week I close about 10. Thus, I remain in more or less stasis week over week.

If I could figure out how to reduce my queue to zero, it wouldn't just represent some shady technique where someone shifts around numbers on a balance sheet to make it look like they're profitable. Instead, if I could legitimately close these 50 bugs, and get down to 0, it would provide evidence that I've accelerated my work using AI tools. 

However, although I've been trying to close down these 50 bugs for the past 4 weeks, it's not happening at the pace I hoped for. I'm instead down to about 40 bugs. 

This worries me for several reasons. First, I have pretty advanced AI tools at nearly every part of my workflow available to me, not just tools like Gemini, but AI integrated directly into my IDE (like Cursor AI style integration), directly into the issue tracker, directly into the changelist review tools, the command line, and more. By all accounts, I should be able to leverage these AI tools to provide quick fixes to many of these bugs and reduce my queue.

Because I've been unable to achieve bug zero, it makes me think that maybe I've overestimated AI's potential to impact workforce velocity. Some hard limits seem to be in place around the review process and information gathering. I'll explore each of these issues in detail.

## Review times

Even if AI writes the bug update for me, I still want to review the update to make sure it makes sense and seems accurate. I often want to fact-check the update against the API reference to make sure I'm not submitting bogus changelists to engineers for review. I feel uncomfortable having AI make the update and submitting the change to engineers for review without first reviewing it myself. Even if it's a cursory review, I still want and need to review the output from AI. This review time puts the brakes on what might otherwise be faster acceleration from AI.

Many tech writers are much more conservative than I am. I've even gotten to the point that I rarely write anything from scratch. Even when engineers review a changelist, I'll often paste their comment into Gemini and ask it to incorporate their feedback into the content. In fact, current tooling sometimes makes that a one-click operation for me.

Even so, there's still time needed for review. Almost no self-respecting person working in tech (engineers, PMs, tech writers) feels comfortable letting AI take the wheel without sitting right next to that wheel and monitoring where AI is driving, being ready to take over and correct as needed. We feel we must review the content AI generates. That review requires time.

The other day I hastily generated some content and submitted it for review, but I didn't fully pause to understand, analyze, review, and assess the content before submitting it to engineers for review. Also, the update couldn't easily be fact-checked against an API reference, since it was a script rather than an API. I felt embarrassed when an engineer, noting the content was somewhat incoherent, asked if an AI had written it. 

But if we're going to truly accelerate, this review time will get smaller and smaller. This means we'll have to trust AI more and more. Mistakes like this will happen. If I'm going to spend a lot of time understanding, analyzing, reviewing, and assessing content, I might as well do it all manually, or adjust AI's boost to only 5%.

If I truly want to accelerate, just like going faster in a car, I'm going to lose the details of the scene flying by. Imagine if AI chews through 25-50 bugs each night. Then my morning review queue will be like reading emails where I glance through the diffs and click okay pretty quickly, without much investigation other than to catch obvious errors.

Instead of carefully reading through each detail, I need to speed up my review time by incorporating fact-checking algorithms into the process. For example, a script that automatically adds the API reference into context and checks the changelist against it or similar approaches. 

In short, accommodating time to review the AI output will slow our attempts at acceleration. We might simply need to accept that a faster velocity will inevitably involve a higher error rate. Is it worth getting to bug zero if that means there are some errors here and there?

## Information gathering

The other part of my process that's slow is gathering information to provide the appropriate context for bugs. My bug template (that requesters have to fill out) asks for a lot of info (such as engineering docs, bugs, changelists, files, and more). I'll then need to go to the links provided and copy/paste the text from these different locations. I need tools that can perform this information fetching for me when I paste in a bug number, file link, or changelist number. With the changelist number, I want the tool to get the file diff automatically for me. 

Additionally, if I can design the bug template to maximize the contextual information needed to work on a bug, I can update the template to extract this information more diligently from requesters, and maybe provide more pushback for the lazy requesters that don't provide the needed context. If I can design a situation such that all information is present and actionable, then I can likely package it into an automated solution.

## Providing do-it-yourself options

In my bug workflow, there's one other avenue I'm not taking advantage of: the documentation DIY'ers. Many engineers might be willing to write their own docs if given the encouragement to do so. There might be many who don't feel the need to submit a request to the tech writing team to write. Why not provide these contributors with more of a do-it-yourself streamlined workflow? Even if this reduces the number of incoming bugs by 10%, that's not insignificant. However, these DIY engineers likely need some handholding and initial direction.

To provide this DIY option, I recently wrote out a one-pager for engineers and others to follow. If followed diligently, it could replace me in many documentation scenarios, which is a scary kind of document to write. But I'm skeptical that many people will actually use it. When I really started defining the tech comm workflow, I realized that it's a lot more complex, multi-layered, and tool-heavy than I assumed. 

I mean, if engineers are actually going to contribute docs in a helpful way, there's an effort involved. They can't just create a mess for me to clean up each time, requiring more of my input than time saved and then pretending that they did all the work. I need them to get the content into the right format, style, and places in the docs. My DIY option is still new so it may take months to analyze whether it works for anyone, and who those might be.


## Continuing this series

This post on bug zero is part of an ongoing series I'm writing, so this is just one of many posts to come. This series is all about figuring out how to get past the obstacles that are preventing bug zero. The solutions aren't easy, so I might just hit a wall on many attempts. Even so, I think this is a noteworthy goal and one that requires me to explore and investigate different AI solutions to achieve it.


{% include ads.html %}

