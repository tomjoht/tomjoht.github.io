---
title: "Help authoring tools (HATs) and single-sourcing (Trends to follow or forget)"
permalink: /trends/trends-to-follow-or-forget-hats.html
categories:
- technical-writing
keywords: help authoring tools and single sourcing
rebrandly: https://idbwrtng.com/trendshats
series: "Trends to follow or forget"
jtype: notes_fizzled_trends
description: "This post is <a href='/trends/trends-to-follow-or-forget-intro.html'>part of a series</a> that explores trends that I've either followed or forgotten, and why. The overall goal is to better understand the reasons that drive trend adoption or abandonment in my personal career. This post focuses on help authoring tools and single-sourcing."
---

## What are HATS and single-sourcing?

As the web became the new standard for information delivery and consumption, desktop authoring tools like FrameMaker, designed for print publications, started phasing out in favor of help authoring tools (HATs) that could generate web-based content. HATs provided an all-in-one website generation tool, complete with the left-hand navigation, search, expand/collapse folders, and more. You could easily deploy the entire HAT output on the web, without knowing anything about HTML, CSS, and JavaScript.

Additionally, HATs solved a unique problem that was prominent during the early days of the web: how to generate both web and print content from the same source (single sourcing). PDFs are still in demand today (in my [Dev Docs 2020 survey](/learnapidoc/docapis_trends.html#formats), 30% still produce PDFs), but wind back the clock 20 years and they were much more of a pressing deliverable to solve. HATs provided a unique solution for creating both the online help and printable PDF.

When I entered the field back in 2005, the industry standard HAT was RoboHelp. Later tools included MadCap Flare (spun off from the RoboHelp team), HelpNManual, Author-it, WebWorks, and more. HATs almost invariably worked only on a PC, and their tripane help output was clearly recognizable because the tools allowed for only minimal branding.

## Why I embraced HATs

As a new tech writer, I joined a company that used a HAT (RoboHelp) as its standard tool. It did make authoring easy. RoboHelp was soon surpassed by MadCap Flare, which continued the same paradigm but improved it in many ways. When I switched companies, I was free to choose my own authoring tool and chose MadCap Flare. Two of my colleagues later went on to become Flare consultants and built up small freelance businesses around their Flare expertise (see [Docguytraining.com](https://docguytraining.com/) and [Smartoutput.com](https://www.smartoutput.com/)), the latter of which is still going strong today.

## Why I abandoned HATs

The context in which I was writing documentation changed. I started working in an organization that had a strong community effort, with lots of volunteers eager to help out by writing content. Literally, I was working for the IT department of the Mormon Church, and we had [hundreds of people eager to serve](/2011/11/06/managing-60-volunteer-writers/) in whatever capacity they could. And guess what? Everyone can sort of write, right? :) Writing was seen as a near universal skill (in contrast to programming) where we could leverage volunteers' contributions on projects.

{% include ads.html %}

To leverage these contributions, I needed a platform that would allow this wider community to create and share content in a scalable, free way. In short, I needed a [wiki](/trends/trends-to-follow-or-forget-wikis.html).

## Current status of HATs

HATs are still popular, with more options that are cloud-based. [MadCap Flare](https://www.madcapsoftware.com/products/flare/) won the HAT battle, more or less. Flare is used by a huge number of technical writers who prefer to focus more on content than building out their own toolchain workflow and website framework. MadCap has expanded their toolset to include a suite of tools, not just a HAT. They have a popular conference every year ([MadWorld](https://www.madcapsoftware.com/madworld-conferences/madworld-2022/)) with a loyal, thriving user base.

Even so, HATs aren't the primary tool choice for API documentation (see my [Dev Doc Survey survey results on tools](/learnapidoc/docapis_trends.html#tools), which found about 8% use HATs), in part because of the lack of support for [API reference documentation](/learnapidoc/restapispecifications.html).  And some are in fact using [Flare for API documentation](/blog/madcap-webinar-api-docs-vas).

As long as PDFs are still in demand, there will be a need for HATs. Most tools geared towards creating websites (i.e., [static site generators](/learnapidoc/pubapis_static_site_generators.html)), don't generate PDFs. There are very few tools that are designed to generate both web and PDF content (as well as other types). One nice thing about HATs is that they were created specifically for technical writers and usually accommodate every scenario you would encounter (content re-use, versioning, translation workflows, etc.).

The debate about single-sourcing continues today. In Heretto's [Content Components podcast](https://heretto.com/project/content-components-podcast/?wchannelid=kahto6p5y5&wmediaid=o27pvw5mrp), [Patrick Bosek](https://www.linkedin.com/in/patrickbosek/) and [Sarah O'Keefe](https://www.scriptorium.com/about/sarah-okeefe/) engage in a fascinating argument about single-sourcing, specifically whether both instructional design/learning content and documentation content can be repurposed from the same source (See episode [38: The History of Content According to Sarah O'Keefe (Pt. 1)](https://heretto.com/project/content-components-podcast/?wchannelid=kahto6p5y5&wmediaid=o27pvw5mrp)). They say some argue that learning formats work best in dynamic ("bouncy") slides, while others argue that more plain-formatted content, which is accurate and reliable (being generated from the docs), does the job better. Either way, single-sourcing can refer to a number of topics, and is even something I touched upon in my [tcworld China keynote](/blog/tcworld-china-keynote-techcomm-and-marketing/).
