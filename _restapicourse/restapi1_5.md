---
title: Understand cURL more
permalink: /restapi1_5/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 1.5
---
{% include restapicourse.html %}

## Why cURL

Before moving on, let's pause a bit and learn a bit more about cURL. 

One of the advantages of REST APIs is that you can use almost any programming language to call the endpoint. The endpoint is simply a resource located on a web server at a specific path.

Each programming language has a different way of making web calls. Rather than exhausting your energies trying to show how to make web calls in Java, Python, C++, JavaScript, Ruby, and so on, you can just show the call using cURL. 
 
cURL provides a generic, language agnostic way to demonstrate HTTP requests and responses. Users can see the format of the request, including any headers and other parameters. Your users can translate this into the specific format for the language they're using. cURL also shows the response. This is the core information people need to know to interact with your API.

Almost every API shows how to interact with the API using cURL.

## REST APIs and the web

One reason REST APIs are so familiar is because REST follows the same model as the web. When you type an `http` address into a browser address bar, you're telling the browser to make an HTTP request to a resource on a server. The server returns a response, and your browser converts the response into something that you can see. 

## Stuff you don't see

When you type an address into a website, such as http://twitter.com, you only see the body of the response. But actually, there's more going on behind the scenes. When you make the request, you're sending a header that contains information about the request. 

## Looking behind the scenes of a web request

When you go to a website, you submit the request using the GET HTTP method. There are other HTTP methods you can use for server resources. Here are the common methods when working with REST endpoints:

| HTTP Method | Description |
|-----|------|
| POST | Create a resource |
| GET | Read a resource |
| PUT | Update a resource |
| DELETE | Delete a resource |

## Look at the request headers

1. Download the [Firebug extension for Chrome](https://getfirebug.com/releases/lite/chrome/).
2. After installing it, click the bug icon in the upper-right corner of your browser.
3. Go to [Twitter.com](http://twitter.com).
4. In the Firebug pane at the bottom, expand one of the **GET** requests. This is the HTTP method you used to get the resource.
5. Click the **Headers** tab. 
5. Look at the **RequestHeaders** section. It should look something like this:

<img src="{{ "/images/restapicourse/requestheaders.png" | prepend: site.baseurl }}" alt="Request Headers" />

## Submitting requests with cURL

Now let's move away from the browser and start using cURL for our HTTP requests. When you use cURL to make HTTP requests, you need to specify the HTTP method you're using with the request. 

cURL has shorthand names for the various options you include with your request. Let's look more closely at the request you submitted for the weather:

```
curl --get --include 'https://george-vustrey-weather.p.mashape.com/api.php?location=Santa+Clara' \
  -H 'X-Mashape-Key: EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p' \
  -H 'Accept: application/json'
```
The `\` just means to start a new line. 

Here's what the additional commands mean:

| cURL command | Description |
|---------|---------|
| `--get` | HTTP method to use. Also represented by `-X GET`. |
| `--include` | Show the response headers in the request. Also represented by `-i`. |
| `-H` | Submit custom header. Include an additional `-H` for each header you're submitting. Also represented by `--header`. |

A parameter was passed to the endpoint using a "query string." The `?` appended to the URL is the query string where the parameters are passed to the endpoint.

## Common cURL commands

cURL has a lot of possible commands, but the following are the most common when working with REST APIs.

| cURL command | Description | Example |
|---------|---------|--------|
| `-i` or `--include` | Include the response headers in the response. | `curl -i http://www.example.com` |
| `-d` or `--data`  | Include data to post to the URL. The data needs to be [url encoded](http://www.w3schools.com/tags/ref_urlencode.asp). | `curl -d "data-to-post" http://www.example.com`   |
| `-H` or `--header` | Include a custom header with the request. This is very common with REST API requests because the authorization is usually included here. | `curl -H "key:12345" http://www.example.com`   |
| `-X <HTTP METHOD>` | The HTTP method to use with the request. If you use `-d` in the request, cURL automatically specifies a POST method. With GET requests, including this is optional. | `curl -X PUT "resource-to-update" http://www.example.com`    |

## Example

Here's an example that combines some of these commands:

```
curl -i -H "Accept: application/json" -X POST -d "{status:MIA}" http://personsreport.com?status  
```

We could also format this with line breaks to make it more readable:

```
curl -i \
     -H "Accept: application/json" \
     -X POST \
     -d "{status:MIA}" \
     http://personsreport.com?status \
```

This header instructs the server to process the post body as JSON. The content `person:`123` is used to create something.
 
## Activities

Take the following quiz to see how much you remember. 

* -i stands for...
* -h stands for...
* -X stands for...
* -d stands for...

## More Resources

Here are some more resources for learning cURL: 

* [9 uses for cURL worth knowing](http://httpkit.com/resources/HTTP-from-the-Command-Line/) 
* [REST-esting with cURL](http://blogs.plexibus.com/2009/01/15/rest-esting-with-curl/).

{{tip}} When you use cURL, the terminal and iTerm on the Mac provide a much easier experience than using the command prompt in Windows. If you're going to get serious about API documentation but you're still on a PC, consider switching. There are a lot of utilities that you install via the command line that <i>just work</i> on a Mac. You won't constantly be needing to add things "to your path". {{end}}

{% include restapicourse_next.html %}



