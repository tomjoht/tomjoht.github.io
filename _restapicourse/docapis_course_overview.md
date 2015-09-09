---
title: "Documenting REST APIs"
permalink: /docapis_course_overview/
redirect: http://idratherbewriting.com/restapicourse/
course: "Documenting REST APIs"
weight: 1.0
type: notes_docapis
---
{% include notes.html %}

## Documenting REST APIs course

Rather than present abstract concepts, this course contextualizes REST APIs with a more direct, hands-on approach. You learn about API documentation in the context of using a simple weather API to put a weather forecast on your site.

As you use the API, you learn about cURL, JSON, endpoints, parameters, data types, authentication, command line, developer console, and other details associated with REST APIs. The point is that, rather than learning about these concepts independent of any context, you learn them by immersing yourself in a semi-real scenario.

After you use the API as a developer might, you then shift perspectives and become a technical writer tasked with documenting a new endpoint that has been added to the API.

As a technical writer, you tackle each element of a reference topic in REST API documentation: 

* Resource descriptions
* Endpoint definitions and methods
* Parameters
* Sample requests
* Sample responses
* Error codes
* Code samples

Diving into these sections will give you a solid understanding of how to document REST APIs.

Finally, we dive into different ways to publish REST API documentation, exploring tools and specifications such as API Blueprint, Swagger, RAML, readme.io, Jekyll, and more. You'll learn to leverage templates, build interactive API consoles so users can try out requests and see responses directly in documentation, and learn different ways to host your documentation.

## Focus of the course is REST APIs
This course provides a tutorial on documenting REST APIs (not platform APIs such as Java or C++). This course is intended to be sequential, walking you through a series of concepts and activities that build on each other. 

## Learn with a real example and context

Because the purpose of the course is to help you learn, there are numerous activities that require hands-on coding, exploring, and other exercises. Between the learning activities, there are more conceptual deep dives, but the focus is always on learning by doing.

## No programming skills required

You don't need any programming background or other prerequisites, but it will be helpful to know some basic HTML, CSS, and JavaScript. If you do have some familiarity with programming concepts, you can speed through the sections and jump ahead to the topics you want to learn more about. This course assumes you're a beginner, though. If something is obvious, feel free to skip to where you feel you're actually learning something.

Note that a lot of the code samples in this course use JavaScript. JavaScript may or may not be a programming language that you actually use when you document REST APIs, but most likely there will be some programming language or another that becomes important to know. JavaScript is one of the most practical and easy languages to become familiar with, so it works well in code samples for this introduction to REST API documentation.

## Different kinds of APIs
The API landscape is diverse. Sarah Maddox describes these different types of APIs in her post [API types](https://ffeathers.wordpress.com/2014/02/16/api-types/).

<a href="https://ffeathers.wordpress.com/2014/02/16/api-types/"><img src="{{ "/images/publishingapidocs/apitypes.png" | prepend: site.baseurl }}" alt="API Types" /></a>

Despite the wide variety, I think there are mostly just two main types of APIs most technical writers interact with:

* Platform APIs, such as APIs for Java, C++, and .NET
* REST APIs

With platform APIs, you deliver a library of classes of functions to users, and they incorporate this library into their projects. They can then call those classes or functions directly in their code, because the library has become part of their code. 

But with REST APIs, you don't deliver any library of files to users. Instead, the users make requests for the resources, and the APIs return responses. REST APIs follows the same protocol as the web. When you open a browser and type a website URL such as http://idratherbewriting.com, you're actually making a GET request for a resource on a server. The server responds with the content and the browser makes the content visible.

This course focuses mostly on REST APIs.

## What you'll need

* **Text editor**. ([Sublime Text](http://www.sublimetext.com/) is a good option (both Mac and PC). On Windows, [Notepad++](https://notepad-plus-plus.org/) and [Komodo Edit](http://komodoide.com/komodo-edit/) are also good. )
* **[Chrome browser](http://www.google.com/chrome/)**. (Other browsers are fine too, but we'll be using Chrome's developer console.)
* **[Postman - REST Client (Chrome app)](https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en)**
* **[cURL](http://curl.haxx.se/)**. cURL is essential for making requests to endpoints from the command line.  See the following section for more details on cURL.
* **Git**. See [Set Up Git](https://help.github.com/articles/set-up-git/) for more details. 
* **[Filezilla](https://filezilla-project.org/)**. This is an FTP client for transferring files to a web host.
* **Network connection**. Your computer needs to be able to connect to a wifi network.


