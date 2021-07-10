---
title: "Write the Docs Podcast app now on Fire TV, and the importance of testing your docs with sample apps"
categories:
- api-doc
- podcasting
keywords:
description: "The Write the Docs Podcast app is now on Fire TV. If you have a Fire TV, search for <i>write the docs</i> or even just <i>technical writing</i> in the Amazon Appstore and you'll find it. I created this app to better understand the Android app template I was documenting. This app template, called Fire App Builder, is designed for third-party Java Android developers creating streaming media apps."
bitlink: http://bit.ly/tryyourdoccode
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/wtdpodcastappfiretv.png
---

## Viewing the WTD Fire TV app

You can view the Write the Docs podcast app in the Amazon Appstore web UI [here](https://www.amazon.com/Id-Rather-Be-Writing-Podcast/dp/B06Y23TNC4/ref=sr_1_1?s=mobile-apps&ie=UTF8&qid=1491708630&sr=1-1&keywords=write+the+docs).

<a href="https://www.amazon.com/Id-Rather-Be-Writing-Podcast/dp/B06Y23TNC4/ref=sr_1_1?s=mobile-apps&ie=UTF8&qid=1491708630&sr=1-1&keywords=write+the+docs"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/writethedocastfiretvapp.png" />

Here's what the app screens look like on your Fire TV:

![Write the Docs Podcast app](/images/wtdpodcastscreenshot1.png)

![Write the Docs Podcast app](/images/wtdpodcastscreenshot2.png)

The app also contains meetup recordings. The meetups are divided by category, making them easy to navigate.

## Why I built a Fire TV app

I didn't set out to build a Fire TV app because I think a lot of tech writers are eager to watch video recordings of podcasts or meetups at home on their TV through a ten-foot experience. I made the app as a sample app for a product I'm documenting at work called [Fire App Builder](https://developer.amazon.com/public/solutions/devices/fire-tv/docs/fire-app-builder-overview).

I primarily write documentation for third-party developers building streaming media apps for Fire TV. To write good documentation, you need to be familiar with the steps you're asking developers to do. For me, that meant building an app and actually submitting it to the Appstore.

This was no small feat, and it's something I've been working on for months. First, I needed video content. I could have used generic videos, but then I'm not sure that I could've actually submitted the app with that generic video content.



I decided to download the YouTube videos from our [Write the Docs podcast](http://podcast.writethedocs.org) and any other WTD meetups that had published recordings on YouTube. After downloading the MP4s, I uploaded them first to Dropbox as an attempt to host the media (I couldn't just directly link to YouTube because our app template didn't support this approach). When the links to Dropbox locations didn't work, I uploaded the videos directly to my web host, Bluehost. That worked.

Then I needed to construct the media feed that I would use to integrate with Fire App Builder. Fire App Builder basically reads all the media from a feed whose syntax you target with Jayway Jsonpath or XPath expression queries.

I used Jekyll to build this feed. You can view the feed here: [podcast.writethedocs.org/fab.json](http://podcast.writethedocs.org/fab.json). The feed is automatically generated through Liquid `for` loops in Jekyll. Here's the [source](https://github.com/writethedocspodcast/writethedocspodcast.github.io/blob/master/fab.json):

```liquid
---
layout: null
---
{% raw %}
[
  {% for ep in site.posts %}
  {
    "id": "{{ep.guid}}",
    "title": "{{ep.title}}",
    "description": "{{ep.description}}",
    "duration": "{{ep.podcast_duration}}",
    "thumbURL": "{{site.url}}/{{ep.mp4_thumbnail | escape}}",
    "imgURL": "{{site.url}}/{{ep.mp4_thumbnail | escape}}",
    "videoURL": "{{ep.mp4_url}}",
    "tags": "{{ep.tags | join: ', '}}",
    "categories": [
      "{{ep.meetup}}"
    ],
    "channel_id": "{{ep.categories}}",
    "recommendations":
     {% assign my_array = "" | split: ", " %}
     {% for tag in ep.tags %}
     {% for mypost in site.tags[tag] %}
     {% if mypost.url != ep.url %}
    {% assign my_array = my_array | push: {{mypost.guid}} %}
    {% endif %}
  {% endfor %}
{% endfor %}

{{my_array | jsonify}}

  } {% unless forloop.last %},{% endunless %}
{% endfor %},
{
"globalRecommendations": [
  {% assign globalRecs = site.posts | where: "global_recommendation", true %}
{% for ep in globalRecs %}
  "{{ ep.guid }}"{% unless forloop.last %},{% endunless %}
  {% endfor %}
]
}
]
{% endraw %}
```

The most difficult part in setting up this feed was configuring the `recommendations` object. Each video has some `tags`. The `recommendations` object needs to show other videos that have the same tag. Getting the JSON valid there was challenging and I relied on some support from the [Jekyll Talk forum](http://talk.jekyllrb.com/t/how-to-exclude-comma-in-last-item-in-for-loop-that-is-prefaced-by-if-condition-and-output-valid-json/380/4).

After I had the media and the feed, integrating it into Fire App Builder was easy because, after all, I [wrote the documentation](https://developer.amazon.com/public/solutions/devices/fire-tv/docs/fire-app-builder-overview) on how to do this.

## Submitting the app into the Appstore

Submitting the app into the Appstore was actually fun. And it helped me see some challenges developers were having in submitting apps. For example, I found out that device targeting (listing certain features in your manifest to identify which Fire devices your app supports) doesn't work correctly for Fire TV apps. This issue wasn't directly related to the Fire App Builder template, though.

I also discovered an issue with the app template that devs had been unaware of. Although devs had tested the app template for many months, they hadn't tested pushing apps into the Appstore with it. It turns out that the app has an in-app purchases component (not active or configured by default) that triggers the Appstore to automatically add a tag indicating that the app contains in-app purchases.

This surprised the dev team, but it was too late to fix the issue prior to the app template release. The devs then said users could simply deregister the component from the app. I modified the doc to indicate this. Then I tried deregistering the component from the app and submitted a new version, but the issue persisted.

This experience reinforced to me the importance of testing everything myself and not taking the dev's word for how something works. It also reinforced the fact that it is absolutely vital to get my hands on the code I'm documenting and run it through as real of a situation as I can.

It's not always possible to run code through real situations, and there are some times when I just facilitate the editing and publishing of engineering-written docs, but that's not my favorite scenario. I love getting my hands on the code and actually trying to make it work in the scenario it was designed for.

It is often difficult to set up scenarios to test developer tools, but it's necessary, and once you set up a system, it empowers you to test and try out many other features. For example, after I had the app built, I could then test out the [recommendations feature](https://developer.amazon.com/public/solutions/devices/fire-tv/docs/fire-app-builder-recommendations-overview), which was the big feature in the release. I could also test out device targeting, and so on.

## Challenges in testing developer documentation

Testing documentation for developers is difficult because we often just provide reference APIs for them to integrate into their own apps. We assume that they already have apps, and so all they need is the API integration information.

For example, for general Fire TV users who aren't using the Fire App Builder template, I also wrote documentation on how to integrate and send [recommendations](https://developer.amazon.com/public/solutions/devices/fire-tv/docs/fire-tv-recommendations-overview). But since I didn't have my own Fire TV app to test this with, I didn't play around with the code to actually send recommendations. I had to take on faith much of this information based on the engineer's instructions and the feedback we were getting from users.

As you can imagine, I later discovered gaps in the docs that I need to address. For example, when you actually send recommendations to Fire TV, Fire TV only uses some of the recommendations info you send, but I didn't indicate in the docs which fields actually get used. This can leave devs wondering if they integrated the recommendations correctly.

Putting together an app from scratch that leverages all the recommendations API calls is something I need to do, but getting that initial foundation going is much harder than starting with a sample app template. Even so, it's the next step I need to take.

## Conclusion

Overall, make sure to test the code you're documenting in as real of a situation as you can. You'll be surprised what you discover. Reporting back the issues to your team will make your product stronger and increase your value. It also makes tech writing a lot more engaging.
