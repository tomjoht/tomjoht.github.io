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

## Parse and display REST JSON response

Mashape [provides some sample code](http://docs.mashape.com/javascript) to parse and display the REST response on a web page using JavaScript. You could use it, but you could also use some auto-generated code from Postman to do pretty much the same thing.

1. Start with a basic HTML template with jQuery referenced, like this:

```html
<html>
<body>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

</body>
</html>
```

Save your file with a name such as weatherdata.html.

2. Open Postman and click the request to the `weatherdata` endpoint that you configured earlier.
3. Click the **Generate Code Snippet** button.

<img src="{{ "/images/restapicourse/postmangeneratecodesnippet.png" | prepend: site.baseurl }}" alt="Generate code snippet" />

4. Select **JavaScript > jQuery AJAX**.
5. Copy the code sample.
6. Insert the Postman code sample between `<script>` tags in your template.
7. The Postman code sample needs one more parameter: `dataType`. Add `"dataType": "json"` as parameter in `settings`.

Your code should look like this:

```html
<html>
<body>
var settings = {
  "async": true,
  "crossDomain": true,
  "url": "https://simple-weather.p.mashape.com/weatherdata?lat=37.354108&lng=-121.955236",
  "method": "GET",
  "headers": {
    "accept": "application/json",
    "x-mashape-key": "{api key}"
  }
}

$.ajax(settings).done(function (response) {
  console.log(response);
});
</html>
</body>
```

8. Start Chrome and open the JavaScript Console by going to **View > Developer > JavaScript Console**.
9. Open the weatherdata.html file in Chrome (**File > Open File**).

The weatherdata response should be logged to the JavaScript console. You can inspect the payload by expanding the sections.

<img src="{{ "/images/restapicourse/jsonpayloadweatherdata.png" | prepend: site.baseurl }}" alt="JSON payload from weatherdata API logged to console" />

Note that Chrome tells you whether each expandable section is an object or an array. Knowing this is critical to accessing the value through JavaScript dot notation.

The following sections will explain this AJAX code a bit more.

## The AJAX method from jQuery

Probably the most useful method to know for code samples is the `ajax` method from jQuery.

In brief, the `ajax` method takes an argument, such as `settings`.

```
$.ajax(settings)
```

This `settings` argument is an object that contains a variety of key-value pairs. Each of the allowed key-value pairs is defined in [jQuery's ajax documentation](http://api.jquery.com/jquery.ajax/#jQuery-ajax-settings).

Some important values are the `url`, which is the URI or endpoint you are submitting the request to. Another is `headers`, which allows you to include custom headers in the request.

Look at the code sample you created. The `settings` variable is passed in as the argument to the `ajax` method. jQuery makes the request to the HTTP URL asynchronously, which means it won't hang up your computer while you wait for the response. You can continue using your application while the request executes.

You get the response by calling the method `done`. In the preceding code sample, `done` contains an anonymous function (a function without a name) that executes when `done` is called.

The response object from the `ajax` call is assigned to the `done` method's argument, which in this case is `response`. (You can name the argument whatever you want.)

You can then access the values from the response object using object notation. In this example, the response is just logged to the console.

## Logging responses to the console

The piece of code that logged the response to the console was simply this:

```
console.log(response);
```

Logging responses to the console is one of the most useful ways to test whether an API response is working or not. The console collapses each object inside its own expandable section. This allows you to inspect the payload.

You can add other information to the console log message. To preface the log message with a string, add something like this:

```
console.log("Here's the response: " + response);
```

Strings are always enclosed inside quotation marks, and you use the plus sign `+` to concatenate strings with JavaScript variables, like `response`.

Customizing log messages is helpful if you're logging various things to the console and need to flag them with an identifier.

## Inspect the payload
{{activity}}
Inspect the payload by expanding each of the sections. Find the section that appears here: object > query > results > channel > item > description.


