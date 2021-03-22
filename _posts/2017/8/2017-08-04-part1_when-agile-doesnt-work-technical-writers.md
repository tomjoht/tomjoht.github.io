---
title: "Tech docs and Agile: Problems with integrating tech writers into engineering Scrums (Part 1)"
categories:
- technical-writing
- podcasts
keywords:
description: "Although it seems like documentation should be treated like other features worked on by a Scrum team, frequently it is not. When tech writers try to integrate into engineering Scrum teams, they usually run into a host of challenges. These challenges stem mainly from floating across multiple projects. Often doc tasks aren't assigned points or grouped in with other tasks in a real sprint, nor are tech writers co-located with project teams. This is a two-part post. In this first part, I outline problems for tech writers integrating into Scrum teams. In part 2, I explore solutions."
bitlink: http://bit.ly/techdocsandagilepart1
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/docsandagile_part1.mp3
podcast_file_size: 26.8 MB
podcast_duration: "35:04"
podcast_length: 26840393
---

{{site.data.alerts.note}}This is Part 1 in a two part series. Part 2 is available here: <a href="https://idratherbewriting.com/2017/08/04/part2_alternatives-to-agile-scrum-for-tech-writers/">Tech docs and Agile Part 2: Alternatives to integrating into engineering Scrums</a>. {{site.data.alerts.end}}

{% include audio.html %}

## Exclusion versus inclusion

The other day I was filling out a technology survey at my work. One of the questions asked me to summarize, *in one word*, my experience working at the company. I wavered a bit, and then went with the first word that came to mind: lonely.

It's odd that I would feel lonely in such a large company. Granted, as a tech writer, the job by nature is  somewhat solitary (as most writing jobs are). But with startups, I've been more immersed in small, interactive groups. It seems that the larger the company, the less integrated I am into any specific team. I work across lots of different teams (at least half a dozen or more), interacting with a variety of project managers and engineers for short periods of time.

Don't get me wrong. I like what I do. I like the products that I document and enjoy the company of my tech writing colleagues. But I'm not integrated into a close-knit software Scrum team. Should I be? Am I doing it wrong?

This has caused me to reflect on the right integration model for tech writers in software shops that follow  Scrum, especially in large companies. Should tech writers try to integrate into Scrum teams just like the other members?

## Basic mechanics of following a Scrum model

When you integrate into a Scrum team and follow the same workflow and rhythm as the other team members, you generally do the following:

* Attend daily standups
* Attend sprint planning (what tasks will we work on for these two weeks)
* Attend retrospectives (what went right/wrong)
* Participate in biweekly sprint demos (and show off completed docs)
* Manage writing tasks as sprint items
* Assign story points to your sprint items
* Finish designated tasks by the end of each sprint
* Sit co-located with the other team members

In many ways, it makes sense for technical writers to integrate into Scrum teams like this because documentation is part of the product. And if the developers follow a Scrum process to develop the product, shouldn't technical writers follow the same Scrum process as they develop their part of the product?

In syllogistic terms:

* D: documentation
* P: product
* If D == P, and Scrum is used to develop D, then shouldn't Scrum be used to develop P too?

From a larger perspective, isn't it better for everyone at the company to be working with the same methodology, principles, and rhythm, like an army marching at the same pace and speaking the same language? Shouldn't technology workers have a unified, consistent approach to working on software projects? There's a certain idealistic harmony to this.

The most common approach to tackling software projects is Scrum, and it has been almost universally accepted because it works &mdash; *except not so much for technical writers, at least in the way it's typically implemented.*

## Definitions

First, I want to clarify terms and provide some caveats. "Scrum" refers to the method and mechanics used to implement Agile principles. For example, an Agile principle might be to "satisfy the customer through early and continuous delivery of valuable software" ([Principles behind the Agile Manifesto](http://agilemanifesto.org/principles.html)). Scrum would be the tactics for doing so, such as scheduling two-week sprints and providing biweekly demos.

Agile is a larger philosophy that has different implementations (such as Kanban or Extreme Programming). I'll briefly discuss these methodology alternatives later. I usually use the term Scrum when discussing mechanics and tactics, and Agile when referring to a more overarching philosophy.

## Caveats

I also want to note that one person's Scrum experience may differ from another. There is a wide variation of Scrum practices from company to company, and from project manager to project manager even within the same company. I'm painting a general picture of my Scrum experiences across companies over at least a dozen years, not just focusing in on one company or team.

## Importance of the topic

I also want to emphasize how important this topic is. Tech docs and Agile remains one of the hottest discussions in tech writing. Before writing this post, I tweeted about the topic (on a weekend) and got 40+ comments and 25+ favorites:

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">I&#39;m thinking of writing a post about why Scrum doesn&#39;t work for technical writers. Anyone strongly agree or disagree with this? <a href="https://twitter.com/hashtag/techcomm?src=hash">#techcomm</a></p>&mdash; Tom Johnson (@tomjohnson) <a href="https://twitter.com/tomjohnson/status/891446352755830784">July 29, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

Surely there's a sensitive nerve here. I suspect many tech writers have similar issues related to Scrum they're trying to resolve.

About a year ago, we held a panel discussion on [how tech writers can thrive in an Agile environment](http://www.stc-siliconvalley.org/2016/08/22/sep-19-2016-how-can-technical-writers-thrive-in-scrum-environments/) in the STC Silicon Valley chapter. We had double the attendance of usual meetings. That recording has been listened to nearly 3,500 times, which is about three times as many listens as other recordings.

With that said, let me lay out some of the problems I've observed in trying to integrate into Scrum teams as a technical writer. These problems may be why the topic is of such great interest to technical writers.

## Floating across multiple projects

If you plug into a Scrum team and start attending the meetings, the first thing you'll notice is that you're not quite like the other team members. For starters, you're usually on 3 or more separate teams, whereas the others are dedicated to a single team only. This means if you're going to attend all the Scrum meetings (standups, planning, retrospectives, demos), you'll have three times as many meetings as anyone else.

Best practices for Scrum recommend one team per member, as this immersion increases efficiency. In a thread on Scrum.org, one Scrum expert says you have to consider the inefficiency of task switching when team members are allocated to multiple Scrums:

> As a rough guide, based on my experience, it takes between 30 minutes and an hour for a developer to switch from one task to another and it is usually not viable to split them between more than two projects. A developer split three ways is rarely productive at all. ([Partially allocated team members](https://www.scrum.org/forum/scrum-forum/5304/partially-allocated-team-members))

In addition to being partially allocated, as a tech writer, you'll find that 90% of these meetings consist of developer-fueled discussions about topics mostly irrelevant to documentation. Sure, you'll run across a nugget of relevance now and then &mdash; such as a 30-second mention of a feature that is changing, which you probably wouldn't have realized had you not been at that meeting.

But for the most part, the signal-to-noise ratio is extremely low. The noise is higher for you than for anyone else, and you have three times this noise level because of your project load. Attending all of these meetings can feel like a time drain with a lot of noise. This setup goes against Scrum best practices from the start.

## No co-location means you miss out on undocumented details

Another issue is that tech writers aren't usually co-located with the other team members. By virtue of floating across multiple teams, it doesn't make sense to embed yourself permanently in any one area. As such, the writers usually sit by themselves in some other area of the organization.

Without co-location, you miss out on many of the impromptu discussions, conversations, and other team chatter. In Scrum, this communication can be vital, since Scrum encourages collaboration without documentation.

For example, you may often see tasks logged without any details, because the details are discussed during standups or other hallway conversations. Developers aren't being lazy &mdash; this is just Agile. The Agile principle is summarized as "Working software over comprehensive documentation" ([scrummanifesto.org/](http://scrummanifesto.org/)). Or with more detail:

> The most efficient and effective method of conveying information to and within a development team is face-to-face conversation. ([Principles behind the Scrum Manifesto](http://scrummanifesto.org/principles.html))

If you're not part of the face-to-face conversations, where will you get the details you need in writing the user documentation? You won't find requirements documents, detailed specs, or other documentation to gather information from.

## Doc tasks not managed like other tasks

Additionally, you may find that project managers (who usually function as Scrum managers) don't want to manage documentation tasks with the same point allocations and groupings as the other tasks in the sprint.

I'm never quite sure why. Maybe my experience is just an anomaly, or maybe I haven't pushed for this enough. But most project managers don't want documentation to be considered as a sprint task, with points that affect the total sprint points possible. They prefer to keep doc tasks separate.

This may be because they're unsure about how to split up doc tasks, or how to estimate the weight of doc tasks. They don't understand how docs are authored or published, so they prefer to have the tech writer manage them independent of the other sprint items. They've probably been moving along for weeks or months without a tech writer, establishing velocity and a regular process. Suddenly incorporating an unfamiliar work from a new resource may be change the manager doesn't want to introduce.

I still usually log tasks in the same project (for visibility with the team), but the tasks aren't assigned points against the sprint's point threshold.

## Scope doesn't apply to doc tasks

During sprint planning, engineers assign tasks for the sprint and then lock down the two-week period to focus only on the tasks they agreed upon during the planning. During the sprint cycle, you're supposed to treat the planned scope as sacrosanct. The scope has been set. You can't shim in new work or swap around the sprint's tasks. You can't persuade engineers to suddenly include another task in the sprint that exceeds the sprint's total planned points.

However, the tech writer's tasks seem to be excluded from these rules. Most project managers will rarely hold up a release for missing docs. Even if you're only partially dedicated to the project and the documentation tasks exceed your allocated story points for the week, the team will not really care. You will still need to have the docs ready to go when the product ships. If you planned to work on tasks 1, 2, and 3 during sprint planning, but then you realize tasks 4, 5, and 6 also have a high priority, you'll need to either complete them both or adjust your plan during the sprint.

This disregard for documentation points or observing the sacrosanct sprint plan discards the Scrum model. The same protections and adjustments don't seem to apply to tech writers and docs. You're working in a Scrum framework but without any meaning associated with the points or sprint. Docs are due at the time of release, period. You just hope that all three of your projects aren't releasing on the same day.

## Variation across project teams makes for inconsistency

Project teams vary considerably in their approach to Scrum, which makes it hard when you're floating across multiple Scrum projects. Even if you do encounter a project manager who understands the tech writing role and correctly integrates doc work into the Scrum team, chances are your *other* project managers won't. Each project manager seems to have some flexibility and adaptability about how he or she approaches Scrum, so you can never follow a consistent implementation across all your projects.

One Scrum master might do biweekly demos consistently, while another omits them entirely. One Scrum master might assign points based on T-shirt sizes, while another uses numbers. One Scrum master might not want you to add child tasks under larger umbrella tasks, while another might prefer this grouping. One project manager might include docs as part of the sprint, and another might not. One might count doc reviews as half a point for the sprint, while another might consider it expected overhead. The variation can be maddening.

Worse is when there are multiple issue tracking systems across the company. When one team uses System A to track tasks, and another uses System B, and another uses System C (e.g., JIRA, Rally, and a homegrown system), life gets more complicated. Your work is fragmented across both methods and systems.

## Scrum seems to encourage product-centered documentation

Beyond the challenges with Scrum mechanics, there are larger issues with Agile and docs. Integrating into a Agile Scrum team tends to focus your attention toward creating documentation for *upcoming* features. As a result, you end up creating product-centered documentation rather than user-centered documentation.

See Mark Baker's post [Don’t Lean on Development’s Agile Process](http://everypageispageone.com/2013/11/25/dont-lean-on-developments-agile-process/). He quotes [Petko Mihailov](https://www.linkedin.com/groups/1115987/1115987-5809451592881025027), who says:

> My experience has been that Agile methodology naturally leads to product-centered documentation and it is quite a struggle to maintain the user perspective and the needed content structure.
>
> This is ironic because Agile has been designed to better cater user needs; it however doesn’t seem to recognize that documentation has its own needs that are separate from the product development programming needs.

How does the Scrum's focus shift tech writers towards product-centered doc? Mark explains,

> Inserting tech comm into development’s process involves inserting tech comm into development’s value stream. The value that development produces is features, so naturally there will be a tendency for tech comm to end up documenting features, and it will be hard to find time to develop docs that are not tied to a specific feature, as Mikhailov notes. ([Don’t Lean on Development’s Agile Process](http://everypageispageone.com/2013/11/25/dont-lean-on-developments-agile-process/))

If your focus is always on the new features developers are creating, rather than the user's perspective and feedback, you're probably steering the ship towards a single trajectory that might not yield the greatest value for users.

For example, suppose there's a lot of confusion with an existing feature released two years ago, but no Scrum team is focused on that feature. As a result, it gets neglected. Yet docs should primarily align with the user's need for high-priority information. Sure, writing docs for upcoming features is important and anticipates the user's need for future information. But it also disregards the current work toward documentation refinement and iteration that also needs to happen with existing information.

## Working *in* Scrum versus working *with* Scrum

At this point I want to introduce an important distinction. There's a difference between working *in* a Scrum team and working *with* a Scrum team. So far I've been talking about working *in* (or integrating into) a Scrum team and treating your documentation tasks like the other tasks.

But there's another model that's more common and inescapable: working *with* Scrum teams. As a technical writer, it's unavoidable that you'll work with Scrum software teams. As such, you'll need to understand how they work, how to find the tasks developers are working on, and so on. You have to understand Scrum if you want to understand how the engineering team functions.

Here are some details that will result from Agile no matter what integration position you take:

* **Timelines are uncertain.** Since Scrum teams plan work in two-week sprints and depend on user feedback at biweekly checkpoints, you never quite know the long-term direction. Based on each biweekly demo, the team could make course corrections, reprioritize backlog features, or kill/delay projects entirely. You can't plan out your documentation work long term because of this uncertainty.
* **Requirements docs are scant.** You won't find much in the way of requirements documentation from Scrum teams. Agile discourages documentation and long-term, fixed planning. As such, you'll probably need to dig more than usual to understand what the tasks in a sprint refer to (and hope that the tasks are at least noted at all). Likewise, no one will expect a documentation plan from you, as this kind of long-term planning smacks of the antiquated waterfall methodology that was largely discarded by companies a decade ago.
* **Regular releases.** You might have to publish docs more regularly. Scrum teams are supposed to deliver working software every two weeks (though customer releases are often less frequent). As such, you might have to publish documentation to coincide with the software the team is pushing out.

You'll encounter these challenges whether you integrate into the Scrum team or not because almost all developer teams follow Scrum.

## Missing out on core principle of Agile: frequent user check-ins

I've discussed the mechanics of Scrum without diving into the heart of the Agile philosophy. The core philosophy of Agile is "to satisfy the customer through early and continuous delivery
of valuable software" (see [Principles behind the Agile Manifesto](http://scrummanifesto.org/principles.html)). By regularly demonstrating the completed work to the customer every couple of weeks, project teams make sure they're on track with what the user wants.

This principle makes good sense. Customers often don't know what they want until they see it. You don't want your developers to spend months heads-down working on features, only to realize, upon release 6 months to a year later, that they misinterpreted the customer's needs, or that the market changed and your product is no longer aligned with current needs, or that something else was askew early on and resulted in a lot of throw-away work.

This makes sense for designing software, but does it make sense for documentation? I'm not sure. Ideally, it would be great to release the documentation I've completed every two weeks and get feedback from users. But it's rare that I'll course correct in the same way that the product might course correct.

For example, would a user or project manager read the doc at a biweekly demo and say, "No, that's the wrong tone." Or, "We don't want written doc &mdash; we want YouTube videos." Or, "No, I think you're describing the wrong features." Or, "Your sentences are too complex for the user level."

If this would happen, great. However, I've never seen it happen. I usually clarify initial deliverables and formats early on with a kickoff meeting or wiki page.

I have demo'd docs before during biweekly sprints, but it's mostly been an awareness campaign. It's me letting others know that doc is written and available. It lets the team know what I've completed and delivered. No one usually reads the docs except maybe the product manager (or the engineer who coded the feature). They review it just like they review any documentation &mdash; checking for accuracy, errors, or missing information. There isn't much course correction that happens in an Agile way.

If there's no real value in aligning documentation with this core principle of Agile, what's really the point of integrating tech writers into the Agile process? We're going to publish the best documentation we can when the team ships the feature. We can discuss the right format for the audience (such as context-sensitive help, videos, PDF, or webhelp). But those decisions are rarely evaluated biweekly in the same way a product's design is supposed to be evaluated. Usually, documentation just keeps cadence with the developing product.

## Positive note: Concurrent activities are more efficient

Not everything is problematic with docs and Agile. One of the biggest positives to integrating with a Scrum team is to keep pace with the work of the team. If Scrum is nothing more than a mechanism to keep you on track and up-to-date with the development work, it might be worth it.

It can be easy to ignore the work that is quietly accumulating. For example, a few sprints can quickly go by as you're tracking a release 1-2 months away and focusing on other projects. Meanwhile, the features requiring documentation keep building. Then two weeks before release, you get overwhelmed trying to play catch-up.

During the same crunch time that you're scrambling to get the documentation ready, the team is scrambling to fix bugs and address last-minute issues before the release. They don't have time to review your docs.

This scenario leads to high frustration for everyone. You feel like the team undervalues docs (because no one has time to review them), and the team simply doesn't have any bandwidth for the doc review tasks you're asking them to do (and which aren't factored in as sprint items).

In addition to avoiding last-minute doc work, documenting the feature during the sprint results in better engineering reviews. When an engineer is working on a feature, or has just finished it, it's the best time to reach out to the engineer about documentation for the feature. During this time, the details and context are fresh in the developer's mind.

If you follow up weeks after the developer finished the feature, details tend to be fuzzy and the developer's interest in the feature significantly wanes.

Additionally, if you let too much doc build up before sending it out for review (and then send 20-30 pages of content), no one reviews it. Very few people will review documentation that's more than 5 pages. It's best to send out documentation regularly (such as at the end of a sprint, or as you finish it), in standalone topics rather than as an entire book or guide to review at one time. This regular release and review of docs aligns with the Agile philosophy of regular releases and reviews.

## Including docs for user stories to close

You can even take concurrent doc work a step further and require docs to be complete before a user story can close. Alyssa Fox says her writers work this way:

> Each time a feature is documented, that documentation must be reviewed by the ID lead/manager and by QE for technical accuracy before the team can close the user story. ([Agile and Tech Comm: Writer Challenges in Agile and Traditional Development Teams](https://techwhirl.com/scrum-and-tech-comm-writer-challenges-development-teams/))

Adding this requirement to user stories might be a strong win for making sure documentation isn't forgotten. It gives you a clear framework and a compelling reason to make documentation a requirement.

But in my experience, coupling docs as child items for tasks rarely works. The engineer finishes the feature on the last day of the sprint, and only then can you play around with it enough to document it. Or you don't have the bandwidth to finish the documentation during the sprint (because you're focusing on another project), but the engineer still wants to close the task to show completion. As a result, documentation usually lags at least one sprint behind, and the doc tasks have to be decoupled from the development tasks.

Even so, lagging one sprint behind isn't bad. Two weeks is much better than two months.

## Conclusion

Despite all of these challenges and issues with integrating tech writers into Scrum teams, we often still try to do it. When we do, a couple of adverse side effects result:

* **A sense of inequality**. When the tech writer is integrated but not fully treated like the other team members, the tech writer can feel like he or she is undervalued. The tech writer is left out, not equal. How long have we been hearing this same complaint about documentation being undervalued, or about tech writers "not having a seat at the table"? This is the running theme of tech docs for the past 30 years.
* **Weak, passive portrayal of the tech writing role**. When tech writers attend every meeting (even if 90% irrelevant) and contribute very little (because of the irrelevance), they're essentially portraying themselves as a weak, passive role. What other role would attend every meeting just listening for some relevant piece of information while developers rattle on endlessly about issues irrelevant to docs? It demeans the status and importance of tech writers. If we need doc-specific info, why not set up doc-specific meetings to get the needed info? Why would we sit there listening to developers exchange developer-centric info for such long periods of unproductive time?

When we try to make a model work that doesn't, we increase the amount of resentment, frustration, and other under-the-hood turmoil for tech writers.

In the end, with most Scrum teams, I am an adopted orphan &mdash; not really part of the team, but welcome at any team meeting or event &mdash; so long as I don't take up much time discussing documentation (two minutes is ok, but then take it "offline").

In my next post, I'll briefly discuss some alternatives to integrating into engineering Scrum teams.

{{site.data.alerts.note}}This is Part 1 in a two part series. Part 2 is available here: <a href="https://idratherbewriting.com/2017/08/04/part2_alternatives-to-agile-scrum-for-tech-writers/">Tech docs and Agile Part 2: Alternatives to integrating into engineering Scrums</a>. {{site.data.alerts.end}}
