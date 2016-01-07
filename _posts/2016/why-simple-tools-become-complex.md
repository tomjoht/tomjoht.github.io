---
title: The problem with adopting bleeding edge tools
categories:
- api-doc
- beginners
- blogging
- book-reviews
- creativity
- dita
- family
- findability
- general
- innovation
- jekyll
- podcasts
- quick-reference-guides
- screencasting
- user-centered-documentation
- video
- visual-communication
- web-design
- wikis
- wordpress
- writing
keywords: 
summary: ""
---

## What are the bleeding edge tools?
In a recent discussion on the Techw-l listserv, an academic was looking to find advice about the "bleeding edge" trends in help authoring tools. Academics want to prepare students to succeed in the job market once they graduate, and since academics usually aren't tool-focused, this person was looking for guidance.

One of the commenters on the thread made a particularly astute observation about bleeding edge tools. Robert Lauriston noted: 

> This happens to me over and over: an engineer mentions a product that they think has great documentation. I look at their docs for a few minutes and see that (1) the product is very simple and (2) the docs are nevertheless only around 10-50% complete.

Some bleeding edge tools are certainly available. As you probably know, I've been exploring static site generators lately, particularly Jekyll. Jekyll is simple in its design, as are many other bleeding edge tools out there. (By the way, I hate the phrase "bleeding edge" for some reason, so I'm almost using it in a derogatory way.)

## The problem with bleeding edge tools

The problem with adopting bleeding edge tools is that documentation requirements get so complex, you either have to abandon the simple tool (which produces the modern web output), or you have to jerry-rig the tool with such complex workflows and coding that the simple tool becomes a Rube Goldberg machine.

For example, here are a few features (based on requirements) that I added to my Jekyll project that have made this once simple tool really complex:

* Producing PDFs, not only of the entire site, but of different sections of the site as needed, all with corporate branding, including page numbers, running headers, table of contents, and cross-references.
* Single-sourcing the same project to publish 30 different outputs from the same set of files.
* Collaborating on documentation for multiple products among multiple distributed authors using the same theme.
* Implementing variables such that the same content uses different terms for different outputs.
* Re-using content across different projects within the same theme, with different links used and different sections conditionally excluded or included within the same content.
* Ensuring that link titles always match page titles, and that changing a link in one place changes the value of that link in every place.
* Single-sourcing UI text using the same definitions in the documentation as it does in a JSON output for user interface text (which UI engineers will integrate).
* Providing translation capability such that all strings in the interface are separated into a data file that can be passed off to a translation agency and later re-integrated into the project.
* Re-using the same table of contents file so that it supports multiple outputs based on different products, projects, platforms, versions, and outputs.

Finding a way to do all of this with Jekyll (which was originally designed as a blogging tool but turns out to be flexible enough to allow you to "do whatever you want to do") was challenging. I mean first, I had to figure out if and how it could be done. Then I had to make it happen in the simplest, most elegant way possible.

## My Rube Goldberg Machine

The problem is that the ways to do it have now made the process pretty freaking complicated, and if I were to get hit by a bus (which is not unlikely given that I ride my bike to work through busy streets with commuters), my colleagues would either struggle to figure out just how to configure it, or they would abandon it for another tool.

The problem with bleeding edge tools is that they rarely satisfy the requirements placed on tech writers. For example, I was looking more closely at Contentful, an API-based CMS that looks to be bleeding edge. Do you think you could use a variable within a topic so that the same content source might use a different term depending on the output? If so, I didn't see that capability.

Or take readme.io. Looks cool, right? But what if you want to re-use the same chunk of content in multiple outputs. Not possible. (In fact, I don't even think multiple outputs beyond basic versioning are possible.) 

Interestingly, Confluence was mentioned as one of the bleeding edge tools. If you've tried to re-use content with Confluence, or version content, you'll see that it too gets complicated. And when you try to architect any kind of Confluence output into another HTML target (besides the built-in HTML output that is primitive), you're also going to run into complexity.

## Evaluating complexity 

As I was adding a new PDF output to a subset of our Jekyll project the other week (troubleshooting a colleague's configuration), I tried to decide whether this process was easier or harder than it would be with a DITA-based system. 

With DITA, you would be setting up keyrefs that leveraged different conditional attributes, and then you would be configuring your DITAVAL files, and so on. 

Any system you use will get complex when you try to satisfy complex requirements. DITA is complex because it was designed from the ground up to handle complex requirements, as are other systems built for technical writers. 

If you just need simple, things are a lot simpler. But technical writers are hired to handle complex publishing requirements. (If it was easy, the company wouldn't need to hire you.)

As a result of the complex requirements, technical writers often select help authoring tools and systems that have been specifically designed to meet the complex requirements that technical writers have. This means the learning curve for these tools is somewhat steep. It also means that you sacrifice the modern-looking output and simple authoring workflow that is usually inherent in the bleeding edge tools. 

Engineers walk by and are perplexed at why you're using such a complicated, seemingly archaic platform when you could "just use Markdown and Gitub" or something. These same engineers rarely stick around to answer how you would handle the complex requirements using the simple tools.

Despite my railing against people who scoff at the need for complex tools, I do value simplicity. If a project it simple, why adopt complex tooling that introduces so much overhead that your simple project has now become complex? 

What's key is to implement flexible tools that allow you to scale up the complexity as needed, but also to keep things simple when you have only simple requirements to fulfill.









People want modern-looking, interactive websites. Then they also explain on that they need PDF generation, translation, multi-edit capabilities, single source generation, workflows, and document statuses, etc. By the time the list of requirements is finalized, about the only tools that satisfy them are more traditional tech comm tools. 




So, sure, that looks nice and clean compared with the comprehensive
documentation I've produced for a product that's 100 times as complex. Robert Lauriston


