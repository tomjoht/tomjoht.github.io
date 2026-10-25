---
title: "My AI strategy to fix docs based on chat logs"
permalink: /blog/ai-strategy-to-fix-docs-based-logs
date: 2026-10-25
categories:
- ai
keywords: AI chat log analysis, documentation strategy, doc bug tickets, agent skills, fix-doc-bugs, SME review, evals, documentation feedback, Google Maps Platform, tech writer role, Write the Docs Australia
rebrandly: https://idbwrtng.com/fix-docs-based-on-logs
description: "My strategy for improving docs has two stages. First, turn the failure points in AI chat sessions into actionable doc tickets. Second, fix those tickets with a skill that applies a tech writer's judgment, and use evals to check whether each fix worked."
---

* TOC
{:toc}

{% include ads.html %}

My role at work has shifted lately in interesting ways. For the past six years, I've focused on automotive APIs, with content entirely behind ACLs for external automotive partners. Now I've shifted more toward the public [Google Maps Platform APIs](https://developers.google.com/maps/documentation) and am playing an AI leadership role. I thought at first the role might be daunting. Instead, it's been invigorating and is one of the most interesting shifts in my career.

I'm still handling all the automotive content as well. I've written so many skills to automate recurring processes (like release notes and policy updates), and models have gotten so good, that I can handle incoming automotive doc requests much more efficiently than before. When you add it all together (robust agent skills, highly capable models, and six years of domain expertise and doc familiarity), the efficiency gains free up enough time for me to take on the new work.

As I shift my attention toward the public APIs, I've been working on strategy. In a nutshell, my strategy has two stages. The first stage is to identify the problems surfaced in AI chat sessions and turn them into actionable doc bug tickets. The second stage is to fix those tickets using skills designed to automate the work. Each stage has a few different dimensions, which I'll unpack in the following sections.

## Stage 1: Turn chat failures into actionable doc tickets

AI chat logs are a godsend for documentation. For years we've been writing tech docs in the dark, with little user feedback and input. Now, if you can get your hands on actual log data about those chat sessions (sanitized for PII), you can identify exactly where users are hitting failure points. Especially if you have AI tools that let users build with your product, not just ask questions about the docs, you'll find yourself flush with detailed failure logs. It's simply incredible and not something I've had in my 20+ years of being a tech writer.

### Gathering issues from input streams

I'm not the only one looking at logs, of course. In fact, we're almost an afterthought, since multiple teams are already identifying frictions in the logs. So I've set up meetings with several of these teams, which I refer to as input streams, to collect the documentation gaps they've identified. My first goal is to get a steady stream of issues, frictions, drop-off points, and other failure patterns flowing into our doc team's intake queue.

You'd think this might be easier than it is. Historically, non-tech-writing teams have struggled to connect the dots between user failures and documentation improvement opportunities. For reasons I've never understood, the teams aware of user frictions (support, for example) rarely reach out to the doc groups to improve the docs at the point of friction. My regular meetings with these teams will help them see how to connect the dots.

I'm tracking each input stream's tickets so that I can go over the issues they've identified and our progress on the fixes. Nothing motivates someone more than actually fixing the bugs that they log for you. If someone logs a bug and it sits in your queue for months, that person stops filing bugs. The reverse is equally true -- you want people to file more bugs? Show that you're listening to their input by fixing the issues.

In addition to collecting tickets from other teams analyzing logs, I've also done some log analysis on my own. I created a skill that takes messy logs as input and generates specific documentation recommendations to address the failures as output. The resulting tickets were relatively easy to work through, and I fed them to another skill that fixes the bugs. My test proved that this workflow is possible, moving from chat logs to actionable doc tickets to fixes.

### Triaging the incoming tickets

In gathering the tickets from input streams, I've noticed that the tickets filed by these teams can be problematic. This is because the people filing them aren't intimately familiar with the docs. For example, I've seen the following kinds of issues:

- Tickets that lump too many disparate things together and need to be broken up into separate tickets
- Requests to fix files that are auto-generated, so any edits would be overwritten with the next build
- Requests to update content that's out of our control, like legal terms and policy pages, which means figuring out who to reach out to and what the process is for updating the page
- Requests to update designs that aren't agent readable
- Requests for updates that will be overwritten by pending documentation releases already waiting for a release date
- Tickets that identify one instance of a larger pattern that needs fixing across the entire documentation corpus

In other words, the incoming tickets aren't all ready to work on. They need a tech writer's eye to judge whether the update is sound and well-planned. I'm still in the early stages of getting these input streams going, but I anticipate that within a month, our team will be drowning in more tickets than we've ever seen.

## Stage 2: Fix the doc bugs with a skill

The second stage of my strategy is to use a skill to fix the doc bugs. I've become pretty good at building skills, and the technical bar for designing and building skills has also become easier. I've probably made 30+ skills for internal authoring workflows over the last year, and some have been rockstar skills that have essentially eliminated the toil from some of my processes.

### The fix-doc-bugs skill

For now, let's just focus on the skill that fixes doc bugs, literally named `fix-doc-bugs`. Many people might be skeptical about this skill, because if done right, it should address a documentation issue with 100% accuracy and few to no SME corrections. In other words, it's essentially a magic button to fix docs. How does it work?

The skill layers in various kinds of logic. First, it asks whether the ticket should be fixed at all. It doesn't assume that work should start just because a ticket asks for it, which addresses many of the triage problems I described earlier. Additionally, rather than just inserting a note or section here or there to address a gap, the skill looks at the whole product documentation to see how the update fits. The skill also does a number of things that people who aren't tech writers might not consider. For example, the skill does the following:

- Checks whether other changelists (aka pull requests or PRs) in flight might conflict with the edits
- Identifies the right SMEs to review the update based on file histories and owners
- Links code elements to their reference docs to ensure accuracy and connect concepts with the reference
- Deploys adversarial subagents to fact-check the changelists
- Knows to edit reference docs in the source code files rather than in the generated HTML output
- Follows the conventions of the source language when editing code comments
- Handles content generated from structured data files differently from hand-written docs
- Understands the processes for updating code samples and other assets stored in GitHub repositories
- Stages changelists with the right preview links
- Formats Markdown docs to satisfy our style linters
- Runs a self-reflection loop to suggest improvements to the skill based on any frictions

All these processes run behind the scenes to fix doc bugs. The more writers use the skill, the faster it will improve. I added a telemetry rule that tags every changelist the skill generates with the skill's name, so I can search for that tag and see all the CLs in which the skill was used. This gives me a clear sense of whether I'm the only one using it or if other team members are using it too. For those not using it, I can find out why. It may be that they tried it and it didn't work, or perhaps they're skeptical. Either way, telemetry with skills is important for improving the skills.

### The review bottleneck

My thesis is that by identifying where AI chat sessions go wrong and fixing those failure points, we'll move the needle on improving our docs in an accelerated way. The faster we want to see improvement, the faster we can spin this wheel. For example, I can feed 100 doc bug tickets to my fix-doc-bugs skill overnight and, in the morning, see 100 changelists. However, pushing those 100 changelists through the review process is a real challenge, and it's another point I'm still trying to figure out.

Even with just 10 changelists, pushing them through SME review is hard. Did we identify the right SME? If the SME doesn't respond, is it because they didn't see it, didn't get to it yet, or are they silent because they're not the right person? When they do respond, is it blanket approval, or do they have comments? Catching SMEs while they're in the review process means quickly switching back to the changelists to address any comments they've made.

Switching contexts (workspaces) across 10 different updates is tough. Between incoming email, chat, meetings, new tickets I'm working on, and the comments, pings, and updates from the 10 active changelists, it's enough to send me bouncing from context to context in a scatterbrained, exhausting way. I'm therefore investigating other AI tools that might help me monitor status and perhaps handle simple tasks, like pinging silent SMEs to confirm they're the right reviewers.

The review capacity of the tech writer matters too, not just the SME's. In my initial test, I was walking into some product areas cold, with little understanding of the product's docs, since I'd been focused entirely on automotive for six years. As a result, I put the onus on SMEs to verify the accuracy of the content. In roughly 90% of cases (a ballpark estimate), this worked, meaning the SME approved the change without too much back and forth. Some SMEs even used the review as a chance to ask for other changes while I was on the page, and in one case the request extended to the product itself (which I did). 

In the remaining cases, though, I was reminded that domain awareness is essential to judge the merits, accuracy, and relevance of a documentation update. My lack of familiarity with those products is likely why those cases failed. Writers with domain expertise in those areas could steer the skill in the right direction and probably get a higher success rate. Overall, the skill can produce fixes faster than writers and SMEs can verify them, so review capacity on both sides becomes the real constraint.

### Measuring whether the fixes work

The other challenge will be to make the case that these doc updates improve the success rate of AI chat sessions. How can we measure this? One option is to track whether the failure patterns in the logs decrease over time after we push fixes. However, that's a long game, and it's difficult to track given how much everything changes. Failure rates shift as models, products, and user behavior change, not only when the docs improve.

A more immediate and actionable approach is to incorporate evals with each doc fix. When a fix comes from a chat failure, the original failing prompt can become the eval case. After the fix is in place, you re-run that prompt against the updated docs and check whether the agent now succeeds. This tells you whether the fix worked, and it keeps eval creation fairly cheap, since you don't have to invent a test case. It also suggests a rule for which fixes merit an eval. Fixes that came from a chat failure get one, while fixing links or correcting minor errors probably doesn't need one. I'm not yet sure how to manage these evals as they accumulate over time, but that seems like a manageable problem.

I like this approach because it would make writers more familiar with testing their content against model performance as part of fixing the issue. Otherwise, how would we know that the fix we applied actually worked? It does make fixing the doc tickets more cumbersome, though, because it adds another layer. Now each fix needs not just SME approval but eval approval as well. This will slow our fix rate at the same time as I'm accerlating the number of incoming bugs. I haven't yet created a skill to create evals for the doc issues we fix, but it's next on my list.

## Conclusion 

I welcome feedback on my strategy here. Am I missing something key? Do you agree or disagree with any approach? If you have recommendations for improvement in any area, please let me know. I'll also be speaking at [Write the Docs Australia](https://www.writethedocs.org/conf/australia/2026/speakers/) in December about some of my favorite skills and how they've changed everything for me as a technical writer.
