---
title: Increase efficiency 24 times faster when fixing errors &mdash; implications for technical writers on agile teams
categories:
- technical-writing
keywords:
description: "If you want to influence developers to make changes to code (such as with UI text), it's 24 times easier for developers to make the changes if you tell them the same day they code the feature than if you wait a few weeks later. This means technical writers should keep pace with the features coded during each sprint."
---

<a href=""><img class="alignright" src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/scrum.png" | prepend: site.baseurl }}" alt="Scrum, by Jeff Sutherland" /></a>
[Scrum: The Art of Doing Twice the Work in Half the Time](http://www.audible.com/pd/Business/Scrum-Audiobook/B00NJ3WS9G/ref=a_search_c4_1_1_srTtl?qid=1445953702&sr=1-1) is one of the best books I've listened to in a long time. Although I've worked in agile environments for the last decade, I don't think I fully understood the way agile is supposed to work until listening to this book.

This book should be standard reading material for any technical writer, because it will orient you about how to operate successfully in an agile environment (which is a framework that almost all software development shops follow now).

Just to pick out one nugget of wisdom from the book, Sutherland notes that one way to increase efficiency is by fixing errors the same day the feature is developed. In one study, when QA waited until after the sprint to note bugs in code, and several weeks passed before developers were notified of the bug and could fix the code, it took the developers 24 times longer to fix the issue than if they had addressed the bug the same day during the sprint. Sutherland writes:

>A few years ago I was in California talking to the development people at Palm. They made some of the first of what were then called Personal Digital Assistants (PDAs), which we now call cell phones. They tracked everything they did automatically. One of the many things they measured was how long it took to fix a bug — that is, how much time it took a software developer to fix a problem he'd introduced into the system. The computer tracked this automatically, each and every time.
>
> So let's say that one day, when the testers tried to integrate Matt's code into the rest of the system, they detected a bug. Matt, like most software developers, wouldn't want to go back and fix that code right away. Instead, he'd vow to get to it later. First, he'd write new code.
>
> At most companies this kind of testing doesn't even happen on the same day. It could be weeks or months before all the code is tested, and only then are the problems discovered. But Palm performed daily, automated tests of all their code, so they knew right away when there was a problem.
>
> They looked at the "Matts" across the entire company — hundreds of developers — and they decided to analyze how long it took to fix a bug if they did it right away versus if they tried to fix it a few weeks later. Now, remember, software can be a pretty complicated and involved thing, so what do you think was the difference?
>
> *It took twenty-four times longer.* If a bug was addressed on the day it was created, it would take an hour to fix; three weeks later, it would take twenty-four hours. It didn't even matter if the bug was big or small, complicated or simple — it always took twenty-four times longer three weeks later. As you can imagine, every software developer in the company was soon required to test and fix their code on the same day.
>
> The human mind has limits. We can only remember so many things; we can really only concentrate on one thing at a time. This tendency — for the process of fixing things to get harder as more time elapses — represents a similar limitation. When you're working on a project, there's a whole mind space that you create around it. You know all the different reasons why something is being done. You're holding a pretty complicated construct in your head. Re-creating that construct a week later is hard. You have to remember all the factors that you were considering when you made that choice. You have to re-create the thought process that led you to that decision. You have to become your past self again, put yourself back inside a mind that no longer exists. Doing that takes time. A long time. Twenty-four times as long as it would take if you had fixed the problem when you first discovered it. &mdash; Sutherland, Jeff; Sutherland, JJ (2014-09-30). *Scrum: The Art of Doing Twice the Work in Half the Time* (p. 100). The Crown Publishing Group. Kindle Edition.

What are the implications of this for technical writers? If you're a technical writer on an agile team, it makes more sense to finish documentation in the rhythm of each sprint because when you find problems &mdash; with button names, error messages, endpoint terms, parameter casing, workflows, etc. &mdash; you can let developers know during the same day (or at least during the same sprint), and it will be *24 times easier to fix* than if you were to log a bug about the issue weeks later.

If you wait until after the sprint finishes to begin documenting the features, sure it's easier because the features are already finished and most likely functional, but developers have moved on. That poor text they threw into the UI or error message is now solidifying like hardening concrete. Developers are now grappling with other problems.

Thinking of code as hardening concrete is an apt analogy. When you first pour concrete, it's easy to shape and move around. But the longer you wait, the harder the concrete gets. If you don't show up on the scene until a few weeks later, and then you say hey, you should have shaped the concrete a little differently, good luck. To implement the change, you would need to jackhammer up the concrete and redo it entirely.

Your battles will be much easier to win if you come in at the same moment developers are coding the features. You won't need to make a heroic case about the benefits of grammar. You can just drop developers an email and say hey, this message would be better &mdash; and they'll do it because it's so easy to make the change. In contrast, wait a few weeks later, and the project manager will need to evaluate whether making the change is actually worth it.

Staying in the rhythm of a sprint is tough. It's tough because usually tech writers are on several projects at once. Each morning I attend two scrum meetings (both of which usually go past the standard 15 minutes). I hate context-switching between projects, so when I get in the rhythm of one project, my tendency is to stay on that project and somewhat ignore the other until I absolutely have to turn back to it.

But now I'm realizing that, although context-switching among multiple projects is challenging, if I want to have influence on the shape of the software that is built, I have to connect with developers before the features harden. I have to write documentation for the features developed at each sprint, even if the code isn't released externally for a couple of months.
