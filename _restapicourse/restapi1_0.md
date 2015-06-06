---
title: "1.0 Course: Documenting REST APIs"
permalink: /restapicourse/
course: "Documenting REST APIs"
weight: 1.0
---
{% include notes.html %}
{% include restapicourse.html %}

## Overview
This course provides a tutorial on documenting REST APIs. This course is intended to be sequential, walking you through a series of concepts and activities that build on each other. The course involves interactive exercises, quizzes, and other activities.

## Course outline

This course is expected to take about 2 hours.

## Approach in this course

Rather than present abstract concepts, this course contextualizes REST APIs with a more direct, hands-on approach. You learn about API documentation in the context of using a simple weather API to put a weather forecast on your site. 

As you use the API, you learn about cURL, JSON, endpoints, parameters, data types, authentication, and other details associated with REST APIs. The point is that, rather than learning about these concepts independent of any context, you learn them by immersing yourself in a real context.

After you use the API as a developer might, you then shift perspectives and become a technical writer tasked with documenting a new endpoint that has been added to the API.

{{note}} This courses focuses entirely on REST API documentation (also referred to as web APIs). Other courses will focus on platform APIs (such as for Java).{{end}}

## What you'll need

* Computer (preferably Mac but not required)
* Text editor ([Sublime Text](http://www.sublimetext.com/) is a good option)
* [Chrome browser](http://www.google.com/chrome/). (Other browsers are fine too, but we'll be using Chrome's developer console.)
* [Postman - REST Client (Chrome app)](https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en)
* [cURL](http://curl.haxx.se/)
* Network connection

{{note}} You don't need any programming background or other prerequisites, but if you do have some familiarity with programming concepts, you can speed through the sections and jump ahead to the topics you want to learn more about. This course assumes you're a beginner, though. If something is obvious, feel free to skip to where you feel you're actually learning something.{{end}}

All of these prerequisites should ber easy to install. However, cURL might be less intuitive, so more information is provided in the following section.

## Installing cURL
cURL is essential for making requests to endpoints from the command line.  If you have a Mac, by default, cURL is probably already installed. 

### Mac 
1. Press **Cmd + spacebar** and type either **iTerm** or **Terminal** (either works, but iTerm is more functional). 
2. Type `which curl`.
	If you see `/usr/bin/curl`, then you know cURL is installed. 
3. If you don't have cURL, then you need to download and install it. See [cURL](http://curl.haxx.se/) for more details.

### Windows
If you're on Windows, cURL is harder to install. Follow the instructions here to install cURL. Then follow the instructions here to install libcurl, which you need to make requests to https resources.



{% include restapicourse_next.html %}