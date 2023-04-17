---
title: "Beyond 'parts' documentation: Moving towards systems thinking with developer portals"
permalink: /blog/dev-portals-and-systems-thinking/
categories:
- technical-writing
- podcasts
keywords: big picture, systems view
rebrandly: https://idbwrtng.com/
series: "Trends to follow or forget"
jtype: notes_fizzled_trends
description: "In this post, I continue the series on systems thinking and tech comm, describing my experience in writing a documentation project plan for a large project involving multiple APIs. I argue that we should look at how APIs interact as a network rather than just documenting each API as a standalone part."
---

## Series recap 

If you’re just joining this series, here’s a brief recap. After an exhaustive review of trends that I've followed and abandoned in my career, I read Kevin Kelly’s _What Technology Wants_ and became persuaded that [ever-increasing complexity, specialization, and diversity](/trends/embracing-diversity-pluralism-fragmentation.html) will lead to a loss of high-level systems views. In other words, people have their heads down building widgets but no one focuses on the whole. If tech writers hope to thrive in a hyper-specialized world, we have to focus on elucidating the big picture, on connecting the dots across multiple products, services, and more as a technology ecosystem. In short, we have to move into systems documentation, not just parts documentation. 

This big-picture domain is called systems thinking, and its central tenet is that when you view the whole, the whole manifests properties not visible in the individual parts. With a systems thinking perspective, you look at how all the parts in a system interact, the controls that shape the system’s dynamics, the inflows and outflows into the system, the relationships between the components and how they influence each other. In short, you look at the complex web of interactions. As such, systems thinking often runs parallel to complex systems and analysis.

## A system-level project

To explore this topic, I try to find books relevant to the subject and use them as conversational springboards. I was recently reading one of the classics in the genre: _The Systems View of Life: A Unifying Vision,_ by Fritjof Capra and Pier Luigi Luisi. I'll use some quotes from their book in this post.

By the way, most of the books in the systems thinking genre don’t focus on tech comm scenarios (content strategy is the closest cousin). But I think tech comm, especially developer portals, with their increasing number of APIs and SDKs, might apply in interesting ways for systems view thinking. This is the hunch of my entire series, actually. Dev portals are ripe territory for systems view thinking, and when tech writers engage in systems thinking, our value skyrockets.

I recently started working on a documentation project plan for a project that involves multiple teams and crosses into several parts of the organization. There’s a whole toolkit of APIs and SDKs planned in the project, covering a variety of scenarios for developers. 

I decided to start this project by drafting a documentation project plan. I laid out the publishing strategy and challenges, the various workstreams and deliverables, and more. Besides the project overview document, written by program managers, this documentation project plan is one of the few documents that tries to get a handle on the high-level. I wanted to understand not only all the various workstreams alone (and each of their documentation needs) but how they fit and flow together into a coherent river. As such, I started meeting with technical leads to find out more details about their workstream and deliverables.

The documentation project plan is where many of these individual workstreams (like subprojects) come together. It’s where complexity emerges. Capra and Luisi write:

> ...the major problems of our time&mdash;energy, the environment, climate change, food security, financial security&mdash;cannot be understood in isolation. They are systematic problems, which means that they are all interconnected and interdependent (xi). 

I wanted to understand the project in the same way: how all the parts interconnect and depend on each other. This is no doubt where more of the complexity emerges and where there’s more opportunity to provide value.

Capra and Luisi start their book by explaining the context for more holistic thinking. They say rationalist/enlightenment thinkers (Descartes, Newton, Bacon, etc.) started to perceive the world as a machine, with individual parts operating according to scientific laws. These thinkers examined the parts and tried to mathematically model them.

But here’s the problem, Capra and Luisi say. When those parts are combined into a whole, new properties emerge that aren’t observable in any individual part. It’s like when all my family sits down at the dinner table. Individually, alone, each person is mellow and pleasant to talk to.

<figure><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/alltogetheratdinner.png" alt="Chatting 1:1" /><figcaption>Chatting with any single family member alone is pleasant and easy.</figcaption></figure>

When you combine them into a group at the dinner table, however, the conversations are loud and chaotic. There’s an energy they all feed off of, and it’s exhausting. Most of the time, I can’t get a word in.

<figure><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/loudcaucophonousdinner.png" alt="Chatting many:many" /><figcaption>Chatting as a whole at the dinner table brings a new energy and dynamic to everyone. Where was this energy previously? It's not visible in any single person.</figcaption></figure>

Capra and Luisi say that instead of reducing components to their individual parts, we should instead observe how the parts influence each other. We should also observe the properties that surface in the whole, and what patterns emerge in the network of interactions and dynamics. Capra and Luisi explain:

> The basic tension is one between the parts and the whole. The emphasis on the parts has been called mechanistic, reductionist, or atomistic; the emphasis on the whole, holistic, organismic, or ecological. In twentieth-century science, the holistic perspective has become known as "systemic" and the way of thinking it implies as "systems thinking"... (4)

In other words, instead of asking for a list of parts, we should ask about the shape of the network. How does each node in a network interact with other nodes? How do the nodes influence and interrelate with each other? Not pieces. *A system.*

While talking with one technical program manager, I asked how a specific API they were building was different from a similarly named API in another workstream. Both workstreams included a gizmo deliverable. I wanted to know how the gizmos differed.

Admittedly, engineers are faced with an enormous complexity of services, languages, and code frameworks. To expect an engineer to both understand the larger picture of how all the pieces fit and flow together, and then to articulate them in ways tech writers can understand, might be a bit much. But this is exactly the type of knowledge I sought.

I asked whether the API had any dependencies on other APIs. If each partner used each API in isolation, they wouldn’t run into any problems. But what happens when you call similar data from multiple APIs? Their responses described more of the systems interactions I was looking for. I felt like I was finally getting somewhere, moving beyond an abstract idea of systems thinking toward tangible information.

{% include ads.html %}

## A simple demonstration

To demonstrate the type of systems information I was looking for, do this simple experiment. Hold up both of your hands and stretch your fingers out. This is the reductionist view. 

<figure><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/fingersoutstretched.jpg" alt="Parts view (reductionist)" /><figcaption>Parts view (reductionist)</figcaption></figure>

Now interlock your fingers between your two hands. Feel the warmth and pressure of your fingers interlocking. This warmth and pressure isn't present when each finger is stretched out in isolation. This is the systems view.

<figure><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/fingersinterlocked.jpg" alt="Systems view (more complex)" /><figcaption>Systems view (more complex)</figcaption></figure>

Essentially, I wanted to understand the figurative warmth and pressure of interlocked APIs. Capra and Luisi explain that with Galileo, there was a shift in worldview to a belief that the universe was a machine, consisting of discrete parts rather than a fluid organic whole. That you only study what you can measure. Descartes accelerated this "shift from the organic to the mechanistic worldview." Then later, organismic biologists in the early twentieth century started to look at the natural sciences holistically, such as understanding ecosystems rather than individual inhabitants. 

> The material universe, including living organisms, was a machine for him [Descartes], which could in principle be understood completely by analyzing it in terms of its smallest parts. [The idea of] the world as a perfect machine governed by exact mathematical laws&mdash;was completed triumphantly by Isaac Newton .... (8)
> 
> [In the] early twentieth century, organismic biologists ... [developed] ... a new way of thinking&mdash;"systems thinking"&mdash;in terms of connectedness, relationships, and context. According to the systems view, an organism, or living system, is an integrated whole whose essential properties cannot be reduced to those of its parts. They arise from the interactions and relationships between the parts. (10)

Properties not reducible to parts is the entire rationale for systems thinking. It’s like my dinner table analogy. Alone, each child is polite and easy to talk to. Together, they are a loud, chaotic riot. When you examine the whole, properties emerge that aren’t visible in isolation. 

What, then, might be some of these emerging properties that are only visible in the network of APIs on a developer portal? If engineers work on APIs in isolation, will they understand what new properties emerge in the network effect? Who will? QA?

I learned about other project details involving schemas and conversions to other schemas. What if the schemas didn't line up? What if the terms and definitions in one schema conflicted with the terms and definitions in another? Capra and Luisi continue:

> ... the world-machine became the dominant metaphor of the modern era until the late twentieth century when it began to be replaced by the metaphor of the network. (6)

How could I document the *network* of APIs rather than each individual API? If each workstream operated semi-independently, how could I tap into the network perspective? It was clear that this perspective wasn't something I could easily gather by talking only to workstream leads. Maybe it was something we would discover only as the implementation progressed.

## Developer portals vs. individual APIs

I’ve always been intrigued by developer portals more than individual APIs. Developer portals, with their many co-located APIs and tools, provide a _system_ of information, which lead to more system-level flows and interactions than might be apparent in a standalone API. In tackling this new project, I wanted to remove myself from the nitty-gritty details of each API and focus on the larger view. What were the patterns through these APIs? Were we surfacing the same data in different APIs? If you were to draw lines between the APIs, what would those lines look like, and why? 

To use another analogy: Which APIs were the main actors and which were the supporting roles? What did that play look like with all actors on stage? When did each actor enter the stage and why? During which acts of the play? Who was the villain? Did it make sense to approach developer portal documentation like writing a play, with each API as an individual actor?

<figure><a href=""><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/actorsonstagesystemsthinking.jpg" alt="APIs as actors on a stage" /></a><figcaption>Thinkin of APIs as actors on a stage</figcaption></figure>

Of course, I was not yet at the playwriting stage. I was still drafting a documentation project plan. Only by understanding the larger picture, I argued, could we formulate a publishing plan that made sense. By publishing plan, I mean details like where to publish the material, what conventions to follow, how to brand the content, how to arrange the information flows, and more. Only by understanding the plot of the play could I construct a stage set for it.

And I couldn’t yet arrive at that network-level thinking, of pattern flows and interdependence, until I understood each part. So although the starting point was atomistic, the end goal was holistic.

During my brainstorming, one thought emerged. Rather than fragment the new APIs into yet another siloed site, I wanted to integrate them into an existing site to confront the interactions with other APIs head-on. Hosting them on a different site would hide away that context.

## Conclusion

Admittedly, the scale and complexity of my goals were ambitious. To achieve my ecosystem-wide aims, I realized I’d need to rely on my team members to document more of the nitty-gritty API details. For example, have them dig into each field definition. 

This pivot felt a little uncomfortable to me because I’m accustomed to jumping in and getting knee-deep into everything, and because doc requests seemed to be about individual APIs only. The high-level view was my own grassroots effort. If I wanted to capture the high-level perspective, I would only be able to dip my toes in the water, having a superficial understanding of each part but with a much broader scope. Would that broader understanding be valuable? And how could I produce concrete deliverables so that people could feel tangible value in this high-level, broad documentation?