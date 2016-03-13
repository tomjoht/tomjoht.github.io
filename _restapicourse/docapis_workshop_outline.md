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
* Status codes aren't readily visible
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
* Swap out APIKEY in code samples

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

## 4.5 Publishing API docs
* Publishing context
* Why focus on publishing API docs?
* My story: Turning from DITA to Jekyll
* Five reasons why developer doc doesn't use HATs
 1. The HAT tooling doesn't match developer workflows and environment
 2. HATs won't generate docs from source
 3. API doc follows a specific structure and pattern not modeled in any HAT
 4. Many APIs have interactive API consoles, allowing you to try out the calls. 
 5. With APIs, the doc *is* the interface, so it has to be sexy enough to sell the product. 
* A new direction

## 4.6 List of about 100 APIs
* A survey of API documentation sites
* Programmableweb.com: A directory of API doc sites on the open web
* Look at 5 different APIs

## 4.7 Breaking down API doc
* API docs have tremendous variety
* No common tooling
* Similar patterns and structures
* Three kinds of API doc content
 1. Guides
 2. Tutorials
 3. Reference

## 4.8 Tool decisions
* Writers tools or developers tools
* Integrating into engineering tools and workflows
* Pros of having developers write
 * Avoids documentation drift
 * Allows the person who creates the code (and so best understands it) to also document it
* Cons of having developers write
 * Problem 1: The curse of knowledge
 * Problem 2: Not task-focused
 * Problem 3: Output doesn't integrate with user guide doc
 * Problem 4: Gives illusion of having complete doc

## 4.9 Github wikis
* Github wikis as complementary repositories to code projects
* Markdown syntax
* The wiki repository
* Treating doc as code
* Working locally allows you to leverage other tools
* Limitations with Github wikis
* Activity: Create a Github wiki and publish content on a sample page
* Activity: Save the Github repository locally
* Activity: Make a change locally, commit it, and push the commit to the Github repository

## 5.0 More about Markdown
* Markdown overview
* Development by popular demand versus by committee
* Why developers love Markdown
* You can work in text-file format using your favorite code editor
* Print a page
 * You can treat the Markdown files with the same workflow and routing as code
 * Markdown is easy to learn
* Drawbacks of Markdown
* Markdown has different flavors
* Markdown and complexity
* Analyzing a Markdown sample
* Activity: Write some Markdown on a page

## 5.1 Version control systems
* About version control systems
* Different types of version control systems
* The idea of version control
* Basic workflow with version control
* Branching
* GUI version control clients
* Activity: Follow a typical workflow with a Github project using Github Desktop
* Activity: Create a branch
* Activity: Merge the branch through a pull request

## 5.2 Pull request workflows through Github in the browser
* Managing reviews through Github
* Create a new Github repository
* Add collaborators to your project
* Make edits in a separate branch
* Create a pull request
* Process the pull request

## 5.3 REST API specification formats
* REST API specifications
* Should you use an automated solution?

## 5.4 Swagger
* About Swagger
* Activity: Create a pet
* Activity: Find your pet by the ID
* Sorting out the Swagger components
* Some sample Swagger implementations
* Activity: Create a Swagger UI display
 * Create a Swagger spec file
 * Set Up the Swagger UI
 * Upload the Files to a Web Host
 * Interact with the Swagger UI
* Auto-generating the Swagger file from code annotations

## 5.5 More about YAML
* About YAML
* YAML is a superset of JSON
* YAML syntax
* Comparing JSON to YAML
* Some features of YAML not present in JSON

## 5.6 RAML
* About RAML
* Creating a RAML Spec
* Auto-generating client SDK code
* Sample spec for Mashape Weather API
* Outputs
* Activity: Deliver doc through the Anypoint Platform Developer Portal
* Activity: Deliver doc through the API Console Project
* Activity: Deliver doc through the RAML2HTML Utility

## 5.7 API Blueprint
* API Blueprint is another spec
* Sample blueprint
* Parsing the blueprint
* Create a sample HTML output using API Blueprint and Apiary
 * a. Create a new Apiary project
 * b. Interact with the API on Apiary
* Restlet Studio

## 5.8 Static site generators
* What are static site generators
* Static site generators give you a flexible web platform
* Developing content in Jekyll
* Activity: Publish the surfreport in a Jekyll theme
 * Download the Jekyll Aviator theme
 * Add the weatherdata endpoint doc to the theme
 * Publish your Jekyll project on CloudCannon
* What's cool about CloudCannon and Jekyll

## 5.9 Readme.io
* Software as a service sites
* No need to spend time developing your own site
* Activity: Publish endpoint documentation on readme.io
 * a. Set up a readme.io account
 * b. Configure API settings
 * c. Add endpoint documentation
 * d. Interact with the documentation

## 6.0 Miredot
* How Miredot works
* Example annotations
* Activity: Explore Miredot's output

## 6.1 Custom UX solutions
* Beautiful API doc sites require front-end design skills
* When it makes sense to partner with UX
* Web platform languages
* Solution at Badgeville
* Use scripts to generate JSON from source code
* Import the JSON into your web CMS
* Developing custom solutions

## 6.3 Design patterns 
* What are design patterns
* Several design patterns with API docs
* Some non-patterns
 
## 6.4 Design pattern: Structure and templates
* Using a template
* Pushing values into more stylized outputs
* Templates in Jekyll
* Templates make it easy to change display globally

## 6.5 Website platform 
* One integrated website
* Documentation as product interface
* Integrating information across the entire site

## 6.6 Code samples
* Developers love code examples
* Syntax highlighting
* Code formatting

## 6.7 Long-ish pages
* Minimize clicking
* Examples of long pages
* Why long pages?
* Is it a best practice to make long pages?

## 6.8 API interactivity
* API explorers
* Novel or actually instructive?
* Dynamically populated code samples with API keys

## 6.9 Challenging factors
* Requirements that may cause problems

## 7.0 Tools versus content
* Don't forget the content

## 7.1 Overview to native library APIs
* About native library APIs
* Do you have to be a programmer to document native library APIs?
* My approach to teaching native library API doc
* What you need to install

## 7.2 Getting the Java source
* About the sample project
* Clone the source on Github
* Open the right location in Eclipse
* Maven

## 7.3 Java in a nutshell
* Overview
* About Java
* Classes
* Methods
* Fields
* Objects
* Constructors
* Packages
* Exceptions
* Inheritance
* Interfaces
* JAR files and WAR files
* Summary

## 7.4 
* Javadoc overview
* Characteristics of Javadoc
* Generate a Javadoc
* Javadoc and error checking

## 7.5 Javadoc tags
* About Javadoc tags
* Comments versus Javadoc tags
* Where the Javadoc tag goes
* What elements you add Javadoc tags to
* Public versus private modifiers and Javadoc
* The description
* Avoid @author
* Order of tags
* @param tags
* @return tag
* @throws tag
* Doc comments for constructors
* Doc comments for fields
* Cases where you don't need to add doc comments
* @see tags
* Links
* Previewing Javadoc comments
* More information

## 7.6 Exploring the Javadoc output
* About the Javadoc output
* Class summary
* Class details
* Other navigation

## 7.7 Doxygen, another document generator
* Doxygen overview
* Integrating builds automatically
* Other document generators

## 7.8 Creating non-ref docs with native library APIs
* About non-reference docs
* Reference docs can be an illusion for real doc
* Reference docs are feature-based, not task-based

## 7.9 Test everything
* Step 1: Set up a test environment
* Step 2: Test the instructions yourself
* Wrestling with assumptions
* Step 3: Test the instructions against an audience
* Ask a colleague to try out your instructions
* Should you watch when users test?
* Enjoyment benefits from testing
* Accounting for the necessary time

## 8.0 Workshop completion
* Practicum to get real-world experience with API doc