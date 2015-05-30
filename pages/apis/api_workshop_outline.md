---
title: API workshop outline
permalink: /api-workshop_outline/
categories: api-doc
published: true
date: May 30, 2015
---
{{note}} This content is in a draft state. It represents the outline of the workshop I'm preparing for the STC Summit in Columbus, Ohio in June 2015.{{end}}
## Introduction to APIs (10)
* What are APIs
* Often overlay GUIs on top of API calls
* Different types of APIs
* Browsing APIs on Mashape, Programmableweb
* Target audience is developers
* SDKs, SOAP, REST, web, local/platform APIs

## Workshop Overview
* Hands-on activities
* Real examples
* Beginning-to-end scenario
* Focus on the different parts of API doc, not publishing tools
* For Swagger in-depth, see Swagger-specific presentation
* For publishing tool exploration, see my publishing tools presentation

## Requirements
* Computer 
* Text editor (example, WebStorm, Sublime Text)
* Chrome
* Recommended Chrome extensions: REST API client, Postman

## Scenario to use an API
* Show weather forecast on site
* Use Ultimate Weather API from Mashape
* Follow steps to create web page showing forecast
* Brief overview of different components of API documentation

## Components of API documentation
* endpoint, description, parameters, request example, response example, code example, success and error codes

### Endpoint
* Predictability of design
* Omit the base path

### Description
* Succinct in reference docs

## Methods
* GET, POST, PUT, DELETE 

### Parameters
* Submit parameters as query strings in endpoint URL
* Submit parameters as a JSON file
* Data types (strings, Booleans, integers)
* Sample parameter values
* Optional versus required
* Valid values

### Request example
* cURL
* Common cURL commands
* Browser-to-browser calls
* Server-to-server calls
* Verbose responses
* Tools: Terminal, browser, Advanced REST Client, Paw, Postman
* Piggyback on test cases from QA -- they show all the calls
* Quotas

### Response example
* JSON and XML responses
* Ways to document the JSON
* The console
* Inspecting the payload
* Using dot notation to access the JSON
* Iterating through lists
* Payload size and latency
* Performance and latency

### Code sample
* Syntax highlighting
* Code style guides
* Pretty formatting
* Documenting the why, not the what
* Code comments
* Assessing audience understanding
* Sample code versus production code
* Simpler == better b/c no distractions
* Copy-and-pastable snippets (jekyll.tips)
[notes from Joe Malin presentation?]
* Which languages to provide code samples for
* Document patterns

### Success and error codes
* Finding the error codes
* The happy path versus the unhappy path

### Notes
* Dependencies (must call one endpoint to get value to feed into other?)
* Quirks
* Partial functionality (agile environments)

### Authorization
* API keys
* How to pass credentials with endpoint
* Number of calls you're allowed to make per second
* License inherent in API key
* How API keys give IT shops control to turn off bad requesters

### Markdown
* Preferred doc format for devs
* Common Markdown syntax
* Some Markdown tools: static site generators, readme.io
* Treating doc as code

### Tutorials and how-to
* Separation of programmer tutorials from reference docs
* Hello World tutorial
* Assessing your audience's level of knowledge
* Sequential tutorials

## Doc reviews with developers
* The curse of knowledge
* If a user doesn't know X, he or she shouldn't be using the API
* Writing for a developer audience versus writing for yourself as audience
* When to interrupt
* Using JIRA to assign tickets, integrated into sprints with storypoints
* Using the sprint lead to assign review tasks
* Product manager reviews vs technical reviews from engineers vs. QA reviews

## Advanced example
* Use Flickr API to pull pictures from your photo stream or album onto your site
* Determine the endpoint
* Construct the request
* Integrate the code
* Troubleshoot
* Critique of Flickr's documentation

## Examples of API documentation sites
* [EXAMPLES OF AWESOME API DOCUMENTATION](http://www.mattsilverman.com/2013/11/examples-of-awesome-api-documentation.html)

 
 
 
 