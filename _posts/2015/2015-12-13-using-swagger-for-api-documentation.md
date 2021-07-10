---
title: Swagger UI probably the coolest thing I've done in API docs
categories:
- api-doc
keywords:
description: "Swagger should be a feature of every REST API doc set, since it connects with the user's primary desire to try out a product in order to learn it."
---

I'm finishing up the Swagger UI implementation for my REST API docs. I've already written a bit about Swagger previously (see my [realizations post](https://idratherbewriting.com/2015/12/10/ten-realizations-using-swagger-and-swagger-ui/) and [single sourcing the spec](https://idratherbewriting.com/2015/12/03/overcoming-doc-fragmentation-with-swagger-spec/) post, as well as my [Swagger tutorial](https://idratherbewriting.com/learnapidoc/pubapis_swagger.html)).

In this post, I just want to emphasize how cool Swagger is, and why I think every REST API doc set should have one.



A few weeks ago I met with one of our field engineers as our product manager provided some training on the new release. Although the meeting lasted only about 30 minutes, one behavior was clear: **the field engineer wanted to try out the requests during the training.**

Most users want to do the same thing. They want to try out the product, whether it's an API, software interface, or hardware product. *The ability to push the buttons yourself is huge when it comes to learning.*

Based on this experience, I decided to implement Swagger UI as a getting started tutorial for our API. This would allow users to easily input some sample parameter values and try out the requests and see the responses. Getting this all set up required the following:

* Have developers enable CORS on our API (this is necessary to make requests from Swagger).
* Describe the API in the [Swagger specification](http://swagger.io/specification/).
* Create getting started tutorials for each of the endpoints.
* Set up a test environment with a sample configuration.
* Brand the Swagger UI display.

Now that I've got everything set up, I really love it. I love having a sandbox space where users can try out requests, see responses, read briefly about the required parameters, and more. They can see the shape of the API and get a sense of what it returns.

I highly recommend describing in your REST API with the Swagger spec. This kind of sandbox/experimental space where users can try it out should be a part of every REST API documentation set.
