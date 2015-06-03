---
title: "Course: Documenting REST APIs"
permalink: /restapi1/
course: "Documenting REST APIs"
weight: 1
---
{% include restapicourse.html %}

## Overview
This course provides a tutorial on documenting REST APIs. This course is intended to be sequential, walking you through a series of concepts and activities that build on each other. The course involves interactive exercises, quizzes, and other activities.

## Course outline

This course is expected to take about 2 hours.

## Approach in this course

Rather than present abstract concepts, this course contextualizes REST APIs with a more direct, hands-on approach. You first use an API to perform a simple operation -- putting a weather forecast on your site. 

Along the way, you learn about cURL, JSON, endpoints, parameters, data types, authentication, and other details associated with REST APIs. The point is that, rather than learning about these concepts independent of any context, you learn them by immersing yourself in a real context.

During the course, you also plunge into a more complicated example of using REST APIs. During this second half, we explore other aspects related to APIs, such as linking reference material with tutorials, and more.

The general outline of the course is as follows:

* Introduction
* Simple scenario using an API
* Common sections of API documentation
* Advanced scenario using an API
* Advanced aspects of API documentation

This courses focuses entirely on REST API documentation. Other courses will focus on platform APIs (such as for Java), and publishing strategies for API documentation.

## What you'll need

* Computer (preferably Mac but not required)
* Text editor
* Chrome browser
* Advanced REST API client extension
* cURL
* Network connection

{{note}} You don't need any programming background or other prerequisites, but if you do have some familiarity with the concepts, you can speed through the sections and jump ahead to the topics you want to learn more about.{{end}}

Before moving forward, check to make sure you have these requirements installed.
 
## cURL

cURL is essential for making requests to endpoints from the command line. 

### Mac 
1. Press **Cmd + spacebar** and type either **iTerm** or **Terminal** (either works, but iTerm is more functional). 
2. Type `which curl`.
	If you see `/usr/bin/curl`, then you know cURL is installed. 
3. If you don't have cURL, then you need to download and install it. See [cURL](http://curl.haxx.se/) for more details.

{% include restapicourse_next.html %}