---
title: Documenting resource descriptions
permalink: /docapis_resource_descriptions/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.5
type: notes_docapis
---
{% include notes.html %}

## The terminology to describe a "resource" varies 

When it comes to the right terminology to describe the resource, practices vary. Exactly what are the things that you access using a URL? Here are some of the terms used in API docs:

* API calls
* Endpoints
* API methods
* Calls
* Resources
* Objects
* Services
* Requests

Some docs get around the situation by not calling them anything explicitly. 

You could probably choose the terms that you like best. My favorite is to use *resources* and *endpoints*. An API has various "resources" that you access through "endpoints." The endpoint gives you access to a resource. The endpoint is the URL path (in this example, `/surfreport`). The information the endpoint interacts with, though, is called a resource.

{{tip}} A URI (Uniform Resource Identifier) describes what something is, whereas a URL (Uniform Resource Location) tells you where to locate it. Hence the resource itself is a URI that you access using a URL.{{end}}

## Some examples

Take look at [Mailchimp's API for an example](http://kb.mailchimp.com/api/resources/automations/emails/automations-emails-instance).

<a href="http://kb.mailchimp.com/api/resources/automations/emails/automations-emails-instance"><img src="{{ "/images_api/mailchimpresource.png" | prepend: site.baseurl }}" alt="Twitter resource" /></a>

With Mailchimp, the resource might be "Automations Emails Instance." The endpoint to access this resource is <code>/automations/{workflow_id}/emails/{email_id}</code>.

In contrast, look at Twitter's API. This page is called [GET statuses/retweets/:id](https://dev.twitter.com/rest/reference/get/statuses/retweets/%3Aid). To access it, you use the Resource URL <code>https://api.twitter.com/1.1/statuses/retweets/:id.json.</code>

<a href="https://dev.twitter.com/rest/reference/get/statuses/retweets/%3Aid"><img src="{{ "/images_api/twitterresource.png" | prepend: site.baseurl }}" alt="How Twitter refers to resources" /></a>

Here's the approach by [Instagram](https://instagram.com/developer/endpoints/relationships/). Their doc calls it "endpoints" in the plural -- e.g., "Relationship endpoints," with each endpoint listed on the relationship page.

<a href="https://instagram.com/developer/endpoints/relationships/"><img src="{{ "/images_api/instagramendpoints.png" | prepend: site.baseurl }}"/></a>

The [EventBrite API](https://www.eventbrite.com/developer/v3/endpoints/events/) shows a list of endpoints, but when you go to an endpoint, what you're really seeing is an object. On the object's page you can see the variety of endpoints you can use with the object.

<a href="https://www.eventbrite.com/developer/v3/endpoints/events/"><img src="{{ "/images_api/eventbriteobjects.png" | prepend: site.baseurl }}" alt="Eventbrite" /></a>

{{tip}} Remember the distinction between resources and endpoints. A resource (or "object") can have many different endpoints and methods you can use with it. When you're writing documentation, it probably makes sense to group content by resources and then list the available endpoints for each resource on the resource's page, or as subpages under the resource.{{end}}

This simple example with the Mashape Weather API, however, just has three different endpoints. There's not a huge reason to separate out endpoints by resource.

## When it gets confusing to refer to resources by the endpoint

The Mashape Weather API is pretty simple, and just refers to the endpoints available. In this case, referring to the aqi endpoint or the air quality index resource doesn't make a huge difference. But with more complex APIs, using the endpoint path to talk about the resource can get problematic. 

When I worked at Badgeville, our endpoints somewhat looked like this:

```html
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

## The same resource can have multiple endpoints

The [Box API](https://box-content.readme.io/reference#collaboration-object) has a good example of how the same resource can have multiple endpoints and methods.

<a href="https://box-content.readme.io/reference#collaboration-object"><img src="{{ "/images_api/boxexample.png" | prepend: site.baseurl }}" alt="Example from Box" /></a>

The Box example has 5 different endpoints or methods you can call. Each of these methods lets you access the Collaboration resource or object in different ways. Why call it an object? When you get the Collaboration resource, the JSON is an object.

{{tip}} Developers often use the term "call a method" when talking about using a method. If you consider the endpoints as HTTP methods, then you can call an API method.{{end}}

## When describing the resource, start with a verb

Review the <a href="{{ "/docapis_new_endpoint_to_doc">surf report wiki page</a> containing the information about the endpoint, and try to describe the endpoint in the length of one or two tweets (140 characters).

The resource description usually starts with a verb and is a fragment. Here are some examples:

* [Delicious API](https://github.com/SciDevs/delicious-api/blob/master/api/posts.md#v1postsupdate)
* [Foursquare API](https://developer.foursquare.com/docs/venues/menu)
* [Box API](https://box-content.readme.io/#add-a-comment-to-an-item)

## How I go about it

Here's how I went about creating the endpoint description. If you want to try crafting your own description of the endpoint first, and then compare yours to mine, go for it. However, you can also just follow along here.

<div class="docSample">
<p>I start by making a list of what the resource contains. </p>

<p>Surfreport</p>

<ul><li>shows surfing conditions about surf height, water temperature, wind, and tide.</li>
<li>must pass in a specific beach ID</li>
<li>gives overall recommendation about whether to go surfing</li>
<li>conditions are broken out by hour</li>
</ul>

<p>After drafting the outline, I craft the sentences:</p>

<blockquote>
<b>surfreport/{beachId}</b>

<p>Returns information about surfing conditions at a specific beach ID, including the surf height, water temperature, wind, and tide. Also provides an overall recommendation about whether to go surfing. </p>

<p>{beachId} refers to the ID for the beach you want to look up. All Beach ID codes are available from our site.</p>
</blockquote>
</div>

## Critique the Mashape Weather API descriptions

Look over the descriptions of the three endpoints in the weather API. They're pretty short. For example, the `aqi` endpoint just says "Air Quality Index."

I think these description are too short. But developers like concision. If shortening the surfreport description, you could also write:


> <b>/surfreport/{beachId}</b>
> <p>Provides surf condition information.</p>

Compare these descriptions with the endpoint descriptions from the [Aeris Weather API](http://www.aerisweather.com/support/docs/api/reference/endpoints/).

## Recognize the difference between reference docs versus user guides

One thing to keep in mind is the difference between reference docs and user guides/tutorials:

* **Reference guides**: Concise, bare-bones information that developers can quickly reference.
* **User guides/tutorials**: More elaborate detail about everything, including step-by-step instructions, code samples, concepts, and procedures.

With the description of surfreport, you might expand on this with much greater detail in the user guide. But in the reference guide, you just provide a short description. 

You could link the description to the places in the user guide where you expand on it in more detail. But since developers often write API documentation, they sometimes never write the user guide (as is the case with the Weather API in Mashape).

{{tip}}The description of the endpoint is likely something you'll re-use in different places: product overviews, tutorials, code samples, etc. As a result, put a lot of effort into crafting it.{{end}}




