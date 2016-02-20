---
title: What is the ideal tool for developer documentation environments?
categories:
- api-doc
keywords: 
summary: ""
published: false
---

Lately I've been more on the fence about the right tools for developer documentation environments. If you've been following my adventures with Jekyll, you've seen me kind of move through the typical stages anyone moves through with tools: 

1. The honeymoon stage
2. They "good but has challenges" stage
3. A sense of semi-disillusionment
4. A more balanced view

(I'm sure there's a more official depiction of these phases, but I don't need to go there.)

Why the good but challenges and disillusionment stages? I mentioned them before, but a few shortcomings of the static site generator approach are as follows:

* No validity checking for broken links
* No automatic updates for cross reference titles and links
* No ability to plug into larger CCMS platforms
* No ability to lock down code -- it's easy to tweak a few things and break the build
* No dynamic personalization of content
* No native ability to publish full-length PDFs
* No translation export and import capability
* No ability to add metadata and workflows to content for more formal doc management, and so on

These are all the qualities you might expect to find in a good content management system for documentation, which might cost the same price as your liver on the black market.

However, tonight as I attended a Write the Docs meetup in Redwood City, I realized some things. (It's not that I haven't said them before on this blog; it's that I forgot, I guess.) If you're writing developer doc and you want to get developers involved in contributing, reviewing, and interacting with the doc, you need to use developer tools. 

One commenter (who works for Microsoft's Azure) noted that they write their docs in Markdown and push them out to various Github repos. In these repos, lots of developers from the community frequently log issues, make comments, and contribute code themselves. That kind of energy and momentum around the docs wouldn't happen if the docs weren't embedded in developer environments.

If you're just following the traditional model where technical writers write and gate-keep everything, then this may not be an important point. But if you want your docs to grow beyond the domain of the tech writers and develop a life of their own in a developer community, it's not going to happen if you keep your docks under lock and key in writers' tools and CCMS systems. 

This is the ideal movement of a developer documentation environment: to build a community of contributors interacting closely with your doc. The documentation and code should not be so far separated, and the more you can intertwine them, the better off you'll be with getting feedback, code samples, more innovative ideas and other input from both internal and external developers.

As weak as some of the developer-doc tools are out there for handling robust requirements, you're probably better off with the developer doc route. At some point, people are going to have to let go of some of the doc requirements that force writers to choose some of these more traditional models. No more PDF, no more translation into 3 languages, no more branching of the doc into a dozen different outputs for every distinct scenario, no standardizing with XML models that force all content into a specific, standard structure, and so on.

At the end of the day, all tools suck to some degree or another (to paraphrase Eliot Kimber). If they don't, you probably have somewhat easy requirements to fulfill. It's not a matter of finding the dream tool that handles everything beautifully and gracefully. Basically, you pick the set of constraints you can live with. What shortcomings are you willing to live with? What advantages are worth the tradeoffs you'll inevitably need to make?

With the traditional doc writer model, such as writing in Framemaker or storing content in DITA in a CCMS, here are some things you might have to give up:

* Developers interacting with code samples in your content in a more immediate and immersive way.
* Community members providing more feedback and potentially contributions.
* Integrating more custom code (often JavaScript) to handle more sophisticated doc scenarios.
* Internal developers contributing in an environment that they feel comfortable in, and which aligns with the rest of their tooling and workflow.

It's almost an axiom that developers are allergic to XML, so any XML-based approach is going to be met with a sense of outsiderness and distance, in the same way that technical writers might feel estranged if asked to edit doc using specific tags in the programming source code and auto-generating the site through a code parser. 

The difference between the two scenarios is that if developers don't want to jump into the same tools, then they can simply ignore you. But tech writers can't ignore developers. You'll have to find a way to involve them to review, edit, and contribute code in the doc.

Now, I'm not saying that I have, by any means, mastered the building of environments and cultures where developer contribute and interact heartily. But partly it's because I have rarely lowered the bar enough for developers to feel comfortable in jumping into the platform. To really enable developers to contribute, you have to (ironically) keep things simple and basic enough for developers to jump in. 

(It's ironic that some of the most brilliant and technical people cannot work in anything more sophisticated than Markdown, but I guess they only have so much capacity for extraneous detail in their already overloaded brains.) 

As soon as you build that Rube Goldberg machine that does PDF output into 9 different versions, drawing upon complex variables and conditional filtering and other sophisticated transforms behind the scenes, you've lowered the barrier to entry for devs to contribute. At the end of the day your complex system is about the same as the CCMS with high walls and a moat they cannot cross or enter.

In sum, my conclusion are as follows:

* To get developers to contribute, use the tools developers are comfortable using.
* To allow developers to contribute, keep your doc system simple enough for them to understand quickly and easily.
* To encourage community contribution, store doc into a repository not too separated from the code.
* Emphasize Markdown formats that don't require knowledge of XML.
* Lower your requirements to maintain the simplicity. Drop PDF. Drop the multi-channel output and sophisticated single sourcing through conditional filters and includes.