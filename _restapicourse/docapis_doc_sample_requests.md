---
title: Documenting sample requests
permalink: /docapis_doc_sample_requests/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.8
type: notes_docapis
---
{% include notes.html %}

## The sample request clarifies how to use the endpoint

Although you've already listed the endpoint and parameters, you also include one or more sample requests that shows the endpoint integrated with parameters in an easy-to-understand way.

Here's an example from the CityGrid Places API:

<a href="http://docs.citygridmedia.com/display/citygridv2/Places+API"><img src="{{ "/images_api/search_usage_examples.png" | prepend: site.baseurl }}" alt="CityGrid Places API example" /></a>

In this example, there are four different sample requests. The basic endpoint is simply as follows:

```
https://api.citygridmedia.com/content/places/v2/search/where
```

There are 17 possible parameters you can add to this endpoint. These examples show several common combinations of the parameters. Adding multiple requests as samples especially makes sense when the parameters wouldn't usually be used together. For example, there are few cases where you might actually include all 17 parameters, so any sample request will be limited in what it can show.

If the requests and responses vary a lot, consider including multiple response examples. How many different requests and responses should you show? There's probably no easy answer, but probably no more than a handful. You decide what makes sense for your API.

In the CityGrid Places API, notice how the examples don't include the sample responses but rather link to live examples. When you click the URL link, you execute the request in your browser and can see the response. (Here's [an example](http://api.citygridmedia.com/content/places/v2/search/where?type=movietheater&where=90045&publisher=test)). 

This approach is common and works well (for GET requests) when you can pull it off. Unfortunately, this approach makes it difficult to define the responses. The CityGrid API documentation is detailed and does include information in later sections that describes the responses.

## API Explorers provide interactivity with your own data

Many APIs have a feature called an API Explorer. For example, you can see Foursquare's API Explorer here:

 <a href="https://developer.foursquare.com/docs/explore"><img src="{{ "/images_api/foursquareapiexplorer.png" | prepend: site.baseurl }}" alt="Foursquare's API Explorer" /></a>
 
The API Explorer lets you insert your own values, your own API key, and other parameters into a request so you can see the responses directly in the Explorer. Being able to see your own data maybe makes the response more real and immediate.

However, if you don't have the right data in your system, using your own API key may not show you the full response that's possible.

Here's another example from the New York Times API, which uses Lucybot (powered by Swagger) to handle the interactive API explorer features:

 <a href="http://developer.nytimes.com/books_api.json"><img src="{{ "/images_api/nytimesapirequests.png" | prepend: site.baseurl }}" alt="NYTimes API Explorer created through Lucybot and Swagger" /></a>
 
 This example compels users to try out the endpoints to get a better understanding of the information they return.

## API Explorers can be dangerous in the hands of a newbie

Although interactivity is powerful, API Explorers can be a dangerous addition to your site. What if a novice user trying out a DELETE method accidentally removes data? And how do you later remove the test data added by POST or PUT methods? 

It's one thing to allow GET methods, but if you include other methods, users could inadvertently corrupt their data. With [IBM's Watson APIs](http://www.ibm.com/smarterplanet/us/en/ibmwatson/developercloud/apis/), which use the Swagger UI, they removed the Try it out button.

In Sendgrid's API, they include a warning message to users before testing out calls with their API Explorer:

<a href="https://sendgrid.com/docs/API_Reference/Web_API/blocks.html"><img src="{{ "/images_api/sendgridwarningmessage.png" | prepend: site.baseurl }}" alt="SendGrid API Explorer warning message" /></a>

As far as integrating other API Explorer tooling, this is a task that should be relatively easy for developers. All the Explorer does it map values from a field to an API call and return the response to the same interface. In other words, the API plumbing is all there &mdash; you just need a little JavaScript and front-end skills to make it happen.

However, you don't have to build your own tooling. Existing tools such as [Swagger UI](http://swagger.io/swagger-ui/) (which parses a Swagger spec file) and [Readme.io](http://readme.io) (which allows you to enter the details manually) can integrate an API Explorer functionality directly into your documentation. 

## Document the sample request with the surfreport/{beachId} endpoint

Come back to the `surfreport/{beachId}` endpoint example. Create a sample request for it.

Here's mine: 

<div class="docSample">

<h2>Sample request</h2>
{% highlight bash %}
curl --get --include 'https://simple-weather.p.mashap .com/surfreport/123?units=imperial&days=1&time=1433772000' 
  -H 'X-Mashape-Key: APIKEY'
  -H 'Accept: application/json'
{% endhighlight %}
</div>

