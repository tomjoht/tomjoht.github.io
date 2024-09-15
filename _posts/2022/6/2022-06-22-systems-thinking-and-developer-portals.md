---
title: "Systems thinking and developer portals"
permalink: /trends/systems-thinking-and-developer-portals.html
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.com/trends-systems-thinking
series: "Trends to follow or forget"
sidebar: sidebar_fizzled_trends
description: "This post is <a href='/trends/trends-to-follow-or-forget-intro.html'>part of a series</a> that explores tech comm trends that I've either followed or forgotten, and why. In this post, I explore why focusing on the big picture fits into the domain of <i>systems thinking</i>. I also make a case for developer portals as a candidate for study that aligns with a systems thinking approach."
---

* TOC
{:toc}

## Recap of the argument context

Let me briefly recap where I left off in this series. In a previous topic ([Technical diversity/pluralism/fragmentation in tech comm](/trends/embracing-diversity-pluralism-fragmentation.html)), I summarized Kevin Kelly's argument (in _What Technology Wants_) about the trajectory of growing technical diversity fueled by technology. With each year, the number of products and services available for us continues to grow, proliferate, and multiply, such that we swim/drown in a sea of choices and options.

With diversity exploding in so many directions, one has to choose which areas to specialize in. With the rare exception of full-stack developers and multitalented polymaths, to succeed in any career, one has to specialize (to some extent). So one outcome of the growing technical diversity is also a growing need to specialize. Specialization drives people into increasingly niche roles of study and expertise. You don't just have an artisan making shoes; you have thousands of different specialists building tools that handle different aspects of the factory-driven shoemaking process, from the origination of materials to the boxing and delivery to stores, such that hundreds of individuals play a highly focused part in a larger process, often without a clear idea of what they're even making (and perhaps without anyone physically touching the actual shoes).

In this world of increasing technical diversity and specialization, documentation begins to lose the big picture and becomes a conglomeration of individual specialized instruction. The larger picture and developer journey gives way to micro-instructions for different APIs, services, or other utilities that perform highly specific functions, focusing primarily on the _how_ and rarely the _why_. With large products (e.g., Fire TV, Google Maps, Cloud infrastructure), hundreds of often siloed teams work on different facets of the product, each contributing a specific set of specialized knowledge to a developer portal. What gets lost in the developer portal is the higher-level view, the sense of purpose and context, and other broader-level brush strokes.

To use an art metaphor, the information follows a *pointillism* technique, but instead of a clear picture that emerges at distance (as the thousand tiny points resolve into a recognizable image), you still only see a disjointed, hazy amorphous painting. It's as if you have brief technical notes that developers wrote down to trace through processes and implementations, but they neglected to explain why they're doing it, how the different tasks fit together, and what the ultimate goal is.

In this specialized world, technical writers can choose a new area of emphasis: clarifying the big picture. Already, writers fall into the category of generalists, or perhaps T-shaped generalists (ramping up expertise in a couple of areas while acting horizontally everywhere else). We specialize in language, publishing systems, and maybe information architecture, but these specialties are still usually grouped within generalist domains when compared to the technical depth required for software engineering. Besides these common areas of focus, technical writers can _specialize_ in understanding and communicating the big picture, in connecting the dots across the many specialized niches and technologies within a developer portal to help shape the larger developer story and journey. The technical writer can develop an eye for understanding the impacts across product landscapes and org charts in ways that dazzle even the most arrogant know-it-all engineers. You could make a case that the systems-thinking writer's focus is so extremely horizontal that it becomes a specialized skillset (or at least a unique one, especially in a workplace culture in which few actually read anything of length).

## Systems thinking

What knowledge domain corresponds to big picture thinking? One fit could be _systems thinking_. Systems thinking is a discipline that focuses on complexity, wicked problems, and other areas where the dynamics and interactions can't be reduced into independent parts to observe in isolation but rather can only be treated as a whole system. Systems thinking operates in the "why" and looks at properties and dynamics that emerge from the system as a whole.

<figure><img src="{{site.media}}/systems_thinking_net2.svg" alt="Systems thinking" /><figcaption>A system entails a complex set of interdependencies with co-partnerships, cyclical feedback loops, complex energy flows, and other pattern-based dynamics. Systems thinking doesn't attempt to isolate a single node and reduce the influences on it to understand it. Systems thinking starts with the assumption that the whole possesses properties not observed in isolated parts.</figcaption></figure>

As a discipline, systems thinking traces back to Aristotle's observation that "the whole is more than the sum of its parts." In _[Critical Systems Thinking and the Management of Complexity](https://www.amazon.com/Critical-Systems-Thinking-Management-Complexity/dp/1119118379)_, Michael C. Jackson provides a penetrating tour through the disciplines of science, philosophy, sociology, psychology, and other disciplines to trace the theoretical foundations of systems thinking. In a nutshell, systems thinking looks at the system rather than the parts, but it's much more than that. Whereas traditional science attempts to reduce complexity by isolating a component and then manipulating different variables to measure the isolated component, systems thinking doesn't operate reductively. Systems thinking postulates that properties and dynamics emerge in the whole that aren't observable in any individual part. It analyzes "those characteristics that arose at certain levels of organized complexity but did not exist at lower levels."

Jackson explains:

> ...the relevant, significant variables are hard to find and certainly hard to separate out. … Furthermore, even if the whole could be decomposed and the parts subject to further analysis, there is a danger of missing what is most essential about such complex systems. In an organism, for example, the relationships between the parts seem to be at least as important as the nature of relationships between the parts themselves. Indeed, new properties that are not present in the parts emerge from the way the parts are organized, for example, life itself.

In other words, the human organism provides the quintessential example of a system's emergence. You can isolate any part of a human, but it's only in the whole that you get life &mdash; the conscious, thinking human being.

Systems thinking doesn't confine itself solely to what is "falsifiable" (Karl Popper's scoping of science), nor to what can be quantified and measured to prove or disprove a hypothesis, but extends into domains where elements are tightly coupled with other elements in more abstract, unmeasurable scenarios.

Systems thinking looks at the ecosystem, the interdependencies that each part has on the others, and how the whole might engage in balance or correction through different functions. Systems thinking looks at the forces and principles that explain how systems operate. These forces might be social theories about power structures and classes, the instability of language (due to the arbitrary connection between signs and signifiers), the ways we construct meaning by supplying shape and order to events ("how the human mind structures reality"), the structure of information along certain patterns (and the gestalt shifts that occur when our paradigms change), and more. Jackson's book provides a firehose tour through almost every significant philosopher, scientist, and social theorist from Western culture to provide a foundation for systems thinking.  

## Systems thinking and developer portals

The systems thinking domain is interesting, but does it apply to tech comm? Perhaps the most relevant connection of systems thinking to tech comm is with developer portals. The collection of diverse, interdependent documents on a developer portal resembles the diverse, interdependent wildlife of an environmental ecosystem. Developer portals present a complex set of interdependencies, connection points, semantics, and other overlapping elements such that any new document added to a developer portal doesn't stand in isolation but makes an impact on the others.

For example, a new term introduced by one document (e.g., "element matching") might change the term's meaning in the context of other documents. A service requiring the installation of a new library version might invalidate the instructions of other documents (e.g., a Python 3 default that invalidates Python 2 script). A requirements document might introduce new policies that complicate existing procedures not enforcing those policies. A new API might present redundant functionality that forks the paths of developer journeys in perplexing ways. A new tool might displace and silently deprecate another tool, even though the displaced tool (developed and then abandoned by a now-defunct team) doesn't mention the new tool or carry a deprecation flag. A new API might pull in dependencies that conflict with dependencies in other APIs, and so on.

Within QA, *regression testing* attempts to test previous code against new code, checking whether the new addition breaks code that was previously tested and released. In the same way, a new document might require regression testing against existing documents to determine the impact. If specialized teams merely write new documentation and add it to the developer portal, without understanding and checking the larger documentation system landscape, it's the equivalent of adding a chapter to an existing novel with only a vague understanding of the characters and plot of the book.

How many engineering teams have read widely across the information ecosystem they're publishing to? Are they doing the equivalent of releasing an invasive species into an environment? Most of the time, specialized teams understand their narrow world only. To accrue depth, they sacrifice breadth. (Just as system thinkers sacrifice depth to accrue breadth.)

{% include ads.html %}

## What wicked problems are there with developer portals?

I mentioned that systems thinking often wrestles with wicked problems (meaning, complex problems with many interacting parts). Are wicked problems within the scope of tech comm? At some point in developer journeys, some hard-to-answer problems crop up. Partners get stuck and fail to make progress in implementations. Customer satisfaction scores drag below 20%. Partnerships expire and fail to renew. Efficiency slows as team onboarding seems to take months. Products undergo endless churn and fail to release. A sense of brand becomes fuzzy and hard to identify. Participants in documentation sync meetings slowly evaporate. Turnover rates among employees gradually increase. With each problem, there's no clear answer as to why.

Are these problems complex enough to justify systems thinking, or are they easily explained by identifying the troublesome parts, each of which can be isolated on its own and fixed? Where are the areas of complexity? Are there problems with no easy answers, with interdependent dynamics and feedback loops? 

It seems that there are a range of problems in developer portals &mdash; some easy, some complex. Either way, the application of systems thinking to developer portals might be worth exploring and experimenting with.

## The cost of systems thinking to productivity

Although I like systems thinking, it's a practice that comes at a cost for individual contributors. The broader, more extensive the information you consume, the more this bandwidth consumes your time (just as acquiring specialized knowledge consumes much time and bandwidth). Reading, watching, learning, and soaking in information that extends beyond your stewardship taxes your schedule and feels like an extracurricular activity. It's an extra effort (often unrewarded) to read through some new doc that another group &mdash; which you rarely interact with &mdash; has just published onto the developer portal. 

It's much easier to operate in separate spheres, for writers to hoe the land in their own fiefdoms, with complete autonomy over the terminology, styles, organization, and other documentation details, like codes of differing municipalities. You might even seem nosy and out of place to add comments on a pending changelist from this group (especially when you weren't added as a reviewer). You'll be met with unwelcome responses by taking issue with their terminology or conflicting style.

But neglecting this systems thinking domain, under the assumption that the new content won't affect yours, or thinking that silos in docs match the silos in implementation groups (and hence okay), doesn't respect the idea that each document is an interactive element in a holistic system. It rejects the idea that each document is part of an interdependent information landscape where meaning is influenced and shaped by each individual member.

The tech writer must find balance in systems thinking, careful not to cast too wide of a net such that his or her own productivity plummets. Most tech writers are still expected to create content (or edit and publish content, or produce some artifact, if only mission statements and strategy documents). Finding the right balance between systems thinking and individual contributor productivity is surely a judgment call.

But if the systems theory really applies, if the developer portal really is a system rather than a collection of independent, standalone documents, then by immersing yourself in this larger landscape, you will begin to see how the other documents influence the content you are producing, and in turn how your content influences the content others are producing. Consequently, you will feel some value in the broader information intake and analysis, and it won't be an extracurricular activity but rather an essential part of the information development process.

## Next post

Continue to the next post in this series: [Systems thinking: Limits to Growth, Complex Cause and Effect, and Shifting the Burden](/trends/systems-thinking-fifth-discipline.html).