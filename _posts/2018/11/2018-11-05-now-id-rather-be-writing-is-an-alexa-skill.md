---
title: "I'd Rather Be Writing is now an Alexa Flash Briefing skill"
categories:
- technical-writing
- writing
keywords:
description: "Now you can listen to the latest narrated post on I'd Rather Be Writing as an Alexa Flash Briefing skill. This means you can listen to my audio content through your Echo device."
bitlink: http://bit.ly/alexaskillidratherbewriting
# image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewriting-alexa-skill.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/nowanalexaskill.mp3
podcast_file_size: 7.3 MB
podcast_duration: "8:48"
podcast_length: 7268866
---

{% include audio.html %}

If you listen to [Flash Briefings](https://www.amazon.com/gp/help/customer/display.html?nodeId=201601880) on your Alexa-enabled device, such as Echo, you can now add [I'd Rather Be Writing](https://www.amazon.com/gp/product/B07K5THQ3L?ie=UTF8&ref-suffix=ss_rw) to your list of news sources. I'd Rather Be Writing is now an Alexa Flash Briefing skill.

To add I'd Rather Be Writing to your Alexa Flash Briefing skills:

1.  If you don't have an Amazon Echo, Echo Dot, Echo Show, or other Alexa-enabled device, [get one](https://www.amazon.com/s/?ie=UTF8&keywords=alexa+smart+speaker&index=aps&tag=googhydr-20&hvadid=289963801904&hvpos=1t1&hvnetw=g&hvrand=16157887676937380754&hvpone=&hvptwo=&hvqmt=b&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9032151&hvtargid=kwd-302338917741&ref=pd_sl_9ax3fliz0n_b_p38).
2.  Go to [alexa.amazon.com](https://alexa.amazon.com) and sign in with your Amazon account.
3.  Go to **Settings** > [**Flash Briefing**](https://alexa.amazon.com/spa/index.html#settings/flash-briefing). (You can also perform the same configuration in the Alexa app, but I think the web app version is faster.)
4.  Click **Get more Flash Briefing content**.
5.  Search for **i'd rather be writing**.
6.  Click the **I'd Rather Be Writing** skill in the search results.
7.  Click the **Enable** button:

    <a href="https://alexa.amazon.com/spa/index.html#skills/dp/B07K5THQ3L/?ref=skill_dsk_skb_fb_0&qid=1541477623"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewriting-alexa-skill.png"/></a>

    After you enable the skill, the Enable button changes to "Settings." Clicking Settings lets you manage your Flash Briefing skills by toggling them on or off and changing the order.

Now test it out. On your Alexa device, say "Flash Briefing," or "What's the latest news?" You should hear my latest narrated post.

I realize that Alexa Flash Briefings are more for "flash" (short) content. But I'm pretty much just distributing my audio feed content through this medium.

If you like the skill, consider leaving a rating and review.

## Configuring your own Flash Briefings

If you want to configure your own Flash Briefing skill, it's pretty easy. The docs are here: [Steps to Create a Flash Briefing Skill](https://developer.amazon.com/docs/flashbriefing/steps-to-create-a-flash-briefing-skill.html). (Note that I'm not on the team that writes this documentation. I'm on the Appstore doc team.)

The Flash Briefing reads your latest feed. If you have audio enclosures in the feed, you can select an audio feed type so that Alexa will read the enclosure.

In case you're using Jekyll and are interested in how I created my skill's feed, here's the code:

```
{% raw %}---
layout: null
search: false
---

<?xml version="1.0" encoding="UTF-8" ?>
<rss version="2.0">
  <channel>
    {% assign narrated_cats = site.posts | where: "categories", "stitcher" %}
    {% for post in narrated_cats limit: 1 %}
    <item>
      <guid>{{ post.url }}</guid>
      <title>{{ post.title | markdownify | strip_html }}</title>
      <description>{{post.title}} ... {{ post.description | markdownify | strip_html }}</description>
      <link>{{ post.url | prepend: site.baseurl | prepend: site.url }}</link>
      <pubDate>{{ post.date | date: "%Y-%m-%d"  }}</pubDate>
      <enclosure url="{{ post.podcast_link}}" length="{{post.podcast_length}}" type="audio/mpeg" />
     </item>
     {% endfor %}
  </channel>
</rss> {% endraw %}
```

What's special about my feed? Well, after limiting the content to one specific category (`stitcher`), it first converts any markdown into HTML through the `markdownify` filter, and then it strips out the HTML with the `strip_html`. It includes a `description` element, but this description is ignored because I configured my Flash briefing to look for the `enclosure`. (The `description` would be useful for the text feed types.) The feed limits the items to just one, because Flash Briefings just read one post.

Why not just have Alexa read my content? After listening to various Flash Briefings, I was convinced that the better briefings contain custom audio rather than the machine-read text (as good as Alexa is at reading text).

## Tech tools becoming easy, content creation not so much

The real challenge is not configuring Flash Briefing on a technical level. It's creating content day in and day out for this skill to become worthwhile. This is the real challenge of any online platform these days. It's not the tech that's hard &mdash; it's regular content development.

I'm going to try to get more regular in creating audio versions of my posts. I want to do this for several reasons:

* I'm an avid listener of podcasts and audio books, consuming at least 1.5 hrs a day during my morning and evening commute on my bike.
* I enjoy listening to content in the audio form. You can get a better sense of how the author feels about what they're saying.
* I have more time to listen to content at a consumable pace than I have time to read it.
* I want to improve my ability to narrate audio in an engaging, conversational way.

If you have feedback on my Alexa skill, please share it with me.
