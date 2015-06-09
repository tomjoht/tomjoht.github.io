---
title: 2.3 Documenting Parameters for an API
permalink: /restapicourse2-3/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.3
---
{% include notes.html %}
{% include restapicourse.html %}

## Parameters

Parameters (also called arguments) refer to the various ways the endpoint can be configured to influence the result. Many times parameters are listed out in a simple table like this:

| Parameter | Required? | Data Type | Example |
|-----------|-----------|-----------|---------|
| value | value | value | value | 

Here's an example from Yelp's documentation:

<a href="https://www.yelp.com/developers/documentation/v2/search_api"><img src="{{ "/restapicourse/yelpparameters.png" | prepend: site.baseurl }}" alt="Yelp parameters" /></a>

You can format the values in a variety of ways. If using a definition list or other non-table format, you probably have styles that make these values easily readable.

## Data Types

It's important to list the data type because programs process the input in specific ways based on the data type. These data types are the most common: 

* **string**: An alphanumeric sequence of letters and possibly numbers. 
* **integer**: A whole number -- can be positive or negative.
* **boolean**: true or false.

## Parameter order

Often the parameters are added with a query string (`?`) at the end of the endpoint, and then each parameter is concatenated to the other with an ampersand (`&`). Usually the order in which parameters are passed to the endpoint does not matter. 

For example:

```
/surfreport/{beachID}?days=3&units=metric&time=1400
```

If the parameter is part of the actual endpoint path (not added in the query string), such as with `{beachID}` above, then you usually describe this value in the description of the endpoint itself. 

Here's an example from Twilio:

<a href="{{ "/twiliosample.png" | prepend: site.baseurl }}">text</a><img src="{{ "/images/twiliosample.png" | prepend: site.baseurl }}" alt="Twilio Example" />

The `{PhoneNumber}` value is described in the description of the endpoint rather than in another section that lists the query parameters you can pass to the endpoint.

## Parameter max and min values

If a parameter has a maximum or minimum value, or there are particular rate limits, you should note these when describing the parameters.

## Optional versus required

Note whether the parameters are optional or required. When you test the API, try running an endpoint withou the required parameters. See what kind of response comes back (and include that response in your response codes section).

## Construct a similar table to list the surfreport parameters

For our new surfreport endpoint, look through the parameters available and create a table similar to the one above.

Here's what my table looks like:

| Parameter | Required? | Description | Data Type | 
|-----------|------|-----|-----------|
| days | Optional | The number of days to include in the response. Default is 3. | Integer | 
| units | Optional | Whether to return the values in imperial or metric measurements. Imperial will use feet, knots, and fahrenheit. Metric will use centimeters, kilometers per hour, and celsius. | string |
| time | Optional | If you include the time, then only the current hour will be returned in the response.| integer. Unix format (ms since 1970) in UTC. |
 

{{note}} Times usually follow either the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO-8601 format</a>, or the <a href="http://en.wikipedia.org/wiki/Unix_time">Unix timestamp format</a>. You can get the Unix time <a href="http://www.unixtimestamp.com/">using a converter</a>.{{end}}

## Passing parameters in the JSON body

Not all APIs use browser URLs to submit requests. Sometimes REST APIs allow only server-to-server communication. With this approach, you might pass parameters in the body of the POST in a JSON format. 

For example, the endpoint URL may be something simple, such as /surfreport/{beachID}`. But in the body of the HTTP request, you include a JSON object formatted as such:

```
{
"days": 2,
"units": "imperial",
"time": 1433524597
}
```

This kind of submission is common when you have a lot of parameters available. Sometimes the parameters submitted can be quite numerous, such as 20 or 30 key-value pairs.


{% include restapicourse_next.html %}



