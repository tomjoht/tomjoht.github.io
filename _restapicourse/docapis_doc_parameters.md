---
title: Documenting parameters
permalink: /docapis_doc_parameters/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.7
type: notes_docapis
---
{% include notes.html %}

## Parameters are ways to configure the endpoint

Parameters refer to the various ways the endpoint can be configured to influence the result. Many times parameters are listed out in a simple table like this:

| Parameter | Required? | Data Type | Example |
|-----------|-----------|-----------|---------|
| format | optional | string | json |

Here's an example from Yelp's documentation:

<a href="https://www.yelp.com/developers/documentation/v2/search_api"><img src="{{"/images/restapicourse/yelpparameters.png" | prepend: site.baseurl }}" alt="Yelp parameters" /></a>

You can format the values in a variety of ways. If using a definition list or other non-table format, you probably have styles that make these values easily readable.

## Data types indicate the format for the values

It's important to list the data type for each parameter because APIs may not process the parameter correctly if it's not formatted in the right way. These data types are the most common: 

* **string**: An alphanumeric sequence of letters and possibly numbers. 
* **integer**: A whole number &mdash; can be positive or negative.
* **boolean**: true or false.
* **object**: Key-value pairs in JSON format

There are more data types in programming. In Java, for example, it's important to note the data type allowed because the program allocates space based on the size of the data. As such, Java gets much more specific about the size of numbers. You have a byte, short, int, double, long, float, char, boolean, and so on. However, you usually don't have to specify this level of detail with a REST API. You can probably   just write "number".

## Parameters should list allowed values

One of the problems with the Mashape Weather API is that it doesn't tell you which values are allowed for the latitude and longitude. If you type in coordinates for Bangalore, for example, `12.9539974` and `77.6309395`, the response is `Not Supported - IN - India - IN-KA`. Which cities are supported, and where does one look to see a list? This information should be made explicit in the description of parameters.

## Parameter order doesn't matter

Often the parameters are added with a query string (`?`) at the end of the endpoint, and then each parameter is listed one right after the other with an ampersand (`&`) separating them. Usually the order in which parameters are passed to the endpoint does not matter. 

For example:

```
/surfreport/{beachId}?days=3&units=metric&time=1400
```

and

```
/surfreport/{beachId}?time=1400&units=metric&days=3
```

would return the same result.

However, if the parameter is part of the actual endpoint path (not added in the query string), such as with `{beachId}` above, then you usually describe this value in the description of the endpoint itself.

Here's an example from Twilio:

<a href="https://www.twilio.com/docs/api/rest/lookups"><img src="{{ "/images/restapicourse/twiliosample.png" | prepend: site.baseurl }}" alt="Twilio Example" /></a>

The `{PhoneNumber}` value is described in the description of the endpoint rather than in another section that lists the query parameters you can pass to the endpoint.

Here are a few other details to remember when describing parameters:

* Note whether the parameter has a maximum or minimum value.
* Note whether the parameters are optional or required.

{{tip}} When you test the API, try running an endpoint without the required parameters, or with the wrong parameters. See what kind of error response comes back. Include that response in your response codes section.{{end}}

## Passing parameters in the JSON body

Not all APIs use browser URLs to submit requests. Sometimes REST APIs allow only server-to-server communication. With this approach, you might pass parameters in the body of the POST in a JSON format. 

For example, the endpoint URL may be something simple, such as `/surfreport/{beachId}`. But in the body of the HTTP request, you include a JSON object formatted, like this:

```
{
"days": 2,
"units": "imperial",
"time": 1433524597
}
```

This kind of submission is common when you have a lot of parameters available. Sometimes the parameters submitted can be quite numerous, such as 20 or 30 key-value pairs.

## Time values usually follow ISO or Unix formats
Time values usually follow either the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO-8601 format</a>, or the <a href="http://en.wikipedia.org/wiki/Unix_time">Unix timestamp format</a>. You can get the Unix time <a href="http://www.unixtimestamp.com/">using a converter</a>. 

The Unix time is the number of milliseconds to the current date from January 1, 1970. This number gives you an easy integer to insert into a resource URL, but it's not very readable. In contrast, the ISO-8601 format is more readable but more susceptible to formatting or time zone errors.

## Construct a table to list the surfreport parameters
{{activity}}
For our new surfreport endpoint, look through the parameters available and create a table similar to the one above.

Here's what my table looks like:

<div class="docSample">

<table><thead>
<tr>
<th>Parameter</th>
<th>Required</th>
<th>Description</th>
<th>Type</th>
</tr>
</thead><tbody>
<tr>
<td>days</td>
<td>Optional</td>
<td>The number of days to include in the response. Default is 3.</td>
<td>Integer</td>
</tr>
<tr>
<td>units</td>
<td>Optional</td>
<td>Options are either <code>imperial</code> or <code>metric</code>. Whether to return the values in imperial or metric measurements. Imperial will use feet, knots, and fahrenheit. Metric will use centimeters, kilometers per hour, and celsius. <code>metric</code> is the default.</td>
<td>string</td>
</tr>
<tr>
<td>time</td>
<td>Optional</td>
<td>If you include the time, then only the current hour will be returned in the response.</td>
<td>integer. Unix format (ms since 1970) in UTC.</td>
</tr>
</tbody></table>
</div>
 

