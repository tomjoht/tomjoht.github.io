---
title: Should you add your testing scenarios into your documentation?
categories:
- technical-writing
tags: [series_testing_documentation]
series: Testing your documentation
jtype: notes_testing_documentation
keywords: testing documentation, test cases, use cases, tutorials
description: "When you test a product, you usually put together simple test scenarios that include actual values and other specific details. You can repackage these test scenarios into documentation-based tutorials that help users understand how to use the product. By including specific values and instruction with a defined end, new users can better understand how to use the product for different use cases and scenarios."
weight: 1.4
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/testingscenarios.png
---
{% include series/seriesTagTestingDocs.html %}
<style>
div pre {
background-color: #fdfdfd;
}
</style>
This is another post in my series on [testing documentation](https://idratherbewriting.com/2015/07/07/testing-your-instructions/). 

## What I mean by testing 
First, I want to add a quick clarifying note about terms. By "testing" docs, I'm not referring to the same rigor or perspective that QA teams apply to code. QA teams look at more than whether the product meets basic expectations. QA teams try to break the code by scaling the load, or they set up automated tests that run through hundreds of scenarios in scripts, or they test the code on dozens of different simulated devices.

The testing I'm talking about is more like a simple user test, a test that approximates how the actual users might use the product. In these simple tests, you set up a small scenario to test something out in a practical situation.

## Sample test case 
An example might help clarify things. A typical documentation task might look like this:

<div style="background-color: #f6f6f6; padding: 20px; border: 1px solid #dddddd"> 
<h4>Generating a Widget</h4>

<ol>
<li>Click the <b>Widget</b> button.</li>
<li>Configure the system with the settings you want:
 <ul><li><b>Height</b>: Does this...</li>
 <li><b>Width</b>: Does that...</li>
 <li><b>Type</b>: Optionally does this and that.</li>
 </ul>
 </li>
<li>Copy the code to your directory and publish.</li>
</ol>
</div>
In contrast, a typical test case might look like this:

<div style="background-color: #f6f6f6; padding: 20px; border: 1px solid #dddddd"> 

<h4>Generating a 300x200px ABC Widget</h4>

<ol>
<li>Click the <b>Widget</b> button.</li>
<li>Input value <b>123</b> into the system.</li>
<li>Configure the system with the following settings:
 <ul><li>Height: <b>200px</b></li>
 <li>Width: <b>300px</b></li>
 <li>Type: <b>Visual</b></li>
 </ul>
 </li>
<li>Copy the widget into directory 3 and restart the service.</li>
</ol>

<p>You should see the ABC-123 widget appear filling a space 300x200px wide.</p>
</div>

What's the difference? The test case uses actual values in a more realistic scenario to produce a specific and measurable end. The test case might also incorporate specific business logic that is usually left out of the generic task in the documentation.

## Tutorials help users learn to use the product

There's a funny picture going around Twitter:

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">Every coding tutorial ever written. <a href="http://t.co/t8AKl7EAge">pic.twitter.com/t8AKl7EAge</a></p>&mdash; Rich Rogers (@RichRogersHDS) <a href="https://twitter.com/RichRogersHDS/status/624982014257553409">July 25, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

It's actually talking about tutorials, not tasks. But tasks are probably even a better use case to illustrate the point. A task in the documentation might explain how to achieve a certain end. But without defining any of the values or specifics needed to achieve that end, the tasks can leave users scratching their head, looking at the two primitive circles instead of the finished owl.

## Tutorials include all those other steps

Documentation often breaks up all tasks into separate topics (an effect of topic-based authoring). In contrast, the tutorial brings them together, or at least links out to them in appropriate places, so that new users aren't left wondering what else they need to do before or after in order to get the result they want. Further, tutorials help guide users to understand the results available to them.

In short, test-based tutorials tell the user what values and options to select each step of the way, whereas doc tasks usually omit this level of detail. These omitted details can be useful to new users who are less familiar with the product.

## Tutorials are especially useful for API documentation
With API documentation, most of documentation consists of reference topics that list the endpoints, parameters, and other details associated with the API in a general way. You don't have the same number of tasks that GUI documentation has. As a result, it's less clear how people are supposed to actually use the API. 

Here's an example. A typical reference topic in API doc might look like this:

<div style="background-color: #f6f6f6; padding: 20px; border: 1px solid #dddddd"> 
<h4>ACME Endpoint: acmegluetrap</h4>

<p>Description: Catches roadrunners with a sticky glue. </p>

<p>Parameters:</p>
<ul>
<li>power: How powerful the glue should be (integer)</li>
<li>duration: How long the glue should remain sticky (integer)</li>
<li>amount: The amount of glue to apply (integer)</li>
</ul>
</div>

In contrast, with a tutorial, you might write it like this:

<div style="background-color: #f6f6f6; padding: 20px; border: 1px solid #dddddd"> 
<h4>Catch a roadrunner with glue</h4>

<p>In this tutorial, you will use the <code>acmegluetrap</code> endpoint to catch a roadrunner with a sticky glue. </p>

<ol>
<li>Set up authorization keys. (link...)</li>
<li>Copy the ACME endpoint. </li>
<li>For each parameter, enter the following:
 <ul><li>power: 10</li>
 <li>duration: 300</li>
 <li>amount: 50</li></ul>
 </li>
 </ol>
<p>Power is how powerful the glue should be. Duration defines the length of time the glue remains sticky. And amount refers to how much glue you're using. All values are integers.</p>
 
<p>The endpoint looks like this:</p>

{% highlight bash %}
http://myapi.acme.com/apikey/12345/acmegluetrap?power=10&duration=300?amount=50
{% endhighlight %}

<p>With the Authorization headers, the cURL request looks like this:</p>

{% highlight bash %}
curl 'http://myapi.acme.com/apikey/12345/acmegluetrap?power=10&duration=300?amount=50' -H 'Authorization: 43uo3jkfp' -H 'Accept: application/json'
{% endhighlight %}

<p>The response should be as follows:</p>

{% highlight json %}
{
"adhesionResult":{  
       "roadrunnersTrapped":"3",
       "glueAmountApplied":"30",
       "effiencyRate":"8",
       "powerLevel":"titan"
    }
 }
{% endhighlight %}
</div>

## Why do API docs lack task-based topics?

The task-based topics that you usually find in GUI documentation are often missing in API documentation. Why aren't they present? Well, you provide the endpoint, and you explain the parameters. The idea is that users can simply choose how they want to use the endpoints. There's no need for actual beginning-to-end scenarios. *Right?*

Maybe for advanced users, sure. But beginning users can benefit from seeing the larger picture. It might be helpful to provide a series of tutorials that walk through different use cases or business solutions. (Similar to Getting Started type tutorials, but getting started with different use cases and scenarios.)

If you're already testing the docs with certain values, it wouldn't be hard to publish those test cases in the documentation as a kind of tutorial that helps users through actual steps and tasks with the product. They won't be staring at a list of endpoints with no real idea of how to use them in actual business scenarios. 

However you decide to include them, I definitely think that tutorial topics build from test cases have a valid place in documentation.





