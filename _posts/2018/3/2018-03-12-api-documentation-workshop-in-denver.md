---
title: "Recording of API documentation workshop in Denver"
categories:
- api-doc
- podcasts
keywords:
description: "I recently gave a half-day API workshop in Denver on March 10, 2018. Topics in the workshop included how to document reference API content (endpoints, parameters, requests, etc.), what non-reference topics (for example, status and error codes, rate limiting, getting started, sample apps) are common, how to create an OpenAPI specification document and Swagger UI output, and more. You can view a recording of the workshop, browse the slides, and listen to the audio here. Because of the length, the content is divided into three parts."
bitlink: http://bit.ly/apiworkshopdenvertomrecording
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/denverapiworkshop_all.mp3
podcast_file_size: 191.3 MB
podcast_duration: "03:51:12"
podcast_length: 191263369
redirect_from:
- /2018/01/29/api-workshop-in-denver/
---

## Workshop activities

The activities we followed in the workshop are listed on the [Workshop activities](https://idratherbewriting.com/learnapidoc/workshop-activities.html) page in my [API documentation course](https://idratherbewriting.com/learnapidoc/).

## Video recordings

The recording of the workshop is divided into three parts. Each of these sections includes a video recording, audio file, and slides.

**Part I**:

<iframe  width="640" height="360" src="https://www.youtube.com/embed/Ivum3YbOWQ4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

**Part II**:

<iframe  width="640" height="360" src="https://www.youtube.com/embed/zV6m-6_j56w" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

**Part III**:
<iframe  width="640" height="360" src="https://www.youtube.com/embed/LSLg6Oy1OzM" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

## Audio only recordings

**Part I**:

<div class="audioControls">
<p><audio controls="controls"><source src="https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/denverapiworkshop_part1.mp3" type="audio/mpeg" /></audio></p>
</div>

<a href="https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/denverapiworkshop_part1.mp3">Download MP3</a>

**Part II**:

<div class="audioControls">
<p><audio controls="controls"><source src="https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/denverapiworkshop_part2.mp3" type="audio/mpeg" /></audio></p>
</div>

<a href="https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/denverapiworkshop_part2.mp3">Download MP3</a>

**Part III**:

<div class="audioControls">
<p><audio controls="controls"><source src="https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/denverapiworkshop_part3.mp3" type="audio/mpeg" /></audio></p>
</div>

<a href="https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/denverapiworkshop_part3.mp3">Download MP3</a>

If you're driving across the country and you want to listen to all audio combined into one consolidated file (consisting of parts I, II, and III), you can do so here:

{% include audio.html %}

## Slides

If you just want to browse the slides, you can do so here:

**Part I**:

<a href="https://idratherbewriting.com/intro-to-api-documentation/index.html"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/introapidoctitleslide.png" style="max-width: 300px; border: 1px solid #dedede;"></a>

**Part II**:

<a href="https://idratherbewriting.com/openapi-and-swagger/#/"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/openapiswaggertitleslide.png" style="max-width: 300px; border: 1px solid #dedede;"></a>

**Part III**:

<a href="https://idratherbewriting.com/nonref-content-api-docs/#/"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/nonreftitleslide.png" style="max-width: 300px; border: 1px solid #dedede;"></a>

The slides are all stored on GitHub:

* [intro-to-api-documentation](https://github.com/tomjoht/intro-to-api-documentation)
* [openapi-and-swagger](https://github.com/tomjoht/intro-to-api-documentation)
* [nonref-content-api-docs](https://github.com/tomjoht/intro-to-api-documentation)

## Event description

The workshop covered many of the topics from my [API doc course](https://idratherbewriting.com/learnapidoc/). Here's the workshop description.

> ## API Documentation Workshop
>
> REST APIs involve submitting requests and receiving responses, not too unlike visiting a web page. You make a request to a resource stored on a server, and the server responds with the requested information. HTTP is the medium for transporting the information. “REST” stands for representational state transfer.
>
> In this workshop on documenting REST APIs, you’ll learn about API documentation in the context of using a simple weather API to put a weather forecast on your site. As you use the API, you’ll learn about curl, Postman, Chrome’s Developer Console, JSON, and other details associated with REST APIs.
>
> After making requests to an API, we'll dive into each element of a reference topic in REST API documentation:
>
> * Resource descriptions
> * Endpoints and methods
> * Parameters
> * Request example
> * Response example and schema
>
> We'll also explore how the OpenAPI specification (formerly called Swagger) can provide a standard for describing an API. The OpenAPI defines specific properties in a particular order and hierarchy covering each aspect of reference documentation, from endpoints to requests to security and responses. After you have a valid specification document, you can feed it into specific frameworks and platforms (such as Swagger UI, SwaggerHub, or Spectacle) to automatically generate interactive documentation.
>
> We'll also dive into the non-reference sections in API documentation. These topics might include the following:
>
> * Getting started tutorial
> * Authentication
> * Status and error codes
> * How-to code tutorials
> * Sample apps and client SDKs
>
> Finally, we’ll explore different ways to publish REST API documentation, looking at tools such as GitHub, Jekyll, and other docs-as-code approaches. You’ll learn how to choose the right source format, manage your content through version control, build from the server with continuous delivery, and more.
>
> This workshop covers a broad range of topics, so the depth we go into with each area can vary based on the participants' questions and interests. My approach is to first learn what questions and information needs participants have and then give emphasis to those areas. Questions and discussion throughout will be welcome. We will do some hands-on activities during the workshop, but we won't get too detailed with technical activities, sticking more with high-level concepts and techniques.

Note that I didn't talk much about docs-as-code publishing tools, as I covered this in a separate presentation on [Docs-as-code tools and workflows](https://idratherbewriting.com/2018/03/09/docs-as-code-tools-and-workflows-denver-presentation/).

The event was sponsored by the [Rocky Mountain STC chapter](http://www.stcrmc.org/) and [Write the Docs Denver](https://www.meetup.com/Write-the-Docs-Boulder-Denver/events/past/). You can learn more about the event here: [API Documentation Workshop](https://www.eventbrite.com/e/api-documentation-workshop-tickets-42621663543).

## Event details

**Date and time**

Sat, March 10, 2018<br/>
9:00 AM – 1:30 PM MST

**Location**

Metropolitan State University of Denver: Room CN113 <br/>
1198 11th Street<br/>
Denver, CO 80204<br/>



