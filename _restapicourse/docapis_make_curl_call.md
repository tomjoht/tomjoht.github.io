---
title: Make a cURL call
permalink: /docapis_make_curl_call/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 1.7
type: notes_docapis
---
{% include notes.html %}

## About cURL

While Postman is convenient, it's hard to represent just how to make the calls. Plus, different users probably use different GUI clients, or none at all. Instead of describing how to make REST calls using a GUI client, the most conventional method is to explain how to make the calls using cURL.

cURL is a command-line utility that lets you excecute HTTP requests with different parameters and methods. In this section, you'll use cURL to make these same requests.

## Prepare the weather request in cURL format

{{activity}}
1. Go back into the [Weather API](https://www.mashape.com/fyhao/weather-13).
2. Copy the cURL request example for the first endpoint (aqi) into your text editor:

	```
	curl --get --include 'https://simple-weather-2.p.mashape.com/aqi?lat=1.0&lng=1.0' -H 'X-Mashape-Key: {api key}' -H 'Accept: text/plain'
	```
3. If you're on Windows, change the single quotation marks to double quotation marks, and add `-k` as well to work around security certificate issues.
	
	```
    curl --get -k --include "https://simple-weather-2.p.mashape.com/aqi?lat=1.0&lng=1.0" -H "X-Mashape-Key: {api key}" -H "Accept: text/plain"
    ```
	
4. Swap in your own API key.

    {{note}} In the instruction here, `{api key}` will be used instead of an actual API key. You should replace that part with your own API key. Omit the curly braces `{ }`. {{end}}

## Make the request in cURL (Mac)
{{activity}}
1. Open a terminal. To open Terminal, press **Cmd + spacebar** and type **Terminal**.

	{{tip}} If you plan on working in Terminal a lot, use <a href="https://www.iterm2.com/">iTerm</a> instead of Terminal.){{end}}
	
2. Paste the call you have in your text editor into the command line.
	
	My call for the Mashape Weather API looks like this:
	
	```bash
	  curl --get --include 'https://simple-weather-2.p.mashape.com/aqi?lat=37.354108&lng=-121.955236' -H 'X-Mashape-Key: {api key}' -H 'Accept: text/plain'
	```
	
	For the Aeris Weather observations endpoint, it looks like this:
	
	```bash
	curl --get --include "http://api.aerisapi.com/observations/santa%20clara,ca?client_id={client id}&client_secret={client secret}" "Accept: application/json"
	```
	
3. Press your **Enter** key. 

You should see something like this as a response:

<img src="{{ "/images/restapicourse/aqi_curl_response.png" | prepend: site.baseurl }}" alt="cURL call" />

The response is just a single number: the air quality index for the location specified. (This response is just text, but most of the time responses from REST APIs are in JSON.)

## Make the request in cURL (Windows 7)
{{activity}}
1. Copy the cURL call from your text editor. 
2. Go to **Start** and type **cmd** to open up the commandline. (If you're on Windows 8, see [these instructions for accessing the commandline](http://pcsupport.about.com/od/windows-8/a/command-prompt-windows-8.htm).)
3. Right-click and then select **Paste** to insert the call. My call for the Mashape API looks like this:
 
	```bash
	curl --get -k --include "https://simple-weather-2.p.mashape.com/aqi?lat=37.354108&lng=-121.955236" -H "X-Mashape-Key: {api key}" -H "Accept: text/plain"
	```
	
	{{warning}}Make sure you use double quotes and include the <code>-k</code>. {{end}}
	
	For the Aeris endpoint, it looks like this:
	
	```bash
	curl --get --include "http://api.aerisapi.com/observations/santa%20clara,ca?client_id={client id}&client_secret={client secret}" "Accept: application/json"
	```

	The response from Mashape looks like this:

	<img src="{{ "/images/restapicourse/commandline.png" | prepend: site.baseurl }}" alt="Command line Windows" />
	

## Single and Double Quotes with Windows cURL requests

Note that if you're using Windows to submit a lot of cURL requests, you'll eventually run into issues with the single versus double quotes. Some API endpoints (usually for POST methods) require you to submit content in the body of the message request. The body content is formatted in JSON. Since you can't use double quotes inside of other double quotes, you run into issues in submitting cURL requests.

Here's the workaround. If you have to submit body content in JSON, you can store the content in a .JSON file. Then you reference the file with an `@` symbol, like this:

```bash
curl -H "Content-Type: application/json" -H "Authorization: 123" -X POST -d @mypostbody.json http://endpointurl.com/example
```

Here cURL will look in the existing directory for the mypostbody.json file, but you can also reference a path.

## Make cURL requests for each of the weather endpoints

{{activity}}

Make a cURL request for each of the weather endpoints for both the Mashape weather endpoints and the Aeris Weather endpoints, similar to how you made the requests in Postman.


