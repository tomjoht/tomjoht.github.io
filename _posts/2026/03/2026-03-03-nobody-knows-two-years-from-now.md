---
title: "Nobody knows what it will look like in 2 years"
permalink: /blog/nobody-knows-two-years-from-now
date: 2026-03-03
categories:
- ai
- technical-writing
keywords: 
rebrandly: https://idbwrtng.com/nobody-knows-two-years-from-now
description: ""
published: false
image: 
---

* TOC
{:toc}

{% include ads.html %}

[Nobody knows what programming will look like in two years](https://leaddev.com/ai/nobody-knows-what-programming-will-look-like-in-two-years) by Charles Humble (published Feb 18, 2026 on LeadDev.com) is an honest, refreshing take from a programmer wrestling with the uncertainty of the future of programming. He looks at historical trends of new technologies (terminals) replacing old ones (punchcards) and grapples with what programming skills are still relevant. The article connects nicely with what I was exploring in [10 principles of the cyborg technical writer](/blog/10-principles-of-cyborg-technical-writer).


Humbles writes:

> With this latest shift, we all need to work out which of our current skills still have economic value if we want to stay in the field. However, as creator of Extreme Programming and pioneer of Test-Driven Development Kent Beck observed on stage at YOW! in Sydney in December, no-one knows yet. “Even getting to ‘it depends’ would be progress,” he told attendees, “because we don’t know what it depends on yet, and we all need to explore this space together in order to find out.”
>
> A rough shape is starting to emerge however.

This question -- "which of our current skills still have economic value" -- seems to pinpoint the question many people are trying to answer. Although Humble is a programmer and his article focuses on software development skills, many of the same ideas apply to tech comm.

I argued in [The Emerging Picture of a Changed Profession: Cyborg Technical Writers — Augmented, Not Replaced, by AI](/blog/cyborg-model-emerging-talk) that the skills that have the most economic value will be augmentation skills. Do you know how to augment your capabilities through AI? And in the [10 principles of the cyborg technical writer](/blog/10-principles-of-cyborg-technical-writer), I then went into what those augmentation skills might look like.

Humble says code development can roughly be divided into several phases: exploration, expansion, and extraction. In a nutshell, exploration involves figuring out what to build, expansion is building it, and extraction is becoming profitable. With this context, Humble says AI is good at the exploration phase (quickly building something), but problematic in the other phases:

> However while AI tools can tackle very complex coding problems, it is less effective at the expansion and extraction phases. It makes too many mistakes, and those mistakes can be subtle and hard to detect.
> 
> At its core, this is a validation problem. A challenge however is that the validation can’t be done by other humans reading AI-generated code any more than it can be done by all your tests turning green.
> 
> I expect to see a lot of work going into trying to make automated validation tools that work well. Formal methods might be a way to achieve this, but I think it is more likely we’ll build on ideas around observability and testing in production that have become mainstream over the last decade.

The point about verification connects with my my point "7. Apply verification strategies" item in my 10 principles list. "AI generates content almost instantly, making verification the slowdown point. Build a system to catch mistakes."

However, Humble argues that verification doesn't just mean a human reads the output and catches mistakes. Instead, a human builds a verification systems to catch the erorrs, using AI to look for problems with AI.

As Humble wrestles with what skills are relevant, he centers on about 6 core skills:

> However, many of the skills that become more relevant as you move from exploration to expansion matter as much as ever. These skills will likely increase in value if fewer people who grow up with augmented coding have them.:
> 
> * **Knowing what a computer actually does.** If you don’t understand memory, I/O, concurrency, or why some operations are cheap and others aren’t, you can’t tell when the AI has generated something that will fall over in production.
> * **Reading code critically.** Manual verification isn’t enough, but you do need to spot when generated code is subtly wrong. Does it handle edge cases? Will it perform badly at scale? Does it introduce security holes? Is it using a deprecated library?
> * **Testing and validation.** Knowing what tests to write, what cases matter, and how to verify behaviour. AI can generate tests, but it can’t tell you if they’re the right tests or if they actually cover the risky parts.
> * **Domain knowledge.** Understanding the actual problem you’re solving. AI doesn’t know your business rules, your users’ workflows, or why certain constraints exist. It will confidently generate code that does the wrong thing correctly.
> * **System design and architecture.** AI is decent at implementing a function you describe. It’s terrible at figuring out how the pieces should fit together, what the boundaries between services should be. It also isn’t good at designing something that won’t become unmaintainable in six months. The latter may be less important if code becomes ephemeral, but I think we’re quite some way off that.
> * **Debugging and diagnosis.** AI can certainly be useful as a debugging tool, but I suspect only in tandem with other techniques and knowledge. You’ll still need to know how to read stack traces, use a debugger, check logs, and reason about what went wrong.

Are these skills also the core skills that technical writers will also need? I'll add my thoughts on each of these points.

* **Knowing what a computer actually does.** Yes, knowing how something works is still important. We can't just be machine operators, pulling levers and accepting the outcomes. If you're writing documentation for systems that you fundamentally don't understand, it will be difficult to make decisions and assessments and judgments about the output you're getting from AI tools. 
* **Reading code critically.** I find myself making more and more edits to engineering source files. At Google, this means making changes comments in proto files, for the most part. Although I don't usually provide code examples in docs (if we need them, I ask engineers to write them), I do need knowledge about proto code (and sometimes Java for Java APIs) to understand comment structure, syntax, and semantics when I'm making updates to the source files. From those comments in the source files, reference docs are generated. Those reference docs constitute the core of my API documentation, so of course I want to get my hands dirty there.
* **Testing and validation.** I already addressed this point earlier, and noted that it aligns with my "7. Apply verification strategies" in my 10 principles. I routinely test my docs using multiple methods depending on the scenario. 
* **Domain knowledge.** This point aligns nicely with my "5. Develop domain expertise" in my 10 principles. The points connect nicely with what I've previously written in [Why attitudes and experiences differ so much with regards to AI among technical writers](https://idratherbewriting.com/blog/plurality-of-ai-attitudes-experiences#domain-expertise) and elsewhere. Basically, you need domain knowledge so you can iterate with AI in a collaborative, back-and-forth conversation. If you don't know the domain, you won't be able to engage in the conversation. I also wrote about this in [Two strategies to succeed when AI seems to be eroding jobs around you](/blog/strategies-to-succeed-in-context-of-ai). In that post, I gave even more weight to "Subject matter expertise," noting that "Subject matter expertise gives you the ability to properly vet the accuracy of an AI’s output. But more than just vetting, subject matter expertise, both for the products you document and the domain you’re operating in, allows you to engage in an iterative dialogue with AI. You can push back on weak areas, ask clarifying questions, and co-create the content in a back-and-forth exchange, much like a cyborg-like integration between writer and tool."
* **System design and architecture.** The corallary to this point would be systems thinking, which refers to the ability to see the whole system rather than just the single piece you're working on. I've written in the past about systems thinking -- see [Systems thinking: Limits to Growth, Complex Cause and Effect, and Shifting the Burden](/trends/systems-thinking-fifth-discipline.html). For sure, systems thinking is one of those overlooked skills that tech writers often bring to the table. We understand the big picture. I make updates for about 20 different APIs in my role, for example. Most engineers work on one or two APIs (albeit at a much, much deeper level). It's helpful to stretch our perspective across our doc portals and really understand how the different products connect and interact. Understanding this landscape helps us shape the documentation we're writing.
* **Debugging and diagnosis.** Debugging and diagnosis seem like problem-solving skills, which could play out in various tech comm scenarios. For example, I regularly debug and diagnose issues related to reference doc generation, as I use a build management tool that's pretty engineering-heavy and custom built. But debugging and diagnosis also play a role in content problems. Why are users getting stuck on a particular part of the workflow? Why is this page receiving more attention than others? What's specifically wrong with the content on this page (when it just doesn't seem/feel right)?

Overall, I'm pleased to see so many overlapping points between my [10 principles for the cyborg tech writer](/blog/10-principles-of-cyborg-technical-writer) and this excellent article by Humble on [Nobody knows what programming will look like in two years](https://leaddev.com/ai/nobody-knows-what-programming-will-look-like-in-two-years). One area I haven't covered is the overall outlook and the radical uncertainty expressed in his title: *Nobody knows what programming will look like in two years.*

Does anyone know what technical writing will look like in two years? 

busier than ever
almost no automated workflows
tech saturation in world, including military
job growth not taking off, but not actively declining
software eroding at the idea of vibecoding replacements
maybe this: are you arriving to work and having less and less to do?

my experiment to get to bug zero. go to it, and a few days later back up to 30 bugs.

reading [THE 2028 GLOBAL INTELLIGENCE CRISIS](https://www.citriniresearch.com/p/2028gic)
I wondered, so I sell all my stocks, pay off house, get ready for kids to return, learn a trade skill....