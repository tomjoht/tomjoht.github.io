---
layout: page
title: 'Klout example: Retrieve Klout score'
permalink: /docapis_klout_example/
categories:
- api-doc
type: notes_docapis
---
[Klout](http://klout.com) is a service that gauges your online influence (your klout) by measuring tweets, retweets, likes, etc. from a variety of social networks using a sophisticated algorithm. In this tutorial, we'll use the Klout API to retrieve a Klout score for a particular Twitter handle.

Klout has an "interactive console" driven by Mashery I/O docs that allows you to insert parameters and go to an endpoint. The interactive console also contains brief descriptions of what each endpoint does.

<a href="http://developer.klout.com/io-docs"><img src="{{ "/images/restapicourse/klout_interactive_console-550x362.png" | prepend: site.baseurl }}" alt="Klout Interactive Console" /></a>

You can see that I'm signed in here. To use the API, I had to register my "app," which allowed me to get an API key.

To get the score, we use the [user.json/kloutId/score endpoint](http://developer.klout.com/io-docs). This endpoint requires you to pass your Klout ID.

Since I don't know my Klout ID, I will use the identity.json/twitter endpoint first.

<a href="http://developer.klout.com/io-docs"><img src="{{ "/images/restapicourse/kloutid-550x600.png" | prepend: site.baseurl }}" alt="Get Klout ID" /></a>

You can also submit the request via your browser by going to the request URL:

```
http://api.klout.com/v2/identity.json/twitter?screenName=tomjohnson&amp;key={your api key}
```

In place of `{your api key}`, insert your own API key. (I initially displayed mine here only to find that bots grabbed it and made thousands of requests, which ended up disabling my API key.)

The response in the browser is as follows:

```json
{
  "id": "1134760",
  "network": "ks"
}
```

From the response, I see that my Klout ID is `1134760`.

Now I can use the [user.json/kloutId/score endpoint](http://developer.klout.com/io-docs) to get the score associated with my Klout ID:

<img src="{{ "/images/restapicourse/mykloutscoreis55-550x612.png" | prepend: site.baseurl }}" alt="Klout Score" />

My score is 55. Once again, Klout's interactive console makes it easy to get responses for API calls, but I could equally submit the request URI in my browser.

```
http://api.klout.com/v2/user.json/1134760/score?key={your api key}
```

And I would see this:

```json
{
  "score": 55.70794414940394,
  "scoreDelta": {
     "dayChange": 2.88116825300461,
     "weekChange": 3.108790436128494,
     "monthChange": 3.57317642139639
},
  "bucket": "50-59"
}
```

Usually in API documentation, you don't need to explain any more than this. Each programmer may be using a different language or platform, so the process of getting this information and displaying it will vary. But for demonstration purposes, suppose I wanted to embed my Klout score on my web page using JavaScript and jQuery. Here's how I could do it:

```html
<html>
<body>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
      var url = "http://api.klout.com/v2/user.json/1134760/score?key={your api key}&amp;callback=?";
    $.getJSON( url, function( data ) {
    	console.log(data);
       $("#kloutScore").append(data.score);
});
</script>
<h2>My Score</h2>
<div id="kloutScore"/>
</body>
</html>
```

Here's the result:

<img src="{{ "/images/restapicourse/heresmykloutscore-550x265.png" | prepend: site.baseurl }}" alt="Klout Score" />

The code uses the `getJSON` method to grab a JSON payload from an argument URL. The payload is assigned to the data argument, and then logged to the console using `console.log(data)`. The `append` method is used to add the score to the `kloutScore` ID tag on the page.

If you're using PHP, here's a [tutorial on using PHP to get your Klout score][http://bradsknutson.com/blog/display-klout-score-with-klout-api/]. And here's a tutorial on [getting your score using Python][https://klout.readthedocs.org/en/latest/#quickstart].

## Get influencees

Suppose I want to know who I have influenced. After all, this is what Klout is all about. Influence is measured by the action you drive. So who exactly am I influencing?

To get my influencees, I need to use the influence endpoint, passing in my Klout ID (which I retrieved using the identity.json/twitter endpoint as used in the [Klout example on retrieving a score](http://idratherbewriting.com/klout-example-score). My Klout ID is 1134760.

Here I plug in my Klout ID into the influence endpoint:

<a href="http://developer.klout.com/io-docs"><img src="{{ "/images/restapicourse/influenceesendpoint-550x589.png" | prepend: site.baseurl }}" alt="Klout Influencees" /></a>

The response appears in the Response Body section.

Although the interactive console shows you the response, you can also submit the request via the browser and see the payload in the browser. Here's the request:

```
http://api.klout.com/v2/user.json/1134760/influence?key={api key}
```

And here's the response:

```html
{
   "myInfluencers":[
      {
         "entity":{
            "id":"1247152",
            "payload":{
               "kloutId":"1247152",
               "nick":"maxwellhoffmann",
               "score":{
                  "score":58.96268054394578,
                  "bucket":"50-59"
               },
               "scoreDeltas":{
                  "dayChange":-0.06646433497560622,
                  "weekChange":-0.6916024495036766,
                  "monthChange":-3.064438643695368
               }
            }
         }
      },
      {
         "entity":{
            "id":"704001",
            "payload":{
               "kloutId":"704001",
               "nick":"scottabel",
               "score":{
                  "score":58.46798823414681,
                  "bucket":"50-59"
               },
               "scoreDeltas":{
                  "dayChange":-0.11132545485078538,
                  "weekChange":-0.43572069638905475,
                  "monthChange":-2.6085841408238792
               }
            }
         }
      },
      {
         "entity":{
            "id":"34254",
            "payload":{
               "kloutId":"34254",
               "nick":"SkeeterHarris",
               "score":{
                  "score":56.77425322747173,
                  "bucket":"50-59"
               },
               "scoreDeltas":{
                  "dayChange":-0.11454920647811662,
                  "weekChange":0.04889146674855738,
                  "monthChange":-0.5583258470292165
               }
            }
         }
      },
      {
         "entity":{
            "id":"946127",
            "payload":{
               "kloutId":"946127",
               "nick":"WritingTechDocs",
               "score":{
                  "score":46.61038545204223,
                  "bucket":"40-49"
               },
               "scoreDeltas":{
                  "dayChange":-0.05709675920967072,
                  "weekChange":-0.610875962222579,
                  "monthChange":0.1813057349656475
               }
            }
         }
      },
      {
         "entity":{
            "id":"538063",
            "payload":{
               "kloutId":"538063",
               "nick":"benwoelk",
               "score":{
                  "score":46.57106330020806,
                  "bucket":"40-49"
               },
               "scoreDeltas":{
                  "dayChange":0.00041549774290672303,
                  "weekChange":-0.1646010755193359,
                  "monthChange":-1.030068829042456
               }
            }
         }
      }
   ],
   "myInfluencees":[
      {
         "entity":{
            "id":"30399302251467350",
            "payload":{
               "kloutId":"30399302251467350",
               "nick":"shweta_hardikar",
               "score":{
                  "score":47.43871175313726,
                  "bucket":"40-49"
               },
               "scoreDeltas":{
                  "dayChange":-0.009049927092938503,
                  "weekChange":-0.6219719932282644,
                  "monthChange":-3.7916465630982046
               }
            }
         }
      },
      {
         "entity":{
            "id":"57420900014448388",
            "payload":{
               "kloutId":"57420900014448388",
               "nick":"healcomm",
               "score":{
                  "score":42.719218288006516,
                  "bucket":"40-49"
               },
               "scoreDeltas":{
                  "dayChange":-0.44535971136188124,
                  "weekChange":-1.3102052073242874,
                  "monthChange":-2.578499929496701
               }
            }
         }
      },
      {
         "entity":{
            "id":"45598950992256021",
            "payload":{
               "kloutId":"45598950992256021",
               "nick":"DavidEgyes",
               "score":{
                  "score":41.087978297965485,
                  "bucket":"40-49"
               },
               "scoreDeltas":{
                  "dayChange":0.001295312050686448,
                  "weekChange":0.3330133541551774,
                  "monthChange":0.9188803888604156
               }
            }
         }
      },
      {
         "entity":{
            "id":"45880425968882520",
            "payload":{
               "kloutId":"45880425968882520",
               "nick":"napnam",
               "score":{
                  "score":40.50583674531803,
                  "bucket":"40-49"
               },
               "scoreDeltas":{
                  "dayChange":0.00011879239579570822,
                  "weekChange":-0.15131948958799057,
                  "monthChange":-0.3625057602583581
               }
            }
         }
      },
      {
         "entity":{
            "id":"29554883011845256",
            "payload":{
               "kloutId":"29554883011845256",
               "nick":"LeviathanMcKrac",
               "score":{
                  "score":39.986255014100266,
                  "bucket":"30-39"
               },
               "scoreDeltas":{
                  "dayChange":-0.02143362442675567,
                  "weekChange":-0.8744516124100628,
                  "monthChange":-0.4536137313422586
               }
            }
         }
      }
   ],
   "myInfluencersCount":8,
   "myInfluenceesCount":24
}
```

The `myInfluencers` object has various properties. (By the way, inside a JSON object, square brackets denote an array. Curly braces denote another object. Here influencees are listed as an array of `entity` objects.)
Stylewise here, I'm using the [JSON Formatting extension for Chrome](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en) to format the JSON, but to copy and paste the JSON and keep the indentation, I use the [JSON Formatter &amp; Validator](http://jsonformatter.curiousconcept.com/).

This JSON payload contains all of my influencees, but it contains a lot of extra information. I just want a short list of Twitter names with their links.

Using jQuery, I can iterate through the JSON payload and pull out the information that I want:

```html
<html>
<body>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
 // get influencees
     var url = "http://api.klout.com/v2/user.json/1134760/influence?key={your api key}&amp;callback=?";
    $.getJSON( url, function( data ) {
    	console.log(data);
    $.each( data.myInfluencees, function( i, inf ) {
    $("#kloutInf").append('<li><a href="http://twitter.com/'+inf.entity.payload.nick + '">' + inf.entity.payload.nick + '</a></li>');
  });
});
</script>
<h2>My influencees</h2>
<ul id="kloutInf"></ul>
</body>
</html>
```
The result looks like this:

<img src="{{ "/images/restapicourse/influenceesdemo-550x292.png" | prepend: site.baseurl }}" alt="Klout result" />

<h2>My Klout Score</h2>

<div id="kloutScore"/>

(If you don't see anything, your firewall may be blocking Klout.)

<h2>Code explanation</h2>

The code uses the `getJSON` method from jQuery to get a JSON payload for a specific URL. It assigns this payload to the `data` argument. The `console.log(data)` code just logs the payload to the console to make it easy to inspect.

The jQuery `each` method iterates through each property in the `data.myInfluencees` object. It renames this object `inf` (you can choose whatever names you want) and then gets the `entity.payload.nick` property for each item in the object. It inserts this value into a link to the Twitter profile, and then appends the information to a specific tag on the page (`#kloutInf`).