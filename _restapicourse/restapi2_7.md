---
title: 2.7 Documenting code samples in REST APIs
permalink: /restapicourse2-7/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.7
---
{% include notes.html %}

## Code samples bridge the gap between reference and user guides

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

You already worked with this code earlier, so it shouldn't be new. But now rather than using the code, you'll analyze the technical writer's task with the code.

## You are not the audience

Recognize that, as a technical writer rather than a developer, you aren't your audience. Developers aren't naive about code. But different developers have different specializations. Someone who is a database programmer will have a different skill set from a Java developer who will have a different skillset from a front-end JavaScript developer, and so on.

Developers often make the mistake of assuming that their developer audience has a skill set similar to their own, without recognizing different developer specializations. Developers will often say, "If the user doesn't understand this code, he or she shouldn't be using our API." At the same time, developers usually understand code on a deeper level than technical writers.

## Focus on the why, not the what

In any code sample, you should focus your explanation on the *why*, not the *what*. Explain why you're doing what you're doing, not the detailed play-by-play of what's going on. 

Here's a difference: 

**what**: In this code, several arguments are passed to jQuery's `ajax` method. The response is assigned to the data argument of the callback function, which in this case is `success`.
**why**: Use the `ajax` method from jQuery because it allows cross-origin resource sharing (CORS) for the weather resources. In the request, you submit the authorization through the header rather than directly in the endpoint path.

## Focus on your company's code, not other general code documented elsewhere
In the above Mashape code, developers unfamiliar with the `.ajax()` method should consult [jQuery's documentation](http://api.jquery.com/jquery.ajax/). You shouldn't write your own version of jQuery documentation. Instead, focus on the parts of the code unique to your company. Let the developer rely on other sources for the rest (feel free to link to other sites).

## Keep it simple

Code samples should be stripped down and as simple as possible. In the Mashape code above, providing code for an entire HTML page is probably unnecessary. They also provide sample code containing only the JavaScript. 

Avoid including a lot of styling or other details in the code that will potentially distract the audience from the main point. The more minimalist the code sample, the better. 

## Supplement code comments with other explanations

Your documentation around the code should mix code comments with some comments either after or before the code sample. In the Mashape example, the code comments are set off with forward slashes `/` in the code. 
 
Comments within the code are usually short 1 line notes that appear every 5-10 lines of code. You can follow up this code with more robust explanations later. 

This approach of adding brief comments withiin the code, followed by more robust explanations after the code, aligns with principles of progressive information disclosure that fit advanced and novice user types.

## From code samples to real tasks

Getting into code samples leads us more toward user guide tasks than reference tasks. Up until now, we've been focusing on reference documentation for REST APIs. The other section of the REST API documentation consists of a user guide. 

In the user guide, you provide documentation for actual tasks that developers might do with the API. These tasks might involve using multiple API endpoints in particular sequences that demonstrate how to accomplish business goals and needs.

## Code samples are like illustrations to developers

Code samples play an important role in helping developers use an API. What screenshots are to GUI documentation, code samples are to developer documentation. No matter how much you try to explain and narrate *how*, it's only when you *show* that developer truly get it. 

## Make code samples copy-and-pastable

Many times developers will copy and paste code directly from the documentation into their application. Then they will usually tweak it a little bit for their specific parameters or methods.

Make sure that the code works. When I first used this Mashape code above, `dataType` was actually spelled `datatype`. As a result, the code didn't work (it returned the response as text, not JSON). It took me about 30 minutes of looking troubleshooting before I consulted the `ajax` method and realized that it should be `dataType` with a capital `T`.

Ideally, test out all the code samples yourself. This allows you to spot errors, understand whether all the parameters are complete and valid, and more. Usually you just need a sample like this to get started, and then you can use the same pattern to plug in different endpoints and parameters. You don't need to come up with new code like this every time.

## Provide a sample in your target language

With REST APIs, developers can use pretty much any programming language to make the request. Should you show code samples that span across various languages? Some API documentation does this. Here's an example from Evernote's API documentation:

<a href="https://dev.evernote.com/doc/articles/note-sharing.php"><img src="{{ "/images/restapicourse/codesamplesevernote.png" | prepend: site.baseurl }}" alt="Evernote API code samples" /></a>

And another from Twilio:

<a href="https://www.twilio.com/docs/api/rest/making-calls"><img src="{{ "/images/restapicourse/twiliocodeexamples.png" | prepend: site.baseurl }}" alt="Twilio code samples" /></a>

Providing code samples is almost always a good thing, so if you have the bandwidth, follow the examples from Evernote and Twilio. However, providing just one code example in your audience's target language is probably enough. 

Remember that each code sample you provide needs to be tested and maintained. When you make updates to your API, you'll need to update each of the code samples across all the different languages.

## Your turn to practice

As a technical writer, add a code sample to the surfreport/{beachId} endpoint that you're documenting. Use the same code as above, but customize it with the Weather API, and add a short description about why the code is doing what it's doing.

Here's my approach: 

Code example

The following code samples shows how to use the surfreport endpoint to get the surf conditions for a specific beach. In this case, the code is just showing the overall recommendation about whether to go surfing.

```html
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
```

In this example, the `ajax` method from jQuery is used because it allows cross-origin resource sharing (CORS) for the weather resources. In the request, you submit the authorization through the header rather than directly in the endpoint path. The endpoint limits the days returned to 1 in order to increase the download speed.

In this example, the response is assigned to the `data` argument of the success method, and then written out to the `output` tag on the page. We're just getting the surfing recommendation, but there's a lot of other data you could choose to display.


