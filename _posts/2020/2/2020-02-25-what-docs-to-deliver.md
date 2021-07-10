---
title: "Checklist of different types of API docs"
permalink: /blog/doc-suite-checklist/
categories:
- api-doc
- technical-writing
keywords:
rebrandly: https://idratherbewriting.site/docsuitechecklist
description: "In your reading for the week, check out <a href='https://expertsupport.com/2020/02/the-ideal-documentation-suite-for-software-developers/'>The Ideal Documentation Suite for Software Developers</a>, by Paul Gustafson. In this article, Paul answers the question, <i>What does Expert Support recommend for the contents of an ideal documentation suite for software targeted at software developers?</i>"
---

Since [Expert Support](https://expertsupport.com/services/) contracts out technical writers to companies, I imagine that in many conversations with clients needing docs, the client often asks what types of docs they need. (Recognize that many companies aren't even aware of what type of documentation they need, only that they need *something.*) Paul provides the following list as the "ideal documentation suite" for software developer docs:

> * Technical Overview
> * Reference
> * Installation/Setup/Configuration Guide
> * Getting Started/Hello World
> * Tutorial (Training Materials)
> * Recipes and Cookbooks
> * Software Design Guide
> * Build, Test, Integration, and Deployment Guide

This suite of docs represents the diversity of content that constitutes what you might find browsing a developer portal rather than just one isolated set of docs. The first four bullets here are somewhat apparent, while the last four are more like extra credit with docs. For example, I've never actually created a "software design guide." Paul explains more about software design guides:

> While a design guide isn’t needed in every instance, if your software technology is complex and has a broad set of potential applications, it’s a must. Enabling developers to achieve true mastery of the API requires another level of information. In the design guide, the system architects can teach API users about the elegant features of their design, and how to apply that elegance in the context of software development. This document identifies, explains, and justifies recommendations for best practices.

This deliverable speaks to the flexibility of API docs and what sets them apart from traditional end-user documentation. With more traditional docs accompanying user interfaces, there's typically a defined workflow for how to achieve a goal. *You go to a certain tab, click a button here, define some options there, and click Finish to create your widget.* But APIs are much more flexible and might be used in many different ways.

In fact, Kristof van Tomme, co-founder of Pronovix Developer Portals, argues that an API should be flexible enough that developers might *surprise you* in the way they use it. Kristof writes,

> Ideally APIs are constrained in such a way that they don’t allow you to fail, like REST APIs: you can give the parameters but you cannot dictate everything and you do not have to define everything. But they are open enough to allow for surprising applications. An API that doesn't surprise you, and if people do not create surprising things with it, then you probably created an application rather than an API. API consumers should be able to influence API design and capabilities, but not dictate them. This is an exciting but hard exercise. ([Developer portals & digital transformation: APIs in the complex adaptive enterprise](https://pronovix.com/blog/devportals-digital-transformation))

Most of us aren't accustomed to this line of thought, about welcoming surprises in the ways a system is used. Typically, the approach in tech docs is to start with a task analysis that lists how people will use a system (goals A, B, C), and then to document those tasks (tasks to achieve goals A, B, C).

While elaborating on the design is typically not done in traditional end-user docs, it might be more appropriate in more flexible systems that allow more creative solutions and applications. When you find users pursuing Goal Z and following tasks not described in your docs, you shouldn't consider that a shortcoming in your task analysis or docs.

In the same light, another deliverable in Paul's list &mdash; "recipes and cookbooks" &mdash; speaks to the diverse ways that an API might be used to achieve different ends. Paul explains,

> With food, recipes give cooks the measurements and techniques to prepare meals like chefs. The same is true for APIs and related software development platforms. Simple, step-by-step instructions are powerful in that they provide the information needed for API users to become adept with your technology. This can accelerate customer success, deliver real value sooner, and build momentum for your technology within the organization adopting it.

You might ask how "recipes" differ from "tasks." Don't tasks also provide "step-by-step instructions"? Yes, but here again we need to consider the flexibility and adaptability of APIs. One common API I reference in my [API doc course](/learnapidoc/) is the [Openweathermap API](https://openweathermap.org/api). If you look at their [Partners and solutions page](https://openweathermap.org/examples), you see many examples of how to use the API might be used with different technologies for various goals. Some examples are as follows:

* Google Weather-Based Campaign Management with OpenWeatherMap API
* Google Maps JavaScript API based on OpenWeatherMap API
* OpenWeather current weather data in Mozilla's IoT project

And so on. An API might have different implementations and considerations for different platforms and technologies. A recipe book can explain how to use the API in a diversity of scenarios.

Overall, Paul's list prompts some reflection about how API docs differ from traditional docs. With API docs, the uses are more open, flexible, and variant. As such, the docs you deliver for the API might reflect a broader set of deliverables.


