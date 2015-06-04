---
title: 2.0 New endpoint to document
permalink: /restapi2_0/
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

## The wiki page

The new endpoint is /surfreport. This is for surfers who want to check things like tide and wave conditions to determine whether they should head out to the beach to surf. 

Parameters accepted: 
* latitude (`lat`)
* longitude (`lng`)

You can also add a zip code (`zip`) to find the information instead of using lat or lng. And hour with &hour=. Use military time with time zone of beach you're going to.

The response will include the surf height, the wind, temp, the tide, and overall recommendation.

Each of the items is listed out by hour. But you don't get 24 hours in the response. You add the hour as a query parameter. 

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
            "monday": {
                "1": {
                    "tide": 5,
                    "wind": 15,
                    "watertemp": 60,
                    "surfheight": 5,
                    "recommendation": "Go surfing!"
                },
                "2": {
                    "tide": 5,
                    "wind": 15,
                    "watertemp": 60,
                    "surfheight": 5,
                    "recommendation": "Go surfing!"
                }
            }
        }
    ]
}
```
 
Negative numbers in the tide represent incoming tide.

The report won't include any details about riptide conditions. 

You can only get 

Note that although users can enter lat and lng, there are only certain beaches included in the report. Users need to look up the lat and lng data points from our list of included beaches and then plug these into the endpoint.

To switch from feet to metrics, users can add a query string of &units=metrics. Default is &units=imperial.

Here's an [example of how developers](http://www.surfline.com/surf-report/south-beach-ca-northern-california_5088/) might integrate this information.


{% include restapicourse_next.html %}



