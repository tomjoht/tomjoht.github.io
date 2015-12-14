---
title: Swagger UI probably the coolest thing I've done in API docs
categories:
- api-doc
keywords: 
summary: ""
published: false
---

I'm finishing up the Swagger UI implementation for my REST API docs. I've already written a bit about Swagger previously (see my [realizations post](http://idratherbewriting.com/2015/12/10/ten-realizations-using-swagger-and-swagger-ui/) and [single sourcing the spec](http://idratherbewriting.com/2015/12/03/overcoming-doc-fragmentation-with-swagger-spec/) post, as well as my [Swagger tutorial](http://idratherbewriting.com/pubapis_swagger/)).

In this post, I just want to emphasize how cool Swagger is, and why I think every API doc set shoud have one. 

A few weeks ago I met with one of our field engineers as our product manager provided some training on the new release. Although the meeting lasted only about 30 minutes, one behavior was clear: the field engineer wanted to try out the requests.

Most users have similar desires. They want to try out the product, whether it's an API, software interface, or hardware product. The ability to push the buttons yourself is huge when it comes to learning.

Based on this experience, I decided to implement Swagger UI as a getting started tutorial for our API. This would allow users to easily try out the requests and see the responses. Getting this all set up required the following:

* Having developers enable CORS on our API (this is necessary to make requests from Swagger).
* Setting up a test environment.
* Creating a sample configuration for the API service.
* Describing the API in the Swagger specification.
* Creating getting started tutorials for each of the endpoints.
* Branding the Swagger UI display.



