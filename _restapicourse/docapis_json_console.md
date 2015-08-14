---
title: Logging JSON responses to the console
permalink: /docapis_json_console/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 1.8
type: notes_docapis
---
{% include notes.html %}

## Making use of the JSON response

Seeing the response from cURL or Postman is cool, but how do you make use of the JSON data? 

With most API documentation, you don't need to show how to make use of JSON data. You assume that developers will use their JavaScript skills to parse through the data and display it appropriately in their apps. 

However, to better understand how developers will access the data, we'll go through a brief tutorial in displaying the REST response on a web page. 

## Mashape's sample code to parse and display REST response

Mashape [provides some sample code](http://docs.mashape.com/javascript) to parse and display the REST response on a web page using JavaScript: 

```html
<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-2.1.1.min.js"></script>
  <meta charset="utf-8">
  <title>Mashape Query</title>
  <script>
	function doIt() { 
 var output = $.ajax({
    url: 'https://SOMEAPI.p.mashape.com/', // The URL to the API. You can get this by clicking on "Show CURL example" from an API profile
    type: 'GET', // The HTTP Method, can be GET POST PUT DELETE etc
    data: {}, // Additional parameters here
    dataType: 'json',
    success: function(data) {
    	//
        //Change data.source to data.something , where something is whichever part of the object you want returned.
        //To see the whole object you can output it to your browser console using:
        //console.log(data);
       	document.getElementById("output").innerHTML = data.source; 
        },
    error: function(err) { alert(err); },
    beforeSend: function(xhr) {
    xhr.setRequestHeader("X-Mashape-Authorization", "YOUR_API_KEY"); // Enter here your Mashape key
    }
});
  
 
}
 
</script>
</head>
<body>
 
  <button onclick="doIt()">Run the request</button>
  <div id="output">The API request is:</div>
  
</body>
</html>
```

Getting into the nitty gritty details of this code is beyond the scope of this tutorial. But briefly, here's what the code does:

* An `.ajax()` method from jQuery (a JavaScript library) is used to get make the REST call to the endpoint and retrieve the response.
* AJAX stands for asynchronous JavaScript. AJAX allows content on your page to update without refreshing the page.
* AJAX also allows you to make cross-domain requests, meaning you can pull information from another domain and display it on your own site without violating CORS (cross-origin resource sharing).
* The `button` element has an onclick listener called `doIt` that fires when a user clicks the button. The `doIt` function contains the `.ajax` method.
* The `.ajax` method takes various inputs (url, type, data, datatype, and success).
* The response will be passed into the `data` argument of the success function.
* Success contains an anonymous function that writes the response to the `output` tag on the page.

## Customize the above code in a HTML page
 
The above code is general and not specific to the weather API. We have to plug in our own values in a few places. 
 
For this exercise, customize the previous code with the weatherdata endpoint.
 
1. Open a text editor and copy the previous code into a new document. Save the document as weatherdata.html.
2. Change the `url` value from `https://SOMEAPI.p.mashape.com/` to your weatherdata endpoint. For example, `https://simple-weather.p.mashape.com/weatherdata?lat=37.354108&lng=-121.955236`.
3. Where it says `YOUR_API_KEY`, enter your Mashape API key. 
4. Remove the two backslashes `\\` next to `console.log(data);` to uncomment this part of the code.
 
	The response from the API will be passed to the `data` argument of the success parameter. By logging `data` to the console, we can inspect the response in the JavaScript Console in our browser.
 
4. Click **Save**.
6. Open your Chrome browser. 
7. Open Chrome's JavaScript Console by going to **View > Developer > JavaScript Console**.
8. Go to **File > Open** and open the weatherdata.html file you created. 
9. Click **Run the Request**. 

You should see the response logged to the console: 

<img src="{{ "/images/restapicourse/inspectingthepayload.png" | prepend: site.baseurl }}" alt="Logging the response to the console" />

{{note}} If you're having trouble getting the page formatted correctly, you can <a href="{{ "/files/restapicourse/weatherdata.html" | prepend: site.baseurl }}">download it here.</a>{{end}}

The piece of code that logged the response to the console was simply this:

```
console.log(data);
```

Logging responses to the console is one of the most useful ways to test whether an API response is working or not. The console collapses each object inside its own expandable section. This allows you to inspect the payload.

## Customizing console log messages

You can add other information to the console log message. To preface the log message with a string, add something like this:

```
console.log("Here's the response: " + data);
```

This is helpful if you're logging various things to the console and need to flag them with an identifier.

## Inspect the payload

Inspect the payload by expanding each of the sections. Try to find the section that appears here: object > query > results > channel > item > description.

## Replacing "undefined" through dot notation

You'll notice that in the main content display, the REST response information didn't appear. Instead, it says "undefined." 

That's because we didn't customize this part:

```js
document.getElementById("output").innerHTML = data.source; 
```

Change `data.source` to `data.query.results.channel.item.description` and see what happens. The entire description property should appear in the browser.

The dot after data is how you access the values you want from the JSON object. JSON wouldn't be very useful if you had to always print out the entire response. Instead, you select the exact element you want and pull that out through something called dot notation. The next topic will guide you through using dot notation to pull out the JSON response. 
