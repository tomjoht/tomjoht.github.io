---
title: "Making it easy for people to review your changelists (Doc bug zero series)"
permalink: /blog/make-easy-to-review-changelists
date: 2025-10-29
categories:
- ai
- technical-writing
keywords: 
rebrandly: https://idbwrtng.com/make-easy-to-review-changelists
description: "The basic idea of doc bug zero, as I explained in <a href='/blog/defining-bug-zero-and-obstacles'>Defining bug zero</a>, is to clear out all the tickets in the doc issue queue, essentially to finish all your documentation work. Doing so would be the ultimate statement about the productivity gains from AI. Despite my attempts to get to bug zero, it still eludes me. I’m realizing that there’s an art to working through a bug queue, and AI can only take me so far. Good project skills are also needed. One of those skills, which I’ll address in this post, is making it easy for people to review the changelists, or pull requests. (The terminology used in my area of doc work is changelists, or CLs, so that’s how I’ll refer to them here.)"
# image: 
sidebar: sidebar_bug_zero
linkedin: https://www.linkedin.com/posts/tomjoht_making-it-easy-for-people-to-review-your-activity-7389299440139939840-RnZg
---

* TOC
{:toc}


## Overview

There are a few reasons why changelists become difficult to review: (1) scope creep (for example, the original purpose of the CL has grown beyond its intent), (2) the CL contains too many files and is hard to review, and (3), the CL is poorly described, causing reviewers to wonder about its purpose and relevance. I’ll explore each of these areas in the sections below.

## 1. CL has scope creep

Scope creep is a common phenomenon when making doc updates. You receive a ticket to fix a bug. Then as you make some fixes, one of the following happens:

* You notice other updates that need to be made to the surrounding content, so you make them. (AI makes it increasingly easy to make many updates across an entire directory of topics.)
* The reviewer starts expanding the scope with additional requests and threads, growing the initial changelist.

Scope creep trajectories are bad news because as the size of a changelist grows, it becomes harder to get reviewers to approve it. And this is really the strategy that you have to consider if you want to reduce your queue of doc bugs: *Is the changelist something that a reviewer can easily approve? *

A reviewer will find a changelist with a single line change fairly simply to review and approve, but when there are dozens of changes across multiple files, including some changes that might have expanded beyond the original reviewer’s area of expertise, you’re setting yourself up for a hard-to-review changelist. And because it’s hard to review, the reviewer postpones it, tries to put it off. The changelist sits in your queue, growing moss with each day that passes without action. 

As a worst-case scenario, you might start tackling bugs that require changes to the files already included in the changelist you’re waiting on.

When you ping the reviewers periodically to encourage their review, you might only be met with silence.

To avoid this scenario, keep the changes small and easy to review. Break large changes up into multiple changelists so that they can more easily be reviewed, and so that you can build on the momentum (it feels good to submit a CL). Few scenarios are as demotivating as having a dozen changelists that no one is reviewing.

<figure><img style="max-width: 570px" src="{{site.media}}/make-easy-changelists.jpg" alt=">Scope creep, large CLs, and poor descriptions" /></a><figcaption>Scope creep, large CLs, and poor descriptions can slow down the velocity of the review process</figcaption></figure>

## 2. CL is too big

Breaking up changelists is easier said than done. I like to create all my changelists within the same workspace. If you have multiple edits to the same page, how do you stagger these changes so that the multiple changelists don’t conflict with each other?

For example, maybe one doc request asks you to update section A in file1.md, and another unrelated doc request requires you to update section B in file1.md. 

There are different version control strategies you can use here, but that can get complicated. In my system, if I want to send out two different changelists for edits on the same page, I have to create two different workspaces. However, managing multiple workspaces fragments my focus and makes it easy for me to lose track of pending changelists, so I dislike this approach. Additionally, staging changes to the same file is complex, as one staging overwrites the other. (There’s a workaround for this, but it’s more cumbersome.)

Additionally, it takes more effort to merge in the changelists to avoid conflicts, with a higher risk of error. However, if the strategy makes it easier for reviewers, I will sometimes go to the trouble to separate things out like this. Again, ask yourself the question, *will this changelist be easy for an engineer to review?*

{% include ads.html %}

### Granular division of changelists

When you have a large changelist, I said it’s helpful for reviewers to break it up into smaller ones. However, this isn’t as easy as it sounds. Sometimes changes go together, such as changes to a navigation sidebar file and the new pages you’re adding. You might be updating access controls, redirects, and other content, such as the homepage. If you break up changelists, the publishing part of your workflow might break, as some files could contain includes to other files and so on. 

For example, suppose your changelist includes a redirect. If you publish the redirect before you move the files, there might be errors. Or if you have new access controls, those updates often need to be sent out prior to the documentation that should have those access controls.

You have to think more carefully about the order of operations in publishing to make sure you can execute the changelists successfully.

### More changelists means more bandwidth

Now we’re getting to the crux of the problem. Le’ts assume we break up large changes into multiple changelists to make the review easier. However, now we might have 5-10 small changelists instead of 1 large changelist. Each changelist has its own overhead. You have to add the right reviewers, make sure all verification checks pass, and configure other tags with the changelist. **Each changelist, no matter how small, still carries its own overhead.** And this is why I keep running into the velocity limitation problem. Although AI is helping me push out more changelists at a faster pace, there’s a bandwidth and time cost to managing each changelist that isn’t accelerated by AI. 

We’ve found plenty of ways to speed up authoring with AI, but not enough ways to speed up the packaging and review of changelists.


## 3. CL is poorly described

Finally, a key strategy in expediting the review process is to write a clear description of the changelist. I like to think of this as itemizing the changes. Keep in mind that the initial description might not match the final list of edits.

When you include a reviewer on the changelist, their first thoughts might be:

* Why am I part of this changelist? Am I expected to review this or am I just Cc’d out of courtesy?
* What docs are being changed? What are the details of the changes?
* Why are these changes happening? Who requested them and why?

If you can clarify this info in the changelist, it can speed up the review process. Of course, you want to keep the description short so that the reviewer isn’t overwhelmed, but brevity at the expense of clarity doesn’t save anyone time. Often you can link to a bug for more details, but most of the time, reviewers don’t actually click the bug for details.

## Summary

In summary, to address these issues and make changelists easy to review, consider implementing the following strategies:

* Keep changelists small, even if this means more setup on your part.
* File new tickets for additional work you identify beyond the original request.
* Focus the CL’s updates such that a single SME can review the changes, rather than multiple SMEs.
* Itemize all the CL’s changes in a granular way in the CL description.

In upcoming posts in this series, I’ll look at specific ways to speed up the packaging of changelists to make the review process go faster.