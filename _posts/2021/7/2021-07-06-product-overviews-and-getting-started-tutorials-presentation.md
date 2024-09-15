---
title: "Balancing product overviews with getting started tutorials"
permalink: /blog/balancing-product-overviews-with-getting-started-tutorials
categories:
- technical-writing
- writing
keywords:
rebrandly: https://idbwrtng.com/prodoverviewsbalance
description: "In my experience writing documentation, at least two topics seem to be frequently neglected: <a href='/learnapidoc/docapis_doc_overview.html'>product overviews</a> and <a href='/learnapidoc/docapis_doc_getting_started_section.html'>getting started tutorials</a>. Not all the time &mdash; many companies also have great product overviews and excellent getting started tutorials. But I often have the misfortune of arriving at documentation portals and feeling lost, and I don't find much help in the product overview. If there's a getting started tutorial (not usually), my success rate for getting through it is low."
---

* TOC
{:toc}

{{site.include.alerts.note}}10/29/2021 note:** For a more recent version of this presentation, see <a href='https://idratherbewriting.com/blog/presentation-on-product-overviews-and-get-started-tutorials'>Recorded presentation -- Best practices in API docs: Product overviews and getting started tutorials</a>.(/).{{site.include.alerts.end}}

Both a confusing product overview and no getting started tutorial can demotivate a user's progress through docs, prompting them to seek help elsewhere, such as third-party sources, for more straightforward information.

Why are these topics &mdash; product overviews and getting started tutorials &mdash; often neglected? Why are they so hard to pull off successfully? Are there valid reasons for their absence or poor quality, and how can we address some of these issues to make these topics more of a priority? That's what I explore in this section. Not so much best practices, as I've covered these elsewhere, but reasons why these two topics in particular often fail or get skipped. By addressing the reasons for failure/neglect, we can perhaps be more successful with these content types.

## General overview

The tech comm industry has been favoring more task-oriented docs (instead of content types like overviews) for at least the past twenty years or more. Ideas such as minimalism (as defined by John Carroll, Hans Van Der Meij, and others) and research about opportunistic learning behaviors encourage much more action-oriented approaches to tech writing. These action-oriented approaches might include getting started tutorials, interactive features like Swagger UI, code you can run directly in the browser (e.g., Jupyter Notebooks), task-focused how-to's, and more. For decades now, researchers have been reiterating the belief that users are "reading to do" and are anxious to get going with tasks and other hands-on exploration. Readers don't want lengthy explanations but rather specific steps to accomplish a task at hand.

At the same time, documentation often fails to tell the who/what/when/why about the product. Anemic overview pages provide little detail about what the product even is before jumping directly into how to configure it and install it. Countless project overview pages in docs give almost no indication about what the project code actually does, who it's for, its use cases, or other high-level details. Many of the problems with documentation involve the absence of a larger story around the product, a lack of connecting pieces that tie all the components together into a cohesive way that makes it plain for users to understand and get started. Especially as more products come to market, creating more choices and options, this higher-level detail becomes even more important.

How do you balance this tension between action (with task-based docs) and narration (with concept-based docs)? When do you focus on reading to do versus reading to understand?

In general, best practices for documentation would mean accounting for both mindsets and orientations. For the reading-to-do mindset, you provide a getting started tutorial that gets the reader going in an immediate, hands-on way with the product. For the reading-to-understand mindset, you provide a product overview that tells the story of your product, answering high-level questions about the product, including the problem it solves, who the product is for, listing sample use cases, presenting architectural diagrams, development timelines, known limitations, and more. Together, the product overview and getting started tutorial can empower users with confidence and enthusiasm to dive into other areas of your docs.

{% include ads.html %}

## Others' experiences

I'm not alone in my thoughts about the importance of product overviews and getting started tutorials. In a recent blog post, [Balancing action with narration: Creating product overviews and getting started tutorials to satisfy both try-first and read-first learning modes](/blog/balancing-action-with-narration-create-content-to-satisfy-opportunistic-and-systematic/#commento), I floated an idea about presenting on these topics, sharing a similar overview I described as above, and asked my readers to agree or disagree with this statement: "Product overviews and getting started tutorials are essential but often neglected topics in documentation." Here are the results:

<a class="noCrossRef" href="https://www.questionpro.com/t/7Bl4niZmV4G"><img src="{{site.media}}/api/prod_overviews_started_survey.png" alt="Survey about product overviews and getting started tutorials" /></a>

Forty people (mostly technical writers) responded. 82% of people either agreed or strongly agreed with the statement, and 12% were neutral. Only 5% either disagreed or strongly disagreed.

In the survey feedback, some people said the following to elaborate:

> My docs team is constantly receiving feedback that we don't cover "what/why" enough, so I'm very keen to get some ideas from your presentation. Thanks!

<hr/>

> I struggle with writing overviews whether they’re for the entire product or just a feature or capability. I’d be very interested in a series on how to write overviews.

<hr/>

> We often leave the "big picture story" to marketing, while tech doc focuses on the "nuts and bolts". I've heard the argument "you don't have to explain &mdash; they've already bought the product and know what they want it for" but this overlooks the new guy who wasn't involved in the purchase, the engineer who is handed the product and told to make it work by his boss etc. Also, the marketing story is almost always too superficial. Finally, with complex products, while getting started is very useful, there's still a need to understand the product to use it. The user's final configuration for a complex product will almost never be the same as the tutorials. All the best for your presentation!

In other words, assumptions about overview content already being consumed in pre-sales scenarios by some readers doesn't account for the engineers implementing the features.

Others left direct comments on the [the post](/blog/balancing-action-with-narration-create-content-to-satisfy-opportunistic-and-systematic/#commento).

Katya said:

> Personal experience as a reader: I tend to skip the product overview and go straight to the hands-on section of the get started guide. However, when the product overview is not there in the first place, it triggers something in me, and I immediately need to understand more about the product. The only explanation I have is that when a product has a good written overview, readers only need to briefly scan it to understand whether this is something they are looking for and make a decision to continue reading (or not).

In other words, while she might not carefully read the overview, when it's absent, this triggers a sense of incompleteness for her.

Yves Pierrot said:

> Hi Tom, "Getting Started" content is usually my first concern when I take on a documentation. I usually work on complex products and the new user is often left behind with no global meaning or methodology for the multitude of actions, and no separation between basic and advanced use. So I create one.
>
> I don't think a Getting Started is all "reading-to-do". We have to mind minimalism and independence between topics, all right, and it is definitely action-oriented, but for meaning and learning, nothing beats the power of a good story.
>
> There must be a story linking the actions within the Getting Started, a global goal that may be connected to the Product Overview, being the most basic use case for example, and an actual progression from one step to the other until the final result at the end of the Getting Started. That story should be the most meaningful basic situation for the user, which requires some knowledge of product usage. It should be complex enough to cover a wide enough range of actions.
>
> So that means that in the action-oriented content is mixed some situational elements that provides a why and a when, possibly as introductory description of the starting situation(the "context" of the task) and some development on the "result" part.
>
> I usually provide an introductory topic that lists the actions (and links) in their meaningful order with some "scenario script" info to tie all together, and that frees me from adding too much "what happens before and after" in the topics themselves.
>
> All in all, I think the Getting Started is one of the most fundamental part of the doc, it is hard work (heavy on the maintenance side too) but so much fun to create. As a Tech Writer, it also connects you to the meaning of your work.

In other words, the getting started tutorial needs to connect to a larger story that addresses a situational pain point for the user. Without this connection to the story to fill in the why and provide more context, the getting-started tutorial lacks significance.

Mark Baker, who recently retired from tech comm and turned to writing fiction, said:

> Your title struck me because of how closely it mirrors a similar discussion in the fiction world between action and description. Readers prefer action, we are told, and yet without description, the reader does not know what is at stake in the action. There is something very parallel here. In tech comm, the reader is anxious to take action, yet without conceptual information they don't know what action to take when or why.
>
> In my old life in tech comm, I would, of course, have said, this is why you use an Every Page is Page One approach, so that readers can decide for themselves when they want concept and when they want procedure. But that does not work for a novelist, and it does not work for documentation in all cases either.
>
> In fiction it seems that the answer is something along the lines of suggesting the possibility of the action to come, of suggesting in the narrative sections that what you are narrating must inevitable result in action in the not too distant future. Description without the possibility, even the threat, of action, will be dull. But action without any background as to who is involved or what they stand to gain or lose, is similarly dull.
>
> Is there a way to translate this to tech comm? Is there a way to present concept material that is somehow pregnant with the possibility of action? I don't know. And figuring it out is no longer in my bailiwick. But I could not help commenting on the parallel.

In short, if fiction writers immediately engage in action, without having more narration to fill in the higher-level significance, the action will be hollow.

Chuck Martin said:

> Hey Tom, I think you've hit on a good topic here, but I also think you're approaching it from a binary perspective, and I don't think that's the case.
>
> First, let me say that one reason this is a challenge is that because for most types of documentation, users want to get in just as far as necessary, find the information they need, and get out and get back to work (or play, or whatever they are doing). That's a big driver for the minimalism of which you speak.
>
> But the "why" is much more than product overviews. The "why" is imperative to imparting product understanding, and opportunities to add "why" content are more expansive than just overviews.
>
> For example, it can be very useful to add a bit of "why" content to critical steps in procedures. The "why" content can offer decision support at critical junctures that gives confidence to users that they are making the correct decisions. Another place that "why" content is often missing &mdash; and where it is usually critically useful &mdash; is reference content. Reference content is a PITA [pain in the ass] to develop, and is so often just a recitation of options, nothing more. But reference content is where users, especially experienced users, go to find specifics of decisions they need to make in the product, decisions that can often be nuanced. Here's is where "why" content is especially important, to add detail that explains the results and consequences of the choices available to users, and even why some choices may or may not be available. It's hard to do this, however, and it takes more time, and most companies barely invest in documentation development anyway, so getting this done is almost always put on the back burner by technical writers who already have overwhelming backlogs of work.
>
> Layering the "whys" into these types of content, however, is critical to imparting conceptual understanding at the point of need. In a task, for example, we can give not only the directive in a step, but, as Frodo said to Sam when he passed on the Red Book of Westmarch at the end of "The Return of the King," there's room for a little bit more. So add a bit more, add a bit of why, enough to add to users' conceptual understanding, but not so much to be overwhelming or to drown out the task at hand. The big bonus here is that many users will get that conceptual understanding without realizing it, and next time they are doing the same or similar things in the product, they will have gained that conceptual understanding and be able to make more decisions confidently without needing to refer to documentation. That is a big win for all involved.

In other words, Chuck is arguing for integrating more of the conceptual "why" content with the reference content. Especially in API docs, you might have an API that can be used in various ways, without a specific 1-2-3 list of steps. That's the essence of API docs &mdash; they're like a cupboard of ingredients you can use in many ways to create different dishes. Why use one API over the other, and in what contexts and scenarios, and what are the advantages of different approaches? This higher-level information helps advanced users make more informed decisions when using the API.

## Summary

Not everyone's experience and perspective is the same, but from this quick survey, it seems this topic hits close to home for many tech writers. Both the product overview and getting started tutorial are among the most challenging to write, and their presence or absence in documentation can make a huge difference. For this reason, I think it's worthwhile to explore these topics with more depth and analysis.

In contrast to other articles that outline best practices, I'll approach these topics from more of an inverse angle. I devote the bulk of this section to exploring reasons why overviews and getting-started tutorials are so poor, the causes that threaten the best practices for this topic. It's by exploring these causes that we can find ways around them and adhere to the best practices for these content types.

See the following sections for more detail:

* [Reasons why product overviews are often minimal or nonexistent](/learnapidoc/docapis_doc_overview.html#reasons_for_failure)
* [Reasons why getting started tutorials fail or don't exist](/learnapidoc/docapis_doc_getting_started_section.html#reasons_for_failure)
