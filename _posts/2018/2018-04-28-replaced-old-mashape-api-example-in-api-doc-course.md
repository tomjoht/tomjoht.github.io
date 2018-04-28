---
title: "Replaced the Weather API example in my API course to use OpenWeatherAPI"
categories:
- api-doc
keywords:
summary: "I updated the sample weather API in my API course to use a more robust and stable weather API from OpenWeatherMap. Any time you incorporate free or open-source projects, you run the risk that the code won't be supported in the long-term."
bitlink: http://bit.ly/newweatherapiincourse
---

In my [API course](http://idratherbewriting.com/learnapidoc/), I use a simple weather API to demonstrate how developers use an API, how to make requests to an API, how to document various aspects of the API, and more. (See [Scenario for using a weather API](http://idratherbewriting.com/learnapidoc/docapis_scenario_for_using_weather_api.html).) When I first created the course, I chose the simplest weather API I could find ([one from Mashape](https://market.mashape.com/fyhao/weather-13)) so that users could focus in on the bare bones of an API. However, I chose an API that seemed to be a hobby project for a developer, and as such, it frequently had problems. Some endpoints were down, some didn't work reliably, and sometimes even when working fine, it crashed when multiple people submitted requests at the same time.

Because I wove this API into a lot of different parts of my course (including the [Swagger examples](http://idratherbewriting.com/learnapidoc/pubapis_swagger_demo.html) and [OpenAPI tutorial](http://idratherbewriting.com/learnapidoc/pubapis_openapi_tutorial_overview.html)), I dreaded removing it. But as I was making updates the other week, the API again was down, and I realized I needed to replace it with a more robust and stable API.

I replaced the API with the [OpenWeatherMap API](https://openweathermap.org/api). The OpenWeatherMap's Weather API is much more stable and functional. It's not too robust that users will get confused, and although I would have liked an even simpler (and still free) API, I need stability and reliability. When I look at the [OpenWeatherMap's Team page](https://openweathermap.org/team) and see a whole team of people, it reassures me that their weather API will be around a long time.

In today's open-source GitHub era, where anyone can clone a repo, pull in other frameworks or services, and build an app or other piece of code, it's easy to find and include code that you need. However, I'm wary of hobby projects like the initial weather API I incorporated, because they come back to bite me.

At work I had a similar issue this past week. One of the projects I work on uses a tool for querying JSON syntax. It's a fork of someone else's implementation of JSONpath. The project had an online evaluator that I referenced heavily in my documentation, and now the online evaluator is down. I filed an issue for the GitHub project, but when I look at the 101 open issues and 20 outstanding pull requests, it doesn't give me confidence that the developer is still actively involved.

I can understand. Open source is great, but there are serious risks in using code that isn't reliable in the long-term. I have an open source Jekyll project (a [documentation theme](http://idratherbewriting.com/documentation-theme-jekyll)) that could also use some love and attention. At the same time, I'm not sure I want to commit to a life-long side project that I'll always maintain, develop, support, and respond to queries about. So open-source, with all the seemingly free code you can incorporate, is not without its pitfalls. In the future, before incorporating any open-source code, I'll look more closely to evaluate whether the project will still be maintained a few years from now.
