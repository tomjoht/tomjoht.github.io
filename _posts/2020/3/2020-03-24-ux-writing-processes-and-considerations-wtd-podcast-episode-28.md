---
title: "Write the Docs Podcast episode 28: UX writing processes and considerations"
permalink: /blog/ux-writing-processes-and-considerations-wtd-podcast-episode-28/
categories:
- writing
- wtd-podcasts
keywords:
rebrandly: https://idratherbewriting.site/uxwriting
description: "Write the Docs podcast episode 28 is a recording of a Berlin WTD meetup focused on UX writing processes and considerations. The event was live streamed on March 9, 2020 at the Humanitec in Berlin by Chris Ward."
---

## Event description

The Berlin meetup recording features two speakers:

* [Natasha Sarana](https://twitter.com/Nat_Sarana), UX Writer at FlixMobility, talks about her company's attempts to include UX Writing in their research routine. She shares the main challenges they faced so far and how they deal with them.
* [Roger Sheen](https://twitter.com/infotexture), information architect and freelance UX Writer, talks about how the UI copy process at Wire evolved as the product matured. He covers gathering and aligning copy from source code, moving it to dedicated strings files to facilitate version control and localization, and setting up collaboration workflows with developers and external partners.

## Listen to the recording

You can listen to the episode here: [WTD Episode 28: UX writing - Starting and Scaling at your Company, Berlin WTD meetup](https://podcast.writethedocs.org/2020/03/17/episode-28-ux-writing-berlin-meetup/). Or through the embedded Youtube video below:

<iframe width="560" height="315" src="https://www.youtube.com/embed/5oVi5TubspY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Here are some photos from the event:

<blockquote class="twitter-tweet"><p lang="en" dir="ltr"><a href="https://twitter.com/writethedocs?ref_src=twsrc%5Etfw">@writethedocs</a> Berlin 👉UX writing: starting and scaling at your company meetup @ our office last Monday! Great speakers &amp; enthusiastic audience 🙌 You can watch <a href="https://twitter.com/Nat_Sarana?ref_src=twsrc%5Etfw">@Nat_Sarana</a> &amp; Roger Sheen <a href="https://twitter.com/infotexture?ref_src=twsrc%5Etfw">@infotexture</a>&#39;s presentations here: <a href="https://t.co/ykCcWRR7Lh">https://t.co/ykCcWRR7Lh</a><a href="https://twitter.com/hashtag/uxwriting?src=hash&amp;ref_src=twsrc%5Etfw">#uxwriting</a> <a href="https://t.co/GUUthyANxv">pic.twitter.com/GUUthyANxv</a></p>&mdash; Humanitec (@humanitec_com) <a href="https://twitter.com/humanitec_com/status/1237712702786670592?ref_src=twsrc%5Etfw">March 11, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

## Reflections

Listening to this episode made me think more about UX writing, which is an area I haven't focused on but which has intrigued me. In my regular focus on API docs, I often don't give enough credit to the many other writing roles we play. Most technical writers create a lot of different kinds of content. Even if your main deliverable involves API docs, chances are you're also contributing to UI copy in interfaces, writing reports, drafting blog posts, creating video scripts, writing KB articles, and more. Our role isn't so specialized that teams can afford to have a dedicated API doc writer, a dedicated UX writer, a dedicated copywriter, a dedicated support KB writer, and so on. This is especially true in startups.

As such, it's important to understand good principles for UX writing. These two presentations share a lot of insight. For example, Natasha explains how she mines language about her product by researching discussions on Twitter, Stack Overflow, and other sites. She tries to identify the right language her customers are using so that the UX copy can speak in terms they understand and relate to. She also creates empathy maps that look at the customer's journey and many content touchpoints. She talks about ways to liven up 404 error pages, how to figure out your brand's language, strategies for measuring readability (especially the user's ability to understand quickly while scanning), and more.

Here are some books she recommends:

* [Conversational Design](https://abookapart.com/products/conversational-design)
* [Strategy Writing for UX](https://www.amazon.com/Strategic-Writing-Engagement-Conversion-Retention/dp/1492049395)
* [Microcopy: The Complete Guide](https://www.microcopybook.com/)

I find the research into the terms your customers are using a challenging one. Even if your users tend to say "widget" more than "component," if your product is filled with the word "component" everywhere, it's hard to make a pivot in your docs to use "widget" instead. If you do, your copy won't be aligned with the product, so good UX writing will invariably inform product design from an early stage. It's not the sort of activity you can do by swooping in a month before the release because by that time the UI copy tends to already be finalized.

Roger talks about some of the technical considerations for UI copy. He explains how Android apps store text in a strings.xml file, and how these strings files differ between iOS and Android. Some other conventions separate the two mobile platforms as well, such as button casing. While it would ideal to single-source copy to both platforms, in reality this doesn't often work, he says, due to differences between the two platforms.

Roger also talks about the importance of getting access to the source code to make updates to the strings file. He says one strategy for getting access is to tire your programmers out by having them copy and paste your updates &mdash; at some point, they'll become frustrated and just grant you access to the source. As such, you have to become familiar with Git workflows to contribute to UX copy.

Roger also talks about localization considerations. He said that you have to account for 1.3 times the length of any string for languages such as German that occupy more space when translated. This becomes important when figuring out what copy can fit in which button and space in the UI.

Overall, I've been intrigued by UX writing. I originally thought "UX writing" was just a fancy term for tech writers doing more UI copy, but listening to this meetup recording made me recognize the depth and required research in this area. I do often get requests to edit language in the UI for various products at work, and my input has been pretty basic so far. I always champion clear, simple-to-read, brief copy. But there is much more than I can do in this space.
