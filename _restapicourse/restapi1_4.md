---
title: 1.4 Make a cURL call
permalink: /restapi1course1-4/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 1.4
---
{% include notes.html %}
{% include restapicourse.html %}

## Prepare the call

With the authorization keys retrieved, you're ready to make a call to the REST API. In this example, you'll use cURL, which is a command-line utility that lets you excecute HTTP requests with different parameters and methods.

1. Go back into the [Weather API](https://www.mashape.com/fyhao/weather-13).
2. Copy the cURL request example for the first endpoint (aqi) into your text editor:

	```
curl --get --include 'https://simple-weather.p.mashape.com/aqi?lat=1.0&lng=1.0' \-H 'X-Mashape-Key: EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p' \
  -H 'Accept: text/plain'
	```
3. Swap in your own API key.
4. Use Google Maps to find the latitude and longtitude of your current location (these values appear in the URL when you browse to a location on Google Maps).
	
<img src="{{ "/images/restapicourse/googlemapslatlong.png" | prepend: site.baseurl }}" alt="Finding latitude and longitude on Google Maps" />

You can also find coordinates for a location using [mapcoordinates.net](http://www.mapcoordinates.net/en).
	
{{note}} Make sure you don't accidentally remove the `'` from the cURL code as you make edits. {{end}}

## Make the call in cURL (Mac)

1. Open a terminal. Press **Cmd + spacebar** and type either **iTerm** or **Terminal**. (Either works for making command line operations, but choose iTerm if you have it available, since it's more functional.)
2. Paste the call you have in your text editor into the command line, and press your **Return** key.

My call looks like this:

```
  curl --get --include 'https://simple-weather.p.mashape.com/aqi?lat=37.354108&lng=-121.955236' \-H 'X-Mashape-Key: WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET' \
  -H 'Accept: text/plain'
```

You should see something like this as a response:

<img src="{{ "/images/restapicourse/aqi_curl_response.png" | prepend: site.baseurl }}" alt="cURL call" />

The response is just a single number: the air quality index for the location specified. This response is just text, but most of the time responses are in JSON.

Congratulations, you just made a call to a REST API endpoit to retrieve the weather forecast.

## Make the call in cURL (Windows)

{{note}} If you skipped past the requirements page in the course, you may have missed the installation steps for cURL. If you need to install cURL, see the <a href="{{ "/restapi1_0" | prepend: site.baseurl }}">instructions on that page</a>.{{end}}

1. On Windows 7, go to **Start** and type **cmd** in the search box to bring up a command prompt. 
2. Copy and paste your cURL call into the terminal. (Right-click and select **Paste** to insert the copied text on your clipboard.)

You should see something like this:


{% include restapicourse_next.html %}



