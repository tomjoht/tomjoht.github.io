---
title: "1.1 Breaking down API doc"
permalink: /publishingapidocs1-1/
course: "Publishing API documentation"
weight: 1.1
---

## Three kinds of API doc content

<blockquote>
Reference: This is the listing of all the functionality in excruciating detail. This includes all datatype and function specs. Your advanced developers will leave this open in a tab all day long.
Guides: This is somewhere between the reference and tutorials. It should be like your reference with prose that explains how to use your API.
Tutorials: These teach your users specific things that they can do with your API, and are usually tightly focused on just a few pieces of functionality. Bonus points if you include working sample code.</blockquote> &mdash; from [Parse](http://blog.parse.com/learn/engineering/designing-great-api-docs/)

- parse blog post breaks them down this way. 
- reference
- guides
- tutorials

In Mulesoft's API tooling, you can see how they have these sections as a template for each API:

<a href="http://api-portal.anypoint.mulesoft.com/yahoo/api/yahoo-weather-api?ref=apihub"><img src="{{ "/images/restapicourse/commonsections.png" | prepend: site.baseurl }}" alt="Common sections in API documentation" />

## Guides
- regular how-to content
- some common sections

<a href="https://sendgrid.com/docs/User_Guide/index.html"><img src="{{ "/images/publishingapidocs/sendgriduserguide.png" | prepend: site.baseurl }}" alt="SendGrid User Guide docs" /></a>

### Common sections in user guide docs
 
- Overview
- Getting started
- Authorization keys
- Core concepts
- Rate limits
- Code samples
- Quick reference
- Glossary

Basically, it's everything except the endpoints

### Never auto-generated
- written manually
- varies a lot from product to product

### Differs from GUI doc
- you can't explore screen by screen
- but you still start out with a set of tasks
- the result of the task is usually to get a certain response, which you can log to your console and see

### ACTIVITY: Explore some sample user-guide content

- go to sendgrid and look at the user guide content

## Tutorials
- not hardcore elearning
- parallels to a hello world in programming or app development doc

<a href="https://www.parse.com/tutorials"><img src="{{ "/images/publishingapidocs/parsetutorials.png" | prepend: site.baseurl }}" alt="Parse tutorials" /></a>

### Geared towards beginners
- usually at least one getting started tutorial
- a sequence of steps spread out over screens
- hold the person's hand to get them to the minimal starting point

### Example from Parse
https://www.parse.com/tutorials

### Reference implementations
- more in-depth code
- sample apps

### ACTIVITY: Explore some sample tutorial info
- go to parse and look at some sample tutorial material

## Reference
- mostly details about the endpoints
- highly structured
- if engineers write anything, it'll be the reference doc
- parameters with endpoints in detail
- meant to be browsed. not a starting point in the doc

<a href="https://instagram.com/developer/endpoints/relationships/"><img src="{{ "/images/publishingapidocs/instagramref.png" | prepend: site.baseurl }}" alt="Instagram endpoints" /></a>

### Reference docs have common structure
- reference doc is structured writing
- the ref section can sometimes be auto-generated from source

### Common sections in reference docs

- Resource description
- Endpoint
- Methods
- Parameters
- Request submission example
- Request response example
- Status and error codes
- Code samples

## ACTIVITY: Explore some sample reference material

Go to [Instagram's API](https://instagram.com/developer/endpoints/relationships/) and explore some of the reference material.



