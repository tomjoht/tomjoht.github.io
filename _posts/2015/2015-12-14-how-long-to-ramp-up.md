---
title: "Question: How long does it take to ramp up on your Jekyll theme?"
categories:
- jekyll
keywords: 
description: "Using Jekyll for documentation will probably require more time and effort than a commercial out-of-the-box authoring tool. On the other hand, Jekyll may be more suitable to you if you're customizing a doc website, want a developer's workflow, or simply want the freedom of using open source tools and working in code."
---

A reader asks:

> I'm interested in using Jekyll for a documentation project, but I'm not sure how much time and effort it would require to learn Jekyll and create/maintain/update content in this framework. For example, creating the search, setting up the table of contents, etc. &mdash; how much time will all this take in proportion to the amount of time spent creating actual content? I'm worried that I may not be that comfortable in the methods and technologies used in this approach.

I get this question a lot. If you don't want to sink time into configuring and setting up your authoring tool, go for an out-of-the-box authoring experience. There are plenty of solid tools on the market that work well and won't require you to do a lot of configuration or setup. For example, pretty much any of the authoring tools listed in my sidebar would be good.
 
But keep in mind that if you do decide to start hacking, any out-of-the-box tool will probably require the same time commitment. There's a reason why there's a whole group of Flare consultants that companies pay to fly out for training. 

Setting up stylesheets to match your company's brand, figuring out how to re-use content effectively across projects, configuring a revision control and review process for your team, customizing the look and feel of your PDFs &mdash; this can all require a lot of time and expertise, regardless of the tool.

But yeah, in contrast to a commercial help authoring tool, my Jekyll theme is pretty custom and may not work for your needs. There's definitely more setup and tweaking involved, and it's easier to break things. The community of Jekyll users with documentation projects is also small. 

I recommend using Jekyll (or other static site generators) for documentation if any of the following are true: 
 
* You like hacking your own web sites with a specific look and feel (and you're web savvy with your knowledge of CSS, HTML, and JS).
* You're doing API documentation and want your UX team to create a modern-looking website matching your company's brand.
* You don't want to spend money on a commercial product &mdash; you're committed to open source and prefer to have the code entirely open.
* You really want to use a static site generator and Markdown, because engineers are also contributing to the docs and you want to keep things simple for them.
* None of the commercial tools does what you want it to do. You want to try some innovative things with your documentation, and you need a platform that is flexible and open.
* You're convinced that most commercial tools aren't any better, and you think text files with revision control (working like developers in code) is the best way to go.
* You want something that is free.

As for the amount of time spent in relation to creating actual content, this is hard to answer. I'd say that like any tool, once you start using it, the tool itself becomes somewhat invisible. After you set things up just how you want them, the tool becomes just part of the background. 

But when I started using Jekyll, there were a lot of things that weren't clearly defined, such as generating PDFs, creating a robust TOC, doing context-sensitive help, re-using content across projects, and more. I spent a lot of time just figuring out the best approaches for each of these. Now that I've settled on some best practices, though, the time is minimal.

If you want to learn more about the Documentation Theme for Jekyll I created, see the [Github repo](https://github.com/tomjoht/documentation-theme-jekyll) and [demo here](https://idratherbewriting.com/documentation-theme-jekyll).

If you want to go the static site generator route, there are some other great options outside of Jekyll. Check out the following:

* [Gitbook](https://www.gitbook.com/)
* [Asciidoctor](http://asciidoctor.org/)
* [Readthedocs.com](https://readthedocs.com/)
* [Roots](http://roots.cx/)

The first three tools are much more suited to creating documentation than Jekyll, and they have sizable communities. The option you choose depends on your requirements. If you don't have to keep content behind a firewall, don't need to push out to PDF, don't need to single source the content into 10 different outputs, and so on, then your options increase considerably.

