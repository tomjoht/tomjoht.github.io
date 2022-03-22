---
title: "DITA (Trends to follow or forget)"
permalink: /trends/trends-to-follow-or-forget-dita.html
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.com/trendsdita
series: "Trends to follow or forget"
jtype: notes_fizzled_trends
description: "This post is <a href='/trends/trends-to-follow-or-forget-intro.html'>part of a series</a> that explores trends that I've either followed or forgotten, and why. The overall goal is to better understand the reasons that drive trend adoption or abandonment in my personal career. This post focuses on DITA."
---

## What is DITA?

[Darwin Information Typing Architecture](https://en.wikipedia.org/wiki/Darwin_Information_Typing_Architecture) (DITA) is an XML schema designed for documentation. A schema is a specific set of elements and includes rules about which elements can be used on which topics and which order. When you structure content with DITA elements, tools built to process DITA can generate the content into various outputs, such as web, print, mobile, or other formats. DITA offers both specialized schemas for tasks, concepts, reference, glossaries, troubleshooting, and more, as well as schemas for non-specialized, general topics. The non-specialized types are more similar to HTML.

DITA was originally created by IBM to deal with mergers and acquisitions. Documentation structured with similar tags becomes interoperable across systems that can handle that structure. You can share content from one documentation set to another, or merge documentation into a larger component content management system (CCMS), to manage your content.

For a better intro to DITA, see this [10 Minute Tech Comm podcast with Julio Vasquez](https://podcasts.apple.com/us/podcast/julio-vazquez-on-dita-and-the-technical-work/id920575683?i=1000545300075). Or see Heretto's [What is DITA XML?](https://heretto.com/what-is-dita-xml/)

## Why I embraced DITA

At the time (around 2014), I was growing frustrated by Drupal's inability to accommodate tech comm scenarios. In [WordPress and Web-based CMSs](/trends/trends-to-follow-or-forget-wordpress.html), I said that while web CMSs seemed like a convenient way to publish information on the web, as soon as you have to produce PDFs, send docs out for translation, provide multiple versions, re-use content, implement variables, control access to some content, make content available offline, etc., using these web CMS platforms becomes strenuous.

I grew tired of using tools that weren't designed for technical writers. As I learned more about DITA, I became enamored with the idea that an XML architecture was designed specifically for tech comm scenarios, and that all the problems I'd encountered could be solved through more specific tech comm structures and tooling. I just had to [learn the DITA schema](/ditaqrg/), [structure my content with the right elements](https://everypageispageone.com/2012/07/28/the-tyranny-of-the-terrible-troika-rethinking-concept-task-and-reference/), and voila, I could transform it into anything.

I experimented with the idea of managing content using DITA _outside_ of Drupal. I thought I might instead use Drupal [as a publishing engine](https://blog.oxygenxml.com/topics/publishing_dita_content_using_a_markdown_static_web_site_generator.html) (not as a content management system too). I explored the [same workflow with WordPress](/2013/01/21/how-to-import-webhelp-from-a-help-authoring-tool-into-wordpress/) &mdash; using these web CMS tools as publishing engines, while managing the content in DITA. Tools such as [Oxygen XML](/learnapidoc/pubapis_oxygenxml.html) could output DITA in plain HTML, which could then be imported into a [web CCMS](/trends/trends-to-follow-or-forget-wordpress.html) as a publishing engine. In fact, this workflow is one that has quite a bit of traction today.

After I left the company that used Drupal for docs (Badgeville), I continued to explore DITA at a new company (41st Parameter / Experian) because we were looking to migrate off Confluence and wanted to find the ideal system for documentation. I still wanted to implement my [faceted filtering model](/trends/trends-to-follow-or-forget-faceted-filtering.html) for docs, as well as provide other robust features for the user experience (federated search, version selectors, dynamic code snippets, and so on). As such, I was [researching component content management systems](/2016/02/12/the-only-big-systems-manage-xml-and-dita/) (CCMSs).

{{site.data.alerts.note}}
Don't confuse web CMSs with CCMSs &mdash; the latter is usually designed for tech comm content and allows you to store content at the component level (using XML) and then reassemble the components into the outputs you need. CCMSs also allow for multi-channel publishing, which lets you publish the content in a variety of formats. And the CCMS stores robust metadata about each component and where it's used.{{site.data.alerts.end}}

In my research, I found that nearly every CCMS required the content to be structured in XML, often in DITA or DocBook. These larger systems can't manage unstructured content and still do things like surface similar content, re-use components, and so on. So it looked like we would be migrating from Confluence to DITA and then selecting a CCMS to manage the content. We were told not to worry about the budget.

## Why I abandoned DITA

During this research time period, someone told me that GitHub managed its docs using Jekyll, and that it was worth checking out. I reached out to a GitHub writer, [Garen Torikian](https://github.com/gjtorikian), and he told me that Jekyll was “the bee's knees.” Given that our content consisted of developer documentation to support Java, PHP, C++, Android, and iOS, we had strong needs for more of a developer-friendly solution that would do syntax highlighting, allow developers to contribute, and more. In fact, one engineer was already providing us content in Markdown. As such, I began a pilot using Jekyll, and that pilot eventually became the adopted approach. The free price tag on the open-source Jekyll platform also helped, as we didn't have to get anything approved. In the end, I abandoned my exploration of DITA.

{% include ads.html %}

I didn't try too hard to pursue the DITA route. Why not? DITA was frustrating to me for a number of reasons. It seemed that unless you purchased an expensive CCMS to manage and publish your content, you were stuck with more of a HAT-like output from Oxygen XML (which actually looked pretty good). I was also frustrated that I couldn't control more aspects of the output, such as using zippies to expand/collapse page sections, or JavaScript frameworks. I wrote about this in a post titled [10 reasons for moving away from DITA](/2015/01/28/10-reasons-for-moving-away-from-dita/) (which has become an iconic post). Reactions to that post have been pretty polarized. For those who dislike DITA, it confirmed their dislike. For those who loved DITA, they provided zealous counterarguments. I retweeted it recently, and the seven-year-old post inspired Radu Coravu to write a more updated counterargument here: [Re: 10 reasons for moving away from DITA](https://blog.oxygenxml.com/topics/re_10_reasons_for_moving_away_from_dita.html).

Interestingly, Radu highlights a workflow for using static site generators (MKDocs) to publish the output from DITA &mdash; see [Publishing DITA Content Using the MKDocs Web Site Generator](https://blog.oxygenxml.com/topics/publishing_dita_content_using_a_markdown_static_web_site_generator.html). Had this workflow been more established back in 2015, I might have continued with DITA. Then again, I was also frustrated by other aspects of DITA that seemed ridiculous. I felt that I should be able to use h3 tags on a page without resorting to complex element nesting. And that I should be able to combine tasks with topics together if it made sense to do so. I felt that DITA's information model of breaking content into granular components resulted in information outputs that were tiny topics. I wrote about this here: [Does DITA Encourage Authors to Fragment Information into a Million Little Pieces?](/2013/04/22/does-dita-encourage-authors-to-fragment-information-into-a-million-little-pieces/) (This was another post that invited a lot of controversy. Nothing has been more polarizing in tech comm than DITA, apparently.)

In retrospect, had I stayed away from specialized topics (the task, concept, and reference schemas), I would have probably found DITA to be much more agreeable.

## Current status

DITA remains a common approach in tech comm. Some say that the DITA spec was always brilliant, but the tool support from the vendors never really transformed the content in impressive enough ways to compel people to adopt it. If the outputs from DITA-structured content aren't attractive enough, it's a hard sell when pitted against more outputs from modern web frameworks.

If docs are meant to be a selling point for your product, you'll likely want to customize and brand the output to match your company's style. The XML stack makes that customization challenging, especially when UX engineers might be much more familiar with React frameworks.

DITA is still popular among large tech companies, in part because nearly all the CCMS systems require structured content. And if you don't have a CCMS to manage your thousands of pages of content, what system do you have to manage it? Git? A custom-built solution? A thousand separate repositories on GitHub? Docs-as-code might work for smaller shops, but when you have thousands of pages of content, when you require PDF and translation workflows, and when you want to impose standard structures for the content across hundreds of contributing writers, there aren't many alternatives outside of XML. And if you must embrace XML, DITA is the most popular schema for it.

(Even without the CCMS route, you can still manage DITA content in a Git repository because the files are plain text files. Some authoring groups actually do this, but it isn't the most common approach. For more on this approach, see [DITA as code - a modern approach to the classic standard](https://techwriterkoduje.pl/dita-as-code) from Tech Writer koduje.)

Overall, given the difficulty of migrating to DITA, I suspect that migrating away from DITA might also be time consuming. As such, DITA is likely to remain the status quo for those who have already adopted it.
