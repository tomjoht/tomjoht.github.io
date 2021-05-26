---
title: "Paligo: Structured authoring made simple"
permalink: /blog/paligo-structured-authoring-xml-ccms
categories:
- technical-writing
keywords: paligo, xml ccms, structured authoring
rebrandly: https://idbwrtng.com/leaving-reviews-maps
description: "<a rel='nofollow' href='https://paligo.net/?utm_source=idratherbewriting&utm_medium=in-line-text'>Paligo</a> is an online XML-based CCMS, often embraced by tech comm teams looking to level up from help authoring tools (HATs) and adopt structured authoring. Paligo simplifies structured authoring with a visual interface that teams can access through an online portal where they can &#34;author, manage, translate, and publish &mdash; all in one collaborative space,&#34; as the tagline for Paligo says. In this post, I’ll explain Paligo’s context within the CCMS landscape, its context within the HAT landscape, and why it’s a tool worth considering."
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
published: false
---

*Note: This is a sponsored post.*

## Introduction

The other week, in a post in a [technicalwriting subreddit](https://www.reddit.com/r/technicalwriting/comments/nchn25/paligo/), someone was asking for info on Paligo. The redditor asked,

> Do any of you use Paligo for your tech writing? If so, do you like it? Do you use it for ALL documentation? What are its pros and cons?

I see similar questions when people are exploring tools. Paligo comes up, but people don’t know enough about it to understand how it compares it with other tools.

Although Paligo is one of the sponsors of my site, this post is more than just a commercial for Paligo &mdash; Paligo fills a unique gap in the tech comm tool scene that’s worth explaining. Paligo provides near push-button simplicity with structured authoring tools and component content management systems (CCMS), making structured authoring more accessible to companies looking to level up their tooling from help authoring tools (HATs).

## Structured authoring and CCMS

First, a bit of background on terms. “Structured authoring” refers to XML authoring &mdash; either DITA and DocBook XML (at least within the tech comm space). Structured content is usually stored as chunks with rich metadata in a database called a “component content management system,” or CCMS. These chunks can then be pulled into different combinations and transformed as needed into virtually any output.

Structured authoring is common among enterprise companies with large tech writing teams, especially when you want to enforce consistency and standards among the writers and when your publishing needs often involve multiple outputs (web, PDF, eLearning). Your publishing requirements often include translation, versioning, and content re-use. Common CCMSs (on the high end) might be solutions like IXIASOFT and Vasont.

The problem is that CCMSs are notoriously hard to implement and costly. These systems might take a year or more to implement and cost hundreds of thousands of dollars (literally). You usually have to hire a specialist to help with the implementation, not only in setting up the XML database and infrastructure internally but also creating the XSLT stylesheets to transform the content into the outputs you want. Then once set up, unless you have in-house experts, it’s difficult to change anything in your publishing pipeline. Many attempts to implement a CCMS fail. There are entire consultancy services like JoAnn Hackos’ Comtech set up to help companies through these long and arduous CCMS implementations.

Note that, technically, you don’t _need_ a CCMS to do structured authoring. You could write XML in a text editor and store the files in GitHub, but few do this. XML is cumbersome to work with in code editors, and you usually want to validate your schema before transforming the outputs. In short, the tool layer on top of the XML makes it much more practical, accessible, and less error-prone.

For many years, Anders Svensson worked as a DITA consultant helping clients through complex DITA implementations. He regularly observed where clients struggled. Back in 2014, he decided to create a tool &mdash; Paligo &mdash; that would dramatically simplify structured authoring for companies. He took a structured authoring foundation (DocBook XML) and built a push-button visual interface on top of it &mdash; see [The Story of Paligo: A new browser-based CCMS with all the features you'd ever want](https://idratherbewriting.com/2016/08/01/paligo-the-story-xml-ccms-in-the-cloud/) for details.

With Paligo, using a simple user interface, you can author structured content through a visual editor (or work in source), and publish HTML, PDF, eLearning formats, slides, and other outputs with little to no customization needed. Paligo even lets you publish REST API documentation by either importing OpenAPI specification documentations, or by populating API editors within its interface. You don’t have to hire a consultant to transform your structured XML into the outputs you need &mdash; everything is already set up, with options to customize and brand the output as desired.

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

Whereas a traditional DITA implementation might require a year or more of development, integration, customization, and training, Paligo gets you up and running practically overnight. You don’t have to train your authors with specialized XML-schema knowledge and rules. And as a cloud-based system with a simple user interface, the system is available online. You pay only for the number of authoring seats you need, with options for different licenses related to author vs contributor vs. administrator roles.

That’s Paligo’s context in the CCMS space &mdash; it dramatically simplifies the structured authoring tooling and CCMS implementation. The only somewhat similar tool of this kind is easyDITA (also a site sponsor). Comparing easyDITA with Paligo is beyond the scope of my article here, but basically easyDITA is based on DITA whereas Paligo is based on DocBook. However, with Paligo, the authors don’t need to work in the source or be familiar with DocBoo, so this distinction between DITA and DocBook isn’t that meaningful in the author experience.

## Paligo compared to HATs

Now let’s look at Paligo in the context of help authoring tools. Help authoring tools (HATs) usually refer to all-in-one tools such as MadCap Flare, Adobe RoboHelp, and others. These HATs provide web and PDF publishing but not in a structured way. The source code for HATs is not DITA or DocBook based. It’s usually some form of XHTML, with perhaps some proprietary markup in places.

Just as authoring in Microsoft Word has clear limits, so do HATs. For example, you can’t enforce a consistent structure for content with a HAT. Most users have freedom to write in whatever structure, style, and approach they want, which can lead to a variety of different approaches as your team grows. For example, suppose one author decides to put all content into expandable widgets on a single page, another author decides to separate out each task into individual topics, and another author abandons tasks for more narrative summaries with screenshots and arrows.

At some point, a tech comm manager often looks at the varying outputs and wants a structured model that enforces a common pattern among the outputs &mdash; a schema that all content must conform to. This consistency becomes especially important when you re-use content across the authors. Companies using HATs often want to level up their game at some point. But the jump from a HAT to a structured authoring CCMS can be like moving from a sailboat to a yacht.

Paligo sits in the middle between HATs and the expensive CCMS landscape. However, Paligo isn’t just a compromise or in-between tool. Instead, as a SaaS  product, Paligo simplifies structured authoring, making it accessible and practical for companies who want to enter the CCMS landscape. Paligo’s pricing model scales to your team’s size, allowing small teams to adopt structured authoring while also sizing up to mega teams as well.

## Freeing up time to focus on content

That’s it for my description of Paligo within the tech comm tools space. Now I’d like to make an argument for commercial tools like Paligo over docs-as-code tools. More and more, technical writers are functioning as content curators, taking content from others, making edits, integrating it with other content, and publishing. Companies expect technical writers to be experts at handling complex documentation publishing scenarios &mdash; this is, after all, why technical writers are often hired. As soon as the publishing task becomes more complex than simply converting Markdown to HTML, technical writers are brought in to help with the solution. These more complex publishing needs often involve the following:

*   Translation into multiple languages
*   Versioning of content
*   Integration with search
*   Gated access
*   PDF output
*   Content re-use
*   Single sourcing to help center support sites
*   Responsive web output

Although you can get some basic web output through open-source docs-as-code tools, without question, you’ll soon run into these more complex scenarios, and if your tools don’t handle these more complex scenarios well, you might have to spend _a lot of time_ coming up with creative workarounds. People outside tech comm probably won’t recognize these efforts, instead correlating your value mostly with content you write. By investing in good authoring and publishing tools &mdash; ones that provide the benefits of structured authoring while also remaining simple to configure &mdash; you free up time to focus more on content.

I’ve been in various tech comm roles for more than 15 years, at different companies. I’ve used a variety of tools &mdash; some I’ve disliked, others I’ve loved. But one thing I’ve always regretted is spending countless hours trying to hack together tooling needs (for example, creating PDF from Jekyll, or customizing API docs in Drupal, skinning Robohelp themes, defining Git workflows, or figuring out ways to add Algolia search in docs) while being recognized only for content I write, not for tool innovation or development.

Docs-as-code tools are trending in development circles, but only because of the simplicity of Markdown for developers. These same developer-writers rarely deal with more complex publishing requirements. There’s nothing worse than being stuck with a Markdown document alongside requirements to generate both a web version and PDF as well as to submit the content for translation to multiple languages (and other tasks). To accomplish this in the docs-as-code space, you usually need custom engineering support, which is rarely prioritized for docs.

Overall, I think it’s more cost efficient to buy tooling services you need from a company that specializes in tech comm. Need to generate responsive web content, PDF, and send it out for translation? Done. Need to export the content to Zendesk to integrate with a help center? Done. Need to pull in an OpenAPI specification document to publish API docs? Done. Need to index the content in Algolia or Swiftype search engine? Done.

Rather than spending weeks figuring these tasks out, tools like Paligo already do this for you. Become familiar with the tools and you free yourself up for those content tasks that are rewarded with more weight at your company. In short, focus on writing, not tools.

## Getting started

As a cloud-based solution, [Paligo](https://paligo.net/?utm_source=idratherbewriting&utm_medium=in-line-text){:rel="nofollow"} is easy to experiment with. After a demo and chat about whether Paligo is the right fit, you can set up a free trial. The Paligo team will also guide you on how to get the most meaningful information from the trial. If you need to get your content out, it’s easy to export your full content as DocBook XML or another output format, such as HTML. Pricing details for Paligo are [here](https://paligo.net/pricing/){:rel="nofollow"}. If you have questions about Paligo, feel free to leave them in the comments below. Learn more at [paligo.net](https://paligo.net/?utm_source=idratherbewriting&utm_medium=in-line-text){:rel="nofollow"}.
