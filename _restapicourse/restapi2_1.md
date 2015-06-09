---
title: 2.1 Documenting the resource description for a REST API
permalink: /restapicourse2-1/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.1
---
{% include notes.html %}
{% include restapicourse.html %}

## Start with a verb

The resource description usually starts with a verb and is a fragment. Here are some examples:

### Delicious API

>[/v1/posts/update](https://github.com/SciDevs/delicious-api/blob/master/api/posts.md#v1postsupdate)
	
Check to see when a user last posted an item. Returns the last updated time for the user, as well as the number of new items in the user’s inbox since it was last visited.
	
>Use this before calling posts/all to see if the data has changed since the last fetch.

### Foursquare API

>[Venue Menu](https://developer.foursquare.com/docs/venues/menu)
	
>https://api.foursquare.com/v2/venues/VENUE_ID/menu
	
>Returns menu information for a venue. 
	
>In some cases, menu information is provided by our partners. When displaying the information from a partner, you must attribute them using the attribution information included in the provider field. Not all menu information available on Foursquare is able to be redistributed through our API. 

### Box API

[Create Comment](https://box-content.readme.io/#add-a-comment-to-an-item)
	
> Used to add a comment by the user to a specific file or comment (i.e. as a reply comment).

## The terminology is nonstandard

When it comes to the right terminology to describe the resource, practices vary. Exactly what are the things that you access using a URL? Here are some of the terms used in API docs:

* API calls
* Endpoints
* API methods
* Calls
* Resources
* Objects
* Services
* Requests

When you list the URL, here's some of the variety for terms used here:

* Requests
* Endpoints
* API methods
* Resource URIs
* Resource URLs
* URLs
* URL syntax

Some docs get around the situation by not calling them anything explicitly. 

You could probably choose the terms that you like best. My favorite is to use *resources* and *endpoints*. An API has various "resources" that you access through "endpoints." The endpoint gives you access to a resource. The endpoint is the URI path (in this example, `/surfreport`). The information the endpoint interacts with, though, is called a resource.

## Some examples

Take look at [Mailchimp's API for an example](http://kb.mailchimp.com/api/resources/automations/emails/automations-emails-instance).

<a href="<img src="http://kb.mailchimp.com/api/resources/automations/emails/automations-emails-instance">{{ "/images/restapicourse/mailchimpresource.png" | prepend: site.baseurl }}" alt="Twitter resource" /></a>

With Mailchimp, the resource might be "Automations Emails Instance." The endpoint to access this resource is "/automations/{workflow_id}/emails/{email_id}."

In contrast, look at Twitter's API. This page is called [GET statuses/retweets/:id](https://dev.twitter.com/rest/reference/get/statuses/retweets/%3Aid). To access it, you use the Resource URL "https://api.twitter.com/1.1/statuses/retweets/:id.json."

<a href="https://dev.twitter.com/rest/reference/get/statuses/retweets/%3Aid"><img src="{{ "/images/restapicourse/twitterresource.png" | prepend: site.baseurl }}" alt="How Twitter refers to resources" /></a>

Here's the approach by Instagram. Their doc calls it endpoints in the plural -- e.g., "Relationship endpoints," with each endpoint listed on the relationship page.

<a href="{{ "/https://instagram.com/developer/endpoints/relationships/" | prepend: site.baseurl }}">
<img src="{{ "/images/restapicourse/instagramendpoints.png" | prepend: site.baseurl }}"/></a>

## When it gets confusing to refer to resources by the endpoint

The Mashape Weather API is pretty simple, and just refers to the endpoints available. In this case, referring to the aqi endpoint or the air quality index resource doesn't make a huge difference. But with more complex APIs, using the endpoint path to talk about the resource can get problematic. 

When I worked at Badgeville, our endpoints somewhat looked like this:

```
api_site.com/{apikey}/users
// gets all users

api_site.com/{apikey}/users/{userId}
// gets a specific user

api_site.com/{apikey}/rewards
// gets all rewards

api_site.com/{apikey}/rewards/{rewardId}
// gets a specific reward

api_site.com/{apikey}/users/{userId}/rewards
// gets all rewards for a specific user

api_site.com/{apikey}/users/{userId}/rewards/{rewardId}
// gets a specific reward for a specific user

api_site.com/{apikey}/users/{userId}/rewards/{missionId}
// gets the rewards for a specfic mission related to a specific user

api_site.com/{apikey}/missions/{missionid}/rewards
// gets the rewards available for a specific mission
```

Depending on how you construct the endpoint paths determines the response. A rewards resource had various endpoints that returned different types of information related to rewards. 

To say that you could use the rewards or missions endpoint wasn't always specific enough, because there were multiple rewards and missions endpoints.

It can get awkward referring to the resource by its endpoint path. For example, "When you call `/users/{userId}/rewards/{rewardId}`, you get a specific reward for a user. The `/users/{userId}/rewards/{rewardId}` endpoint takes several parameters..." It's a mouthful.

## Example from Box API

The Box API has a good example of how the same resource can have multiple endpoints and methods.

<img src="{{ "/images/restapicourse/boxexample.png" | prepend: site.baseurl }}" alt="Example from Box" />

The Box example has 5 different endpoints or methods you can call. Each of these methods lets you access the Comments resource or object in different ways. Why call it an object? When you get the Comments resource, the JSON is an object.

{{tip}} Developers often use the term "call a method" when talking about method. If you consider the endpoints as HTTP methods, then you can call an API method.{{end}}

## Describe the resource

Review the <a href="{{ "/restapicourse2-0" | prepend: site.baseurl }}">surf report wiki page</a> containing the information about the endpoint, and try to describe the endpoint in the length of one or two tweets (140 characters).

## How I go about it

I start by making a list of what the resource contains. 

Surfreport
- shows surfing conditions about surf height, water temperature, wind, and tide.
- must pass in a specific beach ID
- gives overall recommendation about whether to go surfing
- conditions are broken out by hour

After drafting the outline, I craft the sentences:

```
surfreport/{BeachID}
Returns information about surfing conditions at a specific beach ID, including the surf height, water temperature, wind, and tide. Also provides an overall recommendation about whether to go surfing. 

{BeachID} refers to the ID for the beach you want to look up. All Beach ID codes are available from our site.
```

## Critique the Mashape Weather API descriptions

Look over the descriptions of the three endpoints in the weather API. They're pretty short. For example, the `aqi` endpoint just says "Air Quality Index."

I think these description are too short. But developers like concision. If shortening the surfreport description, you could also write:

```
surfreport
Provides surf condition information.
```

## Reference docs versus user guides

One thing to keep in mind is the difference betweeen reference docs and user guides and tutorials: 

* **Reference guides**: Concise, bare-bones information that developers can quickly reference.
* **User guides/tutorials**: More elaborate detail about everything, including step-by-step instructions, code samples, concepts, and procedures.

With the description of surfreport, you might expand on this with much greater detail in the user guide. But in the reference guide, you just provide a short description. 

You could link the description to the places in the user guide where you expand on it in more detail. But since developers often write API documentation, they sometimes never write the user guide (as is the case with the Weather API in Mashape).

## Resource description re-use

The description of the endpoint is likely something you'll re-use in different places:

- Product overviews
- Tutorials
- Code samples

As a result, put a lot of effort into crafting it.

{% include restapicourse_next.html %}



