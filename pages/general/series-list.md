---
title: Series on my blog
permalink: /series/
tags: 
keywords: 
audience: 
summary: "Series are posts that belong in the same collection. They differ from categories in that series are often like unfolding chapters in a book, following a focused and specific theme throughout a series of posts. The following series are available."
---
trying something ...

{% assign allPages = site.pages | sort:"weight"  %}
{% for p in allPages %}
{% if p.type == "series_overview"  %}
<h2>{{ p.title }}</h2>
<p>{{p.summary}}</p>
<a href="{{ "/{{p.permalink}}" | prepend: site.baseurl }}"><button type="button" class="btn btn-primary">Start reading &#9658;</button></a>
{% endif %}
{% endfor %}
