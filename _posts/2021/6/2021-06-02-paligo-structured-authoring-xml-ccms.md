---
title: "Paligo: Structured Authoring and Component Content Management made easy"
permalink: /blog/paligo-structured-authoring-xml-ccms
categories:
- technical-writing
keywords: paligo, xml ccms, structured authoring
rebrandly: https://idbwrtng.com/paligo-explanation
description: "<a rel='nofollow' href='https://hubs.li/H0PqJ8P0'>Paligo</a> is an online XML-based CCMS for authoring teams that are either looking to level up from help authoring tools to robust structured authoring and component content management, or for teams that want to escape the complexity and cost of their legacy CCMS. Paligo simplifies structured authoring with a visual interface that teams can access through an online portal. In this post, I explain Paligo's context within the CCMS landscape, how it's different from HAT tools, and why it's a documentation solution worth considering for both enterprises and small businesses."
samples:
- title: Moogsoft
  url: https://docs.moogsoft.com/
  img: moogsoft.png
- title: Arria
  url: https://docs.integrations.arria.com/
  img: arria.png
- title: Exabeam
  url: https://docs.exabeam.com/
  img: exabeam.png
- title: Philips
  url: https://www.dictation.philips.com/fileadmin/Products/dvt4110/ifu/index.html?lang=en
  img: philips.png
- title: TitanHQ
  url: https://docs.titanhq.com/
  img: titanhq.png
- title: ShipStation
  url: https://help.shipstation.ca/hc/en-ca
  img: shipstation.png
- title: Dr. Sum (Japanese example)
  url: https://cs.wingarc.com/manual/drsum/5.5/index.html?lang=ja
  img: dr_sum.png
- title: Native Instruments (PDF)
  url: https://www.native-instruments.com/fileadmin/ni_media/downloads/manuals/traktor/TRAKTOR_KONTROL_S4_MK3_Manual_English_1218.pdf
  img: native_instruments.png
- title: Paligo slides
  url: https://paligoslides.netlify.app/en/index-en.html#/UUID-ab9b50a0-f495-cbb1-ff97-aaccf99d0a80
  img: paligo_slides.png
---

*Note: This is a sponsored post.*

## Introduction

The other week, there was a post in the [technicalwriting subreddit](https://www.reddit.com/r/technicalwriting/comments/nchn25/paligo/) asking for info on Paligo. A redditor asked,

> Do any of you use Paligo for your tech writing? If so, do you like it? Do you use it for ALL documentation? What are its pros and cons?

I see similar questions when people are exploring tools. Paligo comes up, but often people don't know enough about it yet to understand how it compares with other solutions.

In general, I think Paligo fills a unique gap in the tech comm tool scene that's worth exploring. Paligo provides a user-friendly experience in a component content management system (CCMS), making structured authoring more available to companies looking to level up their tooling from help authoring tools (HATs) or switch from a complex legacy CCMS.

## Structured authoring and CCMS

Let's start by defining some terms. "Structured authoring" usually refers to XML authoring &mdash; often DITA or DocBook XML for tech comm scenarios. Structured content is usually stored as chunks with rich metadata in a large database in a component content management system (CCMS). These chunks can then be pulled into different combinations and transformed as needed into virtually any output.

CCMS solutions based on structured authoring are common among enterprise companies with large tech writing teams. With large teams, enforcing consistency and standards among writers, as well as publishing to multiple outputs (web, PDF, eLearning), are common needs handled through CCMSs. Publishing requirements often include translation, versioning, and content reuse. Common CCMSs might be solutions like IXIASOFT and Vasont.

The problem is that traditional CCMSs are both notoriously hard to implement and complicated. These systems might take a year to implement and cost hundreds of thousands of dollars in consulting and maintenance besides the licensing cost itself. You usually have to hire a specialist to help with the implementation, not only in setting up the XML database and infrastructure internally but also in creating the XSLT stylesheets to transform the content into the outputs you want.

Then once set up, unless you have in-house experts, it's difficult to change anything in your publishing pipeline. The complexity of many legacy solutions can often lead to poor adoption by the writers, causing the implementation to eventually fail or, at least, to be used below the ideal.

Note that, technically, you don't _need_ a CCMS to do structured authoring. You could write XML in a text editor and store the files in GitHub. However, few companies (except maybe small ones) do this. For larger teams or companies trying to scale their documentation needs, you need a robust solution to keep track of the components and content reuse. In short, the CCMS layer on top of the XML makes it much more practical, accessible, consistent, and less error-prone.

For many years, Anders Svensson worked as a DITA consultant helping clients through complex DITA implementations, and he routinely saw where clients struggled. Back in 2014, he and Frank Arensmeier decided to create a new CCMS solution &mdash; Paligo &mdash; that would simplify structured authoring for companies. They took a structured authoring foundation (DocBook XML), adapted it to make it topic-based, and added the most useful features of both DocBook and DITA. The result was a cloud-based, user-friendly CCMS robust enough for enterprise documentation needs and with a lower threshold for growing businesses. (See [The Story of Paligo: A new browser-based CCMS with all the features you'd ever want](/2016/08/01/paligo-the-story-xml-ccms-in-the-cloud/) for details.)

With Paligo, using a modern user interface, you can author structured content through a visual editor (or work in the source), and publish to HTML, PDF, eLearning formats, slides, Salesforce, Zendesk, ServiceNow, and other output channels with little to no customization needed. Paligo even lets you publish REST API documentation by either importing OpenAPI specification documents, or by embedding API details directly in the output. You don't have to hire a consultant to transform your structured XML into the outputs you need &mdash; everything is already set up, with options to customize and brand the output as desired.

## Paligo sample outputs

Here are a few sample outputs from Paligo:

{% for item in page.samples %}

<figure><a href="{{item.url}}" target="_blank" rel="nofollow"><img class="recommendedPodcasts" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/{{item.img}}" alt="{{item.title}}"/></a><figcaption>{{item.title}}</figcaption></figure>

{% endfor %}

<style>
img.recommendedPodcasts {
    float: none;
    padding: 20px;
    max-width: 700px;
  }
figcaption {
  margin-left: 20px;
}
</style>

Whereas a traditional DITA or other CCMS implementation might require a year or more of development, integration, customization, and training, Paligo gets you up and running quickly. As a cloud-based SaaS system with a user-friendly interface, everything is available online. You don't have to train your authors with specialized XML-schema knowledge and rules. And you pay only for the number of authoring seats you need, with options for different licenses related to author vs contributor vs. administrator roles.

That's Paligo's context in the CCMS space &mdash; it simplifies the structured authoring tooling and CCMS implementation.

Now let's look at how a CCMS like Paligo is different from help authoring tools.

## Paligo CCMS compared to HATS

Help authoring tools (HATs) usually refer to all-in-one tools such as MadCap Flare, Adobe RoboHelp, and others. These HATs provide web and PDF publishing but not in a structured way. The source code for HATs is not XML-based. It's usually some form of HTML/XHTML, with perhaps some proprietary markup in places.

Just as authoring in Microsoft Word has clear limits, so do HATs. For example, you can't enforce a consistent structure for content with a HAT. Most users have the freedom to write in whatever structure, style, and approach they want, which can lead to a variety of different approaches when your team grows with multiple authors. For example, one of the most common places for inconsistency is dealing with different types of lists. Writers style indented paragraphs in multiple ways, never mind the arbitrary way many systems manage indented lists. The amount of tweaking in output needed to fix lists is considerable.

At some point, a tech comm manager often looks at the varying outputs and wants a structured model that enforces a common pattern among the outputs &mdash; a schema that all content must conform to. This consistency becomes essential when reusing content across the authors. Companies using HATs often want to level up their game at some point. But the jump from a HAT to a structured authoring CCMS can be like moving from a sailboat to a yacht.

The jump from handling a sailboat compared to a yacht may seem intimidating to some, but Paligo has simplified the transition. Paligo simplifies structured authoring, making it accessible and practical for companies who want to enter the CCMS landscape. And Paligo's pricing model scales better, allowing small to midsize teams to adopt structured authoring just as well as the mega teams of large enterprises.

## Freeing up time to focus on content

That's it for my description of Paligo within the tech comm tools space. Now I'd like to make an argument for commercial tools over docs-as-code tools. More and more, technical writers are functioning as content curators, taking content from others, making edits, integrating it with other content, and publishing. Companies expect technical writers to be experts at handling complex documentation publishing scenarios &mdash; this is, after all, why technical writers are often hired.

As soon as the publishing task becomes more complex than simply converting Markdown to HTML, technical writers are brought in to help with the solution. These more complex publishing needs often involve the following:

*   Translation into multiple languages
*   Versioning of content
*   Robust search
*   Gated access
*   PDF output
*   Content reuse
*   Single sourcing to help center support sites
*   Responsive web output

Although you can get some basic web output through open-source docs-as-code tools, without question, you'll soon run into these more complex scenarios, and if your tools don't handle these robust scenarios well, you might have to spend _a lot of time_ coming up with creative workarounds. People outside tech comm probably won't recognize these efforts, instead correlating your value mostly with content you write. By investing in good authoring and publishing tools &mdash; ones that provide the benefits of structured authoring while also remaining simple to configure &mdash; you free up time to focus more on content.

I've been in various tech comm roles for more than 15 years, at a variety of companies. I've used many different categories of tools &mdash; some I've disliked, others I've loved. But one thing I've always regretted is spending countless hours trying to hack together tooling needs (for example, creating PDF from Jekyll, or customizing API docs in Drupal, or figuring out ways to add Algolia search in docs) at the expense of content development.

Docs-as-code tools are trending in development circles, but only because of the simplicity of Markdown for developers. These same developer-writers rarely deal with more complex publishing requirements (where Markdown tends to break down or require advanced scripting). There's nothing worse than being stuck with a Markdown document and requirements to generate both a web version and PDF as well as to submit the Markdown content for translation to multiple languages (or other tasks). To accomplish this in the docs-as-code space, you usually need engineering support, which is rarely prioritized for docs.

Instead, it's more cost-efficient to buy tooling you need from a company that specializes in handling tech comm scenarios. Need to generate responsive web content, PDF, and send it out for translation? Done. Need to publish the content to Zendesk to integrate with a help center? Done. Need to pull in an OpenAPI specification document to publish API docs? Done. Need to index the content in Algolia or Swiftype search engine? Done.

Rather than spending weeks or months figuring these tasks out, solutions like Paligo already do this for you. Of course, commercial tools cost money, but an employee's time also costs a company money. Become familiar with the tools and you free yourself up for those content tasks that are rewarded with more weight at your company. In short, focus on writing, not tools.

## Getting started

As a cloud-based solution, [Paligo](https://hubs.li/H0PqJ8P0){:rel="nofollow"} is easy to experiment with. You can sign up for a live demo and then have a free trial to test it out yourself. Pricing details are [here](https://hubs.li/H0PqJgX0){:rel="nofollow"}. If you have questions about Paligo, feel free to leave them in the comments below.
