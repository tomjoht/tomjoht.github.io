---
title: "Make a curl call"
permalink: learnapidoc/docapis_make_curl_call.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.5
sidebar: docapis
section: likeadeveloper
path1: learnapidoc/likeadeveloper.html
last-modified: 2026-10-17
---

{% include coffeeshopbook.html %}

In this section, you'll use curl to make the same weather API requests you made previously with Postman. If you haven't installed curl, see [curl intro and installation](docapis_install_curl.html) first.

* TOC
{:toc}

## <i class="fa fa-user-circle"></i> Activity: Make the OpenWeatherAPI request using curl {#make_request_curl}

This activity assumes you have curl installed. curl ships with macOS and with Windows 10 version 1803 and later, so you probably already have it &mdash; run `curl -V` to check. If you're on an older machine without it, download a build from [curl's download page](https://curl.se/download.html), then close and restart your Command Prompt.

To make a request with curl:

1.  Assuming you completed the exercises in the [Postman tutorial](docapis_postman.html), go back into Postman.
2.  Open any request you've configured, and then click **Code** (the <code>&lt;/&gt;</code> icon) in the right sidebar.
3.  Select **cURL** from the drop-down list, and then click **Copy snippet**.

    <figure><img class="docimage medium" src="{{site.api_media}}/postman_curl_request5.png" alt="curl request in Postman" /><figcaption>curl request in Postman</figcaption></figure>

    The Postman code for the OpenWeatherMap weather request in curl looks as follows:

    ```bash
    curl --location 'https://api.openweathermap.org/data/2.5/weather?zip=95050&units=imperial&appid=APIKEY'
    ```

    (In the above code, replace `APIKEY` with your actual API key.)

    The [`--location`](https://curl.se/docs/manpage.html#-L) parameter tells curl to follow the URL if the server responds with a redirect. Postman leaves out the HTTP method for GET requests because GET is curl's default. For other methods, Postman adds the [`--request`](https://curl.se/docs/manpage.html#-X) parameter (for example, `--request POST`).

    (Note that older versions of Postman included their own header information, designated with `-H`, such as `Postman-Token`. If you see these headers, delete them since they aren't needed outside of Postman.)

    {: .warning}
    In general, the code snippets can be copied and pasted directly into your terminal on a Mac. However, for Windows, you must change the single quotation marks to double quotation marks.

    Also, on Windows, if your curl has any backslashes, (`\`) remove them and put all content onto the same line. (Backslashes are just added for readability). You can make these adjustments in a text editor before pasting the curl command into the Command Prompt.

4.  Go to your Terminal (Mac) or Command Prompt (Windows).

    You can open your Terminal / Command Prompt by doing the following:

    * If you're on Windows, go to **Start** and search for **cmd** to open up the Command Prompt. Paste in the curl request and then press **Enter**. (If you can't paste it in, look for paste options on the right-click menu.)

    * If you're on a Mac, open Terminal by pressing **Cmd + spacebar** and typing **Terminal**. (Or go to **Applications > Utilities > Terminal**). (You could also use [iTerm](https://iterm2.com/).) Paste in the curl request and then press **Enter**.

    The response from the OpenWeatherMap weather request should look as follows:

    ```json
    {"coord":{"lon":-121.953,"lat":37.3492},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"base":"stations","main":{"temp":68.29,"feels_like":67.26,"temp_min":64.11,"temp_max":71.47,"pressure":1014,"humidity":52,"sea_level":1014,"grnd_level":1015},"visibility":10000,"wind":{"speed":4.61,"deg":310},"clouds":{"all":0},"dt":1792296751,"sys":{"type":1,"id":5845,"country":"US","sunrise":1792246653,"sunset":1792286902},"timezone":-25200,"id":0,"name":"Santa Clara","cod":200}
    ```

    This response is minified. You can un-minify it by going to a site such as [JSON pretty print](https://jsonformatter.org/json-pretty-print/) or [JSONViewerTool's JSON Formatter](https://jsonviewertool.com/json-formatter), or if you have [Python installed](https://www.python.org/downloads/), you can add <code>| python3 -m json.tool</code> at the end of your curl request to un-minify the JSON in the response. (If you have [jq](https://jqlang.org/) installed, <code>| jq</code> does the same thing.) See [this Stack Overflow thread](https://stackoverflow.com/questions/352098/how-can-i-pretty-print-json-in-a-unix-shell-script) for details.

{% include ads.html %}

{% include image_ad_right.html %}

## Note about single and double quotes with Windows curl requests {#windows_notes}

If you're using Windows to submit a lot of curl requests, and the curl requests require you to submit JSON in the [request body](docapis_doc_parameters.html#request_bodies), you might run into issues with single versus double quotes. The problem is that request body content is often formatted in JSON, which requires double quotes.

{% include random_ad4.html %}

Since you can't use double quotes inside of other double quotes (unless you escape each one with a backslash, which quickly gets messy), you'll run into issues in submitting curl requests in these scenarios.

{% include random_ad2.html %}

Here's the workaround. If you have to submit body content in JSON, you can store the content in a JSON file. Then you reference the file with an `@` symbol, like this:

```sh
curl -H "Content-Type: application/json" -H "Authorization: 123" -X POST -d @mypostbody.json http://endpointurl.com/example
```

Here curl will look in the existing directory for the `mypostbody.json` file. (You can also reference the complete path to the JSON file on your machine.)

{% include random_ad3.html %}
