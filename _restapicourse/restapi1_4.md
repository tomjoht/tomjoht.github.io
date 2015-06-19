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

## Prepare the call

With the authorization keys retrieved, you're ready to make a call to the REST API. In this example, you'll use cURL, which is a command-line utility that lets you excecute HTTP requests with different parameters and methods.

1. Go back into the [Weather API](https://www.mashape.com/fyhao/weather-13).
2. Copy the cURL request example for the first endpoint (aqi) into your text editor:

	```
curl --get --include 'https://simple-weather.p.mashape.com/aqi?lat=1.0&lng=1.0' -H 'X-Mashape-Key: EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p' -H 'Accept: text/plain'
	```
3. If you're on Windows, change the single quotes to double, and add `-k` as well to work around security certificate issues.
	
	```
    curl --get -k --include "https://simple-weather.p.mashape.com/aqi?lat=1.0&lng=1.0" -H "X-Mashape-Key: EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p" -H "Accept: text/plain"
    ```
	
4. Swap in your own API key.
5. Use Google Maps to find the latitude and longtitude of your current location (these values appear in the URL when you browse to a location on Google Maps).
	
<img src="{{ "/images/restapicourse/googlemapslatlong.png" | prepend: site.baseurl }}" alt="Finding latitude and longitude on Google Maps" />

You can also find coordinates for a location using [mapcoordinates.net](http://www.mapcoordinates.net/en).
	
{{note}} Make sure you don't accidentally remove the `'` from the cURL code as you make edits. {{end}}

## Make the call in cURL (Mac)

1. Open a terminal. To open Terminal, press **Cmd + spacebar** and type **Terminal**. 
	
	{{tip}} If you plan on working in Terminal a lot, use <a href="https://www.iterm2.com/">iTerm</a> instead of Terminal.){{end}}
2. Paste the call you have in your text editor into the command line.
	
	My call looks like this:
	
	```
	  curl --get --include 'https://simple-weather.p.mashape.com/aqi?lat=37.354108&lng=-121.955236' -H 'X-Mashape-Key: WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET' -H 'Accept: text/plain'
	```
	
3. Press your **Enter** key. 

You should see something like this as a response:

<img src="{{ "/images/restapicourse/aqi_curl_response.png" | prepend: site.baseurl }}" alt="cURL call" />

The response is just a single number: the air quality index for the location specified. This response is just text, but most of the time responses from REST APIs are in JSON.

Congratulations, you just made a call to a REST API endpoit to retrieve the weather forecast.

## Make the call in cURL (Windows 7)

1. Copy the cURL call from your text editor. 
2. Go to **Start** and type **cmd** to open up the commandline. (If you're on Windows 8, see [these instructions for accessing the commandline](http://pcsupport.about.com/od/windows-8/a/command-prompt-windows-8.htm).)
3. Right-click and then select **Paste** to insert the call. My call looks like this:
 
	```
curl --get -k --include "https://simple-weather.p.mashape.com/aqi?lat=37.354108&lng=-121.955236" -H "X-Mashape-Key: WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET" -H "Accept: text/plain"
	```
	
Remember to use double quotes and to include the `-k`. You should get back a number (the air quality index) as a response. The response looks like this:

<img src="{{ "/images/restapicourse/commandline.png" | prepend: site.baseurl }}" alt="Command line Windows" />

## If it didn't work, try the Advanced REST client

If cURL didn't work, you can just use the [Advanced REST Client extension for Chrome](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo). After launching the client, insert the values as shown in the following screenshot. You'll get the same response.

<img src="{{ "/images/restapicourse/advancedrestclient.png" | prepend: site.baseurl }}" alt="Advanced REST Client" />




