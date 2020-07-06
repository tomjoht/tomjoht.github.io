---
title: "XML Documentation for Adobe Experience Manager (AEM) &mdash; Integrating documentation and marketing content into a seamless whole"
categories:
- technical-writing
keywords:
bitlink: http://bit.ly/xmldocaem
description: "XML Documentation for Adobe Experience Manager (AEM) provides a DITA-based CCMS for both technical documentation and digital asset management. Palo Alto Networks used AEM to build a world-class documentation portal. A driving factor in their adoption was the ability to integrate documentation and marketing content."
---

*Note: Adobe is one of the sponsors of my site.*

## Introducing XML Documentation for Adobe Experience Manager

<a href="https://www.adobe.com/products/xml-documentation-for-experience-manager.html" rel="nofollow">XML Documentation for Adobe Experience Manager (AEM)</a> was initially released in July 2016. One of the early adopters was Palo Alto Networks, which Adobe featured in a [case study](https://blogs.adobe.com/techcomm/2018/08/adobe-customer-story-palo-alto-networks.html) on their blog. The following video tells the story of why Palo Alto Networks implemented XML Documentation for AEM:

<figure><a href="https://images-tv.adobe.com/avp/vr/2ebf7798-cf83-4979-bf73-b8dbe6f7cfb1/fc140e46-9938-4bef-8a4e-7bb94474f6a1/b058dc03-2117-44f7-9a68-e0f0fa60eb87_20180712073812.1280x720at2000_h264.mp4"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/paloaltonetworksvideo.png"></a><figcaption>The video is embedded from a post on the Adobe Tech Comm blog called <a href="https://blogs.adobe.com/techcomm/2018/08/adobe-customer-story-palo-alto-networks.html" rel="nofollow">[Adobe Customer Story] Palo Alto Networks – Increasing Content Reach with Integrated Technical Documentation.</a></figcaption></figure>

I actually recognize a couple of people in the video: Laralyn Melvin and Matangi Vaidyanathan. They presented to the STC Silicon Valley chapter in 2016 (see this STC Silicon Valley post titled [March 21, 2016: Building a Documentation Portal](http://www.stc-siliconvalley.org/2016/03/06/march-21-2016-building-a-documentation-portal/)), and explained some of the challenges they were trying to solve.

Their presentation was so thought-provoking, I ended up [writing a post](https://idratherbewriting.com/2016/05/11/establishing-more-context-in-tech-comm/) at the time reflecting on some of the themes. In their STC presentation, Laralyn and Matangi came across as extremely sharp, organized, and strategic, so it doesn't surprise me that they developed the impressive AEM-based documentation portal at [docs.paloaltonetworks.com](https://docs.paloaltonetworks.com/) (pictured below):

<figure><a href="https://docs.paloaltonetworks.com/"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/palo_alto_networks_doc_home.png" alt="Palo Alto Networks"/></a><figcaption>Palo Alto Networks Documentation Portal. A key design principle in building the site was to make it look like web content rather than an antiquated documentation site.</figcaption></figure>

More recently, at [Adobe DITA World 2018](https://2018-adobe-dita-world.meetus.adobeevents.com/register/), Laralyn and Bernadette Javier presented their story about moving to XML Documentation for AEM. You can view their recording on the [Day 1 recordings](https://2018-adobe-dita-world.meetus.adobeevents.com/register/#_atcs-dita-world-day-1). Their presentation is titled "Moving to DITA without Losing Your Soul: The Palo Alto Networks success story" and lasts an hour. (The reference to not "losing your soul" refers to keeping the larger stories coherent in their docs even when chunking the content up in the DITA information model.)

In their [Adobe DITA World 2018](https://2018-adobe-dita-world.meetus.adobeevents.com/register/) presentation, they explain that Palo Alto Networks was taking on enterprise customers fast, and these customers demanded enterprise-level docs. Their marketing group was already implementing AEM, and their doc group had an opportunity to implement documentation in the same system through the XML Documentation for AEM. Laralyn explains:

> Our marketing was also in startup mode, looking for a CMS on which to build our new corporate website. Because of this, the decision to purchase the Adobe Experience Manager was a company-wide solution to host both our corporate website and our documentation portal. ... Marketing would own the look and feel and branding, which we would inherit, but we would be responsible for developing our own documentation solution.

The most important factor driving their decision towards AEM was the integration of documentation with marketing content. This integration is one of the main selling points of AEM. With the initial release of XML Documentation for AEM in 2016, Adobe explained:

> With XML Documentation for Adobe Experience Manager it is now possible to host technical content on the same platform as the marketing content. This will help create consistent user experiences for pre- and post-sales content. It also opens up the possibility to use DITA to create marketing content, improving content reuse, single-sourcing, manageability, etc. ([NEW: XML Documentation for Adobe Experience Manager – a full-fledged DITA CCMS](https://blogs.adobe.com/techcomm/2016/07/dita-ccms-xml-documentation-add-on-for-aem.html))

Laralyn says she wanted their content to look and feel like a website, especially to customers arriving from Google. She didn't want customers to even realize they were reading documentation as they arrived on the Palo Alto Networks site. This integration was the driving factor that led them to select and adopt AEM in the first place.

Laralyn says that now that their AEM implementation has launched, their documentation is a lot more seamless with the marketing content. Laralyn explains:

> The ability to have documentation be more central to the customer experience [was the driving factor in our adoption of AEM]. We're well integrated with other content our company produces. Our content looks less "documentation-ish" and more like web articles. Ultimately, this is what we were looking for.

For those customers who use the search feature directly within their documentation portal, the many facets users can select (product, version, operating system, language, etc.) allow customers to refine what they're looking for in a more specific way. Here's an example of the faceted search:

<figure><a href="https://2018-adobe-dita-world.meetus.adobeevents.com/register/#_atcs-dita-world-day-1"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/pan-faceted-filters.png" alt="Faceted filters with search" /></a><figcaption>Faceted filters with search</figcaption></figure>

The faceted filtering and dynamic population of their portal based on content tags makes their content fit seamlessly into the web landscape. You can read more about their presentation in [Danielle Villegas' Adobe DITA Day write up](https://blogs.adobe.com/techcomm/2018/10/adobe-dita-world-2018-day-1-summary.html#tcspost-adw2018-p3).

## Combining documentation and marketing content

Similar to Laralyn, I think the biggest appeal of AEM is the integration of tech comm and marketing content. When you have content in separate systems, in different formats, re-use isn't possible. As a result, marketers develop their own content (blog posts, ebooks, case studies, PDFs, etc.) separate from docs. The content experience between marketing and documentation is fragmented, and the sites often look entirely different from each other.

At my work, our field engineers will often write blog posts because evangelism is part of their role, and they associate tech evangelism with blogging. We have extensive multi-part tutorials on our blog that we're only now starting to migrate into our docs. How cool would it be to single-source that content between both the blog and tech docs from the start. And even better, for tech docs to have a common look and feel with marketing content.

I would also love to surface relevant links between the blog and docs, making content one seamless whole. Laralyn says they even measure path flows that users take between knowledge-base articles to docs and then to the support ticket creation page. This gives them a better sense of whether docs are reducing support calls.

By integrating your content into one seamless whole, you can better understand the journeys your customers take &mdash; what marketing pages they might enter, how they transition to tech docs (or vice versa), and so on. With integrated content, your analytics can show more of a complete story. In contrast, if your docs are standalone experiences that don't interconnect, understanding that larger customer journey is more difficult. Understanding the larger journey involves connecting the dots across marketing, tech docs, and support.

## What a CCMS provides

To understand how XML Documentation for AEM differs from other authoring and publishing solutions, it's important to understand what a CCMS is. This is a significantly different category of tools. As a component content management system, XML Documentation for AEM stores and manages the content you create and allows you to re-use in more effective ways. You can store content as re-usable components (based on the DITA component structure) to make more efficient use of the content across the site. The CCMS also generates outputs to publish to various channels, such as HTML, PDF, and EPUB.

XML Documentation for AEM uses DITA as the structure (structure is essential for content management in practically any CCMS). But note that you don't have to use _specialized_ DITA topics (e.g., tasks, concepts, reference). You can just use the general DITA topic type, which closely resembles XHTML. You can also use any DITA editor you want to create the content. You could, of course, use <a href="https://www.adobe.com/products/framemaker.html" rel="nofollow">Adobe FrameMaker</a> (which provides tighter integration with AEM), but you could also use another editor, such as Oxygen XML, or XMetal, or you could write content in plain text files if you want.

AEM will consume the content from these authoring tools in a direct way (for example, Oxygen XML lets you define the source where your content is stored). You could also open up a web browser and author directly in the AEM web interface, which is what less technical authors might do. You can even manage content using REST APIs provided by AEM. In short, the authoring editor is platform agnostic so long as your content conforms to the DITA specification. The following slide depicts the authoring and publishing flow:

<figure><a href="https://2018-adobe-dita-world.meetus.adobeevents.com/register/#_atcs-dita-world-day-1"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/aem-workflow.png" /></a><figcaption>You can use any DITA editor to author your content. AEM provides the documentation and asset management, including publishing, translation, reports, approval workflows, search, and so on.</figcaption></figure>

## Features provided through XML Documentation for AEM

Once you have your structured content in AEM, life gets a lot easier. Here are a few features provided by XML Documentation for AEM:

*   _File metadata._ You can easily view all meta-information about who created the topic, when it was last modified, what version it is, and more are available in an easily viewable way.
*   _Localization workflows._ You can push content into translation workflows that round trip the content in and out of your localization platform.
*   _Robust search._ The HTML output provides Google-like search &mdash; users can search for content and find it, even filtering by tag. You can also define weighting for the results.
*   _Semantic tagging._ You can tag topics and automatically surface content with similar tags in the user interface based on what topics users have already been viewing.
*   _Content re-use._ You can re-use content across your entire site, using the same source for marketing and tech docs, or even just across your many tech doc projects.
*   _Link dependency management._ You're notified when you're breaking a link if you change a file name that other topics are pointing to.
*   _Outputs to HTML, PDF, EPUB, Kindle, and more._ You can generate outputs for the most commonly needed formats. All of these formats are already defined and styled in professional ways, including responsive views for the HTML output that are optimized for mobile.
*   _Version management._ You can manage different versions of files to support multi-version systems and upcoming releases. If you have multiple versions of the same file, the HTML user interface can provide a version selector.
*   _Approval workflows._ You can route content through approver workflows based on roles in the system, such as pushing content through an editor before publishing it.
*   _Inline commenting and review._ SMEs and other reviewers can comment inline on your docs; you can click Accept/Reject buttons to easily incorporate the suggested edits.
*   _Integrated metrics._ If you're also using the Adobe Marketing Cloud for analytics, you can view analytics for your content right in the same console where you author and edit the content.
*   _Digital asset management._ You can manage your image assets and other files in the same space as your tech doc content.
*   _Health reports for docs._ You can run reports to assess doc health, such as identifying stale topics or topics with broken formatting.

See [XML Documentation for Adobe Experience Manager – Solutions Brief (PDF)](https://www.adobe.com/content/dam/acom/en/products/xml-for-experience-manager/pdfs/XML_Documentation_for_Adobe_Experience_Manager_Solutions_Brief_EN.pdf) for a downloadable list of features and details.

If you have to develop your own solutions for all of the above, think about how much time this will require. Instead, XML Documentation for AEM will handle all of this for you, allowing you to focus on content development. That said, implementing the initial CCMS setup is not a light undertaking, and it might involve developing some custom code for the integration, migrating your content to DITA, building out your search facets in Solr, and more. But once you finish the setup, the process should be more or less automated. Authors can focus on the content rather than the tools.

## Conclusion

Overall, XML Documentation for AEM is certainly worth considering, especially if you're thinking of adopting a CCMS. If you have thousands of pages of docs, with many different authors, localization requirements, the need to output both responsive HTML and PDF and more, investing in a CCMS like AEM could save you a lot of time and money in the long term. It can allow you to focus your energy on content development rather than tool support. Most importantly, it can unify content efforts across both marketing and tech docs &mdash; an integration that can bring new possibilities for collaboration across your organization.
