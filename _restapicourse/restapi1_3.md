---
title: 1.3 Getting the authorization keys
permalink: /restapi1_3/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 1.3
---
{% include notes.html %}
{% include restapicourse.html %}

## Authorization for making API calls

Almost every API has a method in place to authenticate requests. You usually have to provide your API key in requests in order to get a response. Authorization allows API publishers to do the following:

* License access to the API
* Rate limit the number of requests
* Control availability of certain features within the API

{{tip}} Keep in mind how users authorize calls into an API &mdash; this is something you must cover in API documentation.{{end}}

## Get the authorization keys

In order to get the authorization keys to use the Mashape API, you'll need to sign up for a Mashape account.

1. On [http://mashape.com](Mashape.com), click **Sign Up Free** in the upper-right corner and create an account.
2. Click **Applications** on the top navigation bar, and then click **Get the Keys**.
	
	<img src="{{ "/images/restapicourse/mashape_get_keys.png" | prepend: site.baseurl }}" alt="Mashape -- getting the keys" />
	
3. When the Environment Keys dialog appears, click **Copy** to copy the keys. (Choose the Testing keys, since this type allows you to make unlimited requests.)
4. Open up a text editor and paste the key.

## Text editor tips

When you're working with code, you use a text editor instead of a rich text editor (which would provide a WYSIWYG interface). Many developers use different text editors. Here are a few choices:

* Sublime Text (Mac or PC)
* TextWrangler (Mac)
* WebStorm (Mac or PC)
* Notepad++ (PC)

These editors provide features that let you better manage the text. But you could always just use Notepad. My favorite is WebStorm because it lets you manage your files as a complete project. 

{% include restapicourse_next.html %}



