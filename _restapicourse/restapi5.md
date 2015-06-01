---
title: Make a cURL calls
permalink: /restapi5/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 5
---
{% include restapicourse.html %}

## Prepare the call

With the authorization keys retrieved, you're ready to make a cURL call. 

1. Go back into the [Ultimate Weather API page](https://www.mashape.com/george-vustrey/ultimate-weather-forecasts).
2. Copy the request example into your text editor:

```
curl --get --include 'https://george-vustrey-weather.p.mashape.com/api.php?location=Los+Angeles' \
  -H 'X-Mashape-Key: EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p' \
  -H 'Accept: application/json'
```
3. Swap in your own API key.
4. Choose a location other than Los Angeles.
{{note}} Make sure you don't accidentally remove the `'` as you make edits. Also, the `Los+Angeles` part is concatenated with a `+`. {{end}}

## Paste the call into a terminal

cURL is an application installed on the command line that lets you excecute HTTP requests with different parameters from the command line.

1. Open a terminal. 
 * On a Mac, press **Cmd + spacebar** and type either **iTerm** or **Terminal**. (Either works for making command line operations, but choose iTerm if you have it available, since it's more functional.)
 * On Windows 7, go to **Start** and type **cmd** in the search box to bring up a command prompt. 
 * On Windows 8....
2. Paste the call you have in your text editor into the command line, and press your **Return** key.

You should see something like this:

<img src="{{ "/images/mashape_weather_call_curl.png" | prepend: site.baseurl }}" alt="cURL call" />

Congratulations, you just made a call to a REST API endpoit to retrieve the weather forecast.

{% include restapicourse_next.html %}



