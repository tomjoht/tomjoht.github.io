---
title: Submit requests through Postman
permalink: /docapis_postman/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 1.5
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

* [Postman](http://www.getpostman.com/)
* [Advanced REST Client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo) (Chrome browser extension)
* [REST Console](https://chrome.google.com/webstore/detail/rest-console/cokgbflfommojglbmbpenpphppikmonn)
* [Paw](https://luckymarmot.com/paw) (Mac, $30)

Of the various GUI clients available, I think Postman is the best option, since it allows you to save both calls and responses, is free, works flawlessly, and is easy to configure.

## Learn by doing, then deep dive into concepts

A lot of times abstract concepts don't make sense until you can contextualize them with some kind of action. In this course, I'm following more of an act-first-then-understand type of methodology. After you do an activity, we'll explore the concepts in more depth. I think this reflects how people use software and documentation.

{{site.data.alerts.note}} If it seems like I'm glossing over some things now, like what a GET method is or a resource URI, hang in there. When we deep dive into these points later, things will be a lot clearer. {{site.data.alerts.end}}

## Make a request in Postman
{{activity}}
1. If you haven't already done so, download and start the [Postman app](docapis_postman).
2. You'll make a REST call for the first endpoint (`aqi`). Select **GET** for the method.
3. Insert the endpoint into the box next to GET: `https://simple-weather.p.mashape.com/aqi`
4. Click the **Params** button (to the right of the box where you inserted the endpoint) and insert `lat` and `lng` parameters with specific values (other than `1`).

    {{site.data.alerts.note}} Only some countries are supported in the <code>aqi</code> call &mdash; specifically the United States, Singapore, Malaysia, Europe, and Australia. If the country isn't supported, you'll see "Not supported" in the API response. To get the aqi for Singapore, use <code>lat: 1.3321256</code> and <code>lng: 103.7373503</code>. You can find latitude and longitude values from the URL in Google Maps when you go to a specific location.{{site.data.alerts.end}}

    <img src="{{ "images_api/googlemapslatlong.png" | prepend: site.baseurl}}" alt="Finding latitude and longitude on Google Maps" />
	
	When you add these `lat` and `lng` parameters, they will dynamically be added as a query string to the endpoint URI. The query string is the code followed by the `?` in the endpoint URI. A request URL only has one query string (one `?`). If you have additional parameters in the query string, they're joined with an ampersand `&` symbol.
	
5. Click the **Headers** tab (below the GET button) and insert the key value pairs: `Accept: text/plain` and `X-Mashape-Key: APIKEY`. (Swap in your own API key in place of `APIKEY`.)
	
    It should look like this:

	<img src="{{ "images_api/postmannewinterface.png" | prepend: site.baseurl}}" alt="Postman request" />

7. Click **Send**.

	The response appears, such as `52`. In this case, the response is text only. You can switch the format to HTML, JSON, XML, or other formats, but since this response is text only, you won't see any difference.
	
	{{note}} Usually the responses are more detailed JSON, which allows you to select a specific part of the response to work with.{{end}}
	
## Save the request
{{activity}}
1. In Postman, click the **Save** button (next to Send). 
2. Create a new collection (e.g., weather) by typing the collection name in the **"Or create new collection"** box.
3. In the Request Name box at the top of the dialog box, type a friendly name for the request, such as "AQI endpoint".
4. At the bottom of the dialog box, click **Save.**

Saved endpoints appear in the left column under Collections.

## Make requests for the other endpoints
{{activity}}
Enter details into Postman for the other two endpoints for the Mashape Weather API:

* weather
* weatherdata

When you save these other endpoints, click the arrow next to Save and choose **Save to collection**. Then choose a new collection and request name. (Otherwise you'll overwrite the settings of the existing call.)

<img src="{{ "images_api/postmansaveas.png" | prepend: site.baseurl}}" alt="Save as" />

(Alternatively, click the **+** button on the new tab and create new tabs each time.)

{{note}}The Accept header tells the browser what format you will accept the response in. The Accept header for the <code>weatherdata</code> endpoint is <code>application/json</code>, whereas the first two are <code>text/plain</code>. {{end}}

## View the format of the weatherdata response in JSON
{{activity}}
The first two endpoint responses include text only. The weatherdata endpoint response requires a JSON format. 

In Postman, run the weatherdata call. Then toggle the options to **Pretty** and **JSON**.

<img src="{{ "images_api/postmanjsonresponse.png" | prepend: site.baseurl}}" alt="JSON response" />

The Pretty JSON view expands the JSON response into more readable code. 

{{tip}} To "prettify" content means to un-minify it and format it with white space that is readable. {{end}}

For the sake of variety with GUI clients, here's the same call made in Paw:

<img src="{{ "images_api/pawexample.png" | prepend: site.baseurl}}" alt="Paw" />

Paw also allows you to easily see the request headers, response headers, URL parameters, and other data.

## Enter several requests for the Aeris API into Postman
{{activity}}
Now let's switch APIs a bit and see some weather information from the Aeris API. Constructing the endpoints for the Aeris Weather API is a bit more complicated since there are many different queries, filters, and other parameters you can use to configure the endpoint. (Additionally, some locations have the information, and others don't.)

Here are a few requests to configure for Aeris. You can just paste the requests directly into the URL and the parameters will auto-populate in the parameter fields. Note how the Aeris API doesn't use a Header field to pass the API keys &mdash; the key and secret are passed directly in the request URL as part of the query string.

Find out if all the country music in Knoxville, Tennessee is giving people migraines:

```
http://api.aerisapi.com/indices/migraine/Knoxville,TN?client_id=CLIENTID&client_secret=CLIENTSECRET
http://api.aerisapi.com/indices/migraine/Knoxville,TN?client_id=CLIENTID&client_secret=CLIENTSECRET
```

Get the weather forecast for your area:

```
http://api.aerisapi.com/observations/Santa+Clara,CA?client_id=CLIENTID&client_secret=CLIENTSECRET&limit=1
```

In the response, find the wind speed and compare it with the wind from the Mashape API. Are they the same?

Get the weather from a city on the equator &mdash; Chimborazo, Ecuador:

```
http://api.aerisapi.com/observations/Chimborazo,Ecuador?client_id=CLIENTID&client_secret=CLIENTSECRET&limit=1
```

You're thinking of moving to Arizona, but you want to find a place that's cool. Use the `normals` endpoint:

```
http://api.aerisapi.com/normals/flagstaff,az?client_id=CLIENTID&client_secret=CLIENTSECRET&limit=5&filter=hassnow
```

By looking at these two different weather APIs, you can see some sharp differences in the way the information is called and returned. However, fundamentally both APIs have various endpoints that you can configure with parameters. When you make requests with the endpoints, you get responses that contain information, often in JSON format.