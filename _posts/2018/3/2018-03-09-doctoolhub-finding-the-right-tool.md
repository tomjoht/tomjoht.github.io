---
title: "Guest post: The story behind DocToolHub, a site for finding tech comm tools"
categories:
- technical-writing
keywords:
description: "Last week I ran across an interesting site called <a href='https://doctoolhub.com'>DocToolHub</a> that classifies hundreds of tech comm authoring and publishing tools. When I <a href='https://twitter.com/tomjohnson/status/963987569431080960'>shared the link on Twitter</a>, it received 38 favorites and 16 retweets, so I assume many others found the site useful as well. I decided to follow up with <a href='https://twitter.com/grbabb'>Greg Babb</a>, the person who created DocToolHub, to find out more details and the story behind DocToolHub. I told Greg I was interested in strategies for tagging and classification, as these strategies apply more generally to documentation as well. The following is a guest post by Greg Babb about DocToolHub."
bitlink: http://bit.ly/doctoolhubstory
---

<figure><a href="https://doctoolhub.com/"><img style="border: 1px solid #dedede;" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/doctoolhubscreen.png" alt="DocToolHub"/></a><figcaption>DocToolHub helps you find the right documentation tool for the job.</figcaption></figure>

## Introduction

As many of you are aware, finding suitable technical documentation tools can be a challenge. This isn't helped by the fact that:

- The market for documentation tools is fragmented into a bewildering variety of companies and product segments.
- There is no generally accepted nomenclature for classifying the universe of documentation tools.
- We as tech writers must potentially work with many different technologies that may be completely unfamiliar to us when starting a new job. We must take these technologies into account when deciding how to present our information within or alongside these products.
- The websites of many vendors simply do not communicate a level of technical detail that is sufficient for understanding how to implement their products.
- Technical documentation tools (as a domain) just don't get the marketing love of other domains. For examples of this, have a look at all the aggregate lists and tools for finding UX design, marketing, and developer products (e.g., Product Hunt, Marketing Stack, etc.).

Other issues abound but I think the point is well understood. On which sources can we rely when researching a new tool to use?

## My research process

Remembering my days as a lone technical writer, one ever-present theme was the lack of fellow writers with whom to discuss documentation tools and practices. When a new project started, oftentimes I could rely on prior experiences with tools. If I was lucky, I could recommend or use those tools again. If I had to learn how to deal with new outputs, I spent a lot of time researching tools in Google or asking around in forums.

When doing searches, I sometimes wondered whether I was using the right terms, or if my searches would be incomplete because of terminology differences among vendors. For example, when looking for a DITA CCMS, you can be reasonably sure those terms will yield relevant results (maybe throw in "XML" for good measure). But what about guided help for a website? You might enter terms like "contextual help" or "tooltips" but then see results for displaying tooltips in native Windows applications.

And even after I found a reasonably good tool, there was sometimes a nagging feeling there might be a better tool out there, a tool I just didn't know about.

## A search engine for tech documentation tools

In my mind, having a list of all or most tools on one site is something to aspire to and would already be mightily helpful. Categorizing this list would make it even more useful but would be challenging.

Sites showing categorized lists of products such as [Startup Stash](http://startupstash.com/) are pretty impressive. Not only is this site's UI aesthetically pleasing, but it offers a schema for instantly recognizing the usage and functions of tools--a real time saver compared with combing through each site individually.

<a href="http://startupstash.com/"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/startup-stash.png" alt="Startup Stash" /></a>

You will notice that search is a major feature of this site. When the filters below don't work for you, there's always full-text search to fall back on.

This site's UI was of course my inspiration for creating [DocToolHub](https://doctoolhub.com), but it needed to be adapted to the needs of tech writers.

## Categorizing tools and file formats

The first step was to build a taxonomy by thinking of the ways documentation professionals might go about researching tools.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/doctoolhub-use-cases.png" alt="Use cases"/>

Categories such as "user manuals" and "online help" convey more meaning about use cases however than about the tools themselves. As a professional, I find it more useful to think of a tool as a "word processor" or a "static site generator" for example.

Eventually, I found the following schema to work for most, if not all, tech documentation tools:

<table>
<col width="35%">
<col width="65%">
<thead>
    <tr>
      <th>Category</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><b>CCMS</b></td>
      <td>Component content management systems</td>
    </tr>
    <tr>
      <td><b>CSDB</b></td>
      <td>Common source databases</td>
    </tr>
    <tr>
      <td><b>Documentation generators</b></td>
      <td>Tools for generating documentation from the basis of comments in code source files</td>
    </tr>
    <tr>
      <td><b>Embedded help</b></td>
      <td>Tools for inline or in-app help, walkthroughs, guides &amp; coach marks</td>
    </tr>
    <tr>
      <td><b>Help authoring tools</b></td>
      <td>Desktop or hosted tools designed for authoring &amp; publishing help files</td>
    </tr>
    <tr>
      <td><b>Viewers</b></td>
      <td>Tools for viewing help files</td>
    </tr>
    <tr>
      <td><b>Localization tools</b></td>
      <td>Tools for internationalization &amp; localization (i18n)</td>
    </tr>
    <tr>
      <td><b>Plugins, scripts &amp; converters</b></td>
      <td>Tool plugins &amp; scripts for unique functionality</td>
    </tr>
    <tr>
      <td><b>Static site generators</b></td>
      <td>Web template systems that use a processor to combine templates to produce web pages</td>
    </tr>
    <tr>
      <td><b>Text editors</b></td>
      <td>Editors (non-IDEs) for authoring text, markup, code, and other outputs</td>
    </tr>
    <tr>
      <td><b>Wikis</b></td>
      <td>Websites that offer collaborative authoring &amp; publishing from a web browser</td>
    </tr>
    <tr>
      <td><b>Word processors</b></td>
      <td>Desktop or hosted tools for authoring &amp; editing documents</td>
    </tr>
    <tr>
      <td><b>XML editors</b></td>
      <td>Tools for authoring &amp; editing XML files</td>
    </tr>
  </tbody>
</table>

At 300+ tools and counting, however, there would need to be ways of further filtering the list. To this was added categories for platforms (OS, SaaS/hosted), cost, and whether a given tool offers localization and topic reuse features. Regarding platforms, most cloud-based tools today offer content authoring and editing exclusively in a web browser, rendering discussions of OS rather moot.

A decision was also made regarding how broadly to define "tech writing tools." For example, we often use tools such as PowerPoint or Visio, but these are not, strictly speaking, dedicated technical authoring tools. I had to make a similar decision for file formats and did not include, for example, graphic files or various Microsoft Office formats beyond Word. However, I probably need to reconsider this, as it's been useful to add categories such as localization tools.

Lastly, a tech writer's list of requirements typically includes file formats, so each tool has a list of these where applicable: input/output, docstrings for documentation generators, or programming languages (mostly for syntax highlighting). The input/output formats are admittedly lumped together in a single list.

## Design and development

Naturally, I would have loved to just grab a template from [ThemeForest](https://themeforest.net) to build the site, but the sheer number of filter buttons presented design and development challenges of their own.

I could have gone with dropdown menus but ultimately discarded this in favor of a big page of buttons&mdash;which gives users a complete picture of what they've selected. (I would be interested in hearing opinions from those preferring dropdown menus, though.)

Preferring a minimalist design, I added tooltip explanations to each filter and generally tried to reduce text verbosity where possible. This goes as well for the tool description pages, where I discarded the marketing-speak of vendor websites in favor of more technical but minimally expressed language.

Below are the designs in [Sketch](https://www.sketchapp.com/) that I created for desktop, tablet, and smartphone.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/doctoolhub-sketch.png" alt="Sketch artboards"/>

The site is a single-page application developed in jQuery and JavaScript, and integrates APIs from Algolia and Firebase. Both of these backend APIs refer to a single tool index file in JSON format. Each entry in this JSON file represents a tool and contains a standard set of fields (e.g., "product name," "product description," "file formats," "platforms," etc.).

The filtering works in a simple way: you click a filter button for, say, Markdown and the code matches those tools that have "Markdown" in the "formats" field. Clicking additional filter buttons narrows this list by searching on those tools meeting all those criteria.

Considering a tagging metaphor, you might think of certain fields as sets of tags. For example, with a product named [Calenco](https://www.calenco.com) you can author files in DocBook XML, XML, HTML, and WebHelp formats (among others). The corresponding formats field for this tool is `"formats" : "DocBook, XML, HTML, WebHelp"`. You might say this particular product is "tagged" with those file formats.

Consistent filtering is enforced by applying the "tags" consistently for all tools according to clear guidelines. Regarding the guidelines, some tool categories are obvious and permit easy tagging (e.g., the difference between word processors and static site generators is clear), but others are more subtle. For example, where exactly does the boundary lie between SaaS and hosted? Although both types of tools can be cloud based, I accepted the [guideline](https://www.verticalrail.com/kb/saas-hosted-difference/) that hosted tools allow you to retain control over your publishing software (think of web hosting). Hosted tools can often be installed on local premises, whereas SaaS solutions don't offer this possibility.

Back to the design, the buttons had to be responsive and work well on different browsers and platforms. This is especially important when you consider that many if not most tech writers work in corporate environments where some outdated version of Internet Explorer is still the internal company standard.

## Deployment

Good UX also means not having to wait for server responses, so I went with AWS and their global CDN. I'm happy with the site response times and not having to configure server settings. I've gotten feedback on errors and over time the tool descriptions will become more complete. I've been adding more tools and considering additional categories (for example, augmented reality).

Overall, I hope [DocToolHub](https://doctoolhub.com/) will be useful in terms of getting started with initial research and narrowing down lists of candidate tools.

## About Greg Babb

[Greg Babb](https://twitter.com/grbabb) is a freelance technical communicator based out of Zurich, Switzerland. During his 15+ year career, he has worked in domains ranging from instructional design to XML-based systems and lately docs like code. He believes there must be an easier and better way to do things, and ultimately wants the same cool gizmos for techcomm that the UX and frontend dev communities have enjoyed for years.
