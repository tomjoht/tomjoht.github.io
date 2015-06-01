---
title: Using a REST API
permalink: /restapi3/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 3
summary: "This is the third topic in REST APIs."
---

{% include restapicourse.html %}

## What is an API
An API provides an interface between two systems. Consider the example of your computer's calculator. When you press buttons, functions underneath are interacting with other systems to get information. Once the information is returned, the calculator presents the data back to the GUI.

APIs often work in similar ways. But instead of interacting within the same calculator system, those functions call remote services to get their information. They make the calls using web protocols -- similar to how addresses you type in a browser return a web page. REST APIs are web-based services that allow clients to interact with them by using the same HTTP protocols as the web.

## Sample scenario

Let's say that you want to add a weather forecast feature to your site. You want to allow users who come to your site to see what the weather is like for the week. 

<img src="{{ "/images/restapicourse/forecast.png" | prepend: site.baseurl }}" alt="" />

You don't have your own meteorological service, so you're going to need to make some calls out to a weather service to get this information. Then you will present that information to users.

## Find the right API

Mashape is a directory where publishers can publish their APIs, and where consumers can interact with the APIs. Mashape manages this interaction between publishers and consumers. 

You're a consumer of an API, but which one do you need?

Go to [mashape.com](http://mashape.com) and click **Explore APIs**. Try to find an API that will allow you to retrieve the weather forecast.

<img src="{{ "/images/restapicourse/mashape_explore_apis.png" | prepend: site.baseurl }}" alt="Explore APIs at Mashape" />

As you explore the various APIs, get a sense of the variety and services that APIs provide. These APIs aren't applications themselves. They provide developers with ways to get information to pipe into their applications. 

## Find "Ultimate Weather Forecast"

Look for an API called "Ultimate Weather Forecast." Although there are many weather APIs, this one seems to have the most reviews and is free.

<img src="{{ "/images/restapicourse/mashape_ultimate_weather_forecast.png" | prepend: site.baseurl }}" alt="Mashape Ultimate Weather Forecast" />

Spend a little time exploring and getting to know the features and information this weather API provides. Click **Test Endpoint** and see what kind of information comes back.


## Answer some basic questions

Answer these basic questions about the API:

* What does the API do?
* How many endpoints does the API have?
* What kind of parameters does it take?
* What kind of response does the endpoint provide?

{% include restapicourse_next.html %}



