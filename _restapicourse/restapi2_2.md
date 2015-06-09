---
title: 2.2 Documenting the endpoint definition and method for a REST API
permalink: /restapicourse2-2/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.2
summary: ""
---

## The endpoint definition usually contains the end path

When you describe the endpoint, it's common to list the end path only (hence the nickname "endpoint"). 

In our example, the endpoint is just `/surfreport/{beach}`. You don't have to list the full URI every time. Doing so distracts the user from focusing on the path that matters.

In your user guide, you explain the full code path (which usually includes an API key).

## Represent parameter values with curly braces

If you have parameter values, represent them through curly braces. For example, here's an example from Mailchimp's API: 

```
/campaigns/{campaign_id}/actions/send
```

Curly braces are a convention that users will understand. In the above example, no URL allows you to use curly braces in the syntax, so the `{campaign_id}` is an obvious placeholder. 

## List the method beside the endpoint

It's common to list the method next to the endpoint. Since there's not much to say about the method itself, it makes sense to group it with the endpoint. Here's an example from Box's API:

<a href="https://box-content.readme.io/#comment-object"><img src="{{ "/images/restapicourse/methodwithendpoint.png" | prepend: site.baseurl }}" alt="Box API" /></a>

And here's an example from Linkedin's API:

<a href="https://developer.linkedin.com/docs/rest-api"><img src="{{ "/images/restapicourse/linkedinexample.png" | prepend: site.baseurl }}" alt="Linkedin Example" /></a>

{{tip}} Sometimes the method is referred to as the "verb". GET, PUT, POST, and DELETE are all verbs, after all. {{end}}

{% include notes.html %}
{% include restapicourse.html %}


{% include restapicourse_next.html %}



