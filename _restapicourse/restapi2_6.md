---
title: 2.6 Documenting response codes in REST APIs
permalink: /restapicourse2-6/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.6
summary: "This is the third topic in REST APIs."
---
{% include notes.html %}

## Response codes let you know the status of the request

Remember when we submitted the cURL call back in <a href="{{ "/restapi1course1-4" | prepend: site.baseurl }}">an earlier lesson</a>? We submitted a cURL call and specified that we wanted the headers included in the response (`--include` or `-i`):

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

The first line, `HTTP/1.1 200 OK`, tells us the status of the request. With a GET request, it's pretty easy to tell if the request is successful or not because you get back something in the response. 

However, suppose you make a POST (create), PUT (edit), or DELETE (remove) call, where you're changing data contained in the resource. How do you know if the request was successfully processed and received? HTTP response codes in the header of the response will indicate whether the operation was successful. The HTTP status codes are just abbreviations for longer messages.

Most REST APIs follow a standard protocol for response headers. For example, `200` isn't just an arbitrary code decided upon by the Mashape Weather API developers. `200` is a univerally accepted code for a successful HTTP request. 

## Run your request and look at your header code

Run the cURL call you made earlier and look at the HTTP status code in the response. 

Add a section to your surfreport/{beachID} endpoint documentation called Response headers. Include the successful response header for each of the endpoints.
 
With one of the endpoints, change the method of the call to something else (such as `-X DELETE` instead of `--get`) and see how the status code changes:

```
  curl -X DELETE -include 'https://simple-weather.p.mashape.com/aqi?lat=37.354108&lng=-121.955236' \-H 'X-Mashape-Key: WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET' \
  -H 'Accept: text/plain'
```

Since DELETE isn't an accepted method, the status code will be `HTTP/1.1 404 Not Found`. 

## Listing the HTTP response and error codes

Twitter's API has a good example of the possible status and error codes you will receive when making requests.

<a href="https://dev.twitter.com/overview/api/response-codes"><img src="{{ "/images/restapicourse/twitterstatuscode.png" | prepend: site.baseurl }}" alt="Twitter API status codes" /></a>

This information may not be readily apparent when you're documenting your API. You will need to ask developers for a list of all the status codes. In particular, if developers have created special status codes for the API, highlight those. 

For example, if you exceed the rate limit for a specific all, the API might return a special status code. You would especially need to document this custom code. Listing out all the error codes is an essential page in your Troubleshooting section of your API.

In the Flattr API, sometimes calls return special status codes. When you "Check if a thing exists," the response when found includes `HTTP/1.1 302 Found`. This is a standard HTTP response.

<a href="http://developers.flattr.net/api/resources/things/#update-a-thing"><img src="{{ "/images/restapicourse/flattrnotfound.png" | prepend: site.baseurl }}" alt="Not found status code" /></a>

## Error codes are essential to troubleshooting

API documentation should have a troubleshooting section that lists the possible error codes you can encounter. These error codes should appear in the same page as the general status codes. For example, with the Dropbox API, the writers list out the error codes related to the API:

<a href="https://www.dropbox.com/developers/core/docs"><img src="{{ "/images/restapicourse/apierrorsdropbox.png" | prepend: site.baseurl }}" alt="" /></a>

If you can add helpful tips on what to do when you encounter these codes, the better.

## Where to list status codes

You don't need to list the status or error codes on every page of your documentation, but there should be a link somewhere in your API docs indicating the status codes for your API. In particular, you should look for codes that return when there is an error, since this information helps developers troubleshoot problems.

You can link to that page from each of your endpoints if desired. You may want to call out particular status codes related to certain operations. For example, if you allow a DELETE method, you might highlight status codes that return for this method.

## Common HTTP status codes

You can see a list of common [REST API status codes here](http://www.restapitutorial.com/httpstatuscodes.html) and a [general list of HTTP status codes here](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes
).

## Your turn to try

List 3 status codes related to the surfreport/{beachID} endpoint. Use two general codes and make the third one up. 

Here's my attempt: 

| Status code | Meaning | 
|--------|----------|
| 200 | Success |
| 400 | Bad request with the parameters. |
| 4112 | The beach ID was not found in the lookup. |




