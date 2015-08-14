---
title: Documenting the endpoint definitions and methods
permalink: /docapis_doc_endpoint_definitions/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.2
type: notes_docapis
---
{% include notes.html %}

## Terminology for the endpoint definition varies

When you list the endpoint definition / URL, here's some of the variety for terms used here:

* Requests
* Endpoints
* API methods
* Resource URIs
* Resource URLs
* URLs
* URL syntax

Just like with the resource, the terms are somewhat nonstandard.

## The endpoint definition usually contains the end path only

When you describe the endpoint, it's common to list the end path only (hence the nickname "endpoint"). 

In our example, the endpoint is just `/surfreport/{beachId}`. You don't have to list the full URI every time. Doing so distracts the user from focusing on the path that matters.

In your user guide, you explain the full code path (which usually includes an API key) in an introductory section.

## Represent parameter values with curly braces

If you have parameter values, represent them through curly braces. For example, here's an example from Mailchimp's API: 

```
/campaigns/{campaign_id}/actions/send
```

Curly braces are a convention that users will understand. In the above example, almost no URL allows you to use curly braces in the syntax, so the `{campaign_id}` is an obvious placeholder. 

However, if the placeholder name is ambiguous as to whether it's a placeholder or what you're really supposed to write in the path, clarify it.

## You can list the method beside the endpoint

It's common to list the method next to the endpoint. Since there's not much to say about the method itself, it makes sense to group it with the endpoint. Here's an example from Box's API:

<a href="https://box-content.readme.io/#comment-object"><img src="{{ "/images/restapicourse/methodwithendpoint.png" | prepend: site.baseurl }}" alt="Box API" /></a>

And here's an example from Linkedin's API:

<a href="https://developer.linkedin.com/docs/rest-api"><img src="{{ "/images/restapicourse/linkedinexample.png" | prepend: site.baseurl }}" alt="Linkedin Example" /></a>

{{tip}} Sometimes the method is referred to as the "verb". GET, PUT, POST, and DELETE are all verbs or actions, after all. {{end}}

## Your turn to try: Write the endpoint definition for surfreport

List out the endpoint definition and method for the surfreport/{beachId} endpoint.

<style>
#theAnswer {display:none;}
</style>
<script>
$( document ).ready(function() {
$( "#viewAnswers" ).click(function() {
  $( "#theAnswer" ).toggle();
});
});
</script>

<button id="viewAnswers" class="btn btn-default" >View answers</button>
<div id="theAnswer">

Here's my approach:

<h2>Endpoint definition</h2>

<span class="label label-default">GET</span></h3> `surfreport/{beachId}`

</div>


