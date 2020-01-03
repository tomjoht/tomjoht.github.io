---
title: "How to avoid inefficiencies even with context switching"
permalink: /blog/avoid-inefficiencies-even-with-context-switching/
categories:
- writing
keywords: context switching, inefficiency, lean, project plans,
bitlink: https://idratherbewriting.site/efficiency-context-switching
description: "When you switch focus from one project to another with higher priority, this context switching can lead to a lot of inefficiencies. However, if you take time to review or work on the de-prioritized projects even just a little each day, then according to the Forgetting Curve, you'll be more likely to retain the needed context. When you do fully switch back to the project, you won't have to start over."
---

It's been a while since I've posted &mdash; about two weeks, which is a long time for me. Partly it's because after conference season I felt somewhat burned out from so many presentations, workshops, and conference sessions, along with all the travel that goes with it. But also, it's easy to fall out of the writing habit, and the longer you go without writing, the harder it is to regain momentum.

People always ask me, "How do you find the time to blog so much?" and during my two weeks of not writing, that question kept resounding in my head, but directed in a different way &mdash; *Why can't I seem to find the time to write?* I used to find the time, but now that time seems so much more elusive.

Which brings me to my topic for tonight: maintaining continuity even when you're forced to switch among multiple projects. The two topics are closely related, which will become clear later. Here's an example that illustrates the need to maintain project continuity to stay efficient.

Last winter I decided to focus my full attention on documenting a project that was high-priority but which had been neglected in our timeline. This project ("Project A") required a lot of time and effort, and I spent a good month just trying to get the software to work as I fixed the documentation. Just as I was about three weeks away from finishing Project A, another project ("Project B") declared an emergency and needed major updates to meet a release deadline by the end of the month. So I had to stop work on Project A and focus my full attention on Project B.

Of course, the new project took twice as long as expected, and then about two weeks before Project B's release date, a few key team members left to another team, some engineers ran into technical showstoppers, and the whole project shifted timelines into Q4. I was like, damn, I stopped the world to focus on your project, lost all my context and momentum with Project A, and now after two months I need to pause this effort, leave all my docs in draft form unpublished, and return to the original project I was working on? WTF people...

When I returned to Project A, I realized that I'd lost all my context. I had to re-learn things, re-configure my test scenarios, re-figure out where I'd left off, and more. It took at least a week to ramp back up to my previous velocity. And a month later, I published an initial version of Project A's docs. (BTW, you can read them [here](https://developer.amazon.com/docs/video-skills-fire-tv-apps/introduction.html) if you want. They focus on creating video skills for Fire TV apps.)

If I have one pet peeve when it comes to documentation, it's the frequent context switching that's required of technical writers. I know this happens to *everyone*, and I'm almost foolish to even complain. Juggling multiple projects with competing deadlines is par for the course for any technical writer, in any company. I know, I know. But multi-tasking documentation projects isn't such an efficient approach, in my opinion. Personally, I like to focus on one project and see it through to the end before committing my energy towards another.

Think of efficiency like a train. When a train gets up speed toward one direction, if you suddenly radio into the train engineer and tell him or her to change direction, it takes a lot of time for the train to slow down, change course, and build up to a new speed in the new direction. Imagine doing this direction switching multiple times in an afternoon &mdash; the train won't get anywhere.

How do you multi-task (more specifically, switch contexts) among projects without losing efficiency? That's the question. Because you'll never be left alone in your cube to work on one project until you finish it. You'll always be bombarded with other projects that take you in a lot of different directions.

For one project, you might be working with a team in one location, working with technology A. Then for another project, you work with a team in another location, working with technology B. And so on until you have half a dozen simultaneous projects and technologies all pulling on your attention, all with impending deadlines and needs.

Context-switching brings us full view into topics like [Lean](https://en.wikipedia.org/wiki/Lean_software_development) and waste. Lean is all about identifying and eliminating inefficiencies in development processes. Context-switching plays a prominent role in waste and inefficiency. Matias Sander, writing about Lean, says, "Some estimates say that you lose 40% of your time because of task switching" ([Keep It Lean – Become More Productive And Motivated](http://techwritingengineer.com/keep-it-lean-become-more-productive-and-motivated/)).

Ideally, we would eliminate waste by not switching tasks, but the reality of tech comm is that you always have multiple projects to juggle. You rarely get the luxury of focusing all your energy on a single project until you finish it. You *have* to multi-task.

In [Human Task Switches Considered Harmful](http://www.joelonsoftware.com/articles/fog0000000022.html), Joel Spolsky talks about the inefficiency that occurs specifically when programmers have to switch tasks. He says,

> The trick here is that when you manage programmers, specifically, task switches take a really, really, really long time. That’s because programming is the kind of task where you have to keep a lot of things in your head at once. The more things you remember at once, the more productive you are at programming. A programmer coding at full throttle is keeping zillions of things in their head at once: everything from names of variables, data structures, important APIs, the names of utility functions that they wrote and call a lot, even the name of the subdirectory where they store their source code. If you send that programmer to Crete for a three week vacation, they will forget it all. The human brain seems to move it out of short-term RAM and swaps it out onto a backup tape where it takes forever to retrieve.

In other words, rebuilding the necessary context to do a complex task like programming is what creates the inefficiency. Documentation is probably in the same category here, because you also have to remember a million details at once &mdash; feedback to implement from meetings, where a wiki page is, where you described a feature in your docs, questions that you had saved up for the PM, the name of the reclusive SME who knows certain nuggets of info, how certain code works, existing bugs in pre-release states, QA contacts and test case repositories, field engineers working on the project, configuration steps from an engineering demo, and so on.

Spolsky says programmers should stick to one task only:

> As it turns out, if you give somebody two things to work on, you should be grateful if they “starve” one task and only work on one, because they’re going to get more stuff done and finish the average task sooner. In fact, the real lesson from all this is that you should never let people work on more than one thing at once.

*Never let people work on more than one thing at once* If only I could be so lucky! Try as I might, this extended focus on a single task just seems to be an unachievable ideal in tech comm.

I do try to push back against immediate needs when new requests come in. Is doc really due by the date people ask for it? Release deadlines can be an illusion at times &mdash; sometimes placed way before the actual need. Earlier in my tech writing career, I spent an entire weekend working overtime to meet a doc deadline, only to find that the deadline was arbitrarily set by the PM a couple of months before the release.

On the other hand, the flip side frequently happens &mdash; PMs reach out so near the release, they haven't provided the necessary time for quality documentation. They give the tech writer just enough time to barely finish the project assuming the tech writer begins immediately and works heads-down on their project and nothing else right up until the release date. So is the doc really needed at the requested date? It's hard to say.

Instead of pushing back on deadlines, another strategy might be to create detailed doc plans for projects. I've found doc plans to be incredibly useful in surfacing all the needed detail. I'll post my doc plan in an upcoming post to share it, but basically, the doc plan makes every detail explicit. With a project plan, you can easily find all the wiki links, project contacts, sprint boards, report updates, and other info to quickly re-familiarize yourself with the needed info. If you're holding all that info in your head (rather than writing it down in a project plan), it's easy to forget it, as the info fades from the working short-term memory into oblivion.

But even detailed doc plans don't seem to entirely solve the context-switching problem, because beyond remembering these high-level details, you have a mountain of documentation details to keep in mind as well.

Without more ideas here, I asked my daughter, who just graduated from high school this week, what the best strategy is for maintaining continuity when you're forced into multi-tasking situations. She told me about a study in her psychology class called the "Ebbinghaus Forgetting Curve." The idea is that if you stop reviewing what you learned, you forget nearly everything rather quickly. But if you regularly review the content, even just a little each day, you're more likely to retain it.

Here's a brief description of the Forgetting Curve from Wikipedia:

> The forgetting curve hypothesizes the decline of memory retention in time. This curve shows how information is lost over time when there is no attempt to retain it.... Spending time each day to remember information, such as that for exams, will greatly decrease the effects of the forgetting curve. Some learning consultants claim reviewing material in the first 24 hours after learning information is the optimum time to re-read notes and reduce the amount of knowledge forgotten. Evidence suggests waiting 10-20% of the time towards when the information will be needed is the optimum time for a single review. ([Forgetting curve](https://en.wikipedia.org/wiki/Forgetting_curve))

The basic idea is that even if you can't devote much time to a project, if you can spend at least some time reviewing the details, you're less apt to forget it when you need to switch back to it. The most common application seems to be with students and exams, but multi-tasking various projects in the workplace seems to be an equally applicable scenario.

For example, returning to the earlier project scenario, remember I was working on Project A last winter for about a month when I had to switch gears to focus on Project B. I thought I had to devote my full attention to Project B to meet their timelines (which slipped as they commonly do in tech). But in focusing fully on Project B, I forgot all the details in Project A.

What I should have done is continue partial attention on Project A. For example, devote three-fourths of my attention on one project, and one-fourth on the other. That way, by devoting just a quarter of my time to the de-prioritized project, I could have maintained the needed context to switch more efficiently back to Project A when I needed to. Does this method work? What if you devote just 5% of your time? Do you still maintain the context in your head? I'm not sure, but I'm going to try it out.

Now let's come back to the original issue &mdash; not writing. I found during the conference season that I was fully occupied by presentations, workshops, travel, and other details, with little time to write. As a result, the muse in my brain decided to shut the lights off and lock the door. Returning was so much harder than it could have been, had I just carved out 20 minutes to write a brief journal entry. Perhaps even when I'm too busy to write a longer post, if I can just write a few paragraphs, it will be enough to keep the muse awake and more likely to engage the next day. When the muse engages, I do seem to find the time to write. Strangely, writing every day is easier than writing every two weeks.
