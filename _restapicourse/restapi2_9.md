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
{% include restapicourse.html %} 

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

Following the Overview section, you usually have a "Getting started" section that details the first steps users need to start using the API. Here's the Getting Started section from the HipChat API:

<a href="https://www.hipchat.com/docs/apiv2"><img src="{{ "/images/restapicourse/hipchatgettingstarted.png" | prepend: site.baseurl }}" alt="HipChat API Getting Started" /></a>

The "Getting started" section should explain the first steps users must take to start using the API. Some of these steps might involve the following:

* Signing up for an account
* Getting API keys
* Reviewing the endpoints available
* Calling a specific endpoint

{{tip}} In developer documentation, one common section is a Hello World tutorial. The Hello World tutorial holds a user's hand from start to finish in producing the simplest possible output with the system. The simplest output might just be a message that says "Hello World." With APIs, although you don't usually write messages with the API, the concept is the same. You want to show a user how to use your API to get their first message. That's what the Getting Started section is all about.{{end}}

## Authorization keys

Almost every API requires you to use an API key in order for the requests to be authorized. Signing up for an account, retrieving the keys, and submitting the authorization with the requests is an essential for using APIs.

Here's a screenshot from SendGrid's documentation on API keys:

<a href="https://sendgrid.com/docs/User_Guide/Settings/api_keys.html"><img src="{{ "/images/restapicourse/sendgridapikeys.png" | prepend: site.baseurl }}" alt="SendGrid API Keys" /></a>

APIs have different ways of authenticating users. Sometimes the API key is added in the request URL. Othertimes the API key is passed in the header. 

## Code tutorials

While your API shows the endpoints available, you need to explain how to use the API to accomplish real tasks your users have. Sometimes the real tasks involve using multiple endpoints. Sometimes the endpoints are dependent on each other. Other times the endpoints require certain data to be set up to return the right values, and so on.

## Other sections

Here are some other sections to include:

* Response and error codes
* Troubleshooting
* Rate limits
* Quick reference guide


{% comment %} 
https://developer.compete.com/documentation/#response



the user guide -- how do you use the api to accomplish real tasks.
problematic b/c combinations of how you can use endpoints is really various. badgeville.

Common sections in a user guide include the following:

there's so much more to doc than just the api reference. sendgrid is great example. 
- endpoints
- overview. what does the api do. https://sendgrid.com/docs/User_Guide/index.html
- rate limits
- sdk documentation
- base URI
- Getting started. https://developer.compete.com/documentation/#gettingstarted
- user guide. https://sendgrid.com/docs/User_Guide/index.html
- code samples
- troubleshooting
- status/error codes
- api explorer
- search
- quick reference -- good example http://api.eventful.com/docs. https://parse.com/docs/rest/guide

hello world. https://api.smugmug.com/api/v2/doc

{% endcomment %}
{% include restapicourse_next.html %}



