---
title: "I'd Rather Be Writing podcasts"
permalink: /podcasts/
categoryName: podcasts
redirect_from:
- /category-podcasts
- /category-podcasts/
- /technical-writing-podcasts
---

You can listen to the I'd Rather Be Writing podcast on most podcast platforms. This category page lists all podcasts that I've recorded and included in my [podcast feed](/itunes.rss). I've been recording and sharing podcasts for more than a decade, with varying formats. For example, I started out mostly interviewing people, then transitioned to recording presentations, experimented with some individual monologue podcasts, explored discussion podcasts with co-hosts, and more. I like experimenting with different approaches.

## Subscribe to the podcast {#subscribe}

{% include podcast_subscribe_buttons.html options="all" %}

* TOC
{:toc}

## All podcast episodes {#recent_episodes}

<ol reversed="true">
{% for p in site.categories.podcasts %}
<li><h4 class="categoryArchive"><a href="{{ p.url | prepend: site.baseurl }}">{{p.title}}</a> <span class="postDate"> | {{ p.date | date: "%b %-d, %Y" }}</span>
</h4></li>
{% endfor %}
</ol>

## Podcasts where I'm featured as a guest {#guest_podcasts}

The following are podcasts on other sites in which I appear as a guest.

<ol reversed="true">
{% for p in site.categories.podcast-guest %}
<li><h4 class="categoryArchive"><a href="{{ p.url | prepend: site.baseurl }}">{{p.title}}</a> <span class="postDate"> | {{ p.date | date: "%b %-d, %Y" }}</span>
</h4></li>
{% endfor %}
</ol>

## Write the Docs podcasts {#wtd_podcasts}

I used to participate in the <a href='https://podcast.writethedocs.org/'>Write the Docs Podcast</a> (which since fizzled). Here are links to the episodes we recorded:

<ol reversed="true">
{% for p in site.categories.wtd-podcasts %}
<li><h4 class="categoryArchive"><a href="{{ p.url | prepend: site.baseurl }}">{{p.title}}</a> <span class="postDate"> | {{ p.date | date: "%b %-d, %Y" }}</span>
</h4></li>
{% endfor %}
</ol>

## Other techcomm podcasts {#recommended}

The following are active podcasts related to technical writing, language, content strategy, and so on.

<div class="grid-container-for-podcasts">
{% for item in site.data.recommended_podcasts.podcasts %}
<a class="noCrossRef grid-item-for-podcasts" href="{{item.url}}" class="noCrossRef"><img alt="{{item.title}}" class="recommendedPodcasts" src="{{site.media}}/{{item.img}}" alt="{{item.title}}"/></a>
{% endfor %}
<div style="clear: both;"></div>
</div>

These tech comm podcasts have faded:

{% for item in site.data.recommended_podcasts.podcasts_fizzled %}

* [{{item.title}}]({{item.url}})

{% endfor %}

{: .note}
If you have a techcomm podcast you'd like to recommend, [let me know](/contact/) and I'll add it here.

{% include ads.html %}