---
title: Intro to REST API documentation
permalink: /docapis_intro_to_rest_api_doc/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 1.1
type: notes_docapis
---
{% include notes.html %}

## Complete and accurate docs are most important factor in APIs

Before we get into the nuts and bolts of documenting REST APIs, let me provide some context about the popularity of REST API documentation in general.

In a [2013 survey by Programmableweb.com](http://www.programmableweb.com/news/api-consumers-want-reliability-documentation-and-community/2013/01/07), about 250 developers were asked to rank the most important factors in an API. "Complete and accurate documentation" ranked as #1.

<a href="http://www.programmableweb.com/news/api-consumers-want-reliability-documentation-and-community/2013/01/07"><img src="{{ "/images/restapicourse/programwebsurvey.png" | prepend: site.baseurl }}" alt="Programmableweb survey" /></a>

John Musser, one of the founders of Programmableweb.com, has followed up on the importance of good API documentation in some of his presentations. In "10 reasons why developers hate your API," he says the number one reason developers hate your API is because "Your documentation sucks."

<a href="http://www.slideshare.net/jmusser/ten-reasons-developershateyourapi"><img src="{{ "/images/restapicourse/yourdocsucks.png" | prepend: site.baseurl }}" alt="Your API documentation sucks" /></a>

## REST APIs are taking off in a huge way

If REST APIs were an uncommon software product, it wouldn't be that big of a deal. But actually, REST APIs are taking off in a huge way. Through the PEW Research Center, Programmableweb.com has charted and tracked the prevalance of web APIs.

<a href="http://www.slideshare.net/programmableweb/web-api-growthsince2005"><img src="{{ "/images/restapicourse/growthinrestapis.png" | prepend: site.baseurl }}" alt="Growth in web APIs" /></a>

eBay's API in 2005 was one of the first web APIs. Since then, the tremendous growth in web APIs &mdash; coupled with the importance of documentation with APIs &mdash; presents a perfect opportunity for technical writers. Technical writers can apply their communication skills to fill a gap in a market that is exploding.

## Why is documentation so important for REST APIs?

REST APIs are a bit different from the SOAP APIs that were popular some years ago. SOAP APIs (service-oriented architecture protocol) enforced a specific message format for sending requests and returning responses. As an XML message format, SOAP was was very specific and had a WSDL file (web service description language) that described how to interact with the API.

REST APIs, however, do not follow a standard message format. Instead, REST is an architectural style, a set of recommended practices for submitting requests and returning responses. In order to understand the request and response format for the REST API, you don't consult the SOAP message specification or look at the WSDL file. Instead, you have to consult the REST API documentation.

Each REST API functions a bit differently. There isn't a single way of doing things, and this flexibility and variety is what fuels the need for accurate and clear documentation with REST APIs. As long as there is variety, there will be a strong need for technical writers.

## The web is a mashup of services

Another reason why REST APIs are taking off is because the web itself is evolving into a conglomeration of services. Instead of massive, do-it-all systems, web sites are pulling in the services they need through APIs. For example, rather than building your own search to power your website, you might use Switftype instead and leverage their service through their [Swifttype API](https://swiftype.com/developers).

Rather than building your own payment gateway, you integrate [Stripe and its API](https://stripe.com/docs/api). Rather than building your own login system, you might use [UserApp and its API](https://app.userapp.io/#/docs/). And so on. Rather than building your own e-commerce system, you might use [Snipcart and its API](http://docs.snipcart.com/api-reference/introduction).

Practically every service provides its information and tools through an API that you use. Jekyll, a popular static site generator, doesn't have all the components you need to run a site. For example, there's no newsletter integration, analytics, search, commenting systems, forms, chat ecommerce, surveys, or other systems. Instead, you leverage the services you need into your static site.

CloudCannon has a [long list of services](http://cloudcannon.com/tips/2014/12/12/the-ultimate-list-of-services-for-static-websites.html) that you can interate into your static site.

<a href="http://cloudcannon.com/tips/2014/12/12/the-ultimate-list-of-services-for-static-websites.html"><img src="{{ "/images/servicesforstaticsites.png" | prepend: site.baseurl }}" alt="services for static websites" /></a>

This cafeteria style model is replacing the massive, swiss-army-site model that tries to do anything and everything. It's better to let specialists create a very powerful, robust tool (such as search) and leverage their service rather than trying to build all of these services yourself.

The way each site leverages its service is usually through a REST API of some kind. The web is becoming an interwoven mashup of lots of different services from different APIs interacting with each other.

## Job market is hot for API technical writers
Many employers are looking to hire technical writers who can create not only complete and accurate documentation, but who can also create stylish outputs. Here's a recent job posting from a recruiter looking for someone who can emulate Dropbox's documentation.

<img src="{{ "/images/restapicourse/indeed_com.png" | prepend: site.baseurl }}" alt="" />

Why does the look and feel of the documentation matter so much? With API documentation, there is no GUI interface for users to browse. For the most part, the documentation *is* the interface. Employers know this, so they want to make sure they have the right resources to make their API docs stand out as much as possible.

Here's what the Dropbox API looks like: 

<a href="https://www.dropbox.com/developers/sync/start/android"><img src="{{ "/images/restapicourse/dropbox_clean.png" | prepend: site.baseurl }}" alt="Dropbox API" /></a>

It's not a sophisticated design. But its simplicity and brevity is one of its strengths.

## API doc is a new world for most tech writers

API documentation is mostly a new world to technical writers. Many of the components may seem foreign:

* API doc authoring tools
* Developer audience
* Programming languages
* Endpoint reference topics
* Ways the product is used

When you try to navigate the world of API documentation, the world looks as unfamiliar as Mars:

<a href="http://bit.ly/ZFYI0T"><img src="{{ "/images/restapicourse/mars_bubble.jpg" | prepend: site.baseurl }}" alt="API doc world is like Mars" /></a>

## Increasing learning materials about API documentation

Realizing there was a need for more information, I guest-edited a special issue of Intercom dedicated to API documentation.

<a href="http://bit.ly/stcintercomapiissue"><img src="{{ "/images/restapicourse/intercom.png" | prepend: site.baseurl }}" alt="STC Intercom issue focused on API documentation" /></a> 

This issue was a good start, but many technical writers have asked for more training. In our Silicon Valley STC chapter, we've held a couple of workshops dedicated to APIs. Both workshops sold out quickly (with 60 participants in the first, and 100 participants in the second). 

Last year, the STC Summit in Columbus held its first ever API documentation track.

Technical writers are hungry to learn more about APIs. To help address this ongoing need, I've created this course to teach technical writers about API documentation. 

