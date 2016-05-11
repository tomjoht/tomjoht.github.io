---
title: "How do you establish more context in a topic-based writing model?"
categories:
- general
keywords: 
summary: ""
thumb: 
---

## Background

Recently I attended an STC Silicon Valley presentation by two tech writers from Palo Alto Networks who spoke about how they constructed their [documentation portal](https://www.paloaltonetworks.com/documentation/). The portal is a great example of doc portals, and one that you can learn a lot by studying. You can see their slides [here](http://www.stc-siliconvalley.org/2016/03/06/march-21-2016-building-a-documentation-portal/). 

During the presentation, I asked a question not entirely related to doc portals. I asked why they chose to minimize the number of topics in the table of contents and instead put more of the nav links within the main content view. For example, if you go to [this page](https://www.paloaltonetworks.com/documentation/71/pan-os/pan-os), you'll see that the TOC navigation tree on the left is fairly minimal, but when you click a topic, there a number of sublinks to navigate.

{% include.html file="paloaltodocpage.png" caption="Notice how the links aren't all crammed into the sidebar table of contents?" alt="Providing context" %}

I asked why they didn't load up the TOC with all the topics, as is customary with tech docs. They said they wanted to preserve the *context* for the information. When you chop information up into little pieces, you lose the necessary context the user needs to understand the larger picture. This is often the problem with DITA-authored content -- writers chunk the material in such a granular way that all context is lost.

I've written in the past about chunking and context (for example, see [Topic Chunking and The Broken Alarm Clock](http://idratherbewriting.com/2011/04/27/topic-chunking-and-the-broken-clock/)). As I've been documenting a new project lately, I want to preserve the context for users in helpful ways. 

Additionally, while reading Head First Android Development, I noticed how the writers continually presented a map to show you the larger view of the doc structure:

{% include image.html file="headfirstmap.png" caption="With each new section, the writers show a little map like this to give you the larger context of where you are within the content." %}

So here's what I tried doing to help establish context. While drafting the content, I tried to keep all the information in one long topic rather than a lot of little topics &mdash; just for the draft stage so that I could assess how all the information fit together.

By keeping everything in the same page, I could ensure proper flow from topic to topic &mdash; or so I hoped. After about 7,000 words, the topic simply got to be too unwieldy to navigate, and at that point I divided it up into about 15 separate pages. 

It was helpful to keep everything on one page for initial draft. When I start out writing, I don't know exactly what the shape of the doc will be. But by the time I hit about 7,000 words, I usually know where the dividing lines needed to be drawn. 

This approach actually saved me a bit of time. I was not constantly changing file names and organization so much as with other approaches.

But still, my initial attempt was to approach tech doc authoring in a way that preserved the necessary context that readers need &mdash; context that is often lost when you break apart your content into a thousand separate tiny topics. Now that I've split this one up into 15 pages, have I lost the context? 

Yes, I think anytime you start dividing content onto separate pages, you fragment the information. Users can start anywhere in your doc, and there's no easy way to hold their hand through the right order. 

Here's my solution. I'm adding a workflow diagram that shows the essential path through the content. I want to put this workflow diagram on each of the pages where I expect users to perform the task as part of a sequence of topics.

{% include image.html file="diagram_setupworkflowdiagram.png" caption="By providing a workflow path, you help establish context with the reader through the content." alt="Workflow through content" %}

For users who jump to a specific topic, it probably doesn't matter which approach you follow. But for those users who are going through a beginning-to-end process, following a subset of files from your overall content, this map might be helpful.

This map is too bulky to add at the top of each page, so I'm looking at different ways to show it. Maybe a thumbnail that zooms into a larger view?

The other challenge is that I want the graphic to be an SVG graphic so that I can edit the text and link the boxes to the appropriate page. I also want to add unique style to each element and highlight that element to be another color when the user is viewing the page.
