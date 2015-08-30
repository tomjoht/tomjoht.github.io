---
title: Documenting response and error codes
permalink: /docapis_doc_response_codes/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.6
type: notes_docapis
---
{% include notes.html %}

## Response codes let you know the status of the request

Remember when we submitted the cURL call back in <a href="{{ "/restapi1course1-4" | prepend: site.baseurl }}">an earlier lesson</a>? We submitted a cURL call and specified that we wanted to see the response headers (`--include` or `-i`):

```
  curl --get -include 'https://simple-weather.p.mashape.com/aqi?lat=37.354108&lng=-121.955236' \-H 'X-Mashape-Key: WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET' \
  -H 'Accept: text/plain'
```

The response looked like this: 

```
HTTP/1.1 200 OK
Content-Type: text/plain
Date: Mon, 08 Jun 2015 14:09:34 GMT
Server: Mashape/5.0.6
X-Powered-By: Express
Content-Length: 3
Connection: keep-alive

16
```

The first line, `HTTP/1.1 200 OK`, tells us the status of the request. (If you change the method, you'll get back a different status code.)

With a GET request, it's pretty easy to tell if the request is successful or not because you get back something in the response. 

But suppose you're make a POST (create), PUT (edit), or DELETE (remove) call, where you're changing data contained in the resource. How do you know if the request was successfully processed and received by the API? 

HTTP response codes in the header of the response will indicate whether the operation was successful. The HTTP status codes are just abbreviations for longer messages.

## Common status codes follow standard protocols
Most REST APIs follow a standard protocol for response headers. For example, `200` isn't just an arbitrary code decided upon by the Mashape Weather API developers. `200` is a univerally accepted code for a successful HTTP request. 

You can see a list of common [REST API status codes here](http://www.restapitutorial.com/httpstatuscodes.html) and a [general list of HTTP status codes here](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes
).

## Where to list the HTTP response and error codes

Most APIs should have a general page listing response and error codes. Twitter's API has a good example of the possible status and error codes you will receive when making requests.

<a href="https://dev.twitter.com/overview/api/response-codes"><img src="{{ "/images/restapicourse/twitterstatuscode.png" | prepend: site.baseurl }}" alt="Twitter API status codes" /></a>

This information may not be readily apparent when you're documenting your API. You will need to ask developers for a list of all the status codes. In particular, if developers have created special status codes for the API, highlight these in the documentation. 

For example, if you exceed the rate limit for a specific all, the API might return a special status code. You would especially need to document this custom code. Listing out all the error codes is an essential page in the "Troubleshooting" section of your API documentation.

## Where to list status codes

In the Flattr API, sometimes endpoints return particular status codes. For example, when you "Check if a thing exists," the response when found includes `HTTP/1.1 302 Found`. This is a standard HTTP response.

<a href="http://developers.flattr.net/api/resources/things/#update-a-thing"><img src="{{ "/images/restapicourse/flattrnotfound.png" | prepend: site.baseurl }}" alt="Not found status code" /></a>

If the status code is specific to a particular endpoint, you can include it with that endpoint's documentation. 

Alternatively, you can have a general status and error codes page that lists all possible codes for all the endpoints. For example, with the Dropbox API, the writers list out the error codes related to the API:

<a href="https://www.dropbox.com/developers/core/docs"><img src="{{ "/images/restapicourse/apierrorsdropbox.png" | prepend: site.baseurl }}" alt="" /></a>

In particular, you should look for codes that return when there is an error, since this information helps developers troubleshoot problems.

## Run your request and look at your header code

Run the cURL call you made earlier (this time adding `-i`) and look at the HTTP status code in the response. 

Add a section to your surfreport/{beachId} endpoint documentation called Response headers. Include the successful response header for each of the endpoints.

## List three status codes for surfreport

List 3 status codes related to the surfreport/{beachId} endpoint. Use two general codes and make the third one up.

Here's my attempt: 

<div class="docSample">
<table><thead>
<tr>
<th>Status code</th>
<th>Meaning</th>
</tr>
</thead><tbody>
<tr>
<td>200</td>
<td>Successful request and response.</td>
</tr>
<tr>
<td>400</td>
<td>Bad request with the parameters.</td>
</tr>
<tr>
<td>4112</td>
<td>The beach ID was not found in the lookup.</td>
</tr>
</tbody></table>

</div>




