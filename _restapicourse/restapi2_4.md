---
title: 2.4 Documenting sample requests in REST APIs
permalink: /restapicourse2-5/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.4
---
{% include notes.html %}
{% include restapicourse.html %}

Although you've already listed the endpoint (base URI) and parameters, you also include a sample request that shows the endpoint that integrates parameters in an easy-to-understand way.

Here's an example from the NYTimes API:

<a href="http://developer.nytimes.com/docs/read/article_search_api_v2"><img src="{{ "/images/restapicourse/nytimesexample.png" | prepend: site.baseurl }}" alt="New York Times API example" /></a>

In this case, adding the parameters looks kind of confusing, because there's a square bracket in there after the query string. 

Additionally, it's hard to tell at a glance which are the parameters and which are the sample inserted values. 

For example, `q=search term` is not what you'd enter. `q` is the parameter, and `searchterm` is the placeholder added that represents a real search term. 

Similarly, only the `fq` is the parameter. The `filter-field:(filter-term)` is just placeholder text. If you read the description of the parameter, you see that you need to use a "Filtered search query using standard Lucene syntax." Well, shoot, it would be nice to see a few examples of Lucene syntax to help get going (the link is all right, though).

Fortunately, the NYTimes API [provides numerous request examples](http://developer.nytimes.com/docs/read/article_search_api_v2#examples) showing various filter queries. If you have a lot of different ways to pass parameters to the endpoint, then definitely show several requests.

## API Explorers

Many APIs have a feature called an API Explorer. For example, you can see Foursquare's API Explorer here:
 
 <a href="https://developer.foursquare.com/docs/explore"><img src="{{ "/images/restapicourse/foursquareapiexplorer.png" | prepend: site.baseurl }}" alt="Foursquare's API Explorer" /></a>
 
 The API Explorer lets you insert your own values, your own API key, and other parameters into a request so you can see the responses directly in the Explorer. Being able to see your own data maybe makes the response more real and immediate.

However, if you don't have the right data in your system, using your own API key may not show you the full response that's possible.

Additionally, the API Explorer can be a dangerous addition to your site. What if a novice user trying out a DELETE method accidentally removes data? And how do you later remove the test data added by POST or PUT methods? It's one thing to allow GET methods, but if you include other methods, users could inadvertently corrupt up their data. 

In Sendgrid's API, they include a [warning message to users]( before testing out calls with their API Explorer:

This is not a sandbox. These are real API calls that affect your account, possibly altering data and consuming credits.

<a href="https://sendgrid.com/docs/API_Reference/Web_API/blocks.html"><img src="{{ "/images/restapicourse/sendgridwarningmessage.png" | prepend: site.baseurl }}" alt="SendGrid API Explorer warning message" /></a>

Some platforms such as [Swagger](http://swagger.io/) can integrate an API Explorer functionality directly into your documentation. As far as integrating other API Explorer tooling, this is a task that should be relatively easy for developers. All the Explorer does it map values from a field to an API call and return the response to the same interface. In other words, the API plumbing is all there -- you just need a little JavaScript and front-end skills to make it happen.

## Different requests return different samples

One of the problems with showing a sample request and sample response is that different requests return different responses. Depending on the parameters you include, the response will be based on those parameters. 

What if the requests and responses can vary pretty dramatically. How many different requests and responses should you show? There's probably no easy answer; you decide what makes sense for your API.

## Document the sample request with the surfreport/{beachID} endpoint

Come back to the surfreport/{beachID} endpoint example. Create a sample request for it. 

Here's mine: 

```
curl --get --include 'https://simple-weather.p.mashape.com/surfreport/123?units=imperial&days=1&time=1433772000' 
  -H 'X-Mashape-Key: WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET' 
  -H 'Accept: application/json'
```
{% include restapicourse_next.html %}
