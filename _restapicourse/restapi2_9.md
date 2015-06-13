---
title: 2.9 Creating the user guide
permalink: /restapicourse2-9/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.9
summary: 
---
{% include notes.html %}

## User guides versus reference documentation

Up until this point, we've been focusing on the endpoint documentation aspect of user guides. The endpoint documentation is only one aspect (albeit probably the primary one) in API documentation. You also need to create a user guide.

Whereas the endpoint documentation explains how to use each of the endpoints, you also need to explain how to use the API. There are other sections common to API documentation that you must also include. (These other sections are absent from the Mashape Weather API becauase it's such a simple API.)

In Mulesoft's API tooling, you can see some other sections common to API documentation:

<a href="http://api-portal.anypoint.mulesoft.com/yahoo/api/yahoo-weather-api"><img src="{{ "/images/restapicourse/commonsections.png" | prepend: site.baseurl }}" alt="Common sections in API documentation" /></a>

Although this is the Yahoo Weather API page, all APIs using the Mulesoft platform have this same template. 

## Essential sections in a user guide:

Some of these other sections to include in your documentation include the following:

* Overview
* Getting started
* Authorization keys
* Core concepts
* Rate limits
* Code samples
* Hello world tutorial
* Quick reference
* Glossary

Since the content of these sections varies a lot based on your API, it's not practical to explore each of these sections like we did with the API endpoint reference documentation.

[Sendgrid's documentation](https://sendgrid.com/docs) has a good example of these other user-guide sections essential to API documentation.

## Overview section

Here's the Sendgrid overview:

<a href="https://sendgrid.com/docs/User_Guide/index.html"><img src="{{ "/images/restapicourse/sendgridoverview.png" | prepend: site.baseurl }}" alt="Sendgrid overview" /></a>

The overview explains what you can do with the API (high-level business goals), and who the API is for. Too often with API documentation (perhaps because it is written by developers), the documentation gets too quickly mired in technical details without ever explaining clearly what it's used for. Don't lose sight of the overall purpose and use of your API by getting lost in the endpoints.

In the overview, list some common business scenarios in which the API might be useful. This will give people the context they need to evaluate whether the API is relevant to their needs.

## Getting started section

Following the Overview section, you usually have a "Getting started" section that details the first steps users need to start using the API. Here's the Getting Started section from the Alchemy API

<a href="http://www.alchemyapi.com/developers/getting-started-guide"><img src="{{ "/images/restapicourse/alchemyapigettingstarted.png" | prepend: site.baseurl }}" alt="Alchemy API" /></a>

Here's a Getting Started tutorial from the HipChat API:

<a href="https://www.hipchat.com/docs/apiv2"><img src="{{ "/images/restapicourse/hipchatgettingstarted.png" | prepend: site.baseurl }}" alt="HipChat API Getting Started" /></a>

The "Getting started" section should explain the first steps users must take to start using the API. Some of these steps might involve the following:

* Signing up for an account
* Getting API keys
* Reviewing the endpoints available
* Calling a specific endpoint

{{tip}} In developer documentation, one common section is a Hello World tutorial. The Hello World tutorial holds a user's hand from start to finish in producing the simplest possible output with the system. The simplest output might just be a message that says "Hello World." With APIs, although you don't usually write messages with the API, the concept is the same. You want to show a user how to use your API to get their first message. That's what the Getting Started section is all about.{{end}}

Here's another example of a Getting Started tutorial from Smugmug's API:

<a href="https://api.smugmug.com/api/v2/doc"><img src="{{ "/images/restapicourse/smugmuggettingstarted.png" | prepend: site.baseurl }}" alt="Smugmug" /></a>

I like how, right from the start, Smugmug tries to hold your hand to get you started. In this case, the tutorial for getting started is integrated directly in main documentation.

## Authorization keys

Almost every API requires you to use an API key in order for the requests to be authorized. Signing up for an account, retrieving the keys, and submitting the authorization with the requests is an essential for using APIs.

Here's a screenshot from SendGrid's documentation on API keys:

<a href="https://sendgrid.com/docs/User_Guide/Settings/api_keys.html"><img src="{{ "/images/restapicourse/sendgridapikeys.png" | prepend: site.baseurl }}" alt="SendGrid API Keys" /></a>

APIs have different ways of authenticating users. Sometimes the API key is added in the request URL. Othertimes the API key is passed in the header. 

Whether in the authorization keys or another section, you should list any applicable rate limits to the API calls. Rate limits set how frequently you can call a particular endpoint. 

Additionally, sometimes different license tiers provide different access to the API calls you can make. If so, these licensing tiers should be explicit in your authorization section or elsewhere.

## Code tutorials

While your API shows the endpoints available, you need to explain how to use the API to accomplish real tasks your users have. Sometimes the real tasks involve using multiple endpoints. Sometimes the endpoints are dependent on each other. Other times the endpoints require certain data to be set up to return the right values, and so on.

## Error codes / troubleshooting

We covered this a bit earlier when talking about endpoints. Usually an API provides a section listing all the error and status codes related to the API. If a particular endpoint has relevant status codes, you can include them with that endpoint. However, there should be a master list somewhere that provides all the details across the entire API.

These error codes can be particularly helpful when it comes to troubleshooting. Therefore, you can think of these error codes as complementary to a section on troubleshooting. I think every set of documentation could benefit from a section on troubleshooting. Document what happens when users somehow get off the happy path and start stumbling around with errors.

A section on troubleshooting could list possible error messages users get when they do any of the following:

* Don't have a particular resource installed correctly.
* Aren't using the right API key
* Submit invalid data types
* Throw an exception in the code (more relevant to platform APIs)

Where possible, document the exact text of the error in the documentation so that it easily surfaces in searches.

## Quick reference guide

For those power users who just want to glance at the content to understand it, provide a quick reference guide. For example, here's a quick reference guide from Eventful's API:

<a href="http://api.eventful.com/docs"><img src="{{ "/images/restapicourse/eventfulquickreference.png" | prepend: site.baseurl }}" alt="Eventful quick reference" /></a>

## The usual user guide stuff

Beyond the sections outlined above, you should include the usual stuff that you put user guides. By the usual stuff, I mean you list out the common tasks you expect your users to do. What are their real business scenarios for which they'll use your API? Sure, there are innumerable ways that users can put together different endpoints for a variety of outcomes. 

And the permutations of parameters and responses also provides endless combinations. But surely there are some core tasks that most everyone uses your API to do. For example, with the Twitter API, most people want to do the following:
 
 * Embed a timeline of tweets on a site
 * Embed a hashtag of tweets 
 * Provide a Tweet This button below posts
 * Show the number of times a post has been retweeted
 
 Provide how-to's for these tasks just like you would with any user guide. Seeing the tasks users can do with an API may be a little less familiar because you don't have a GUI to click through. But the basic concept is the same -- what will users want to do, what can they do, how do they do it, and so on. Don't be deceived into thinking that the GUI is somehow necessary to creating a user guide.
