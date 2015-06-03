---
title: Submitting REST Calls through GUI Clients
permalink: /restapi1_6/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 1.6
---

{% include restapicourse.html %}

## GUI clients

cURL makes for a great format for demonstrating requests and responses. But when you're frequently testing endpoints with different parameters, you may want to use a GUI REST client instead. With a GUI REST client, you can:

* Save your calls with specific names
* More easily enter information in the right format
* See the response in a prettified JSON view or a raw format

## Common GUI clients

Some popular GUI clients include the following:

* Postman (Chrome app)
* Advanced REST Client (Chrome browser extension)
* Paw (Mac)

Paw is probably the most functional and elegant of the three, but it also costs $30.

## Make a call in Postman

1. If you haven't already, download the [Postman app for Chrome](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en).
2. Copy the cURL call you used for the weather forecast.
2. In Postman, click **Import**.
3. Click **Paste raw text**.
4. Paste the cURL call, and then click **Import**.
	
	The cURL call will be imported into Postman in the right way. It should look like this:
	
	<img src="{{ "/images/restapicourse/postmansample.png" | prepend: site.baseurl }}" alt="Postman request" />
	
	Take a look at how the authorization headers are formatted. The endpoint is inserted into the main text box, with the GET method selected. 
5. Click **Send**.
	The response appears.
	<img src="{{ "/images/restapicourse/postmanresponse.png" | prepend: site.baseurl }}" alt="Postman response" />

You can toggle the response to Pretty, Raw, or Preview. The Pretty view expands the minified JSON into more readable code. 

{{tip}} To "prettify" content means to un-minify it and format it with white space that is readable. {{end}}

You can save your calls by clicking the **Save** button.

## Paw

Here's the same call made in Paw:

<img src="{{ "/images/restapicourse/pawexample.png" | prepend: site.baseurl }}" alt="Paw" />

Paw allows you to easily see the request headers, response headers, URL parameters, and other data.
 
{% include restapicourse_next.html %}



