---
title: "1.0 Publishing API docs"
permalink: /publishingapidocs/
course: "Publishing API documentation"
weight: 1.0
---

## Course prerequisites

Before taking this course, consider completing the <a href="{{ "/restapicourse" | prepend: site.baseurl }}">Documenting REST APIs course</a> first. It's not a prerequisite, but these courses were meant to complement each other. 

In the Documenting REST APIs course, we use a simple [Weather API from Mashape](https://www.mashape.com/fyhao/weather-13) to demonstrate how to use and create a REST API. In this course, we'll explore various tools to publish information from that Mashape Weather API. If you see references to this API, know that it's a continued theme from the previous course.

## What you'll need

Make sure you have the following before starting this course:

* **Text editor**. ([Sublime Text](http://www.sublimetext.com/) is a good option (both Mac and PC). On Windows, [Notepad++](https://notepad-plus-plus.org/) and [Komodo Edit](http://komodoide.com/komodo-edit/) are also good. )
* **Git**. See [Set Up Git](https://help.github.com/articles/set-up-git/) for more details. 
* **[Filezilla](https://filezilla-project.org/)**. This is an FTP client for transferring files to a web host.
* **Network connection**. Your computer needs to be able to connect to a wifi network.

## Why a course on publishing API docs? What's different?
The first question about a course on publishing API documentation might be, why? What makes publishing API documentation so different from other kinds of documentation? How and why does the approach here need to differ from the approach for publishing regular documentation?
 
 API documentation merits its own course and focus separate from regular documentation publishing strategies for several reasons:
 
 * **Engineers sometimes write the doc.** The content is significantly more technical than GUI doc. As a result, it's sometimes written by engineers.
 * **Common endpoint structures.** The content of APIs follows common patterns and themes specific to the API genre. 
 * **Generating from source code.** API doc follows a historical tradition of generating documentation from the source code through annotations in the code. Though not as common with REST APIs, generating from source was the norm for Java, C++ and C# API docs.
 * **Result is information object.** The main result of most tasks is to get a little information object returned to the browser. Understanding how to work with this returned information and make use of it involves code samples and other programming functions.

## Different kinds of APIs
In approaching the topic of APIs, I acknowledge that there's a wide diversity of APIs. Sarah Maddox describes these different types of APIs in her post [API types](https://ffeathers.wordpress.com/2014/02/16/api-types/).

<a href="https://ffeathers.wordpress.com/2014/02/16/api-types/"><img src="{{ "/images/publishingapidocs/apitypes.png" | prepend: site.baseurl }}" alt="API Types" /></a>

## Platform APIs and REST APIs
Despite the wide variety, I think there are mostly just two main types of APIs:

* Platform APIs, such as APIs for Java, C++, and .NET
* REST APIs

With platform APIs, you deliver a library of classes of functions to users, and they incorporate this library into their projects. They can then call those classes or functions directly in their code, because the library has become part of their code. 

But with REST APIs, you don't deliver any library of files to users. Instead, the users make requests for the resources, and the APIs return responses. REST APIs follows the same protocol as the web. When you open a browser and type a website URL such as http://idratherbewriting.com, you're actually making a GET request for a resource on a server. The server responds with the content and the browser makes the content visible.

You can use cURL to retrieve the same resource over the command line. Then it becomes more apparent that REST APIs and the world wide web follow the same pattern of request and response over HTTP protocol.

## REST APIs are taking off in a huge way

In presentations and workshops that I've given on API documentation, most people are interested in learning strategies for woking with REST APIs. This is because REST APIs are taking off in a big way. The Programmableweb.com shows the upward trajectory of APIs since 2005, when eBay created one of the first APIs to help sellers manage their items remotely through local software. 

<a href="http://www.programmableweb.com/api-research"><img src="{{ "/images/publishingapidocs/webapisprogrammableweb.png" | prepend: site.baseurl }}" alt="Programmable web survey" /></a>

Additionally, platform APIs are more in the developer's realm, requiring knowledge of programming in order to really provide documentation for them. 

## Publishing is one value tech writers can add to highly technical content

Although a lot of API documentation is written by engineers, I think the API world would be better off with more technical writers creating the documentation. In a presentation by John Muesser, found of Programmable web, he notes that ["clear and accurate documentation" is the most important factor in APIs](http://www.programmableweb.com/news/api-consumers-want-reliability-documentation-and-community/2013/01/07) (based on a survey of more than 250 developers).

The problem is that much of the content for APIs is highly technical. It can be hard for technical writers, especially those from humanities backgrounds, to get in and really articulate how-to information with the speed and clarity that technical writers usually do with GUI documentation.

In many cases, you may be facilitating the publishing of information. Most engineers know next to nothing about content re-use, conditional filtering, single sourcing, and publishing. Technical writers can add value by editing, structuring, and publishing this highly technical content. 

## My focus here on publishing strategies &mdash; not an intro to APIs

One of the goals of this course is to explore the many ways to publish API documentation.

For a course that focuses on how to develop content for API documentation, including how to document endpoints, explain code samples, show responses, and more, see <a href="{{ "/restapicourse" | prepend: site.baseurl | append: site.suffix }}">Documenting REST APIs</a>.
