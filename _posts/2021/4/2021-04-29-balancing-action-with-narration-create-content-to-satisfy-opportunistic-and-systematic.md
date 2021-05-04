---
title: "Balancing action with narration: Creating content that satisfies both opportunistic and systematic learning modes"
permalink: /blog/balancing-action-with-narration-create-content-to-satisfy-opportunistic-and-systematic/
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.site/balancing-action-with-conceptual-undersanding
description: "This is an abstract for a presentation that I'm thinking about creating. In a nutshell, the presentation focuses on finding the right balance between action-oriented task writing and big picture narrative product overviews &mdash; both of which seem to be opposing content types in technical communication."
published: false
---

Ideas such as minimalism (as defined by John Carroll, Hans Van Der Meij, and others) as well as [research about opportunistic learning behaviors](/learnapidoc/docapiscode_research_on_documenting_code.html) encourage much more action-oriented approaches to tech writing, with getting started tutorials, interactive features like Swagger UI, code you can run directly on the For decades now, researchers have been reiterating the belief that users are "reading to do" and are anxious to get going with tasks and other hands-on exploration. Readers don't want lengthy explanations but rather specific steps to accomplish a task at hand.

At the same time, documentation often fails to tell the who/what/when/why about the product. Anemic overview pages provide little detail about what the product even is before jumping directly into how to configure it and install it. I don't know how many GitHub product landing pages I've read that give almost no indication about what the project code actually does beyond a one-line cursory note. Many of the problems with documentation involve the absence of a larger story around the product, the connecting pieces that tie all the components together into some kind of cohesive arc. Overview pages are often missing or substituted by a list of articles in the section rather than actual overviews. Documentation that skips these conceptual details can also fail the user.

How do you balance this tension between action (with task-based docs) and narration (with concept-based docs)? Are these two opposing sides of the tech writing spectrum? When do you focus on *reading to do* versus *reading to understand*?

In general, best practices for documentation would mean accounting for both mindsets and orientations. For the *reading to do* mindset, you  provide a [getting started tutorial](/learnapidoc/docapis_doc_getting_started_section.html) that gets the reader going in an immediate, hands-on way with the product. For the *reading to understand* mindset, your provide a [product overview](/learnapidoc/docapis_doc_overview.html) that tells the product's story. My API documentation course goes in depth about how to create each of these deliverables.

What my course doesn't cover is how to balance between the two. Some content models completely separate the task from the concept (especially if they're following a DITA content model). This approach encourages you to dedicate the task to documentation steps, and to put the concepts into a conceptual overview document. It's as if readers approach docs with either a reading-to-do mindset or a reading-to-understand mindset, but never both at the same time.

Another approach in docs is to provide more of a tutorial that blends the two. If a user learns by doing, you could sprinkle the concepts directly into the tutorial in a sidebaresque way, with little instructive notes that expand and teach the user about what's going on (rather than just leading the user through steps to a result). Many of these sidebar notes can be collapsed into expandable sections. This way you can keep the concepts next to the relevant site sections, if desired.

This approach seems like a good idea but suffers from fragmentation of the concepts. If your conceptual explanations are spread out across a getting-started tutorial, you probably don't want to repeat them in a conceptual overview that doesn't include the tutorial. You could provide brief summaries in the getting started tutorial that link to the product overview, but this still seems like a lot or repetition.

In general, the product overview and the getting started tutorial should work together to help instruct the user in a way that accommodates both the opportunitistic (read to do, or try first) learner and the systematic (read to understand, or read-first) learner. The two can link to each other, reference each other, and support opportunities for each behavior to springboard into the other.

Although people like to pigeonhole learning types into these two different mindsets (opportunistic and systematic), just like with left-brain vs right-brain, or creative vs mathematical, or intuitive vs. logical thinkers, introverts and extroverts, etc., I think the truth is that we switch back and forth between these modes for different scenarios and needs in a much more blended way. As such, blending the product overview with the getting started tutorial might be the best approach.
