---
title: 2.0 New API to document
permalink: /restapicourse2-0/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.0
---
{% include notes.html %}
{% include restapicourse.html %}

## Shifting perspectives

Until this point, you've been acting as a developer with the task of integrating the weather forecast into your site. This was to help you understand the type of information developers need, and how they use APIs.

Now let's shift perspectives. Now you're now a technical writer working with the weather API team. They're asking you to document a new endpoint. 

## You have a new endpoint to document

The project manager calls you over and says they have a new API for you to document for the next release. (By "API," the manager really just means a new endpoint to the existing API.)

"Here's the wiki page that contains all the data," the manager says. 

It's now your task to sort through the information on this page and create documentation from it.

Read through the wiki page to get a sense of the information. The upcoming topics will guide you through creating documentation for this new endpoint.

## The wiki page: "Surf Report API"

The new endpoint is /surfreport. This is for surfers who want to check things like tide and wave conditions to determine whether they should head out to the beach to surf. 

Parameters accepted: 
* beach name
* number of days

You can also add a zip code (`zip`) to find the beach code instead using our beachcode lookup. And you can specify the number of days with &days=. 

The response will include the surf height, the wind, temp, the tide, and overall recommendation.

Each of the days has conditions listed out by hour. The default response is 7 days.

Sample: 

```
https://simple-weather.p.mashape.com/surfreport?beach=Santa+Cruz&days=3
```

The response looks like this:

surfreport: 
 - surfheight (time: feet)
 - wind (time: kts)
 - tide (time: feet)
 - water temperature (F degrees)
 - recommendation - string. let's user know overall recommendation. This is based on algorithm that takes optimal surfing conditions, scores them in a rubric, and then selects a go, no-go, or maybe response.
 
```
{
    "surfreport": [
        {
            "beach": "Santa Cruz",
            "monday": {
                "1": {
                    "tide": 5,
                    "wind": 15,
                    "watertemp": 60,
                    "surfheight": 5,
                    "recommendation": "Go surfing!"
                },
                "2": {
                    "tide": -1,
                    "wind": 1,
                    "watertemp": 50,
                    "surfheight": 3,
                    "recommendation": "Surfing sucks now!"
                }
            }
        }
    ]
}
```
 
Negative numbers in the tide represent incoming tide.

The report won't include any details about riptide conditions. 

Note that although users can enter beach names, there are only certain beaches included in the report. Users can look to see which beaches are available from our website at surfreport/beaches_available. The beach names must be url encoded when passed in the endpoint as query strings.

To switch from feet to metrics, users can add a query string of &units=metrics. Default is &units=imperial.

Here's an [example of how developers](http://www.surfline.com/surf-report/south-beach-ca-northern-california_5088/) might integrate this information.

If the query is malformed, you get error code 400 and an indication of the error.


## Essential sections in REST API documentation

In the next topics, you'll work on sorting this information out into eight common sections in REST API documentation: 

* Resource description
* Endpoint definition
* Method
* Parameters
* Request submission example
* Request response example
* Error codes
* Code samples

Open up a new text file and create sections for each of these elements. 

Each of your endpoints should follow this same pattern and structure. A common template helps increase consistency and familiarity/predictability with how users consume the information.

{{note}} Although there are automated ways to publish API docs, we're focusing on content rather than tools in this course. For the sake of simplicity, try just using a text editor.{{end}}

{% include restapicourse_next.html %}



