---
title: "Why getting to bug zero is so hard"
permalink: /blog/goal-get-to-bug-zero
date: 2025-08-15
categories:
- technical-writing
keywords: 
rebrandly: https://idbwrtng.com/goal-get-to-bug-zero
description: "In the pursuit of <i>bug zero</i>, it helps to identify different types of bugs and the right strategies for dealing with each of them. In this post, I explore four common types of complex bugs I've encountered: Russian-doll bugs, scope-creep bugs, non-actionable bugs, and wrong-owner bugs."
image: bugstrategiesthumb.png
---

* TOC
{:toc}

## My goal of achieving "bug zero"

For the past several weeks, I've been obsessed about figuring out how to achieve a probably naive but still worthwhile goal: getting to doc bug zero. *Bug zero* refers to a state in which all the actionable doc bugs in my issue tracker have been completed. In this state, as soon as a new bug comes in, I'll be ready to take action on it, turning it around either same day or next. This is an exciting state to be in because it means I'll be immediately responsive, and more importantly, I can work on doc tickets that have requesters who are freshly motivated and ready to engage with me, providing more context if needed, responding quickly to changelist review requests, and more.

On a larger level, achieving bug zero would be a real AI win, as it means I will have likely leveled up my productivity game by automating much of the documentation work that was previously done more manually.

## The logic of prioritizing by freshness

In many methodologies for triaging bugs, the typical approaches focus on sorting by priority and severity. It makes sense to focus on the highest priority bugs first. But despite this commonsense strategy, it has a downside: lower priority bugs fall through the cracks, and by the time you do work on them, the requester has "moved on."

For example, suppose someone files a low priority bug. Maybe an API overview page doesn't include the concept of "widget prerelease testing." A minor point but important to include nonetheless. You look at the incoming bug but deem it to be a P3, so you shelve it to focus on more important bugs. A couple of weeks go by. Soon you've forgotten about this bug as it becomes another grain of sand in a pile of other sand. 

The requester soon forgets about it as well, and has moved on. Maybe they've started another iteration, or are now working on a different API. A month or two goes by. Pretty soon the bug is forgotten. The tech writer feels lousy seeing this bug and realizing that it probably wouldn't take much time but it just fell through the cracks. This is what happens when I sort by priority/severity. 

{% include ads.html %}

Now let's explore a different scenario. The bug comes in, and you see that it's a relatively simple fix. Add a paragraph or section to the overview on "widget prerelease testing." There's even an internal website with a load of details. You put the doc bug request into the Gemini side panel in your IDE, along with the target page and the internal website, and within 10 minutes you have an update to send to the requester. The requester is encouraged to see action taken on the bug they filed, and they turn around their review promptly, showing reciprocal courtesy for the promptness you showed toward their request. You feel great knowing that you responded so quickly and took care of the request. With enthusiasm and confidence, you move on to the next bug!

At least that's the dream of bug zero. This dream hinges on a principle that most bug-triaging strategies overlook: **the freshness of a bug.** The core idea is that the effort required to fix a bug often increases significantly with the time since the bug was filed.

When a bug is new, the requester's context is at its peak. They have the details fresh in their mind, are motivated to see a fix, and are more likely to provide quick, thorough reviews. This creates a cycle of reciprocity and momentum: your promptness encourages their promptness. How can they fail to quickly engage in the review when you prioritized their request and took such respectful, quick action?

Conversely, an old bug is a stale bug. After weeks or months, the requester may have moved on to other projects. Their memory of the issue has faded, and their motivation to help has waned. What was once a simple request for information can become an archeological dig to unearth lost context.

While prioritizing bugs by their freshness is a powerful strategy, it doesn't magically solve every issue. The hard reality is that many bugs, even new ones, aren't simple 10-minute fixes. Some are 10-hour fixes, or even week-long bugs. The path to bug zero is often blocked by several types of deceptively complex problems that derail quick turnarounds.

In short, triaging and moving through bugs requires much more strategy and technique here. In this series of posts on bugs, I'll start by categorizing different types of bugs. I'll look at the types of bugs that make getting to zero so difficult. By learning to identify different types of bugs, perhaps we can come up with strategies for better handling them and either moving them out of the bug queue or otherwise addressing them.

## Russian doll bugs

Most bugs that appear easy on the surface have more complex problems underneath. For example, the other morning I started working on a bug, even setting a stopwatch timer, and thought I could finish in an hour. After all, it was just a request to publish a document. But inevitably there's a SNAFU moment in at least half of the doc bug requests, in which I run into a snag and realize that the update will be much more complex and problematic than originally imagined. 

For the doc bug this morning, the SNAFU moment happened when I attempted to upload a 31 MB asset/resource that was part of the article. Turns out our publishing system has a file size threshold of 30 MB. I attempted to optimize the 31 MB file. Zip, tarball, other compression techniques, splitting and recombining the file, exploring what might be bloating the file, looking at Google Drive distribution options, etc. The requester was in another time zone already finished for the week, and I wasn't that familiar with the file type (Figma). After striking out, I simply added a comment on the bug asking the requester to shrink the file size. 

All good now? Nope. I hit snag number two: the article had a ton of formal requirements language. This prompted me to consider whether the article should be part of our official requirements documentation. If so, that would require a lengthy and cumbersome approval process, but it seemed the requester was unaware of the process. Who to contact about this? What exactly is the process for adding new requirements? And so began another detail to chase down and figure out. So after 3.5 hours working on this bug, it was mostly done, with a lot of follow-up questions still pending.

Despite my goal of tackling 10 bugs per day, I only finished two that day. As I explained, the reason is that many bugs have hidden complexities that make them impractical to tackle quickly. For more examples, some bugs I wrestled recently had these hidden complexities:

* A process needs to be finalized by Legal and the requester is slow to make progress on this. Not sure why he filed the doc request to me before it was ready.
* Single sourcing an API reference requires me to reconfigure the build file. In the build file, a utility for syncing files to the new locations doesn't support pushing to two different locations (using the same configuration setup I had before). The documentation for the utility seems wrong or incomplete.
* A release update adds a new status to an API field, but it turns out the engineer just forgot to add the status earlier. There really wasn't any change in the release status.
* In adding version names and codes to APK files, the package names don't match the APK file names and it looks very confusing. This prompts me to rework the page describing repository assets.

I call these **Russian doll bugs**. Like the traditional Matryoshka dolls, you open up what appears to be a single bug only to find another, slightly different bug nested inside. You solve that one, and another appears. On the surface, the task seems simple, but it quickly reveals layers of hidden, interconnected problems that must all be solved to resolve the original issue.

This is why getting to bug zero is so hard. If even a fraction of the bugs are Russian doll bugs, they end up elongating what would otherwise be a quick process. In this scenario, solving just two Russian doll bugs can feel like solving ten regular bugs. Meanwhile, it's demotivating to spend all day working on a single bug that takes 8 hrs, while another bug takes 8 minutes. 

Working on Russian doll bugs while having a goal of knocking out 10 bugs a day is frustrating. I keep thinking, the light is surely just around the corner. Why is this bug taking me so long? Then just as I solve one part of the bug, another doll emerges beneath it, and I need to solve that one too. A bug that looked like an hour-long task can easily consume half a day, and meanwhile, new bugs are pouring in.

To make these bug classifications a bit more fun, I've used Veo to create some short animations showing the different bugs. 

<video controls style="max-width: 80%; height: auto;">
  <source src="{{site.media}}/russian_doll.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

## Scope-creep bugs

Let's look at a cousin to Russian doll bugs: scope creep bugs. These are bugs that beget other bugs. Let's say your task is to update a field description in a proto file. Seems simple enough, but when you get into that proto file you see some other problems that should also be addressed. Since it took a while to figure out just where the proto file is and create a changelist for the update, you might as well fix the broken link you noticed, add some backticks around code terms, change the Latinism "e.g." to "for example" to align with the style guide, and so on. Soon instead of a single definition update, you have about a dozen small changes for the engineers to review. 

When faced with scope creep bugs, you could refrain from making these other updates, but then what do you do about them? You could file more bugs to tackle them, but this mushrooms your bug count. Or you could just do them in the same effort.

Russian doll bugs and scope creep bugs are highly similar, except that the additional bugs you discover with scope creep bugs aren't necessarily connected to the initial bug. With Russian doll bugs, solving the initial bug requires you to complete the other bugs too.

<video controls style="max-width: 80%; height: auto;">
  <source src="{{site.media}}/gardener_weeds.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

## Non-actionable bugs

Another type of bug is the non-actionable bug. These are bugs that aren't fully actionable but were filed because, most likely, a process required an engineer to file the bug. For example, let's say an engineer is adding a new "ACME feature" to an API for an upcoming release. Their process requires them to file a bug about the feature, but this feature won't be ready for you to document probably for 2+ weeks, when you see the feature transition from a development environment to a preview environment.

Some people file non-actionable bugs as a proactive way of getting their request into the bug queue, even though they know it's not ready for the tech writer to address. Perhaps by getting the bug in early, they can avoid uncomfortable situations where the turnaround time is so tight they have to apologize to the tech writer for the short timeframe. Some people file bugs for features way out on the horizon, knowing that at some point, we'll need documentation about X, so they file the bug while they're doing some planning, even though there's absolutely nothing the tech writer can do about X for months. 

Meanwhile, these non-actionable bugs take up real estate in the doc bug queue, requiring the tech writer to reclassify these bugs into some kind of holding tank separate from more actionable bugs.

<video controls style="max-width: 80%; height: auto;">
  <source src="{{site.media}}/mechanic_engine.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

## Wrong-owner bugs

Another type of bug requires work that falls outside the typical technical writer role. These bugs often need input or ownership from other teams like product management or engineering. For example, a request for a complete sample app demonstrating a feature's lifecycle is usually better handled by a partner engineer or developer advocate who specializes in creating code. While the output might live in the documentation, the primary effort of architecting and building a sample app is a development task.

Another example could be legal-related bugs. Maybe a policy needs to be updated, which involves lawyers getting involved to make changes. Someone files a bug about something policy-related, and now the tech writer is expected to reach out to Legal and coordinate the update. This is less of a documentation task and more of a program manager's role.

These bugs are tricky to navigate because while the eventual output is documentation, the path to get there involves significant cross-functional coordination and information gathering that is typically driven by other roles. A partner engineer might spot a gap in the product's story, but instead of connecting the right product managers and engineers to define the missing information, they file a doc bug. The tech writer is then expected to drive the discovery process.

For example, suppose a partner engineer identifies a need for more information about how "tech giblets" influence tracking behavior. They know this information is important for partners, but they don't know the technical details, who the subject matter expert (SME) is, or how the API implements it. When they file a doc bug, the task of defining the feature, tracking down the SME, and gathering the raw information falls to the tech writer. This initial discovery and definition work is often better suited for a product manager or engineering lead.

With these types of issues, the best approach is often to partner with the requester to identify the appropriate owner. This might involve reassigning the bug or facilitating a conversation to clarify roles and get the right people involved, ensuring that the documentation effort can begin once the core information is defined.

<video controls style="max-width: 80%; height: auto;">
  <source src="{{site.media}}/mail_carrier.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

## Strategies for dealing with each type of bug

Now let's return to the problem of getting to bug zero. Part of the issue is that the path to bug zero is filled with Russian doll bugs, scope creep bugs, non-actionable bugs, and wrong-owner bugs. They're rarely the kind of straightforward bugs that you might expect an AI to handle semi-autonomously. Identifying these bugs into one of these four categories might help reclassify and triage the bugs. For example:

*   **Russian doll bugs**: Instead of letting a single bug consume your day, break it down. When you uncover a new, dependent piece of work, create a child bug for it. This makes the full scope of the task visible, helps you track progress on smaller chunks, and avoids the frustration of feeling stuck on one never-ending ticket.

*   **Scope creep bugs**: When you find unrelated issues, the best practice is to file new bugs. While it's tempting to fix small things, remember that this expands the review cycle. If you do bundle minor changes, do so judiciously and be prepared for a more complex review.

*   **Non-actionable bugs**: Move these out of your active queue by assigning them a clear status like "On Hold" or "Awaiting Input." A term like "Backlog" can be misleading, as it often implies the work is ready to be started. The key is to have a separate, clearly named queue for items that are currently blocked.

*   **Wrong-owner bugs**: Your role here is to be a facilitator, not to take on the work yourself. Identify the correct team or individual who should own the task and reassign the bug to them, adding a comment that explains the rationale. This reinforces proper roles and responsibilities and ensures the right experts are doing the work.
