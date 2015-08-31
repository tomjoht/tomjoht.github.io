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

<a href="http://kb.mailchimp.com/api/resources/automations/emails/automations-emails-instance"><img src="{{ "/images/restapicourse/mailchimpresource.png" | prepend: site.baseurl }}" alt="Twitter resource" /></a>

With Mailchimp, the resource might be "Automations Emails Instance." The endpoint to access this resource is <code>/automations/{workflow_id}/emails/{email_id}</code>.

In contrast, look at Twitter's API. This page is called [GET statuses/retweets/:id](https://dev.twitter.com/rest/reference/get/statuses/retweets/%3Aid). To access it, you use the Resource URL <code>https://api.twitter.com/1.1/statuses/retweets/:id.json.</code>

<a href="https://dev.twitter.com/rest/reference/get/statuses/retweets/%3Aid"><img src="{{ "/images/restapicourse/twitterresource.png" | prepend: site.baseurl }}" alt="How Twitter refers to resources" /></a>

Here's the approach by Instagram. Their doc calls it endpoints in the plural -- e.g., "Relationship endpoints," with each endpoint listed on the relationship page.

<a href="{{ "https://instagram.com/developer/endpoints/relationships/" | prepend: site.baseurl }}">
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

## The same resource can have multiple endpoints

The Box API has a good example of how the same resource can have multiple endpoints and methods.

<img src="{{ "/images/restapicourse/boxexample.png" | prepend: site.baseurl }}" alt="Example from Box" />

The Box example has 5 different endpoints or methods you can call. Each of these methods lets you access the Comments resource or object in different ways. Why call it an object? When you get the Comments resource, the JSON is an object.

{{tip}} Developers often use the term "call a method" when talking about method. If you consider the endpoints as HTTP methods, then you can call an API method.{{end}}

## When describing the resource, start with a verb

Review the <a href="{{ "/restapicourse2-0" | prepend: site.baseurl }}">surf report wiki page</a> containing the information about the endpoint, and try to describe the endpoint in the length of one or two tweets (140 characters).

The resource description usually starts with a verb and is a fragment. Here are some examples:

* [Delicious API](https://github.com/SciDevs/delicious-api/blob/master/api/posts.md#v1postsupdate)
* [Foursquare API](https://developer.foursquare.com/docs/venues/menu)
* [Box API](https://box-content.readme.io/#add-a-comment-to-an-item)

## How I go about it
{{activity}}
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

```
surfreport
Provides surf condition information.
```

## Recognize the difference between reference docs versus user guides

One thing to keep in mind is the difference betweeen reference docs and user guides/tutorials:

* **Reference guides**: Concise, bare-bones information that developers can quickly reference.
* **User guides/tutorials**: More elaborate detail about everything, including step-by-step instructions, code samples, concepts, and procedures.

With the description of surfreport, you might expand on this with much greater detail in the user guide. But in the reference guide, you just provide a short description. 

You could link the description to the places in the user guide where you expand on it in more detail. But since developers often write API documentation, they sometimes never write the user guide (as is the case with the Weather API in Mashape).

## Re-using the resource description

The description of the endpoint is likely something you'll re-use in different places:

- Product overviews
- Tutorials
- Code samples

As a result, put a lot of effort into crafting it.




