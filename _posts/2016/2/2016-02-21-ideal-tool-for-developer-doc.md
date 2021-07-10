---
title: What is the ideal tool for developer documentation environments?
categories:
- api-doc
- DITA
keywords: developer documentation, API documentation, interactivity, code, contributions, community, technical writer tooling, DITA
description: "When deciding on the right tool to use for developer documentation, you have to evaluate just how much developers will be contributing and interacting with the documentation. In some scenarios, it will make sense to use developer tooling for docs to support more developer involvement. In other scenarios, it may be better to simply give developers a space where they can do brain dumps of technical info, but then to have tech writers edit, rewrite, and transition the content into tech writer tooling in order to handle more robust requirements."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/developertoolingmodelthumb.png
---

## My tool dilemmas

Lately I've been more on the fence about the right tools for developer documentation environments. If you've been following my adventures with Jekyll, you've seen me kind of move through the typical stages anyone moves through with tools:  

1. The honeymoon stage
2. They "good but has challenges" stage
3. A sense of semi-disillusionment
4. A more balanced view

(I'm sure there's a more official depiction of these phases, but I don't need to go there.)

Why the good but challenges and disillusionment stages? I mentioned them in [previous posts](https://idratherbewriting.com/2016/01/10/why-simple-tools-become-complex/), but as a quick recap, a few shortcomings of the static site generator approach are as follows:

* No validity checking for broken links
* No automatic updates for cross reference titles and links
* No ability to plug into larger CCMS platforms to manage content
* No ability to lock down code &mdash; it's easy to tweak a few things and break the output
* No dynamic personalization of content
* No native ability to publish full-length PDFs
* No translation export-and-import capability
* No ability to add metadata and workflows to content for more formal doc management, and so on

These are all the qualities you might expect to find in a more robust content management system for documentation, which might cost the same price as your liver or kidney on the black market.



## The argument for using developer tools for technical documentation

Last week as I attended a [Write the Docs meetup in Redwood City](http://www.meetup.com/Write-the-Docs/events/228074123/), I realized some things. (It's not that I haven't said them before on this blog; it's that I forgot, I guess.) If you're writing developer doc and you want to get developers involved in contributing, reviewing, and interacting with the documentation, you're probably better off using developer tools and developer environments. After all, if you want to live in the developer's world, it sort of makes sense to adopt the developer's environment.

<div style="max-width:400px;">
<figure><object type="image/svg+xml" data="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/developertooling-01.svg" | prepend: site.baseurl }}">Your browser does not support SVG</object><figcaption>Both writers and developers work on documentation that exists in similar tooling as other developer tools (for example, Markdown in text files pushed to a static site generator, stored in Github)</figcaption></figure>
</div>

During the WTD presentation (which was on API documentation), one commenter (who works on Microsoft Azure) noted that they write their docs in Markdown and push them out to various Github repos. In these repos, lots of developers from the community frequently log issues, make comments (using Disqus), and contribute code themselves. That kind of energy and momentum around the docs wouldn't happen if the docs weren't embedded in developer environments.

The commenter noted that docs in the previous MSDN framework (Microsoft Developer Network), which I assume housed the docs in a custom XML CMS, led to a much more static, walled-garden type of effect with documentation. This resulted in a lot of outdated, rarely visited pages that simply didn't become part of the developer's world (or so I assume).

In tech comm scenarios, if you're just following the traditional model where only the technical writers write and gate-keep all the content, it may not matter where you author and publish the content. But if you want your docs to grow beyond the domain of the tech writers and develop a life of their own in a developer community, it's not going to happen if you keep your docs under lock and key in writers' tools and CCMS systems.

This is the ideal movement of a developer documentation environment: to build a community of developer contributors interacting closely with your doc. The documentation source and programming code bases should not be distant from each other, and the more you can intertwine them, the better off you'll be with getting feedback, code samples, more innovative ideas, and other input from both internal and external developers.

As weak as some of the developer-doc tools are out there for handling robust documentation requirements, you're probably better off with the developer doc route. At some point, people are going to have to let go of some of the doc requirements that force writers to choose some of these more traditional tech writer tools. Some of these requirements include PDF, translation, single source outputs, standardization, link management, workflows, and more.

At the end of the day, all tools suck to some degree or another (to [paraphrase Eliot Kimber](http://drmacros-xml-rants.blogspot.com/2006/02/all-tools-suck.html)). If they don't, you probably have somewhat easy requirements to fulfill. It's not a matter of finding the dream tool that handles everything beautifully and gracefully. Basically, you pick the set of constraints you can live with. What shortcomings are you willing to accept? What advantages are worth the tradeoffs you'll inevitably need to make?

With the traditional doc writer model, using writer-based tools instead of developer-based tools, here are some things you might have to give up:

* Developers interacting with code samples in your content in a more immediate and immersive way
* Community members providing more feedback and potentially contributions
* Internal developers contributing in an environment that they feel comfortable in, and which aligns with the rest of their tooling and workflow
* UI engineers integrating custom JavaScript code and frameworks to provide more modern documentation experiences

It's almost an axiom that developers are allergic to XML, so any XML-based approach is going to be met with a sense of outsiderness and distance, in the same way that technical writers might feel estranged if asked to edit documentation using specific annotations in the programming source code and then auto-generating the site through a code parser.

The difference between the two scenarios is that if developers don't want to jump into the same tools and environments,  they can simply ignore you. But tech writers can't ignore developers. You'll have to find a way to involve developers to review, edit, and contribute code in the doc.

Now I'm not saying that I have, by any means, mastered the art of building environments and cultures where developers contribute and interact abundantly. Far from it. But partly it's because I have rarely lowered the bar enough for developers to feel comfortable in jumping into the authoring platform. To really enable developers (who are technically brilliant) to contribute, you have to (ironically) keep things simple and basic enough for developers to jump in.

As soon as you build that Rube Goldberg machine in Jekyll that does PDF output into 18 different products, platforms, and versions, drawing upon complex variables and conditional filtering and other sophisticated transforms behind the scenes, you've raised the barrier to entry for developers to contribute. At the end of the day, your complex system is about the same as the CCMS with high walls and a moat they cannot cross or enter.

## The argument against using developer tools for documentation

Now let me switch gears and argue the other side &mdash; that is, *not* using developer tools to publish developer doc, but instead using writer-based tools.

During a lunch conversation I had with an articulate developer &mdash; who frequently makes thorough and helpful write-ups on the wiki about the code and features I need to document &mdash; I asked him what his ideal environment would be for documentation. He thought for a minute, and then said,

> Developers can't be trusted to write documentation.

Wise words for sure, but he wasn't suggesting that developers never write docs, only that developers don't write documentation that gets pushed out to customer-facing, production environments without involvement from technical writers. Instead, he liked the idea of providing an internal wiki for developers to draft content, which technical writers could then look at, edit, copy, review, or otherwise adjust before moving into production.

<div style="max-width: 650px">
<figure><a href=""><img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/developertooling-02.svg" | prepend: site.baseurl }}" alt="Developer to writer tooling model" /></a><figcaption>Developers draft content in a wiki, which technical writers then pull from as they create the more formal documentation using writers' tools (such as XML, CCMS, or some help authoring tool)</figcaption></figure>
</div>

As far as wikis go, he liked Confluence even though it doesn't allow native authoring in a syntax format. (With Confluence, you're stuck with a WYSIWYG editor.) He noted that with an alternative wiki platform such as Mediawiki, which provides native support for wiki syntax in a raw text format, you couldn't publish table-based information very easily. The switch to the WYSIWYG model with Confluence was a huge step forward, he felt.

This is likely because the formatting scenarios he tackled differed from the typical tech writing scenarios. Tech writers tend to make everything into tasks with list items. It's the core model reinforced by the task-based model for documentation. But I think developers don't often use as many lists as technical writers do, or else they would surely become frustrated with Confluence's WYSIWYG editor.

At any rate, I actually agree with the developer. Give devs a space where they can easily author content, and then let the tech writers pick it up from there. With this model, it doesn't really matter what tooling the tech writers use. Whether you're using a static site generator and interfacing with Github, or using a DITA CCMS, you've entered tech-writer-ville and so you don't need to consider whether developers can learn and use your potentially XML-based tools.

Interestingly, I asked the presenter (Andy Fuchs) at the API doc meetup what his tool of choice would be for an API doc project if he got to choose it himself. Andy said he liked Markdown. At Google, authoring and publishing frameworks are already built and managed by a tools team, so there isn't a need for tech writers to come up with their own system. Instead they simply plug into this environment, and can often can use Markdown.

If Andy were choosing his own tools, he also said he might simply use something like Docbook XML (which he was already familiar with) or even Framemaker. He also mentioned using one of the specifications that parsed REST APIs like Swagger.

He said probably wouldn't use DITA, since DITA's topic-based chunking tends to get in the way of narrative flow when writing conceptual documentation. Overall, though, tools weren't something he had spent a lot of time deliberating about (and rightly so). When you have an established framework, you can simply focus on the content instead of your authoring tools.

Overall, with the model I'm outlining in this section, you give developers a space where they can easily and freely write documentation. Ideally, this space for drafting content allows for developers and tech writers to easily interact with comments and annotations, and the barrier for entry is as low as possible.

But you don't go so far as to make your writers use the same limited tooling. Writers finalize the content on the wiki and then, once finalized, they put it into more robust tooling where they can better manage it.

## Conclusion

Which is the better model? Using developer tools throughout, or using the hybrid approach where you give developers a space to author but then transition the content into more robust tech writer tools?

I'm not sure. I can see merits for both approaches. At the end of the day, both models probably work fine. You may be forced one way or another due to the requirements in your projects.

For example, if you're really trying to build a developer community where external developers interact and contribute code, then it makes sense to use developers tooling throughout your doc system.

But if your requirements force you to deliver PDF, multiple outputs from the same source, and to submit content to translation agencies, then you'll likely be better off with the more robust tech writing tooling.
