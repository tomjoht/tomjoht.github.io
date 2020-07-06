---
title: The problem with adopting bleeding-edge tools
categories:
- jekyll
- dita
keywords: help authoring tools, technical writing trends, tools
description: "The problem with adopting bleeding-edge tools is that they usually handle only the simplest use cases. When you try to make these bleeding-edge tools handle complex publishing requirements, the simple tools transform into Rube Goldberg machines of sorts. Since engineers usually don't have to solve these complex publishing requirements themselves, they tend to embrace the simple bleeding-edge tools and can't understand why anyone would pursue a more complex route."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/complexityoptions.png
---

## What are the bleeding-edge tools?
In a recent discussion on the [Techw-l listserv](http://www.techwr-l.com/archives/), an academic was looking to find advice about the "bleeding-edge" trends in help authoring tools. Academics want to prepare students to succeed in the job market once they graduate, and since academics usually aren't focused on tools, this person was looking for guidance.

One of the commenters on the thread made a particularly astute observation about bleeding-edge tools. [Robert Lauriston noted](http://www.techwr-l.com/archives/1601/techwhirl-1601-00009.html#.VpFLgpMrIyk):

> This happens to me over and over: an engineer mentions a product that they think has great documentation. I look at their docs for a few minutes and see that (1) the product is very simple and (2) the docs are nevertheless only around 10-50% complete.

Some bleeding-edge tools are certainly available. As you probably know, lately I've been exploring [Jekyll](http://jekyllrb.com/), which is a [static site generator](http://www.staticgen.com/). Jekyll is simple in its design, as are many other bleeding-edge tools out there. (By the way, I dislike the phrase "bleeding-edge" for some reason, so I'm almost using it in a derogatory way.)

## The problem with bleeding-edge tools

The problem with adopting bleeding-edge tools is that documentation requirements get so complex, you either have to abandon the simple bleeding-edge tool (which produces the modern web output), or you have to jerry-rig the tool with such complex workflows and coding that the simple tool becomes a [Rube Goldberg machine](https://www.google.de/search?q=Rube+Goldberg+machine&source=lnms&tbm=isch&sa=X&ved=0ahUKEwiq_uTth6HKAhWJ0iYKHQLnCNEQ_AUIBygB&biw=1247&bih=643).

For example, here are a few features (based on requirements) that I added to my Jekyll project that have made this once simple tool really complex:

* Producing PDFs, not only of the entire site, but of different sections of the site as needed, all with corporate branding, including page numbers, running headers, table of contents, and cross-references.
* Single-sourcing the same project to publish about 40 different outputs from the same set of files.
* Collaborating on documentation for multiple products with distributed authors using the same theme.
* Implementing variables so that the same topics will use different terms for different outputs.
* Re-using content across different product outputs within the same theme, with different links used and different sections conditionally excluded or included within the same content.
* Ensuring that link titles always match page titles, and that changing a link in one place changes the value of that link in every place.
* Single-sourcing UI text using the same definitions in the documentation as it does in a JSON output for user interface text (which UI engineers will integrate).
* Providing translation capability such that all strings in the interface are separated into a data file that can be passed off to a translation agency and later re-integrated into the project.
* Re-using the same table of contents file such that it can support multiple outputs based on different products, platforms, versions, and outputs.

Finding a way to do all of this with Jekyll (which was originally designed as a blogging tool but turns out to be flexible enough to allow you to do "whatever you want") was challenging. I mean first, I had to figure out *if* it could be done. Then I had to make it happen.

{{site.data.alerts.ad}}Want to explore the latest cloud-based documentation tools? <a rel="nofollow" href="https://clickhelp.com/">ClickHelp</a> lets you author, collaborate, review, and publish your documentation through one slick browser-based interface. Prices for teams start as low as $29/month per user. Learn more at <a rel="nofollow" href="https://clickhelp.com/">clickhelp.co</a>.{{site.data.alerts.end}}

## My Rube Goldberg Machine

The problem is that the ways to handle the publishing requirements have now made my Jekyll process pretty freaking complicated, and if I were to get hit by a bus (which is not unlikely given that I ride my bike to work through busy streets with commuters), my colleagues would either struggle to figure out just how to configure it, or they would abandon it for another tool.

Bleeding-edge tools rarely satisfy the requirements placed on tech writers. For example, I was looking more closely at [Contentful](http://www.contentful.com), an API-based CMS that looks to be bleeding edge. Do you think you could use a variable within a topic so that the same content source might use a different term depending on the output? If so, I didn't see that capability.

Or take [readme.com](http://readme.com). Looks cool, right? But what if you want to re-use the same chunk of content in multiple outputs. Not possible. (In fact, I don't even think multiple outputs beyond basic versioning are possible.)

Interestingly, Confluence was mentioned as one of the bleeding-edge tools. If you've tried to re-use content with Confluence, or version content, you'll see that it too gets complicated. And when you try to architect any kind of Confluence output into another HTML target (besides the built-in HTML output that is primitive), you're also going to run into complexity.

## Evaluating complexity

As I was adding a new PDF output to a subset of our Jekyll topics the other week (troubleshooting a colleague's configuration), I tried to decide whether my Jekyll Rube Goldberg machine was easier or harder than it would be with a DITA-based Rube Goldberg machine.

With DITA, you would be setting up keyrefs that leveraged different conditional attributes, and then you would be configuring your DITAVAL files inside a tool such as OxygenXML, and so on.

Here's what I decided: **Any system you use will get complex when you try to satisfy complex requirements.** DITA is complex because it was designed from the ground up to handle complex requirements, as are other systems built for technical writers.

If you just have simple requirements to fulfill, the execution is a lot simpler. But technical writers are hired to handle complex publishing requirements. (If it were easy, the company wouldn't need you.)

As a result of the complex requirements, technical writers often select help authoring tools and systems that have been specifically designed to meet the complex requirements that technical writers have. This means the learning curve for these tools is somewhat steep. It also means that you often sacrifice the modern-looking output and simple authoring workflow inherent in the bleeding-edge tools for a more fixed, traditional tripane output and complex workflow.

Occasionally I've heard engineers ask briefly about tech writing tools, and they throw out a comment like "why not just use Markdown and Github" or something. These same engineers rarely stick around to answer how you would handle the complex requirements using these simple tools.

I do value simplicity and strive to use the easiest solution possible. If a project were simple, why adopt complex tooling? However, there's a case for laying the proper foundation to allow you to scale in more robust ways in the future.

Regardless of the route you take, in the end, you're not going to escape the complexity inherent in the solution, no matter which route you take.

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/complexity-01.svg" | prepend: site.baseurl }}" alt="Complexity options" />

If you create your own custom solutions, you have much more flexibility to do what you want &mdash; you just need the right skills. If you plug into standardized complexity (like DITA), you can buy systems and platforms that remove some of the complexity for you and put it behind a closed door. However, making any modifications to some of these pre-built systems will certainly be daunting.
