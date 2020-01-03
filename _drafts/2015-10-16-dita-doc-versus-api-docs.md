---
title: Some thoughts on tool divergence between techcomm and API doc
categories:
- api-doc
- dita
keywords: 
description: "Tools used for technical documentation continues to be a fragmented proliferation of diverging technologies. Despite the growing ubiquity of DITA in component content management systems (CCMS), these systems don't model themselves after the REST API specifications that are growing more common in API doc environments."
published: false
---

## I need a CCMS for my projects, but ...

Content management systems, or CCMSs, allows you to manage components across an enterprise of documentation. For example, suppose you have 10 different products that re-use different topics, perhaps with different terminology or values. The CCMS world is perfectly built to handle your content. Just feed it DITA-structured content and voila, you can manage it beautifully in these robust systems.

Almost all the CCMSs for tech comm are DITA-based now. It makes sense to standardize. Otherwise you can't build systems to process and manipulate the content in consistent ways. DITA has an excellent model for chunking information into reusable components.

The idea is that writers across the enterprise can simply pull the topics they need from the CCMS sea of topics. The topic is a well-formed unit of content that can stand alone and be re-used by simply pulling it into your project. You may implement different values for the variables used in the topic, but it makes sense to keep a single source of truth pure. When translating or re-using the content, there's just one source. Everything else simply includes it in their projects rather than copying and pasting it.

To make the CCMS model work, you have to break your content into smallish components. Otherwise, some scenarios may not be able to re-use the components. The longer chunks you build, the less likely you'll be able to re-use those chunks in other systems. And if you can't re-use the chunk without customizing it, then you've entered copy and paste hell, where you have different versions of mostly the same content, with inconsistencies and outdated content. 

When you copy and paste content across projects, it might work at first -- until the original source changes. Then you have to track down all the copies and try to keep them in sync. That approach doesn't scale. Instead, it's better to re-use the content intelligently.

The CCMS idea seems cool until you start looking at things a little more closely. First, almost all CCMS platforms make the case for ROI because these systems cost a small fortune. You'll be lucky to get away with a $50k/year price tag.

But even if you have a bottomless purse, is it the right way to go? I could live with standardizing all my doc content in DITA (particularly the non-specialized flavor), but there's a larger problem. Just as DITA tries to standardize docs for a variety of benefits, the developer doc world is standardizing formats for APIs. 

You can describe your API using one of three specifications:
* RAML
* Swagger
* API Blueprint

The first two specifications use YML, the last is a combination of YML and Markdown. 

When you describe your API in these formats, you can reap a lot of benefits:

* Interactive documentation
* Unit testing
* Prototyping and mocking services
* Client SDK generation

Amazon recently released tooling that now allows you to import a Swagger spec for your API to make it more discoverable. 

> The new tool lets AWS customers import a Swagger definition and automatically have that create or update an API in their API Gateway service. ... “We’ve seen that many enterprise users keep their API definitions in their source repository as Swagger files and deploy them as part of their build process.  &mdash; See [Amazon's Swagger importer points to new wave of API automation tooling](http://www.programmableweb.com/news/amazons-swagger-importer-points-to-new-wave-api-automation-tooling/2015/08/25?utm_content=buffer1de06&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer).

If you're working in API documentation, these specs must be on your radar, if not in your implementation plans. At the very least, as a tech writer working with API doc I want to feature an interactive API console in my docs. The console lets users make requests and see responses right in the doc.

The specs let you define endpoints and parameters, sample requests and responses, and provide other details about your docs.

The web is on a rapid API trajectory. Everything is becoming an API. If you're not seeing the API landscape multiply before your eyes, it's probably because you're in a non-tech hub or in some kind of gray government landscape on the east coast. 

But in 5 years, the bulk of documentation will consist of API services. The Internet of Things is going to be driven by APIs. How do you think you'll connect your alarm clock to your coffee maker to your thermostat and your electric blanket warmer? You're not going to have wires connecting all of these things. Instead, they connect through API calls on the web. REST services interacting with each other. 

As a developer, when you incorporate the information wiring for a dozen different products, you'll be using API documentation. You'll check out the docs for product A, B, and C, and you'll want the see what endpoints are available, how to make requests, and so on. You'll want to incorporate client SDKs in your language, or see other code samples in a variety of languages. Lots of companies are generating tooling around these specifications. For example, take a look at APImatic.io. If you're a development shop, are you going to code all of this manually? No, not when you can automate it.

Technical writers can start to structure their documentation in these specs and ride the wave of innovation, or they can stand aside as the train drives by.

Now let's come back to the CCMS idea. DITA isn't designed for API documentation. There's now easy way you're going to somehow use DITA to push your API doc into one of these YML-based specifications. DITA can address scenarios that aren't based around these specifications, and there is certainly a host of developer documentation that DITA can certainly accommodate. But when it comes to producing the specs, DITA and the CCMS are the wrong tools. 

## So what then?

This kind of sucks because I'd really like to use a CCMS for my content. The problem with static site generators is that companies don't build tooling around them. There aren't any component content management systems that process Markdown. If you want a CCMS, you almost invariably need to structure your content in XML, and most likely DITA.

What if you don't want to go that route? Can you manage re-use and CCMS content through other means?

Eliot Kimber's class post, [DITA without a CMS: Tools for Small Teams](http://drmacros-xml-rants.blogspot.com/2014/01/dita-without-cms-tools-for-small-teams.html), gives me hope. If you want ideas on how to get around the need for a CCMS, read this post. 

Kimber suggests that with a few tools such as Github, Jenkins, and an XML editor, you can make it work. Sure, you lose out on the rich metadata that CCMSs offer, and link management, and other management perks. But when the CCMS is overkill, you can get by without them.

I'm now wrestling with exactly how to make this work. My main doc project's audience is now a series of internal customers, which means much of the content will be re-used in other doc sets. Is it possible to handle content re-use, versioning, and collaboration through Bitbucket or Github? Exactly how do you make that work with a farm of Jekyll projects?

I'll be adding more thoughts over the coming weeks.





context-sensitive help




