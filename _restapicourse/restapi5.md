---
title: Make a cURL call
permalink: /restapi5/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 5
---
{% include restapicourse.html %}

## Prepare the call

With the authorization keys retrieved, you're ready to make a call to the REST API. You'll use cURL, which is a command-line utility that lets you excecute HTTP requests with different parameters and methods.

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

{{note}} The steps that follow diff depending on whether you're using a Mac or PC.{{end}}

## Verify that you have cURL installed

If you skipped past the requirements page in the course, you may have missed the installation steps for cURL. If you need to install cURL, see the <a href="{{ "/restapi1" | prepend: site.baseurl }}">instructions on that page</a>.

## Make the call in cURL (Mac)

1. Open a terminal. Press **Cmd + spacebar** and type either **iTerm** or **Terminal**. (Either works for making command line operations, but choose iTerm if you have it available, since it's more functional.)
2. Paste the call you have in your text editor into the command line, and press your **Return** key.

You should see something like this:

<img src="{{ "/images/restapicourse/mashape_weather_call_curl.png" | prepend: site.baseurl }}" alt="cURL call" />

Congratulations, you just made a call to a REST API endpoit to retrieve the weather forecast.

## Make the call in cURL (Windows)

1. On Windows 7, go to **Start** and type **cmd** in the search box to bring up a command prompt. 
2. Copy and paste your cURL call into the terminal. (Right-click and select **Paste** to insert the copied text on your clipboard.)

You should see something like this:



{% include restapicourse_next.html %}



