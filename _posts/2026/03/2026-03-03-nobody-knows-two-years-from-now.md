---
title: "Nobody knows what it will look like in 2 years"
permalink: /blog/nobody-knows-two-years-from-now
date: 2026-03-03
categories:
- ai
- technical-writing
keywords: 
rebrandly: https://idbwrtng.com/nobody-knows-two-years-from-now
description: '<a href="https://leaddev.com/ai/nobody-knows-what-programming-will-look-like-in-two-years">Nobody knows what programming will look like in two years</a> by Charles Humble (published Feb 18, 2026, on LeadDev.com) is an honest, refreshing take from a programmer wrestling with the uncertainty of the future of programming. He looks at historical trends of new technologies (terminals) replacing old ones (punchcards) and grapples with what programming skills are still relevant. The article connects nicely with what I was exploring in <a href="/blog/10-principles-of-cyborg-technical-writer">10 principles of the cyborg technical writer</a>.'
image: nobody-knows-the-future-article-thumb.png
linkedin: https://www.linkedin.com/posts/tomjoht_nobody-knows-what-it-will-look-like-in-2-activity-7434996176807976960-dFBg
---

* TOC
{:toc}

<figure><a href="https://leaddev.com/ai/nobody-knows-what-programming-will-look-like-in-two-years"><img src="{{site.media}}/nobody-knows-the-future-article.png" alt="Nobody knows what programming will look like in two years" /></a><figcaption>Nobody knows what programming will look like in two years</figcaption></figure>

Humble writes:

> With this latest shift, we all need to work out which of our current skills still have economic value if we want to stay in the field. However, as creator of Extreme Programming and pioneer of Test-Driven Development Kent Beck observed on stage at YOW! in Sydney in December, no-one knows yet. “Even getting to ‘it depends’ would be progress,” he told attendees, “because we don’t know what it depends on yet, and we all need to explore this space together in order to find out.”
>
> A rough shape is starting to emerge however.

This question -- "which of our current skills still have economic value" -- pinpoints the exact question many people are trying to answer. Although Humble is a programmer and his article focuses on software development skills, many of the same ideas apply to tech comm. For comparison, I'm looking at Humble's article in the context of my posts [The Emerging Picture of a Changed Profession: Cyborg Technical Writers — Augmented, Not Replaced, by AI](/blog/cyborg-model-emerging-talk) and [10 principles of the cyborg technical writer](/blog/10-principles-of-cyborg-technical-writer).

Humble references Kent Beck's 3x model, which divides product development into three phases: exploration (searching for a viable product), expansion (scaling and removing bottlenecks to growth), and extraction (sustaining profitable growth). With this context, Humble says AI is good at the exploration phase (quickly building something), but problematic in the other phases, such as validation:

> However while AI tools can tackle very complex coding problems, it is less effective at the expansion and extraction phases. It makes too many mistakes, and those mistakes can be subtle and hard to detect.
> 
> At its core, this is a validation problem. A challenge however is that the validation can’t be done by other humans reading AI-generated code any more than it can be done by all your tests turning green.
> 
> I expect to see a lot of work going into trying to make automated validation tools that work well. Formal methods might be a way to achieve this, but I think it is more likely we’ll build on ideas around observability and testing in production that have become mainstream over the last decade.

The point about verification connects with my point "7. Apply verification strategies" in my 10 principles list, where I wrote: "AI generates content almost instantly, making verification the slowdown point. Build a system to catch mistakes."

However, Humble argues that verification doesn't just mean a human reads the output and catches mistakes. Instead, a human builds verification systems to catch the errors, using AI to look for problems with AI. I think that's smart.

As Humble wrestles with what skills are relevant, he centers on about 6 core skills:

> ... many of the skills that become more relevant as you move from exploration to expansion matter as much as ever. These skills will likely increase in value if fewer people who grow up with augmented coding have them:
> 
> * **Knowing what a computer actually does.** If you don’t understand memory, I/O, concurrency, or why some operations are cheap and others aren’t, you can’t tell when the AI has generated something that will fall over in production.
> * **Reading code critically.** Manual verification isn’t enough, but you do need to spot when generated code is subtly wrong. Does it handle edge cases? Will it perform badly at scale? Does it introduce security holes? Is it using a deprecated library?
> * **Testing and validation.** Knowing what tests to write, what cases matter, and how to verify behaviour. AI can generate tests, but it can’t tell you if they’re the right tests or if they actually cover the risky parts.
> * **Domain knowledge.** Understanding the actual problem you’re solving. AI doesn’t know your business rules, your users’ workflows, or why certain constraints exist. It will confidently generate code that does the wrong thing correctly.
> * **System design and architecture.** AI is decent at implementing a function you describe. It’s terrible at figuring out how the pieces should fit together, what the boundaries between services should be. It also isn’t good at designing something that won’t become unmaintainable in six months. The latter may be less important if code becomes ephemeral, but I think we’re quite some way off that.
> * **Debugging and diagnosis.** AI can certainly be useful as a debugging tool, but I suspect only in tandem with other techniques and knowledge. You’ll still need to know how to read stack traces, use a debugger, check logs, and reason about what went wrong.

{% include ads.html %}

Are these also the core skills that technical writers need? I'll add my thoughts on each of these points.

* **Knowing what a computer actually does.** Yes, knowing how something works is still important. We can't just be machine operators, pulling levers and accepting the outcomes. If you're writing documentation for systems that you fundamentally don't understand, it will be difficult to make decisions and assessments and judgments about the output you're getting from AI tools. This isn't necessarily a new skill to learn; it's always been assumed that tech writers have a working knowledge of the systems they're documenting.
* **Reading code critically.** I find myself making more and more edits to engineering source files. For the APIs I work on, this means making changes to comments in proto and Java files. Although I don't usually provide code examples in docs (if we need them, engineers write them), I do need knowledge about proto and Java code to understand structure, syntax, and semantics when I'm making updates to source file comments. From those comments in the source files, reference docs are generated. Those reference docs constitute the core of my API documentation, so of course I want to make sure to get my hands dirty there.
* **Testing and validation.** I already addressed this point earlier, and noted that it aligns with my "7. Apply verification strategies" in my 10 principles. I routinely test my docs using multiple methods depending on the scenario. My favorite verification technique is to check content against the API reference material (another reason for getting involved in source files).
* **Domain knowledge.** This point aligns nicely with my "5. Develop domain expertise" in my 10 principles. Having domain knowledge connects nicely with what I've previously written in [Why attitudes and experiences differ so much with regards to AI among technical writers](https://idratherbewriting.com/blog/plurality-of-ai-attitudes-experiences#domain-expertise) and elsewhere. Basically, you need domain knowledge so you can iterate with AI in a collaborative, back-and-forth conversation. If you don't know the domain, you won't be able to engage in the conversation. I also wrote about this in [Two strategies to succeed when AI seems to be eroding jobs around you](/blog/strategies-to-succeed-in-context-of-ai). In that post, I gave even more weight to "Subject matter expertise," noting that "subject matter expertise, both for the products you document and the domain you’re operating in, allows you to engage in an iterative dialogue with AI. You can push back on weak areas, ask clarifying questions, and co-create the content in a back-and-forth exchange, much like a cyborg-like integration between writer and tool."
* **System design and architecture.** The corollary to this point would be systems thinking, which refers to the ability to see the whole system rather than just the single piece you're working on. I've written a little about systems thinking in the past -- see [Systems thinking: Limits to Growth, Complex Cause and Effect, and Shifting the Burden](/trends/systems-thinking-fifth-discipline.html). For sure, systems thinking is one of those overlooked skills that tech writers often bring to the table. We understand the big picture. I make updates for at least 20 different APIs in my role, for example. Most engineers work on one or two APIs (albeit at a much, much deeper level). It's helpful to stretch our perspective across our doc portals and really understand how the different products connect and interact cross-organizationally. Understanding this landscape helps us shape the documentation we're writing. The more you know, the more you can iterate with AI, use better judgment about AI's output, and provide the right context to your AI sessions.
* **Debugging and diagnosis.** Debugging and diagnosis seem like problem-solving skills, which could play out in various tech comm scenarios. For example, I regularly debug and diagnose issues related to reference doc generation, as I use a build management tool that's engineering-heavy and custom built. But debugging and diagnosis also play a role in content problems. Why are users getting stuck on a particular part of the workflow? Why is this page receiving more attention than others? What's specifically wrong with the content on this page (when it just doesn't seem/feel right)?

Overall, I'm pleased to see so many overlapping points between this article by Humble on [Nobody knows what programming will look like in two years](https://leaddev.com/ai/nobody-knows-what-programming-will-look-like-in-two-years) and my [10 principles for the cyborg tech writer](/blog/10-principles-of-cyborg-technical-writer). One area I haven't commented on is Humble's overall outlook and the radical uncertainty expressed in his title: *Nobody knows what programming will look like in two years.*

Does anyone know what technical writing will look like in two years?

It's easy to shrug our shoulders here, or to dismiss hot takes because they're too speculative. Some predictions are alarming — after reading [THE 2028 GLOBAL INTELLIGENCE CRISIS](https://www.citriniresearch.com/p/2028gic), I briefly found myself wondering how to prepare for imminent economic and social collapse. (Pay off the house now? Move abroad? Get ready for kids to return home?) But then I look at what's actually happening around me, and the picture is less dramatic.

A recent conversation with a colleague stands out in my mind. We were giving our own hot takes on AI and I said I think it will play out like autonomous driving -- always two years away but never quite something realized. My colleague said despite the talk about AI replacing humans, she's "busier than ever." That phrase has stuck with me. I agree -- I'm busier than ever too. Both of us use AI all the time. In fact, we're part of our organization's AI education group for tech writers. 

I've used AI to accelerate all my work, and yet, I'm still busy as ever. This is what I wrote about in [Changing the AI narrative from liberation to acceleration](/blog/ai-narrative-from-liberation-to-acceleration). This notion that AI will do our work while we focus on other things ... uh, yeah, that big chunk of time where Gemini does my work for me while I have time to daydream about system design and content architecture — that chunk of time never seems to materialize on my calendar. My days (which are often meetingless, actually) are filled with an endless queue of doc requests, needed updates, release notes, new features to document, and more. 

So maybe as we peer into the future, signs of how it will play out are already present. It's a bit like watching children grow up — the personality traits visible in the toddler years turn out to be the same ones you see in the adult. Five years from now, we might look back and say, why didn't we see what was so clearly right there?

What is the pattern of the present? Acceleration, being busier than ever, all while using AI more than ever. If I instead noticed the opposite, a kind of winding down of my own activity and involvement while AI gradually takes on more and more of the activity of my day, that would tell a different story. The paradox is that AI *is* taking on more activity, but it's pulling me along with it. I'm an active collaborator, shaping conversations, providing context, evaluating outputs, running verification, deciding the approaches, and so on. AI augments and accelerates our work rather than replacing it. We have the most powerful tools available to us, more so than at any time previously. Is it any wonder that we're now building skyscrapers instead of doghouses, and that those skyscrapers require a lot of work?
