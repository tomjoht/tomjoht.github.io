---
title: Workshop outline
permalink: /docapis_workshop_outline/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 4600
summary: 
---
{% include restapicourse.html %}

{{note}} These are the notes I use as an instructor when teaching this workshop. The notes accompany slides. {{end}}

# Documenting REST APIs

## 1.0 Documenting REST APIs
* Focus of the course is REST APIs
* Takes 3 hours to complete
* Learn with a real example and context
* No programming skills required
* What you'll need


## 1.1 The market for REST API doc
* Programmableweb API survey rates doc #1 factor in APIs
* Since 2005, REST APIs are taking off in a huge way
* Because REST APIs are a style not a standard, docs are essential
* The web is becoming an interwoven mashup of APIs
* Job market is hot for API technical writers
* API doc is a new world for most tech writers
* Learning materials about API doc are scarce

## 1.2 What is a REST API?
* An API is an interface between systems
* APIs that use HTTP protocol are web services
* SOAP APIs are the predecessor to REST APIs
* SOAP used standardized protocols and WSDL files
* Problems with SOAP and XML: Too heavy, slow
* REST is a style, not a standard
* Any message format can be used with REST
* JSON most common format
* REST focuses on resources accessed through URLs
* Sample URLs for a REST API
* The web itself follows REST
* REST APIs are stateless and cacheable
* REST APIs don't use WSDL files, but some specs exist
* Other REST formats: OData


## 1.3 Exploring a REST API marketplace
* Our course scenario: Weather forecast API
* Get an idea of the end goal
* Find the Weather API on Mashape
* Answer some questions about the API

## 1.4 Getting authorization keys
* About authorization for API calls
* Get the Mashape authorization keys
* Text editor tips

## 1.5 Submit requests through Postman
* GUI clients make REST calls a little easier
* Common GUI clients
* Learn by doing, then deep dive into concepts
* Make a request in Postman
* Save the request
* Make requests for the other endpoints
* View the format of the weatherdata response in JSON

## 1.6 Installing cURL
* Installing cURL
* Mac
* Windows
* Notes about using cURL with Windows

## 1.7 Make a cURL call
* About cURL
* Prepare the weather request in cURL format
* Make the request in cURL (Mac)
* Make the request in cURL (Windows 7)
* Single and Double Quotes with Windows cURL requests
* Make cURL requests for each of the weather endpoints

## 1.8 Understand cURL more
* cURL is a cross-platform way to show requests and responses
* REST APIs follow the same model of the web
* Try using cURL to GET a web page
* Requests and responses include headers too
* Unpacking the weather API cURL request
* Query strings and parameters
* Common cURL commands related to REST
* Example cURL command
* Test your memory

## 1.9 Using methods with cURL (Petstore example)
* Using Petstore API
* Create a new pet
* Update your pet
* Get your pet's name by ID
* Delete your pet
* Import cURL into Postman
* Export Postman to cURL

## 2.0 Analyze the JSON response
* Prettify the weatherdata JSON response
* JSON is how most REST APIs structure the response
* JSON objects are key-value pairs 
* JSON arrays are lists of items
* Including objects in arrays, and arrays in objects
* Identify the objects and arrays in the weatherdata API response

## 2.1  Using the JSON from the response payload
* Making use of the JSON response
* Display part of the REST JSON response on a web page
* The AJAX method from jQuery
* Logging responses to the console
* Inspect the payload

## 2.2 Access the JSON values
* Accessing JSON values through dot notation
* Printing a JSON value to the page


## 2.3 Diving into dot notation
* How dot notation works
* Use square brackets to access the values in an array
* Exercise with dot notation
* Showing wind conditions on the page

## 2.4 New API endpoint to document
* Shift perspectives: Now you're the technical writer
* You have a new endpoint to document
* Essential sections in REST API documentation
* Create the basic structure for the endpoint documentation

## 2.5 Documenting resource descriptions
* The terminology to describe a "resource" varies 
* Some examples
* When it gets confusing to refer to resources by the endpoint
* The same resource can have multiple endpoints
* When describing the resource, start with a verb
* How I go about it
* Critique the Mashape Weather API descriptions
* Recognize the difference between reference docs versus user guides

## 2.6 Documenting the endpoint definitions and methods
* Terminology for the endpoint definition varies
* The endpoint definition usually contains the end path only
* Represent parameter values with curly braces
* You can list the method beside the endpoint
* Your turn to try: Write the endpoint definition for surfreport

## 2.7 Documenting parameters
* Parameters are ways to configure the endpoint
* Data types indicate the format for the values
* Parameters should list allowed values
* Parameter order doesn't matter
* Passing parameters in the JSON body
* Time values usually follow ISO or Unix formats
* Construct a table to list the surfreport parameters

## 2.8 Documenting sample requests
* The sample request clarifies how to use the endpoint
* API Explorers provide interactivity with your own data
* API Explorers can be dangerous in the hands of a newbie
* When to show multiple responses
* Document the sample request with the surfreport/{beachId} endpoint

## 2.9 Documenting sample responses
* Provide a sample response for the endpoint
* Define what the values mean in the endpoint response
* Strategies for documenting nested objects
* Where to include the response
* Use realistic values in the response
* Format the JSON in a readable way 
* Add syntax highlighting
* Embedding dynamic responses
* Create a sample response in your surfreport/{beachId} endpoint

## 3.0 Documenting code samples
* REST APIs are language agnostic and interoperable
* Deciding which languages to show code samples in
* Auto-generating code samples
* Generate a JavaScript code sample from Postman
* Implement the JavaScript code snippet
* SDKs provide tooling for APIs
* Create a code sample for the surfreport endpoint

## 3.1 Putting it all together
* Full working example

## 3.2 Creating the user guide
* User guides versus reference documentation
* Essential sections in a user guide
* Also include the usual user guide stuff

## 3.3 Writing the overview section
* About the Overview section
* Sample overview
* Common business scenarios
* Where to put the overview

## 3.4 Writing the Getting Started section
* About the Getting started section
* Show the general pattern for requests
* Sample Getting Started sections
* Hello World tutorials

## 3.5 Documenting authentication and authorization
* Authentication and authorization overview
* Defining terms
* Consequences if an API lacks security
* API keys
* Basic authorization
* HMAC (Hash-based message authorization code)
vOAuth 2.0
* What to document with authentication
* Where to list the API keys section in documentation
* Include information on rate limits

## 3.6 Documenting response and error codes
* Response codes let you know the status of the request
* Common status codes follow standard protocols
* Where to list the HTTP response and error codes
* Where to get error codes
* When endpoints have specific status codes
* How to list status codes
* Status codes are aren't readily visible
* Status/error codes can assist in troubleshooting

## 3.7 Documenting code samples and tutorials
* About code samples
* Code samples are like candy for developers
* You are not the audience
* Focus on the why, not the what
* Explain your company's code, not general coding
* Keep code samples simple
* Add both code comments and before-and-after explanations
* Make code samples copy-and-paste friendly
* Provide a sample in your target language
* Code samples are maintenance heavy with new releases

## 3.8 Creating the quick reference guide
* About quick reference guides
* Sample quick reference guide
* Visual quick reference guides

## 3.9 Exploring more REST APIs
* Let's explore more APIs
* Attack the challenge first, then read the answer
* Shortcuts for API keys
* Swap out {api key} in code samples

## 4.0 EventBrite example: Get Event information and display it on a page
* The challenge
* About EventBrite
* 1. Get an anonymous Oauth token
* 2. Determine the resource and endpoint you need
* 3. Construct the request
* 4. Make a request and analyze the response
* 5. Pull out the information you need
* Code explanation

## 4.1: Flickr example: Retrieve a Flickr gallery and display it on a web page
* The challenge
* Flickr Overview
* 1. Get an API key to make requests
* 2. Determine the resource and endpoint you need
* 3. Construct the request
* 4. Analyze the response
* 5. Pull out the information you need
* Code explanation

## 4.2 Klout example: Retrieve Klout influencers and influencees
* The challenge
* About Klout
* 1. Get an API key to make requests
* 2. Make requests for the resources you need
* 3. Analyze the response
* 4. Pull out the information you need
* Code explanation

## 4.3 Aeris Weather Example: Get wind speed and use as conditional value
* The challenge
* The Aeris Weather API
* 1. Get the API keys
* 2. Construct the request
* 3. Analyze the response
* 4. Pull out the values from the response

## 4.4 Course Completion
* You finished!
* Summary of what you learned
* The next course
* Feedback

{% include restapicourse_next.html %}