---
title: "Why incremental regeneration in Jekyll 3.0 is such a big deal"
categories:
- jekyll
keywords: 
description: "Jekyll's incremental regeneration continuously rebuilds your project each time you save a change. This can help you quickly identify errors and fix them immediately, since the time between when you make the error and when you're notified of the broken build is reduced."
---

Last week at the [Static Web Tech Meetup in San Francisco](http://www.staticwebtech.com/presentations/launching-jekyll-3.0/), Parker Moore (the primary maintainer of the Jekyll project) announced the release of Jekyll 3.0. 

In the meetup presentation, Parker covers the main features in the Jekyll 3.0 release.

<iframe width="560" height="315" src="https://www.youtube.com/embed/sPZK8w55cBQ" frameborder="0" allowfullscreen></iframe>

You can also read the brief [Jekyll 3.0 release notes](https://jekyllrb.com/news/2015/10/26/jekyll-3-0-released/).

I've been playing around with some of these new 3.0 features. Incremental regeneration is probably the biggest feature in 3.0 for me. (I'll mention some of the other features later, such as liquid profiler, reduced Windows dependencies, dropped pagination, and more in other posts.) But incremental regeneration &mdash; and actually just the continuous build feature Jekyll has had for a while &mdash; is one of the features I love most about using Jekyll in contrast to other help authoring tools.

What is incremental regeneration? First, a little background in case you're unfamiliar with Jekyll. When you work on a Jekyll project, Jekyll will continuously build (or "serve") your site as you save changes. 

You can see how your site looks each time the build finishes. You don't have to wait until you're all done to compile and generate your pages &mdash; Jekyll will do this for you continuously each time you save a change. 

(If you don't want to continuously build your site, you can turn the auto-build off.)

For small sites of 100 pages or less, the build time is minimal &mdash; about 5 seconds or so. For sites with 1,000 pages or so, the build time can be about 10 times as long. The build time depends on a number of factors, such as the number of loops and other code complexities you have going on. 

My doc projects are fairly small and simple, so the build time is usually under 10 seconds. My blog is pretty massive (with around 3,000 pages) and has some more sophisticated logic with series and collections, so the build time is around 260 seconds.

When you enable incremental regeneration, instead of rebuilding the entire site, Jekyll rebuilds only the files that changed. That is, instead of completely blowing away and rebuilding the whole site from scratch each time, Jekyll regenerates just the part that changed. This works great, especially if you're just working with a specific page and you want to check and see how the output looks.

Here's a sample video that shows incremental regeneration in action. The video is silent. You might want to expand it to full size to read the text.

<iframe width="640" height="480" src="https://www.youtube.com/embed/q0v1EaFp-nc" frameborder="0" allowfullscreen></iframe>

I typically open up my text editor on one side of my screen, and a browser window on the other. I put my terminal window on my side monitor. The browser window is like the WYSIWYG display of the content I'm working on in the text editor. (I have plenty of real estate for this side-by-side display on my Apple Thunderbolt monitor.)

In this video you can see exactly what's going on in the editor, the output, and the terminal window. In this video, I first make a small change and show you how Jekyll quickly rebuilds the site to reflect the change. I then make an error that breaks the build. The error message in the Terminal window prompts me to fix the error, so I do and then continue.

Incremental regeneration is a different sort of model compared to the typical process I would use when authoring DITA using OxygenXML. With OxygenXML, I would only build my project periodically when I finished working on some files (maybe at the end of an afternoon). At that time, when I built the outputs, I would usually have to fix some build errors. 

With Jekyll, by continuously building the site, I can immediately see if there's an error based on code I just wrote. For example, if I write some conditional Liquid tags and forget to close them, the Terminal window will show an error. The error will cause the build to stop &mdash; I can then fix what I just broke. There's no guessing game about what I did to break the build.

By using continuous build, I don't have a large gap between when I introduce an error and when I fix it. As I wrote in [my previous post](https://idratherbewriting.com/2015/10/27/fix-errors-fast-scrum-agile/), closing the gap between identifying bugs and fixing bugs can increase efficiency (by as much as 24 times according to the research Sutherland cited). 

In contrast, if you build your site after hours of working on the content, you may be sorting through vague build error messages that you have to troubleshoot in a time-consuming way. What exactly caused this error? What did I do wrong in those 15 files I was working on? This lag time between authoring and building creates uncertainty with troubleshooting, which increases authoring time and also leads to waste.

There are some dependency complexities with incremental regeneration, because sometimes a change to one file creates a cascade of changes to other files. Not all dependencies are supported, so if you find that Jekyll isn't showing the change in the incremental regeneration, you probably have to stop and start the build again (literally three keyboard clicks in Terminal: Ctrl + C, Up arrow, Return). 

For my doc projects, with incremental regeneration turned on, the build time is around .2 seconds. This is really fantastic. If I'm making a change to my stylesheet or page, I can immediately see the results. 

For my blog, the build time with incremental rebuild is about 45 seconds instead of 280 seconds. A lot better, but it still takes a while.

When you upgrade to Jekyll 3.0, you turn incremental regeneration on by including `--incremental` in your `jekyll serve` command. For example: 

```
jekyll serve --incremental
```

You can learn more about Jekyll at [Jekyllrb.com](http://jekyllrb.com/).

