---
title: "Upcoming webinar: Comparing trends in developer docs with more general tech comm trends."
permalink: /blog/upcoming-webinar-comparing-dev-doc-trends/
categories:
- api-doc
keywords:
bitlink: https://idratherbewriting.site/webinardevdoctrends
description: "I'm giving a webinar on trends in developer docs on March 12, 2020. The webinar is through the STC Washington DC chapter but anyone is invited to attend. Details are below."
published: false
---

## Webinar Description

<a href="https://www.eventbrite.com/e/trends-in-developer-documentation-a-report-and-analysis-of-tools-workflows-and-challenges-for-tech-tickets-88992728647"><img style="border: 1px solid #dedede" src="https://idratherbewritingmedia.com/images/apiwebinardevdocdc.png" alt="Webinar on Comparing trends in developer docs with more general tech comm trends"/></a>

**Webinar:** Comparing trends in developer docs with more general tech comm trends.<br/>
**Presenter:** Tom Johnson<br/>
**Date:** Thursday, March 12, 2020 <br/>
**Location:** Online<br/>
**Time:** 1:00 PM – 2:00 PM EDT<br/>
**Cost:** $0 to $15

Here's a description of the [webinar](https://www.eventbrite.com/e/trends-in-developer-documentation-a-report-and-analysis-of-tools-workflows-and-challenges-for-tech-tickets-88992728647):

<div style="background-color: #f8f8f8; border: 1px solid #dedede; padding: 15px; margin: 15px 0px;">
<script>
         var settings = {
           "async": true,
           "crossDomain": true,
           "url": "https://www.eventbriteapi.com/v3/events/88992728647/?token={{site.eventbrite_public_token}}",
           "method": "GET"
         }

         $.ajax(settings).done(function (response) {
           console.log(response);

           var name = response.name.html;
           $("#eventName").append(name);
          var content = response.description.html;
           $("#eventDescription").append(content);
           var url = response.url;
           $("#eventLink").append('<p><i>To register for the workshop, <a href="' + url + '">view the event on EventBrite</a> and click the <b>Tickets</b> button.</i></p>');
         });
      </script>
      <h2><div id="eventName"></div></h2>
      <div id="eventDescription"></div>
</div>
