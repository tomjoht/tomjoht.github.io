---
title: Documenting the endpoint definitions and methods
permalink: /docapis_doc_endpoint_definitions/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.6
type: notes_docapis
---
{% include notes.html %}

## Terminology for the endpoint definition varies

Now let's document the endpoints. When you list the endpoint definitions / URLs, the term you use to describe this section also varies. Here are some terms you might see:

* Requests
* Endpoints
* API methods
* Resource URLs
* URLs
* URL syntax

My preferred term is "endpoint."

## The endpoint definition usually contains the end path only

When you describe the endpoint, it's common to list the end path only (hence the nickname "endpoint"). 

In our example, the endpoint is just `/surfreport/{beachId}`. You don't have to list the full URL every time. Doing so distracts the user from focusing on the path that matters.

In your user guide, you explain the full code path (which usually includes an API key) in an introductory section.

## Represent parameter values with curly braces

If you have parameter values, represent them through curly braces. For example, here's an example from Mailchimp's API: 

```
/campaigns/{campaign_id}/actions/send
```

Curly braces are a convention that users will understand. In the above example, almost no URL uses curly braces in the syntax, so the `{campaign_id}` is an obvious placeholder.

Another convention it to represent parameter values with a colon, like this:

```
/campaigns/:campaign_id/actions/send
```

You can see this convention in the [EventBrite API](https://www.eventbrite.com/developer/v3/).

In general, if the placeholder name is ambiguous as to whether it's a placeholder or what you're really supposed to write in the path, clarify it.

## You can list the method beside the endpoint

It's common to list the method next to the endpoint. Since there's not much to say about the method itself, it makes sense to group it with the endpoint. Here's an example from Box's API:

<a href="https://box-content.readme.io/#comment-object"><img src="{{ "/images/restapicourse/methodwithendpoint.png" | prepend: site.baseurl }}" alt="Box API" /></a>

And here's an example from Linkedin's API:

<a href="https://developer.linkedin.com/docs/rest-api"><img src="{{ "/images/restapicourse/linkedinexample.png" | prepend: site.baseurl }}" alt="Linkedin Example" /></a>

{{tip}} Sometimes the method is referred to as the "verb". GET, PUT, POST, and DELETE are all verbs or actions, after all. {{end}}

## Your turn to try: Write the endpoint definition for surfreport
{{activity}}
List out the endpoint definition and method for the surfreport/{beachId} endpoint.

Here's my approach:

<div class="docSample">

<h2>Endpoint definition</h2>

<span class="label label-default">GET</span></h3> <code>surfreport/{beachId}</code>
</div>

If you had different endpoints for the same resource, you might have more to say here. But with this example, the bulk of the description is with the resource.


