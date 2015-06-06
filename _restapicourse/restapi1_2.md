---
title: 1.2 Using a REST API
permalink: /restapicourse1-2/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 1.2
---
{% include notes.html %}
{% include restapicourse.html %}

## What is an API
An API provides an interface between two systems. It's like a cog that allows two systems to interact with each other.

<a href="http://bit.ly/1DexWM0"><img src="{{ "/images/restapicourse/spinning_gears.jpg" | prepend: site.baseurl }}" alt="Spinning gears. By Brent 2.0. Flickr." /></a>

## Example

Consider the example of your computer's calculator. When you press buttons, functions underneath are interacting with other components to get information. Once the information is returned, the calculator presents the data back to the GUI.

APIs often work in similar ways. But instead of interacting within the same system, those functions call remote services to get their information. REST APIs make the calls using web protocols -- similar to how addresses you type in a browser return a web page. 

## Sample scenario

Let's say that you want to add a weather forecast feature to your site. You want to allow users who come to your site to see what the weather is like for the week. 

<img src="{{ "/images/restapicourse/forecast.png" | prepend: site.baseurl }}" alt="" />

You don't have your own meteorological service, so you're going to need to make some calls out to a weather service to get this information. Then you will present that information to users.

## Find the right API

Mashape is a directory where publishers can publish their APIs, and where consumers can consume the APIs. Mashape manages the interaction between publishers and consumers by providing an interactive marketplace for APIs.

You're a consumer of an API, but which one do you need to pull in weather forecasts?

Go to [mashape.com](http://mashape.com) and click **Explore APIs**. Try to find an API that will allow you to retrieve the weather forecast.

<img src="{{ "/images/restapicourse/mashape_explore_apis.png" | prepend: site.baseurl }}" alt="Explore APIs at Mashape" />

As you explore the various APIs, get a sense of the variety and services that APIs provide. These APIs aren't applications themselves. They provide developers with ways to pipe information into their applications. In other words, the APIs will provide the data plumbing for the applications they build.

## Find "Ultimate Weather Forecast"

Look for an API called "Ultimate Weather Forecast." Although there are many weather APIs, this one seems to have the most reviews and is free.

<a href="https://www.mashape.com/fyhao/weather-13"><img src="{{ "/images/restapicourse/weatherapi_mashape.png" | prepend: site.baseurl }}" alt="Weather API on Mashape" /></a>

Spend a little time exploring and getting to know the features and information this weather API provides. Click **Test Endpoint** and see what kind of information comes back.

## Answer some basic questions

Answer these basic questions about this weather forecast API:

* What does the API do?
* How many endpoints does the API have?
* What does each endpoint do?
* What kind of parameters does each endpoint take?
* What kind of response does the endpoint provide?

These are common questions developers want to know about an API.

## Terminology tip

Sometimes people use API to refer to a whole collection of endpoints, functions, or classes. Other times they use API to refer to a single endpoint. For example, a developer might say, "We need you to document a new API." They mean they added a new endpoint or class to the API, not that they launched an entirely new API service.

{% include restapicourse_next.html %}



