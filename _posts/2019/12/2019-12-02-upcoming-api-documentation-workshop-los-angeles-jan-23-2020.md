---
title: "Upcoming API Documentation Workshop in Los Angeles, Calif., on January 23, 2020"
permalink: /blog/upcoming-api-documentation-workshop-los-angeles-jan-23/
categories:
- api-doc
keywords:
bitlink: https://idratherbewriting.site/apidocworkshoplajan23
description: "I'm giving an <a href='https://www.eventbrite.com/e/api-documentation-workshop-los-angeles-jan-23-2020-tickets-84487066089'>API Documentation Workshop</a> in Los Angeles, California, on January 23, 2020. Details are below. You can <a href='https://www.eventbrite.com/e/api-documentation-workshop-los-angeles-jan-23-2020-tickets-84487066089'>register on Eventbrite here</a>."
embed_survey: no_way
---

## Event Description

<a href="https://www.eventbrite.com/e/api-documentation-workshop-los-angeles-jan-23-2020-tickets-84487066089"><img src="https://idratherbewritingmedia.com/images/api-doc-workshop-los-angeles2.png" alt="API Documentation Workshop - San Francisco Nov 19"/></a>

**Event:** API Documentation Workshop<br/>
**Instructor:** Tom Johnson<br/>
**Date:** January 23, 2020 <br/>
**Location:** Los Angeles, CA 90045<br/>
**Address:** 9100 S Sepulveda Blvd Ste 208<br/>
**Time:** 9am to 5pm (arrive 8:30am)<br/>
**Cost:** $449 through Dec 31, $549 after

Here's a description of the [API documentation workshop](https://www.eventbrite.com/e/api-documentation-workshop-los-angeles-jan-23-2020-tickets-84487066089):

<div style="background-color: #f8f8f8; border: 1px solid #dedede; padding: 15px; margin: 15px 0px;">
<script>
         var settings = {
           "async": true,
           "crossDomain": true,
           "url": "https://www.eventbriteapi.com/v3/events/84487066089/?token={{site.eventbrite_public_token}}",
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

## Register for the Workshop

<div style="margin-top:10px;" id="eventLink"></div>

## Questions

If you have any questions, just reach out to me at <a href="mailto:tomjoht@gmail.com">tomjoht@gmail.com</a>.

(By the way, the above title, description, and link are pulled from EventBrite directly through the [Retrieve an Event](https://www.eventbrite.com/platform/api#/reference/event/retrieve-an-event) endpoint in the EventBrite API. This is something you'll learn to do in the workshop.)

{% include random_ad.html %}
