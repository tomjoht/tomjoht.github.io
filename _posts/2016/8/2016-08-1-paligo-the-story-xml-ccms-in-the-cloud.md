---
title: "The Story of Paligo: A new browser-based CCMS with all the features you'd ever want"
categories:
- technical-writing
- podcasts
keywords: paligo, component content management systems, ccms, xml, docbook, help authoring tool, web content management, content management, web CMS for documentation teams
description: "Up until two years ago, Anders Svensson and his colleagues, based in Sweden, provided DITA and XML consulting. They eventually created their own XML-based component content management system (CCMS) called Paligo, which includes a full set of documentation features to handle single-sourcing, translation, and other documentation needs. Paligo solves the challenges that Svensson's customers had been facing for years with other CCMS systems."
date: 2016-08-01
tags:
- technical writing
- content management
- CCMS
- XML
- component content management
- Paligo
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/paligo.mp3
podcast_file_size: 7.3 MB
podcast_duration: "08:46"
podcast_length: 7312169
bitlink: http://bit.ly/xmlccmspaligo
---

{% include audio.html %}

## Beginnings

Up until two years ago, Anders Svensson and his colleagues, based in Sweden, provided DITA and XML consulting full-time to European companies looking to migrate and manage their content in an XML structure.

Although many companies could understand the DITA spec, migrating content to DITA in bulk, managing it in a user-friendly content management system, and building out the PDF and HTML deliverables were more complex and daunting tasks than companies could handle themselves. This was the focus of Svensson's company, Expertinfo.

After years of steering companies toward custom setups or existing CCMS systems, which often cost a small fortune to use and included a host of problems (long deployment projects, steep learning curve, poor user acceptance, etc.), Svensson felt it was time to build their own system.

Having been on the lookout for good systems for a long time, he finally came into contact with Frank Arensmeier, who Svensson describes as nothing short of a programming genius. Frank had been working on exactly the type of system Svensson was looking for.

They teamed up and, starting with the existing foundation code base that Arensmeier had built, they put together a group of engineers and set out to build an affordable, easy-to-use CCMS that would solve the many problems Svensson and his colleagues had encountered through their years of DITA consulting. This is how Paligo started.

## The release

<a href="http://paligo.net/" rel="nofollow">Paligo</a> is an XML-based component content management system (CCMS) that users access entirely in the cloud. Paligo's team built on top of a custom topic-based version of Docbook XML to create a number of user-friendly features.

<figure><img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/Dashboard3-2280-fixed-languages-checkout.png" | prepend: site.baseurl }}"/><figcaption>Paligo's user interace</figcaption></figure>

With Paligo, you can do the following:

*  Drag and drop topics into publications (similar to DITA maps)
*  Configure variants for different products and/or output formats
*  Easily find strings and text snippets that can be re-used
*  Render attractive, responsive HTML5 websites as well as print quality PDFs and several other formats
*  Collaborate with other users and reviewers simultaneously on the same project
*  Manage translations to any language
*  Manage versions and branches
*  Tag topics with taxonomy categories to surface related content, and more

You can see a more detailed <a href="http://paligo.net/features" rel="nofollow">list of features here</a>.

Since its launch in 2014, Paligo has been steadily growing and has just released Version 2, which provides a significant revamp to their code and makes authoring and content management in the interface smoother and easier.

## Who uses Paligo

Paligo primarily attracts documentation teams who want to take the next step beyond help authoring tools (HATs) toward a content management system. The most common customers are those using Flare, Robohelp, Author-it, or DITA and need something more robust to handle their content. These customers usually have heavy single-sourcing requirements for their content, often including translation as well.

While these customers want a CCMS, they either don't have budget and resources to implement high-end CCMS platforms like IXIASOFT, Trisoft, or others (which can cost $100-200k per year), or they want to avoid the threshold and complexity of an installed system. But they still want a fully featured system to handle every documentation need.

On a platform and price comparison, Paligo's most comparable competitor would probably be easyDITA, which is a cloud-based CCMS that has also been growing. Both systems are XML-based, with easyDITA being based on DITA and Paligo on Docbook. But the products differ in other ways as well. easyDITA follows more closely the DITA content model and the DITA Open Toolkit, whereas in Paligo the DocBook content model only provides the document structure, and the features are developed around it in the database programming paradigm.

Because of the database model as the foundation, where each individual text string is actually stored separately, Svensson says you can do things like prompt users when they might consider re-using the same string and store it as a re-usable chunk, find out where each text string is re-used, and so on.

With Paligo, you write in a visual editor, which makes it easy to focus on the content. The system guides you to the elements you need, and authors quickly get how to step in and out of elements as they create their content.

Svensson says most users don't actually care whether the underlying XML is DITA or Docbook, as long as the CCMS provides the features they need. It's *how* the CCMS implements the schemas, not so much the schemas themselves, that makes the difference.

And it turns out that building on a foundation of Docbook XML is considerably easier than building with DITA. DITA tends to impose more restrictions about what you can and can't do, Svensson says. Even so, Paligo is only "based on Docbook." Paligo extends from this foundation, adding what they need and not letting the content model restrict the system, while maintaining full capability to export to the open standard.

Instead of deliberating about schemas, users are much more focused on the CCMS's features. In a thread on Techwr-l about "modern" authoring tools, Robert Lauriston, who recently switched from Confluence to Paligo, [noted][1]:

>Paligo is my idea of what the next generation should look like: SaaS, browser client, DocBook source, GUI editor, built-in CMS for versioning, topic reuse, translation, and multiple language support, integrated review and approval workflow management, integrated tech support so they can work directly with my docs to fix things, CMS plugin for Oxygen so you can do things not directly supported by Paligo.

Reading Lauriston's comment underscores how the list of doc needs extends beyond HATs and encompasses the full feature set needed for robust content management.

## Growth

With the steady increase in users, Paligo had to ramp up the number of engineers and support staff. Their product roadmap is also growing as well. Right now Paligo is just a component content management system, meaning you author and store your content in it, and push out the HTML5 or PDF publications you want.

The long list of planned future enhancements include the following:

*  Integrations for help desk systems, third-party translation systems, and more
*  Hosting the HTML5 and PDF deliverables on servers for users
*  Enhanced contributor role, beyond the standard author, reviewer, and translator roles
*  Batch and scheduled publishing
*  Gallery of more ready-made output templates

## Pricing

Paligo is priced on a SaaS model, starting as low as $79/month for a Solo user up to $259/month per user in the Business plan. (See more <a href="http://paligo.net/features" rel="nofollow">pricing details here</a>.)

Paligo even has a pricing model that "grandfathers" in customers at their starting price. If you become a user at a specific price, you get to keep that monthly subscription price for as long as you maintain your subscription. This way you can avoid fears that Paligo might suddenly escalate their pricing.

## Summary

Paligo provides a compelling solution to content management. With their releases, they've shown the tech comm world a number of trends:

*  Users who are initially happy with HATs eventually grow out of them and need more robust systems to manage their content.
*  Users working in teams on the web need browser-based CCMSs that allow for easy collaboration and interaction.
* You can build a robust CCMS that includes all the features users need without charging users the equivalent of a small house every year.

To explore Paligo with a free trial, click **Get Started** in the upper-right corner of the <a href="http://paligo.net/" rel="nofollow">Paligo homepage</a>.

*Note: This post was sponsored by Paligo, which is one of the advertisers on this site.*

## Interface Tour

The following are some screenshots of Paligo that give you a better sense of the user interface and functionality.

**Structure view**
<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/StructureView-2280.png" | prepend: site.baseurl }}"/>

**Overview of resources, such as image assets**
<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/ResourceOverview.png" | prepend: site.baseurl }}"/>

**Searching for content based on keywords and elements**
<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/Search-1549.png" | prepend: site.baseurl }}"/>

**Selecting variables**
<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/SelectVariable2.png" | prepend: site.baseurl }}"/>

**Drag and drop widget structure**
<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/DragAndDropWidgetStructure.png" | prepend: site.baseurl }}"/>

**Viewing statistics about re-use**
<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/statisticsview.jpg" | prepend: site.baseurl }}"/>

**Tags for taxonomy**
<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/TaxonomyColors.png" | prepend: site.baseurl }}"/>

**Translation management and status**
<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/TranslationStatus-1549.png" | prepend: site.baseurl }}"/>

**Workflow for documents**
<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/Workflow5.png" | prepend: site.baseurl }}"/>




[1]: http://www.techwr-l.com/archives/1607/techwhirl-1607-00100.html#.V52LFNArLwc
