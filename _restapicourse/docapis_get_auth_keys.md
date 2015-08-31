---
title: Getting authorization keys
permalink: /docapis_get_auth_keys/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 1.4
type: notes_docapis
---
{% include notes.html %}

## Authorization for making API calls

Almost every API has a method in place to authenticate requests. You usually have to provide your API key in requests in order to get a response. Authorization allows API publishers to do the following:

* License access to the API
* Rate limit the number of requests
* Control availability of certain features within the API

{{tip}} Keep in mind how users authorize calls into an API &mdash; this is something you usually cover in API documentation. Later in the course we will dive into <a href="{{ "/docapis_more_about_authorization" | prepend: baseurl }}">authorization methods in more detail</a>.{{end}}

## Get the Mashape authorization keys
{{activity}}
In order to get the authorization keys to use the Mashape API, you'll need to sign up for a Mashape account.

1. On [Mashape.com](http://mashape.com), click **Sign Up Free** in the upper-right corner and create an account.
2. Click **Applications** on the top navigation bar, and then select **Default Application**.
3. In the upper-right corner, click **Get the Keys**.
	
	<img src="{{ "/images/restapicourse/mashape_get_keys.png" | prepend: site.baseurl }}" alt="Mashape -- getting the keys" />

	{{note}}If you don't see the Get the Keys button, make sure you click <b>Applications > Default Application</b> on the top navigation bar first.{{end}}
	
3. When the Environment Keys dialog appears, click **Copy** to copy the keys. (Choose the Testing keys, since this type allows you to make unlimited requests.)

    <img src="{{ "/images/environmentkeys.png" | prepend: site.baseurl }}" alt="Mashape keys" />

4. Open up a text editor and paste the key so that you can easily access it later when you construct a call.

## Text editor tips

When you're working with code, you use a text editor instead of a rich text editor (which would provide a WYSIWYG interface). Many developers use different text editors. Here are a few choices:

* [Sublime Text](http://www.sublimetext.com/) (Mac or PC)
* [TextWrangler](http://www.barebones.com/products/textwrangler/) or [BBedit](http://www.barebones.com/products/bbedit/) (Mac)
* [WebStorm](https://www.jetbrains.com/webstorm/) (Mac or PC)
* [Notepad++](https://notepad-plus-plus.org/) (PC)
* [Atom](https://atom.io/) (Mac)
* [Komodo Edit](http://komodoide.com/komodo-edit/) (Mac or PC)
* [Coda](https://panic.com/coda/) (Mac)

These editors provide features that let you better manage the text. Choose the one you want. (Personally, I use Sublime Text when I'm working with code samples, and WebStorm when I'm working with Jekyll projects.)



