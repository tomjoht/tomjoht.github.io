---
title: Submit requests through Postman
permalink: /docapis_postman/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 1.6
type: notes_docapis
---
{% include notes.html %}

## GUI clients make REST calls a little easier

When you're testing endpoints with different parameters, you can use one of the many GUI REST clients available. With a GUI REST client, you can:

* Save your calls with specific names
* More easily enter information in the right format
* See the response in a prettified JSON view or a raw format

## Common GUI clients

Some popular GUI clients include the following:

* [Postman](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en) (Chrome app)
* [Advanced REST Client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo) (Chrome browser extension)
* [REST Console](https://chrome.google.com/webstore/detail/rest-console/cokgbflfommojglbmbpenpphppikmonn)
* [Paw](https://luckymarmot.com/paw) (Mac, $30)

## Learn by doing, then deep dive

A lot of times abstract concepts don't make sense until you can contextualize them with some kind of action. In this course, I'm following more of an act-first-then-understand type of methodology. After you do an activity, we'll explore the concepts in more depth. I think this reflects how people use software and documentation.

If it seems like I'm glossing over some things now, like what a GET method is or a resource URI, hang in there. When we deep dive into that point later, and things will be a lot clearer.

## Make a call in Postman
{{activity}}
1. If you haven't already done so, download and start the [Postman app for Chrome](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en).

    {{note}} There's also a Postman <i>extension</i> for Chrome, but you want the Chrome app. It's more functional. {{end}}

2. You'll make a REST call for the first endpoint (`aqi`). Select **GET** for the method.
3. Insert the endpoint into the box next to GET: `https://simple-weather.p.mashape.com/aqi`
4. Click the **Params** button and insert `lat` and `lng` parameters with specific values (other than `1`).

    For example, `lat: 37.354108` and `lng: -121.955236`. You can find latitude and longitude values from the URL in Google Maps when you go to a specific location.

    <img src="{{ "/images/restapicourse/googlemapslatlong.png" | prepend: site.baseurl }}" alt="Finding latitude and longitude on Google Maps" />

    You can also find coordinates for a location using [mapcoordinates.net](http://www.mapcoordinates.net/en).

    When you add these parameters, they will dynamically be added as a query string to the endpoint URI. The query string is the string followed by the `?` in the endpoint URI.

5. Expand the **Headers** section and insert the key value pairs: `Accept: application/json` and `X-Mashape-Key: {api key}`. (Omit the colons, and swap in your own API key.)
6. Insert the endpoint URL (with the query string parameters) into the field next to GET.

    It should look like this:

	<img src="{{ "/images/restapicourse/postmansample.png" | prepend: site.baseurl }}" alt="Postman request" />

7. Click **Send**.

	The response appears. In this case, the response is text only. You can switch the format to HTML, JSON, XML, or other formats.
	
	{{note}} Usually the responses are more detailed JSON. Notice that the header set the `Accept` type as `text/plain`.{{end}}
	
## Save the call
{{activity}}
1. In Postman, click the **Save** button (the floppy disk next to Send). 
2. Create a new collection (e.g., weather) by typing the collection name in the **or create a new one** box.
3. Type a name for the request (e.g., aqi).
4. At the bottom of the dialog box, click **Add to Collection.**

Saved endpoints appear in the left column under Collections.

## Make calls for the other endpoints
{{activity}}
Enter details into Postman for the other two endpoints:

* weather
* weatherdata

When you save these other endpoints, click the arrow next to Save and choose **Save as**.  Otherwise you'll overwrite the settings of the existing call.

<img src="{{ "/images/restapicourse/postmansaveas.png" | prepend: site.baseurl }}" alt="Save as" />

(Alternatively, click the **+** button and create new tabs each time.)

{{note}}The Accept header tells the browser what format you will accept the response in. The Accept header for the `weatherdata` endpoint is `application/json`, whereas the first two are `application/text`. {{end}}

## View the format of the weatherdata response in pretty JSON
{{activity}}
The first two endpoint responses include text only. The weatherdata endpoint response is in JSON format. 

In Postman, run the weatherdata call. Then toggle the options to **Pretty** and **JSON**.

<img src="{{ "/images/restapicourse/postmanjsonresponse.png" | prepend: site.baseurl }}" alt="" />

The Pretty JSOn view expands the JSON response into more readable code. 

{{tip}} To "prettify" content means to un-minify it and format it with white space that is readable. {{end}}

For the sake of variety, here's the same call made in Paw:

<img src="{{ "/images/restapicourse/pawexample.png" | prepend: site.baseurl }}" alt="Paw" />

Paw also allows you to easily see the request headers, response headers, URL parameters, and other data.
 



