---
title: Should you add your testing scenarios into your documentation?
categories:
- general
tags: [series_testing_documentation]
series: Testing documentation
keywords: testing documentation, test cases, use cases, tutorials
summary: ""
weight: 1.5
published: false
---
{% include series/seriesTagTestingDocs.html %}
{% include notes.html %}
{{tip}} This is another post in my series on [testing documentation](http://idratherbewriting.com/2015/07/07/testing-your-instructions/). {{end}}
## What I mean by testing 
First, I want to add a quick clarifying note about definitions. By "testing" docs, I'm not referring to the same rigor or perspective that QA teams apply to code. QA teams are looking beyond whether the code written by engineers conforms to the basic expectations of the product. QA teams try to break the code by scaling the load, or they set up automated tests that run through hundreds of scenarios in scripts, or they test the code on dozens of different simulated devices.

The testing I'm talking about is more like a simple user test, a test that approximates how the actual users might use the product. In these simple tests, you set up a small scenario to test something out in a practical situation.

## Sample test case 
An example might help clarify things. Whereas a typical documentation task might look like this:

Generating a Widget

1. Click the Widget button.
2. Configure the system with the settings you want:
 * **Height**: Does this...
 * **Width**: Does that...
 * **Type**: Optionally does this and that.
3. Copy the code to your directory and publish.

In contrast, a typical test case might look like this:

Generating a 300x200px ABC Widget

1. Click the Widget button.
2. Input value 123 into the system.
3. Configure the system with the following settings:
 * Height: 200px
 * Width: 300px
 * Type: Visual
4. Copy the widget into directory 3 and restart the service.
You should see the ABC-123 widget appear filling a space 300x200px wide.

What's the difference? The test case uses actual values in a more realistic scenario to produce a specific and measurable end. The test case might also incorporate specific business logic that is usually left out of the generic task in the documentation.

## Tutorials help users learn to use the product

There's a funny picture going around Twitter:

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">Every coding tutorial ever written. <a href="http://t.co/t8AKl7EAge">pic.twitter.com/t8AKl7EAge</a></p>&mdash; Rich Rogers (@RichRogersHDS) <a href="https://twitter.com/RichRogersHDS/status/624982014257553409">July 25, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

It's actually talking about tutorials, not tasks. But tasks are probably even a better use case. A task in the documentation might explain how to achieve a certain end. But without defining any of the values or specifics needed to achieve that end, the tasks can leave users scratching their head, looking at the two primitive circles instead of the finished owl.

## Tutorials include all those other steps

Documentation approaches often break up the tasks into separate topics (it's one effect of topic-based authoring). In contrast, the tutorial brings them together, or at least links out to them in appropriate places, so that new users aren't left wondering what else they need to do before hand or after in order to get the result they want.

In short, test-based tutorials tell the user what values and options to select each step of the way, whereas doc tasks usually omit this level of detail. These additional details can be useful to new users who are less familiar with the product.

## Tutorials are especially useful for API documentation
With API documentation, most of documentation consists of reference topics that list the endpoints, parameters, and other details associated with the API in a general way. You don't have the same number of tasks that GUI documentation has. As a result, it's less clear how people are supposed to actually use the API. 

Here's an example. A typical reference topic in API doc might look like this:

ACME Endpoint: acmegluetrap

Description: Catches roadrunners with a sticky glue. 

Parameters: 
* power: How powerful the glue should be (integer)
* duration: How long the glue should remain sticky (integer)
* amount: The amount of glue to apply (integer)

With a tutorial, you might write it like this:

Catch a roadrunner with glue

In this tutorial, you will use the `acmegluetrap` endpoint. This endpoint catches roadrunners with a sticky glue. 

1. Set up authorization keys. (link)
2. Copy the ACME endpoint. 
3. For each parameter, enter the following:
 * power: 10
 * duration: 300
 * amount: 50
 
Power is how powerful the glue should be. Duration defines the length of time the glue remains sticky. And amount refers to how much glue you're using. All values are integers.
 
The endpoint looks like this:

```
http://myapi.acme.com/apikey/12345/acmegluetrap?power=10&duration=300?amount=50
```

With the Authorization headers, the cURL request looks like this:

```
curl 'http://myapi.acme.com/apikey/12345/acmegluetrap?power=10&duration=300?amount=50' -H 'Authorization: 43uo3jkfp' -H 'Accept: application/json'
```

The response should be as follows:

```json
{
"adhesionResult":{  
       "roadrunnersTrapped":"3",
       "glueAmountApplied":"30",
       "effiencyRate":"8",
       "powerLevel":"titan"
    }
 }
```

## Why API docs lack task-based topics

The task-based topics that you usually find in GUI documentation are often missing in API documentation. Why aren't they there? Well, you provide the endpoint, and you explain the parameters. The idea is that users can simply choose how they want to use the endpoints. There's no need for actual beginning-to-end scenarios. *Right?*

Maybe for advanced users, sure. But beginning users can benefit from seeing the larger picture. It might be helpful to provide a series of tutorials that walk through different use cases. (Essentially provide multiple Getting Started type tutorials, but getting started with different use cases and scenarios.)

If you're already testing the docs with certain values, it wouldn't be hard to publish those test cases in the documentation as a kind of tutorial that helps users through actual steps and tasks with the product. They won't be staring at a list of endpoints with no real idea of how to use them in actual business scenarios.

## The best approach for including test tutorials

Perhaps the best approach for including test tutorials would be to select a handful of tutorials that explore different use cases, meaning different business solutions. For example, you might show a tutorial that illustrates how each endpoint might be used. Or you might change the parameters in significant ways to affect the documentation outcome. 

However you decide to include them, I definitely think that tutorial-ish topic build from test cases have a valid place in documentation.





