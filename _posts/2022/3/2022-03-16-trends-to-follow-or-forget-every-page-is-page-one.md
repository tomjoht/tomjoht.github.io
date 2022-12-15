---
title: "Every page is page one"
permalink: /trends/trends-to-follow-or-forget-every-page-is-page-one.html
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.com/trendseverypageispageone
series: "Trends to follow or forget"
jtype: notes_fizzled_trends
description: "This post is <a href='/trends/trends-to-follow-or-forget-intro.html'>part of a series</a> that explores tech comm trends that I've either followed or forgotten, and why. The overall goal is to better understand the reasons that drive trend adoption or abandonment in my personal career. This post focuses on \"every page is page one.\""
---

## What is "Every Page Is Page One"?

"Every page is page one" is a philosophy of writing that embraces web-centric behaviors and paradigms for reading. Mark Baker made this mantra popular through his book [*Every Page Is Page One*](http://xmlpress.net/publications/eppo/) (published in 2013) and his accompanying blog by the same name, [everypageispageone.com](https://everypageispageone.com).

Inspired by observations and writing from people like [David Weinberger](https://www.amazon.com/Too-Big-Know-Rethinking-Everywhere/dp/0465021425), Baker noted that people bounce around non-linearly from site to site, and even nonlinearly within the same site, reading single articles in isolation rather than following a linear order defined by a table of contents (TOC). Reading behaviors that involve closely following a TOC are behaviors that align with book reading and print media. On the web, the person's first page is usually their last page as well.

Bounce rate [analytics](/analytics/#analytics-breakdown) confirm these behaviors. A typical website often has a bounce rate of 80% or more, meaning the user lands on a page and bounces away without reading any more pages on the site. Even for those who read multiple pages on the same site, the pages might be surfaced through site search or inline links. The reader usually isn't carefully following the order prescribed by the TOC.

What encourages these high-bounce-rate behaviors? Information online is both abundant and seemingly endless, and no effort is required to get more of it except a mouse click. In contrast, in the print-only world, you had to travel to a library, walk through the stacks, seek out dewey decimal numbers, etc, in short, expend a lot of energy to get a book. Consequently, readers were more careful to read through the book, since they couldn't just read a single page and toss the book aside for 150 other books next to them.

Every page is page one ("EPPO") promoted a philosophy of writing that would better accommodate these reading behaviors on the web. To follow "every page is page one" principles, your content should be more complete in itself (a standalone article instead of a partial topic). You shouldn't assume the reader absorbed information from previous pages but  instead include more context up front. You should link abundantly to other content. Wikipedia articles provide some of the best examples of "every page is page one" style.

For more information, see the following:

* [What Does "Every Page Is Page One" and "Include It All, Filter It Afterward" Mean?](/2012/12/04/what-does-every-page-is-page-one-and-include-it-all-filter-it-afterward-mean/)
* [Frankenbooks Must Die: A Rant](https://everypageispageone.com/2012/02/24/frankenbooks-must-die-a-rant/)
* [Does DITA Encourage Authors to Fragment Information into a Million Little Pieces?](/2013/04/22/does-dita-encourage-authors-to-fragment-information-into-a-million-little-pieces/)
* [Every Page Is Page One](http://xmlpress.net/publications/eppo/)

## Why I adopted "Every Page Is Page One"?

I came of age as a tech writer during the rise of the Internet. I didn't really grow up with FrameMaker. As a blogger, web-based reading paradigms were important to me. I felt like a child of the web, fascinated by web dynamics and how they might change reading behaviors, cultures, and organization patterns. Hashtags and dynamic filters presented new modes of discovery, more ways to organize, find, and learn. I wanted to embrace this new web landscape and world. It seemed obvious that help documentation would be part of this web landscape, and as such we would need to optimize our documentation for web-based reading behaviors and patterns.

{% include ads.html %}

During this time, many people were also transitioning their print manuals, often written in FrameMaker, to the web. They transitioned the content often by bursting it into discrete topics at specific breakpoints, such as H2 levels. Many web pages were short compared to lengthy chapters in print. But as a result, the web output from these converted manuals consisted of little fragments of information that you'd [need to piece together](/2011/04/27/topic-chunking-and-the-broken-clock/) by tracing your way through a sidebar table of contents. But that wasn't how people read on the web, so this approach usually failed for users.

To embrace "every page is page one" style, I started to make my topics longer and more like standalone articles. I included sections at the top titled "Prerequisites" or "Background Knowledge," making clear what context was assumed and how to get it. I linked abundantly, knowing that readers were more likely to click inline links rather than sidebar topics.

Around this time, I also transitioned to writing developer documentation. Developers, I learned, liked [lengthy topics](https://idratherbewriting.com/learnapidoc/pubapis_design_patterns.html#longish_pages). Some even advocated for [single page docs to stop the "click insanity."](https://www.youtube.com/watch?v=rXcdTYuxwys) A single page doc was one that included the entire manual on a single page, still with a sidebar, but instead of loading separate pages, the sidebar would jump down to different sections on the same page. Developers liked to use Ctrl+F on the page to search for keywords across the docs.

Baker was also a tremendous blogger. His posts were incredibly popular, and he and I often had posts that were responses to each other's posts. Baker was a deep thinker and an articulate writer. He had strong, well-argued opinions, even if they [ran counter to ideas prescribed by traditional structured authoring enthusiasts](https://everypageispageone.com/2012/07/28/the-tyranny-of-the-terrible-troika-rethinking-concept-task-and-reference/). He also mastered the conversational essayistic style that I've always admired. Although he retired a few years ago and [started writing fiction](https://gmbaker.net/i-am-serializing-a-novel-on-substack/) instead of tech-comm content, you can still read his posts on [everypageispageone.com](https://everypageispageone.com). I've been reading various tech comm blogs for years, but Baker's blog has been the one I enjoyed the most.

## Why didn't I abandon Every Page Is Page One?

Unlike the many tool fads, "every page is page one" was an approach to writing. I didn't abandon this approach, but I think many of the EPPO practices became more second nature just as the web became second nature. It's much more common to have lengthy articles in docs, especially if you don't [DITA](/trends/trends-to-follow-or-forget-dita.html) as the information model.

Developers don't mind long pages, and it also helps with writing. Writers are less prone to have redundancies and conflicts in their writing because the page they're editing contains more complete information. In contrast, if the information is fragmented across many different pages, it's easier to miss all the places that need to be updated.

I also link abundantly, much more than some of my colleagues. I feel like the sidebar hierarchy and presentation of topics is overrated. Although readers might want to have a sidebar TOC to glance at (for psychological reassurance, perhaps, or to get a sense of the whole), they rarely click through the links there. Readers are much more inclined to click links inline. This is something Bob Watson recently noted in his post [Documentation research requires more curiosity than money](https://docsbydesign.com/2022/04/03/documentation-research-requires-more-curiosity-than-money/). Observing a user navigate the help docs, Bob writes:

> After about 10 minutes into the session, I noticed that he never clicked on the ToC. Instead, he used search and embedded links to navigate through the topics. I asked him to tell me about the ToC and if it was useful. His response surprised me. He told me that he used the ToC as a reference to help him understand the relationship between the topics, but never really used it to navigate.

In other words, the table of contents (ToC) conveys some semantic information about topic relationships but isn't where users click to navigate to those topics. It's a semantic map, not a navigation map.

Additionally, I'm persuaded that even self-links pointing to the same site help with SEO. Just look at how Wikipedia articles, which contain an abundance of self-links to other site pages, usually rank near the top of search results pages.

## Current status

The mantra "every page is page one" usually resonates with people without argument, though I imagine people might interpret it differently. As the web becomes the norm for information consumption and delivery, and print paradigms fade further into the distance, calling out this mantra as a core principle for writing will fade in importance. Eventually, web patterns will be so common that _not_ following them will be the anomaly.

## Takeaway

{: .tip}
Tendencies toward more standalone, modular articles provide an easier user experience than trying to stitch together context and coherence through a sidebar table of contents.

## Next post

Continue to the next post in this series: [API documentation](/trends/trends-to-follow-or-forget-api-documentation.html).
