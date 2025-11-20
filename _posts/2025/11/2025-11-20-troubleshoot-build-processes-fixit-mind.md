---
title: "Troubleshooting build processes with a fix-it mindset"
permalink: /blog/troubleshoot-build-processes-fixit-mind
date: 2025-11-20
categories:
- ai
- technical-writing
keywords: troubleshooting, build scripts, API documentation, reference documentation, automation, AI-assisted troubleshooting, build logs, error debugging, documentation workflows, proto files, Gemini AI, script automation, technical writing processes
rebrandly: https://idbwrtng.com/troubleshoot-build-processes-fixit-mind
description: "One of the things I'm doing this week, which has thrown me off my content productivity track, is trying to fix some errors in build logs for my reference docs. I have an SDK that has 8 different proto-based APIs; each API has its own reference documentation. The build script I run (to generate the reference docs) takes about 20 minutes and creates the HTML reference documentation for each API. The only problem is that I recently realized that the build script has some errors."
---

* TOC
{:toc}

## Troubleshooting strategies

The details of this problem are entirely unique to these APIs and the homegrown publishing system, so I won't get into specifics. The point is that these errors have ratcheted me into troubleshooting mode this week. Interestingly, I kind of like troubleshooting mode. Instead of just generating content, I'm in a fix-it mindset. 

I don't think I pay enough attention to troubleshooting strategies and methodologies in the fix-it mindset. When something breaks, what approach do I use to fix it?

AI tools have given us new capabilities in troubleshooting workflows. Here's my quick attempt to fix the issue:

1. Copy the build log (which indicates errors) into Gemini (integrated into VS Code) and ask Gemini what's wrong.
2. Based on Gemini's response, add the problematic files into context and ask Gemini to make the needed updates.
3. Re-run and hope the errors are fixed.

*If only things were this simple….*

This approach isn't necessarily wrong and is what I'm literally doing, but it doesn't always work, and then I have to enter into a more advanced stage of troubleshooting. What I want to avoid doing is just repeating the above steps over and over. Sometimes AI tools can lead you down rabbit holes even when the problem is simple. So, what strategies do I employ when this quick AI fix-it technique fails?

**Read the docs.** One strategy is to look for documentation related to the issue. In this case, there's a proto file that's dependent on another proto file, but for some reason the inclusion process isn't pulling it in. There is, in fact, some documentation about inclusion rules and processes. Good error message documentation links to corresponding documentation.

However, let's say that the product documentation doesn't explain the error or how to fix it. What then?

**Reread the error message.** Another approach could be to look more closely at the error message. Is there some clue in there about what the fix might be? Really read that error and surrounding context carefully. Maybe I missed something on the initial read?

**Isolate the problem.** To speed up troubleshooting, isolate the problematic component and re-run the build. In this case, I identified a specific API build that's failing; now that I've isolated it, I can rebuild just that API so that I can more quickly iterate on attempts to fix it. If you have to re-run a 20-minute build script (which builds docs for 8 APIs) each time to see if a small adjustment or tweak fixes things, that will get old quickly. It's too easy to be pulled into other tasks and activities as you're waiting for the build to finish each time.

If you've pinpointed the part of the process that's failing and can quickly re-run the build for that part, you can more easily iterate on experiments to see if the changes fix the issue.

**Find an example that works.** If the process is still not working, look for a similar file or system that is working, and feed that into the AI as a comparison point. A model that works can be highly instructive when juxtaposed with one that doesn't work.


## Logs in general

There are other troubleshooting techniques, but it turns out, Gemini helped recommend the right fixes and I just had to tweak things a bit before the errors disappeared. So, problem seems to be fixed.

However, there's a larger issue I need to address. It seems these errors slipped past my attention for a couple of weeks. Several of the APIs weren't building properly, but I didn't notice the issue because their error messages were buried in a long log message (likely 10-15 pages if printed out). I should more forcefully insert some process into a script that calls attention to errors in the terminal logs.

There's a simple adjustment I can make — if the script encounters an error, it can exit rather than continuing. A script that terminates early will force my attention on the problem should it recur.

{% include ads.html %}

## General trends

I want to comment on a larger trend. I think that assembling, fixing, and maintaining scripts will be an increasingly common task as a tech writer. One solid strategy for working with AI is to automate processes. If you can automate a process in a deterministic way (usually via a script), that's the best approach. Some processes might not lend themselves to deterministic scripts, but certainly building reference documentation does. 

One of the best things I've done is build scripts to generate my API reference documentation, rather than having engineers do this document generation task. I find a lot of important information in the logs, not just errors. For example, if a proto element is missing a comment, the logs indicate this. I've made adjustments to my scripts to compile all warnings about missing documentation into a log that I can review. 

Just having these scripts has saved me many hours of what would otherwise be tedious work. Automating processes through scripts is likely where we get the most efficiencies in the long term. Perhaps we should regularly review our documentation processes and tasks and ask ourselves, can we automate any part of this task with a script? Even if the script involves running a series of prompts that returns non-deterministic outputs, that's better than nothing.

Other processes that lend themselves to a script could be parts of a release notes process, long-running documentation QA tasks, adding related topics, or analyzing bugs.


## Conclusion and most important strategy

Beyond all the troubleshooting techniques I explored here, there's one aspect worth more than all the others: patience. If I cultivate a calm patience to keep from getting frustrated, that emotional fortitude helps me persevere and think level-headedly. I can avoid taking quick shortcuts, or giving up entirely, and instead carefully plod on toward the solution.