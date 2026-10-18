---
title: Analyze the JSON response
permalink: learnapidoc/docapis_analyze_json.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.8
sidebar: docapis
section: likeadeveloper
path1: learnapidoc/likeadeveloper.html
last-modified: 2026-10-17
---

{% include coffeeshopbook.html %}

JSON is the most common format for responses from REST APIs. Let's look at the JSON response for the OpenWeatherMap weather endpoint in more depth, distinguishing between arrays and objects in JSON.

* TOC
{:toc}

## JSON response from OpenWeatherMap weather endpoint

JSON stands for JavaScript Object Notation. It's the most common way REST APIs return information. Although some APIs return information in both JSON and XML, if you're trying to parse through the response and render it on a web page, JSON fits much better into the existing JavaScript + HTML + CSS technology that powers most web pages. With JavaScript, you can easily parse through the JSON and integrate it into your web content.

The unminified response from the OpenWeatherMap weather endpoint looks like this:

```json
{
  "coord": {
    "lon": -121.953,
    "lat": 37.3492
  },
  "weather": [
    {
      "id": 800,
      "main": "Clear",
      "description": "clear sky",
      "icon": "01d"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 68.29,
    "feels_like": 67.26,
    "temp_min": 64.11,
    "temp_max": 71.47,
    "pressure": 1014,
    "humidity": 52,
    "sea_level": 1014,
    "grnd_level": 1015
  },
  "visibility": 10000,
  "wind": {
    "speed": 4.61,
    "deg": 310
  },
  "clouds": {
    "all": 0
  },
  "dt": 1792296751,
  "sys": {
    "type": 1,
    "id": 5845,
    "country": "US",
    "sunrise": 1792246653,
    "sunset": 1792286902
  },
  "timezone": -25200,
  "id": 0,
  "name": "Santa Clara",
  "cod": 200
}
```

We'll analyze the information structures within JSON responses in the following sections.

{% include random_ad2.html %}

## JSON objects are key-value pairs

JSON has two types of basic structures: objects and arrays. An object is a collection of key-value pairs, surrounded by curly braces:

```json
{
  "key1": "value1",
  "key2": "value2"
}
```

Keys are always in double quotation marks. String values are also in double quotation marks, but numbers (such as `52` or `68.29`), Booleans (`true` or `false`), and `null` aren't. Each key-value pair is separated from the next by a comma.

{% include image_ad_right.html %}

## JSON arrays are lists of items

{% include random_ad4.html %}

An array is a list of items, surrounded by brackets:

```json
["first", "second", "third"]
```

The list of items can contain strings, numbers, booleans, `null`, arrays, or other objects. With numbers, booleans, or `null`, you don't use quotation marks.

Numbers:

```json
[1, 2, 3]
```

Booleans:

```json
[true, false, true]
```

## Including objects in arrays, and arrays in objects

JSON can mix up objects and arrays inside each other. You can have an array of objects:

```
[
  object,
  object,
  object
]
```

Here's an example with values:

```json
[  
   {  
      "name":"Tom",
      "age":39
   },
   {  
      "name":"Shannon",
      "age":37
   }
]
```

And objects can contain arrays in the value part of the key-value pair:

```json
{
"children": ["Avery","Callie","Lucy","Molly"],
"hobbies": ["swimming","biking","drawing","horseplaying"]
}
```

{% include ads.html %}

Just remember, objects are enclosed by curly braces `{ }` and contain key-value pairs. Sometimes those values are arrays. Arrays are lists and are enclosed by square brackets `[ ]`. It's common for arrays to contain lists of objects, and for objects to contain arrays.

{: .tip}
It's important to understand the difference between objects and arrays because it determines how you access and display the information. Later exercises with dot notation will require you to understand this difference.

## <i class="fa fa-user-circle"></i> Examine the weather response

Look at the response from the `weather` endpoint of the OpenWeatherMap weather API. Where are the objects? Where are the arrays? Which objects are nested? Which values are numbers versus strings?

{% include random_ad3.html %}

## More information

For more information on understanding the structure of JSON, see [json.org](https://www.json.org/).
