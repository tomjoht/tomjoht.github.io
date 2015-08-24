---
title: Documenting code samples
permalink: /docapis_doc_code_samples/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.7
type: notes_docapis
---
{% include notes.html %}

## REST APIs are language agnostic

One ingenius aspect of REST APIs is that they aren't tied to a specific programming language. Developers can code their applications in any language, from Java to Ruby to JavaScript, Python, C#, Ruby, Node JS, or something else. As long as they can make an HTTP web request in that language, they can use the API. The response from the web request will contain the data in either JSON or XML.

## Which language should you provide code samples in?
Because you can't really know which language your end users will be developing in, it's kind of fruitless to try to provide code samples in every language. Many APIs just show the format for submitting requests and a sample response, and they assume that developers will know how to submit HTTP requests in their particular programming language.

However, some APIs do show simple code snippets in a variety of languages:

Some API documentation does this. Here's an example from Evernote's API documentation:

<a href="https://dev.evernote.com/doc/articles/note-sharing.php"><img src="{{ "/images/restapicourse/codesamplesevernote.png" | prepend: site.baseurl }}" alt="Evernote API code samples" /></a>

And another from Twilio:

<a href="https://www.twilio.com/docs/api/rest/making-calls"><img src="{{ "/images/restapicourse/twiliocodeexamples.png" | prepend: site.baseurl }}" alt="Twilio code samples" /></a>

## Code snippets

If you want to provide some easy code snippets, one helpful tool is Postman's export feature.

To generate a JavaScript code snippet:

1. Configure a weatherdata request in Postman (or select one you've saved).
2. Below the Send button, click the Generate Code Snippets button. <img src="{{ "/images/postman_generate_button.png" | prepend: site.baseurl }}" alt="Postman Generate Code Snippets" />.
3. In the dialog box that appears, browse the available code samples using the drop-down menu. Note how your request data is implemented into each of the different code sample templates.
4. Select the **JavaScript > jQuery AJAX** code sample:

    <img src="{{ "/images/postman_code_snippets.png" | prepend: site.baseurl }}" alt="" />

5. Copy the content by clicking the **Copy** button <img src="{{ "/images/postman_copy_code.png" | prepend: site.baseurl }}" alt="Copy button in Postman" />.

This is the JavaScript code that you can attach to an event on your page.

## Implement the JavaScript code snippet

Create a new HTML file with the basic HTML elements:

```html
<!DOCTYPE html>
<head>
<title>My sample page</title>
</head>
<body>

</body>
</html>
```

Insert the JavaScript code you copied inside some `<script>` tags inside the `head`:

```html
<!DOCTYPE html>
<head>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script>
var settings = {
  "async": true,
  "crossDomain": true,
  "url": "https://simple-weather.p.mashape.com/weatherdata?lat=37.354108&lng=-121.955236",
  "method": "GET",
  "headers": {
    "accept": "application/json",
    "x-mashape-key": "WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET"
  }
}

$.ajax(settings).done(function (response) {
  console.log(response);
});
</script>
</head>
<body>
hello
</body>
</html>
```

For some reason, the JavaScript code sample is missing the `dataType` parameter. Add `"dataType": "json",` in the list of settings:

```html
<!DOCTYPE html>
<head>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script>
var settings = {
  "async": true,
  "crossDomain": true,
  "dataType": "json",
  "url": "https://simple-weather.p.mashape.com/weatherdata?lat=37.354108&lng=-121.955236",
  "method": "GET",
  "headers": {
    "accept": "application/json",
    "x-mashape-key": "WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET"
  }
}

$.ajax(settings).done(function (response) {
  console.log(response);
});
</script>
</head>
<body>
hello
</body>
</html>
```

This code uses the `ajax` method from jQuery. The parameters are defined in a variable called `settings` and then passed into the method. The `ajax` method will make the request and assign the response to the `done` method's argument (`response`). The `response` object will be logged to the console.

Open the file up in your Chrome browser.
Open the JavaScript Developer Console by going to **View > Developer > JavaScript Console**. Refresh the page.
You should see the object logged to the console.

<img src="{{ "/images/consoleexamplefrompostman.png" | prepend: site.baseurl }}" alt="Object logged to the console" />

Let's say you wanted to pull out the sunrise time and append it to a tag on the page. You could do so like this:

```html
<!DOCTYPE html>
<head>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script>
var settings = {
  "async": true,
  "crossDomain": true,
  "dataType": "json",
  "url": "https://simple-weather.p.mashape.com/weatherdata?lat=37.354108&lng=-121.955236",
  "method": "GET",
  "headers": {
    "accept": "application/json",
    "x-mashape-key": "WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET"
  }
}

$.ajax(settings).done(function (response) {
  console.log(response);
  $("#sunrise").append(response.query.results.channel.astronomy.sunrise);
});
</script>
</head>
<body>
<h2>Sunrise time</h2>
<div id="sunrise"></div>
</body>
</html>
```

This code uses the `append` method from jQuery to assign a value from the response object to the `sunrise` ID tag on the page.

## SDKs provide tooling for APIs

A lot of times, developers will create an SDK (software development kit) that accompanies a REST API. The SDK helps developers implement the API using specific tooling. For example, when I worked at Badgeville, we had both a REST API and a JavaScript SDK. Because JavaScript was the target language developers were working in, Badgeville developed a JavaScript SDK to make it easier to work with REST using JavaScript.

An SDK is any kind of tooking that makes it easier to work with your API. SDKs are usually specific to a particular language platform. If you have an SDK, you'll want to make more detailed code samples showing how to use the SDK.

## General code samples

Although you could provide general code samples for every language with every call, it's usually not done. Instead, there's often a page that shows how to work with the code in various languages. For example, with the Wunderground Weather API, they have a page that shows general code samples:

<a href="http://www.wunderground.com/weather/api/d/docs?d=resources/code-samples&MR=1"><img src="{{ "/images/wundergroundcodesamples.png" | prepend: site.baseurl }}" alt="Wunderground code samples" /></a>

Although the Mashape Weather API doesn't provide a code sample in the Weather API page, Mashape as a platform provides a general code sample on their [Consume an API in JS](http://docs.mashape.com/javascript) page. The writers explain that you can consume the API with code on an HTML web page like this:

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

You already worked with this code earlier, so it shouldn't be new. It's the same code as the JavaScript snippet we just used, but here there's an error function defined an the header is set a bit differently.

## Your turn to practice: Create a code sample and documentation for surfreport

As a technical writer, add a code sample to the surfreport/{beachId} endpoint that you're documenting. Use the same code as above, but customize it with the Weather API, and add a short description about why the code is doing what it's doing.

<style>
#theAnswer {display:none;}
</style>
<script>
$( document ).ready(function() {
$( "#viewAnswers" ).click(function() {
  $( "#theAnswer" ).toggle();
});
});
</script>

<button id="viewAnswers" class="btn btn-default" >View answers</button>
<div id="theAnswer">

<p>Here's my approach: </p>

<p><b>Code example</b></p>

<p>The following code samples shows how to use the surfreport endpoint to get the surf conditions for a specific beach. In this case, the code shows the overall recommendation about whether to go surfing.</p>

{% highlight html %}
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
  <meta charset="utf-8">
  <title>API Weather Query</title>
  <script>

  function getSurfReport() { 

// use AJAX to avoid CORS restrictions in API calls.
 var output = $.ajax({
    url: 'https://simple-weather.p.mashape.com/surfreport/123?units=imperial&days=1&time=1433772000', 
    type: 'GET', 
    data: {}, 
    dataType: 'json',
    success: function(data) {
        //Here we pull out the recommendation from the JSON object.
        //To see the whole object, you can output it to your browser console using console.log(data);
        document.getElementById("output").innerHTML = data.surfreport[0].monday.2pm.recommendation; 
        },
    error: function(err) { alert(err); },
    beforeSend: function(xhr) {
    xhr.setRequestHeader("X-Mashape-Authorization", "WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET"); // Enter here your Mashape key
    }
});
  
}
 
</script>
</head>
<body>
 
  <button onclick="getSurfReport()">See the surfing recommendation</button>
  <div id="output"></div>
  
</body>
</html>
{% endhighlight %}

<p>In this example, the <code>ajax</code> method from jQuery is used because it allows cross-origin resource sharing (CORS) for the weather resources.</p>
<p>In the request, you submit the authorization through the header rather than directly in the endpoint path. The endpoint limits the days returned to 1 in order to increase the download speed.</p>

<p>For demonstration purposes, the response is assigned to the `data` argument of the success method, and then written out to the `output` tag on the page.</p>

<p>We're just getting the surfing recommendation, but there's a lot of other data you could choose to display.</p>
</div>


