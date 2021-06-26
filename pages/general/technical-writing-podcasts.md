---
title: Other tech comm podcasts
permalink: /technical-writing-podcasts/
status: publish
type: page
published: true
---

Beside [my podcasts](/category-podcasts/) and the [WTD podcasts](/category-wtd-podcasts)], here are some technical writing podcasts focused on language, writing, content strategy, and more:

{% for item in site.data.recommended_podcasts.podcasts %}

<a href="{{item.url}}"><img class="recommendedPodcasts" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/{{item.img}}" alt="{{item.title}}"/></a>

{% endfor %}


<div style="clear: both;"></div>

If you have a techcomm podcast you'd like to recommend, [let me know](/contact/) and I'll add it here.
