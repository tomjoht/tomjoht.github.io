---
title: "Publishing API docs"
permalink: /publishingapidocs/
course: "Publishing API documentation"
weight: 1.0
type: notes_pubapis
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

## Different kinds of APIs
In approaching the topic of APIs, I acknowledge that there's a wide diversity of APIs. Sarah Maddox describes these different types of APIs in her post [API types](https://ffeathers.wordpress.com/2014/02/16/api-types/).

<a href="https://ffeathers.wordpress.com/2014/02/16/api-types/"><img src="{{ "/images/publishingapidocs/apitypes.png" | prepend: site.baseurl }}" alt="API Types" /></a>

Despite the wide variety, I think there are mostly just two main types of APIs most technical writers interact with:

* Platform APIs, such as APIs for Java, C++, and .NET
* REST APIs

With platform APIs, you deliver a library of classes of functions to users, and they incorporate this library into their projects. They can then call those classes or functions directly in their code, because the library has become part of their code. 

But with REST APIs, you don't deliver any library of files to users. Instead, the users make requests for the resources, and the APIs return responses. REST APIs follows the same protocol as the web. When you open a browser and type a website URL such as http://idratherbewriting.com, you're actually making a GET request for a resource on a server. The server responds with the content and the browser makes the content visible.

You can use cURL to retrieve the same resource over the command line. Then it becomes more apparent that REST APIs and the world wide web follow the same pattern of request and response over HTTP protocol.

## REST APIs are taking off in a huge way

In presentations and workshops that I've given on API documentation, most people are interested in strategies for working with REST APIs. This is because REST APIs are taking off in a big way. The [Programmableweb.com](http://www.programmableweb.com/api-research) shows the upward trajectory of APIs since 2005, when eBay created one of the first APIs to help sellers manage their items remotely through local software. 

<a href="http://www.programmableweb.com/api-research"><img src="{{ "/images/publishingapidocs/webapisprogrammableweb.png" | prepend: site.baseurl }}" alt="Programmable web survey" /></a>

Additionally, platform APIs are more in the developer's realm, requiring knowledge of programming in order to really provide documentation for them. 

## Publishing is one value tech writers can add to highly technical content

Although a lot of API documentation is written by engineers, I think the API world would be better off with more technical writers creating the documentation. In surveys about the most important factors in APIs, developers said that ["clear and accurate documentation" is the most important factor](http://www.programmableweb.com/news/api-consumers-want-reliability-documentation-and-community/2013/01/07) (based on a survey of more than 250 developers).

The problem is that much of the content for APIs is highly technical. It can be hard for technical writers, especially those from humanities backgrounds, to get in and really articulate how-to information with the speed and clarity that technical writers usually do with GUI documentation.

In many cases, you may be facilitating the publishing of information. Most engineers know next to nothing about content re-use, conditional filtering, single sourcing, and publishing. Technical writers can add value by editing, structuring, and publishing this highly technical content. 

## My focus here on publishing strategies &mdash; not an intro to APIs

One of the goals of this course is to explore the many ways to *publish* API documentation.

For a course that focuses on how to *develop content* for API documentation, including how to document endpoints, explain code samples, show responses, and more, see <a href="{{ "/restapicourse" | prepend: site.baseurl | append: site.suffix }}">Documenting REST APIs</a>.

## Why a course on publishing API docs? What's different?
The first question about a course on publishing API documentation might be, why? What makes publishing API documentation so different from other kinds of documentation? How and why does the approach here need to differ from the approach for publishing regular documentation? 

This is a valid question that I want to answer by telling a story.

## My story

When I first transitioned into developer and API documentation, I had my mind set on using DITA, and I converted a large portion of my content over to it. 

However, as I started looking more at API documentation sites, primarily [those listed on Programmableweb.com](http://www.programmableweb.com/apis/directory), which maintains the largest directory of web APIs, I didn't find many DITA-based API doc sites. In fact, it turns out that almost none of the API doc sites listed on ProgrammableWeb even use tech comm authoring tools.

Despite many advances with single sourcing, content re-use, conditional filtering, and other features in help authoring tools and content management systems, almost no API documentation sites on Programmableweb.com use them. Why is that? Why has the development community outright rejected tech comm tools (and their 50 years of evolution)?

Granted, there is the occasional HAT, as with [Photobucket's API](https://pic.photobucket.com/dev_help/WebHelpPublic/Content/PB%20API%20Introduction.htm), but they're rare. And I've not yet found an API doc site that structures all content in DITA.

I asked a recruiter (who specializes in API documentation jobs) whether it was more advantageous to become adept with DITA or to learn a tool such as a static site generator, which is more common in this space. 

My recruiter friend knows the market -- especially the Silicon Valley market -- extremely well. He urged me to look at the static site generator route. He said that many small companies, especially startups, are looking for writers who can publish documentation that looks beautiful, like the many modern web outputs on Programmableweb.

## Five reasons why developer doc doesn't use HATs

Beyond the advice of recruiters or the examples on Programmableweb.com, I think there are at least five reasons why developers reject tech comm authoring tools: 

### 1. The HAT tooling doesn't match developer workflows and environments

If devs are going to contribute or write docs, the tools need to fit their own development tools and workflows. Their tooling is to treat doc as code, committing it to source control, building outputs from the server, etc. They want to package the doc in with their other code, check it into their repos, and include it in the builds. 

Why are engineers writing in the first place, you might ask? Well, sometimes you really need engineers to contribute because the content is so technical, it's beyond the domain of non-specialists. If you want engineers to get involved, you need to use developer tooling. 

### 2. HATs won't generate docs from source

Ideally, engineers want to add annotations in their code and then simply generate the doc from those annotations. They've been doing that with Java and C++ doc for the past 20 years. There are quite a few tools in the developer doc space that will auto-generate documentation from source code annotations, but it's not something that HATs or GUI doc tools do.

### 3. API doc follows a specific structure and pattern not modeled in any HAT

The reference documentation is pushed into well-defined templates, which list sections such as endpoint parameters, sample requests, sample responses, and so forth. Sometimes this template can be driven from the source code itself. 

If you have a lot of endpoints, you need a system for pushing the content into these templates. There are many templating frameworks that handle these scenarios nicely. Other times you need custom scripts. Either way, not many HATs handle this kind of template-driven publishing scenario.

### 4. Many APIs have interactive API consoles, allowing you to try out the calls. 

You won't find an interactive API console in a HAT. By interactive API console, I mean you enter your own API key and values, and then run the call directly in the documentation. The response you see is from your own data in the API.

### 5. With APIs, the doc *is* the interface, so it has to be sexy enough to sell the product. 

Most output from HATs look dated and old. They look like a relic of the pre-2000 Internet era. 

With API documentation, often times the documentation *is* the product &mdash; there isn't a separate GUI that clients interact with. That GUI is the documentation, so it has to be sexy and awesome. 

Most tripane help doesn't make that cut. If the help looks old and frame-based, it doesn't instill much confidence in the developers using it.

## WritetheDocs and tech comm communities

Interestingly, the community of writers who work in developer documentation has even started their own community, separate from the STC. It's called [Write the Docs](http://conf.writethedocs.org/). They don't feel that they really fit into the STC. The STC is mostly GUI-doc oriented, mostly an older demographic, not integrated so deeply with engineering teams writing dev doc. And their tooling reflects this decision as well. Many Write the Docs writers don't use HATs.

Again, this decision seems somewhat of a thumb in the face of tech comm. Tech comm groups have refined their methods for single sourcing, for producing PDF, etc. But their work isn't really relevant to these dev doc writers.

## A new direction

Based on all of these factors, I decided to put DITA authoring on pause and try a new tool with my documentation: Jekyll. I realize that not everyone has the luxury of switching authoring tools, but since my company is somewhat small, and I'm one of three writers, I wasn't burned by a ton of legacy content or heavy processes, so I could innovate.

Jekyll is just one documentation publishing option in this space. I personally enjoy working with a more code-based approach, but there are many different options and routes to explore.

In this series of posts, I'll explore various ways to publish API documentation. Most of these routes will take you away from traditional tech comm tools and publishing strategies. 


