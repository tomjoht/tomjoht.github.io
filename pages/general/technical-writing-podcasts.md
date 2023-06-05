---
title: Other tech comm podcasts
permalink: /technical-writing-podcasts/
status: publish
type: page
published: true
---

Beside [my podcasts](/category-podcasts/), here are some technical writing podcasts focused on language, writing, content strategy, and more:

<div class="grid-container-for-podcasts">
{% for item in site.data.recommended_podcasts.podcasts %}
<a class="grid-item-for-podcasts" href="{{item.url}}" class="noCrossRef"><img alt="{{item.title}}" class="recommendedPodcasts" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/{{item.img}}" alt="{{item.title}}"/></a>
{% endfor %}

<div style="clear: both;"></div>
</div>

If you have a techcomm podcast you'd like to recommend, [let me know](/contact/) and I'll add it here.
