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

## What is an API
An API provides an interface between two systems. It's like a cog that allows two systems to interact with each other.

<a href="http://bit.ly/1DexWM0"><img src="{{ "/images/restapicourse/spinning_gears.jpg" | prepend: site.baseurl }}" alt="Spinning gears. By Brent 2.0. Flickr." /></a>

Consider your computer's calculator. When you press buttons, functions underneath are interacting with other components to get information. Once the information is returned, the calculator presents the data back to the GUI.

<img src="{{ "/images/restapicourse/calculator.png" | prepend: site.baseurl }}" alt="calculator" />

APIs often work in similar ways. But instead of interacting within the same system, those functions call remote services to get their information. REST APIs make the calls using web protocols -- similar to how addresses you type in a browser return a web page. 

Developers use API calls behind the scenes to pull information into their apps. A button on a GUI may be internally wired to make calls to an external service. For example, the embedded Twitter or Facebook buttons that interact with social networks, or embedded Youtube videos that pull a video in from youtube.com, are both powered by APIs underneath.

## Our course scenario: weather forecast

Let's say that you want to add a weather forecast feature to your site. You want to allow users who come to your site to see what the weather is like for the week. 

<img src="{{ "/images/restapicourse/forecast.png" | prepend: site.baseurl }}" alt="" />

You don't have your own meteorological service, so you're going to need to make some calls out to a weather service to get this information. Then you will present that information to users.

## An idea of the end goal

To give you an idea of the end goal, let's say I have a biking site. I want to drive traffic to my site by providing a button that answers the question "How windy is it?"

<style>
   #wind_direction, #wind_chill, #wind_speed, #temperature, #speed {color: red; font-weight: bold;}
</style>
  
<script>
function checkWind() { 

var output = $.ajax({
    url: 'https://simple-weather.p.mashape.com/weatherdata?lat=37.354108&lng=-121.955236', 
    type: 'GET', 
    data: {}, 
    dataType: 'json',
    success: function(data) {
        $("#wind_speed").append (data.query.results.channel.wind.speed);
        $("#wind_direction").append (data.query.results.channel.wind.direction);
        $("#wind_chill").append (data.query.results.channel.wind.chill);
        $("#temperature").append (data.query.results.channel.units.temperature);
        $("#speed").append (data.query.results.channel.units.speed);
        $(".units").show();
        },
    error: function(err) { alert(err); },
    beforeSend: function(xhr) {
    xhr.setRequestHeader("X-Mashape-Authorization", "WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET"); /
    }
});  
}
</script>

<button type="button" onclick="checkWind()" class="btn btn-danger">Check wind conditions</button>

<h2>Wind conditions for Santa Clara</h2>

<b>Wind chill: </b><span id="wind_chill"></span> <span id="temperature"></span></br>
<b>Wind speed: </b><span id="wind_speed"></span> <span id="speed"></span></br>
<b>Wind direction: </b><span id="wind_direction"></span>

I'm obviously not a weather meteorologist, so when you request this data, an API is going out to a weather service, retrieving the information, and displaying it to you. 

You can <a href="{{ "/files/restapicourse/windcalls.html" | prepend: site.baseurl | append: site.suffix }}">download the file here to see the code.</a>.

Of course, the above example is extremely simple. You could also build an attractive interface [like this](https://weather.yahoo.com/united-states/california/santa-clara-2488836/).

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

