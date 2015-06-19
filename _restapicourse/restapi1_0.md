---
title: "1.0 Course: Documenting REST APIs"
permalink: /restapicourse/
course: "Documenting REST APIs"
weight: 1.0
---
{% include notes.html %}

## Focus of the course is REST APIs
This course provides a tutorial on documenting REST APIs (not platform APIs such as Java or C++). This course is intended to be sequential, walking you through a series of concepts and activities that build on each other. 

Because the purpose of the course is to help you learn, there are numerous activities that require hands-on coding, exploring, and other exercises.

## Time to completion

This course is expected to take about 2 hours.

## Learn with a real example and context

Rather than present abstract concepts, this course contextualizes REST APIs with a more direct, hands-on approach. You learn about API documentation in the context of using a simple weather API to put a weather forecast on your site. 

As you use the API, you learn about cURL, JSON, endpoints, parameters, data types, authentication, and other details associated with REST APIs. The point is that, rather than learning about these concepts independent of any context, you learn them by immersing yourself in a real context.

After you use the API as a developer might, you then shift perspectives and become a technical writer tasked with documenting a new endpoint that has been added to the API.

{{note}} This courses focuses entirely on creating REST API documentation (also referred to as web APIs). Other courses will focus on publishing, and others on platform APIs.{{end}}

## No programming skills required

You don't need any programming background or other prerequisites, but if you do have some familiarity with programming concepts, you can speed through the sections and jump ahead to the topics you want to learn more about. This course assumes you're a beginner, though. If something is obvious, feel free to skip to where you feel you're actually learning something.

## What you'll need

* **Text editor**. ([Sublime Text](http://www.sublimetext.com/) is a good option (both Mac and PC). On Windows, [Notepad++](https://notepad-plus-plus.org/) and [Komodo Edit](http://komodoide.com/komodo-edit/) are also good. )
* **[Chrome browser](http://www.google.com/chrome/)**. (Other browsers are fine too, but we'll be using Chrome's developer console.)
* **[Advanced REST Client for Chrome](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo)
* **[Postman - REST Client (Chrome app)](https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en)**
* **[cURL](http://curl.haxx.se/)**. cURL is essential for making requests to endpoints from the command line.  See the following section for more details on cURL.
* **Network connection**. Your computer needs to be able to connect to a wifi network.

## Installing cURL 

Follow these instructions for installing cURL.

### Mac
If you have a Mac, by default, cURL is probably already installed. To check:

1. Open Terminal (press **Cmd + spacebar** to open Spotlight, and then type "Terminal"). 
2. In Terminal type `curl --version`. 

If the response indicates the version, you have cURL. If not, you need to [download and install cURL](http://curl.haxx.se/).

### Windows
To install cURL on Windows, see the "Getting Curl" section in the [Getting cURL cheatsheet](http://www.cantoni.org/2012/01/10/curl-cheat-sheet). 

Note that you need to install both [cURL](http://curl.haxx.se/) and the Windows OpenSSL libraries. Install both cURL and Windows OpenSSL libraries in the same directory.



