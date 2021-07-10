---
title: "Upcoming API Documentation Workshop in Mountain View, Calif., on August 30, 2019"
categories:
- api-doc
keywords:
bitlink: https://idratherbewriting.site/apidocworkshopmtnview
description: "I'm giving an <a href='https://www.eventbrite.com/e/api-documentation-workshop-tickets-64803158993'>API Documentation Workshop</a> in Mountain View, California, on August 30, 2019. Although I've given more than a dozen API documentation workshops at various conferences over the past several years, this one is different. For this workshop, I'm organizing it myself. You can <a href='https://www.eventbrite.com/e/api-documentation-workshop-tickets-64803158993'>register on Eventbrite</a>."
embed_survey: no_way
---

{{site.data.alerts.note}}This workshop has passed, but I've scheduled another workshop in San Francisco (Financial District) for November 19, 2019. You can <a href='https://www.eventbrite.com/e/api-documentation-workshop-san-francisco-nov-19-2019-tickets-72043928329'>view workshop details here</a>.{{site.data.alerts.end}}

Previous API workshops I've given have usually been by request through some organizing sponsor, such as STC group, private company, or conference. But I've come to wonder if that organizing group is even necessary, so I'll just experiment at least once giving the workshop on my own, marketing it myself, setting up the venue myself, handling registration myself, etc. If it's successful, I'll repeat it regularly. And if it's not, I'll at least have more experience running an event.

Here are the details:

## Event Description

<a href="https://www.eventbrite.com/e/api-documentation-workshop-tickets-64803158993"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/restapiworkshopeventbritewoodgrain.png" alt="API Documentation Workshop"/></a>

**Title:** API Documentation Workshop<br/>
**Instructor:** Tom Johnson<br/>
**Date:** August 30, 2019 <br/>
**Venue:** [Computer History Museum](https://www.computerhistory.org/)<br/>
**Location:** Mountain View, California<br/>
**Time:** 9am to 5pm<br/> (arrive 8:30am)
**Cost:** $399 before Aug 1, $499 after Aug 1

Here's a description of the [API documentation workshop](https://www.eventbrite.com/e/api-documentation-workshop-tickets-64803158993):

<div style="background-color: #f8f8f8; border: 1px solid #dedede; padding: 15px; margin: 15px 0px;">
<script>
         var settings = {
           "async": true,
           "crossDomain": true,
           "url": "https://www.eventbriteapi.com/v3/events/64803158993/?token={{site.eventbrite_public_token}}",
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


