---
title: 1.9 Access the values from the JSON
permalink: /restapicourse1-9/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 1.9
---
{% include notes.html %}

## Deciding what information we want

Looking back over the weatherdata response, there's a lot to choose from. But the `description` element is clearly formatted as the primary data to pull out. To pull out the description and display it on the page, we used dot notation.

```
data.query.results.channel.item.description
```

Let's dive into this a little more.

## How dot notation works

You use a dot after the object name to access its properties. For example:

```
"data": {
"name": "Tom"
}
```

To access Tom, I would use `data.name`.

It's important to note the different levels of nesting so you can trace back the appropriate objects and access the information you want. 

To access an array, you use brackets followed by the position:

```
"data" : {
"items": ["ball", "bat", "glove"]
}
```

To access glove, I would use `data.items[2]`.

`glove` is the third item in the array. (You start counting at 0.)

## Activity

Create a new page and insert the following on it:

```html
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
  <meta charset="utf-8">
  <title>JSON dot notation practice</title>
  <script>
$( document ).ready(function() {
    
   var john = $( document ).ready(function() {
                  
     var john = {
      "hair": "brown",
      "eyes": "green",
      "shoes": {
          "brand": "nike",
          "type": "basketball"
      },
      "favcolors": [
          "azure",
          "goldenrod"
      ],
      "children": [
          {
              "child1": "Sarah",
              "age": 2
          },
          {
              "child2": "Jimmy",
              "age": 5
          }
      ]
  }

document.getElementById("output").innerHTML = john.children[0].child1; 

});
    
</script>
</head>
<body>
 
  <div id="output"></div>
  
</body>
</html>
```

Here we have a JSON object custom-defined as a variable named `john`. The line that says `document.getElementById("output").innerHTML` will write whatever data we put there to the `output1 tag on the page.

Try to display the following: 

* green
* nike
* goldenrod
* Sarah

## Answers

* john.eyes
* john.shoes.brand
* john.favcolors[1]
* john.children[0].child1

## Accessing the description

Let's return to the weatherforecasting example. Here's the relevant part of the response that shows the different levels of nesting. I've removed the unnecessary content.

```
 "query":
 {
     "results": {
         "channel": {
             "item": {
                 "description": "\n<img src=\"http://l.yimg.com/a/i/us/we/52/30.gif\"/><br />\n<b>Current Conditions:</b><br />\nPartly Cloudy, 16 C<BR />\n<BR /><b>Forecast:</b><BR />\nWed - AM Clouds/PM Sun. High: 22 Low: 13<br />\nThu - AM Clouds/PM Sun. High: 22 Low: 13<br />\nFri - AM Clouds/PM Sun. High: 24 Low: 14<br />\nSat - AM Clouds/PM Sun. High: 24 Low: 15<br />\nSun - Partly Cloudy. High: 26 Low: 16<br />\n<br />\n<a href=\"http://us.rd.yahoo.com/dailynews/rss/weather/Santa_Clara__CA/*http://weather.yahoo.com/forecast/USCA1018_c.html\">Full Forecast at Yahoo! Weather</a><BR/><BR/>\n(provided by <a href=\"http://www.weather.com\" >The Weather Channel</a>)<br/>\n"
             }
         }
     }
 }
```
query contains an object called `results`, which contains an object called `channel`, which contains an object called `item`, which contains an object called `description`. Objects are set off by curly braces. This is why we access this data by using

```
data.query.results.channel.item.description
```

## Practice

Use the right dot notation to find the wind speed.

Answer: data.query.results.channel.wind.speed

{% include restapicourse_next.html %}

{% comment %} 
## Embedding the call into our site

At the beginning of the course, I showed an example of where we going. Now let's revisit this code example and see how it's put together. Copy the following code into a basic HTML page, or download it from <a href="{{ "/files/restapicourse/windcalls.html" | prepend: site.baseurl | append: site.suffix }}">here</a>.

```html
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<link rel="stylesheet"  href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css' rel='stylesheet' type='text/css'>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <meta charset="utf-8">
  <title>Sample Query to get the wind</title>
<style>
   #wind_direction, #wind_chill, #wind_speed, #temperature, #speed {color: red; font-weight: bold;}
   body {margin:20px;}
</style>

<script>

function checkWind() { 

var output = $.ajax({
    url: 'https://simple-weather.p.mashape.com/weatherdata?lat=37.354108&lng=-121.955236', 
    type: 'GET', 
    data: {}, 
    dataType: 'json',
    success: function(data) {
      //
        //Change data.source to data.something , where something is whichever part of the object you want returned.
        //To see the whole object you can output it to your browser console using:
        console.log(data);
        $("#wind_speed").append (data.query.results.channel.wind.speed);
        $("#wind_direction").append (data.query.results.channel.wind.direction);
        $("#wind_chill").append (data.query.results.channel.wind.chill);
        $("#temperature").append (data.query.results.channel.units.temperature);
        $("#speed").append (data.query.results.channel.units.speed);
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
 
<button type="button" onclick="checkWind()" class="btn btn-danger weatherbutton">Check wind conditions</button>

<h2>Wind conditions for Santa Clara</h2>

<b>Wind chill: </b><span id="wind_chill"></span> <span id="temperature"></span></br>
<b>Wind speed: </b><span id="wind_speed"></span> <span id="speed"></span></br>
<b>Wind direction: </b><span id="wind_direction"></span>

</body>
</html>
```

There are a couple of ways I changed this code from the default Mashape JS query. First, I integrated jQuery so that I could use the `append` method rather than `innerHTML` method from JavaScript. `append` will add the element you specify, whereas `innerHTML` replaces the contents of the element. I think jQuery is also easier to work with.

I pulled out the wind chill, speed, and direction and wrote them to several ID tags on the page. I also the units for these values as well. There's also minimal styling. The button style leverages Bootstrap's button styling.



{% endcomment %}


