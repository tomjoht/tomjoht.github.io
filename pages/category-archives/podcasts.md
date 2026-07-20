---
title: "I'd Rather Be Writing podcasts"
permalink: /podcasts/
categoryName: podcasts
redirect_from:
- /category-podcasts
- /category-podcasts/
- /technical-writing-podcasts
---

<style>
        .preso-date {
                display: inline-block;
                background-color: #f2ece4;
                color: #7a5c3a;
                border-radius: 20px;
                padding: 1px 11px;
                font-size: 0.78em;
                font-weight: 700;
                letter-spacing: 0.03em;
                margin-right: 6px;
                vertical-align: middle;
                white-space: nowrap;
        }
        .podcast-label {
                display: inline-block;
                border-radius: 20px;
                padding: 1px 10px;
                font-size: 0.72em;
                font-weight: 700;
                letter-spacing: 0.03em;
                margin-left: 6px;
                vertical-align: middle;
                white-space: nowrap;
        }
        .podcast-label-guest {
                background-color: #e4ecf2;
                color: #3a5c7a;
        }
        .podcast-label-wtd {
                background-color: #e4f2e8;
                color: #3a7a4d;
        }
</style>

You can listen to the I'd Rather Be Writing podcast on most podcast platforms. This category page lists all podcasts that I've recorded and included in my [podcast feed](/itunes.rss). I've been recording and sharing podcasts for more than a decade, with varying formats. For example, I started out mostly interviewing people, then transitioned to recording presentations, experimented with some individual monologue podcasts, explored discussion podcasts with co-hosts, and more. I like experimenting with different approaches.

* TOC
{:toc}

## Subscribe to the podcast {#subscribe}

{% include podcast_subscribe_buttons.html options="all" %}

## All podcast episodes {#recent_episodes}

{% assign all_podcasts = "" | split: "" %}
{% for p in site.categories.podcasts %}{% assign all_podcasts = all_podcasts | push: p %}{% endfor %}
{% for p in site.categories.podcast-guest %}{% assign all_podcasts = all_podcasts | push: p %}{% endfor %}
{% for p in site.categories.wtd-podcasts %}{% assign all_podcasts = all_podcasts | push: p %}{% endfor %}
{% assign all_podcasts = all_podcasts | sort: "date" | reverse %}
{% assign all_by_year = all_podcasts | group_by_exp: "p", "p.date | date: '%Y'" %}
{% for year in all_by_year %}
<h3>{{ year.name }}</h3>
<ol>
{% for p in year.items %}
<li>{{ p.date | date: "%b %-d, %Y" }}. <a href="{{ p.url | prepend: site.baseurl }}">{{p.title}}</a>{% if p.categories contains "podcast-guest" %} <span class="podcast-label podcast-label-guest">guest</span>{% endif %}{% if p.categories contains "wtd-podcasts" %} <span class="podcast-label podcast-label-wtd">WTD</span>{% endif %}</li>
{% endfor %}
</ol>
{% endfor %}

## Other techcomm podcasts {#recommended}

The following are active podcasts related to technical writing, language, content strategy, and so on.

<div class="grid-container-for-podcasts">
{% for item in site.data.recommended_podcasts.podcasts %}
<a class="noCrossRef grid-item-for-podcasts" href="{{item.url}}"><img class="recommendedPodcasts" src="{{site.media}}/{{item.img}}" alt="{{item.title}}"/></a>
{% endfor %}
<div style="clear: both;"></div>
</div>

{: .note}
If you have a techcomm podcast you'd like to recommend, [let me know](/contact/) and I'll add it here.

{% include ads.html %}

<script>
        document.addEventListener('DOMContentLoaded', function () {
                // Matches dates like "Jul 10, 2026.", "May 15-16, 2017.", "April, 2010.", "January 24."
                var dateRe = /^((?:January|February|March|April|May|June|July|August|September|October|November|December|Jan|Feb|Mar|Apr|Jun|Jul|Aug|Sept?|Oct|Nov|Dec)\.?(?:\s+\d{1,2}(?:-\d{1,2})?)?(?:,?\s*\d{4})?)\.?\s*/;
                document.querySelectorAll('ol li').forEach(function (li) {
                        var node = li.firstChild;
                        if (node && node.nodeType === Node.TEXT_NODE) {
                                var m = node.textContent.match(dateRe);
                                if (m && m[1].trim().length > 3) {
                                        var pill = document.createElement('span');
                                        pill.className = 'preso-date';
                                        pill.textContent = m[1].trim();
                                        node.textContent = node.textContent.slice(m[0].length);
                                        li.insertBefore(pill, node);
                                }
                        }
                });
        });
</script>