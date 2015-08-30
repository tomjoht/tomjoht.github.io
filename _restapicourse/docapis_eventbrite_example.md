---
title: 'EventBrite example: Get Event information and display it on a page'
permalink: /docapis_eventbrite_example/
type: notes_docapis
keywords: Eventbrite API example, REST APIs
---

{% include notes.html %}
As a simple example of how to use a REST API, I'll walk through how to use the EventBrite API to get event information. EventBrite is an event management tool, and you can interact with it through an API to pull out the event information you want.

The EventBrite API documentation is here: [developer.eventbrite.com/](https://developer.eventbrite.com/). Looking through the endpoints available, to get event information, we'll use the [developer.eventbrite.com/docs/event-details](https://developer.eventbrite.com/docs/event-details/) endpoint.

<a href="https://developer.eventbrite.com/docs/event-details/"><img src="{{ "/images/restapicourse/eventbrite_event_details-550x468.png" | prepend: site.baseurl }}" alt="EventBrite Event Details" /></a>

You can do various actions with an event, such as create, edit, publish, or unpublish the event. I just want to retrieve event details, so I use this endpoint:

```html
/v3/events/{Event ID}/
```

The example response shows the necessary structure to make the call. You have to add your API token as an argument at the end.

```html
https://www.eventbriteapi.com/v3/events/14635401881/?token={your api key}
```

The event ID corresponds to an [API workshop event led by Sarah Maddox](https://www.eventbrite.com/e/api-workshop-with-sarah-maddox-tickets-14635401881).

The response from the endpoint is as follows:

```json
{
"name": {
"text": "API Workshop with Sarah Maddox",
"html": "API Workshop with Sarah Maddox"
},
"description": {
"text": "This is a practical course on API technical writing, consisting of lectures interspersed with hands­on sessions where participants will apply what they have learned. The focus will be on APIs themselves as well as on documentation, since technical writers need to be able to understand and use a product before they can document it. \nThe course will include the following sessions:  \n\nLecture: Introduction to APIs, including a demo of some REST and JavaScript APIs.\nHands­on: Play with a REST API and a JavaScript API.\nLecture: JavaScript essentials.\nHands­on: Use JavaScript to exercise the sample JavaScript API in a more in­depth manner.\nLecture: The components of API documentation.\nHands­on: Generate reference documentation using Javadoc.\nLecture: Beyond Javadoc ­ other doc generation tools.\n\nLunch will be provided. \nFor more details, see http://www.stc-siliconvalley.org/2014/11/21/api-workshop-sarah-maddox/. ",
"html": "This is a practical course on API technical writing, consisting of lectures interspersed with hands­on sessions where participants will apply what they have learned. The focus will be on APIs themselves as well as on documentation, since technical writers need to be able to understand and use a product before they can document it.\r\n<SPAN STYLE=\"line-height: 1.6em;\">The course will include the following sessions: </SPAN>\r\n<UL>\r\n<LI><SPAN STYLE=\"line-height: 1.6em;\">Lecture: Introduction to APIs, including a demo of some REST and JavaScript APIs.</SPAN></LI>\r\n<LI><SPAN STYLE=\"line-height: 1.6em;\">Hands­on: Play with a REST API and a JavaScript API.</SPAN></LI>\r\n<LI><SPAN STYLE=\"line-height: 1.6em;\">Lecture: JavaScript essentials.</SPAN></LI>\r\n<LI><SPAN STYLE=\"line-height: 1.6em;\">Hands­on: Use JavaScript to exercise the sample JavaScript API in a more in­depth manner.</SPAN></LI>\r\n<LI><SPAN STYLE=\"line-height: 1.6em;\">Lecture: The components of API documentation.</SPAN></LI>\r\n<LI><SPAN STYLE=\"line-height: 1.6em;\">Hands­on: Generate reference documentation using Javadoc.</SPAN></LI>\r\n<LI><SPAN STYLE=\"line-height: 1.6em;\">Lecture: Beyond Javadoc ­ other doc generation tools.</SPAN></LI>\r\n</UL>\r\n<DIV><SPAN STYLE=\"line-height: 16px;\"><SPAN STYLE=\"line-height: 16px;\">Lunch will be provided. </SPAN></SPAN></DIV>\r\n<SPAN STYLE=\"line-height: 16px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;\">For more details, see <A HREF=\"http://www.stc-siliconvalley.org/2014/11/21/api-workshop-sarah-maddox/\" REL=\"nofollow\">http://www.stc-siliconvalley.org/2014/11/21/api-workshop-sarah-maddox/</A>.</SPAN>"
},
"id": "14635401881",
"url": "http://www.eventbrite.com/e/api-workshop-with-sarah-maddox-tickets-14635401881",
"start": {
"timezone": "America/Los_Angeles",
"local": "2015-01-23T09:00:00",
"utc": "2015-01-23T17:00:00Z"
},
"end": {
"timezone": "America/Los_Angeles",
"local": "2015-01-23T16:00:00",
"utc": "2015-01-24T00:00:00Z"
},
"created": "2014-11-26T17:56:42Z",
"changed": "2015-01-24T04:38:10Z",
"capacity": 110,
"status": "completed",
"currency": "USD",
"shareable": true,
"online_event": false,
"tx_time_limit": 480,
"logo_id": null,
"organizer_id": "7774592843",
"venue_id": "9213887",
"category_id": null,
"subcategory_id": null,
"format_id": null,
"resource_uri": "https://www.eventbriteapi.com/v3/events/14635401881/",
"logo": null
}
```

The information has a lot more than I need. I just want to display the event's title and description on my site. To do this, I use some simple jQuery code to pull out the information I want and append it to a tag on my web page:

```html
<html>
<body>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<script>
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "https://www.eventbriteapi.com/v3/events/14635401881/?token={api_key}",
    "method": "GET",
    "headers": {}
  }

  $.ajax(settings).done(function (data) {
    console.log(data);
    var content = "<h2>" + data.name.text + "</h2>" + data.description.html;
    $("#eventbrite").append(content);
  });
</script>

<div id="eventbrite"></div>

</body>
</html>
```

{{note}}My API key is hidden from the above code sample to protect it from unauthorized access. {{end}}

Here's the result:

<img src="{{ "/images/restapicourse/eventbriteresult.png" | prepend: site.baseurl }}" alt="Eventbrite result" />

## Code explanation

The result is as plain-jane as it can be in terms of style. But with API documentation code examples, you want to keep code examples simple. In fact, you most likely don't need a demo at all. Simply showing the payload returned in the browser is sufficient for a UI developer. However, for testing it's fun to make content actually appear on the page.

The `ajax` method from jQuery gets a payload for an endpoint URL, and then assigns it to the `data` argument. I log `data` to the console to more easily inspect its payload. To pull out the various properties of the object, I use dot notation. `data.name.text` gets the text property from the name object that is embedded inside the data object.

I then rename the content I want with a variable (`var content`) and use jQuery's `append` method to assign it to a specific tag (`eventbrite`) on the page.
