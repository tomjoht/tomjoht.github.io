---
title: Making a cURL call
permalink: /restapi4/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 4
---
{% include restapicourse.html %}

## Authorization for making API calls

Almost every API has a method in place to authenticate requests. You usually have to provide your API key in requests in order to get a response. Authorization provides several goals:

* Allows API publishers to license access to the API
* Allows API publishers to rate limit the number of requests
* Allows API publishers to control availability of certain features within the API

Keep in mind how users authorize calls into an API -- this is something you must cover in API documentation.

## Get the authorization keys

In order to get the authorization keys to use the Mashape API, you'll need to sign up for a Mashape account, create an application, and add the API to the application.

1. On Mashape.com, click **Sign Up Free** in the upper-right corner and create an account.
2. Click **Applications** on the top navigation bar, and then click **Get the Keys**.
	
<img src="{{ "/images/restapicourse/mashape_get_keys.png" | prepend: site.baseurl }}" alt="Mashape -- getting the keys" />
	
3. When the Environment Keys dialog appears, click **Copy** to copy the keys. (Whether Testing or Production doesn't matter.)
	
4. Open up a text editor and paste the key.

{% include restapicourse_next.html %}



