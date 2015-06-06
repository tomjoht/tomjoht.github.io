---
title: 2.1 Resource description
permalink: /restapicourse2-1/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.1
---
{% include notes.html %}
{% include restapicourse.html %}

## Resource versus endpoint terminology

Let's get some terminology right. An API has various resources that you access through endpoints. The endpoint gives you access to a resource. The endpoint is the URI path (in this example, `/surfreport`). The information the endpoint interacts with, though, is called a resource.

Sometimes APIs don't always distinguish between endpoints and resources. Take look at [Mailchimp's API for an example](http://kb.mailchimp.com/api/resources/automations/emails/automations-emails-instance).

<img src="{{ "/images/mailchimpresource.png" | prepend: site.baseurl }}" alt="Twitter resource" />

With Mailchimp, the resource might be "Automations Emails Instance." The endpoint to access this resource is "/automations/{workflow_id}/emails/{email_id}."

In contrast, look at Twitter's API. This page is called [GET statuses/retweets/:id](https://dev.twitter.com/rest/reference/get/statuses/retweets/%3Aid). To access it, you use the Resource URL "https://api.twitter.com/1.1/statuses/retweets/:id.json."

<img src="{{ "/images/restapicourse/twitterresource.png" | prepend: site.baseurl }}" alt="How Twitter refers to resources" />

## When endpoints become complex
The Mashape Weather API is pretty simple, and just refers to the endpoints available. In this case, referring to the aqi endpoint or the air quality index resource doesn't make a huge difference. But with more complex APIs, referring to the resources as endpoints can get problematic. 

If you try to call the resource by the exact endpoint path, this approach can quickly get confusing. When I worked at Badgeville, our endpoints somewhat looked like this:

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

Depending on how you construct the endpoint paths determines the response. To say that you could use the rewards or missions endpoint wasn't always specific enough, because there were multiple rewards and missions endpoints.

Refer to the resources that customers can access (for example, "the Rewards resource"), and the endpoints as ways to access the resources (/users/{userId}/rewards/{rewardId}). 

## Describe the resource

Review the surf report wiki page containing the information about the endpoint, and try to describe the endpoint in the length of a tweet (140 characters).

## How I go about it

I start by making a list of what the resource contains. 

Surfreport
- shows surfing conditions about surf height, water temperature, wind, and tide.
- works with specific beaches
- gives overall recommendation about whether to go surfing
- conditions are broken out by hour

After drafting the outline, I craft the sentences:


```
surfreport
Returns information about surfing conditions at select beaches, including the surf height, water temperature, wind, and tide. Based on the conditions, surfreport also provides an overall recommendation about whether to go surfing.
```

## Critique the Mashape Weather API descriptions

Look over the descriptions of the three endpoints in the weather API. They're pretty short. For example, the `aqi` endpoint just says "Air Quality Index."

I think these description are too short. But developers like concision. If shortening the surfreport description, you coudl also write:

```
surfreport
Provides surf condition information.
```

## Reference docs versus user guides

One thing to keep in mind is the difference betweeen reference docs and user guides and tutorials: 

* **Reference guides**: Concise, bare-bones information that developers can quickly reference.
* **User guides/tutorials**: More elaborate detail about everything, including step-by-step instructions, code samples and procedures.

With the description of surfreport, you may expand on this with much greater detail in the user guide. But in the reference guide, you just provide a short description. 

You could link the description to the places in the user guide where you expand on it in more detail. But since developers often write API documentation, they sometimes never write the user guide (as is the case with the Weather API in Mashape).

## Endpoint description re-use

The description of the endpoint is likely something you'll re-use in different places:

- Product overviews
- Tutorials
- Code samples

As a result, put a lot of effort into crafting it.

## How other API docs handle the description

{% include restapicourse_next.html %}



