---
layout: page
title: Academic/practitioner podcasts
permalink: /academic-practitioner-podcasts/
status: publish
type: page
published: true
podcasts:
  - title: The relationship between academics and practitioners -- Podcast with Kirk St. Amant
    url: /2018/07/11/research-as-bridge-between-academics-and-practitioners-kirk-st-amant-podcast/
    date: July 11, 2018
  - title: Evaluating the user experience of documentation -- Podcast with Bob Watson
    url: /2018/06/18/podcast-on-the-user-experience/
    date: Jun 18, 2018
  - title: The divide between academics and practitioners -- Interview with Lisa Meloncon
    url: /2015/08/10/lisa-meloncon-academic-practitioner-divide-podcast/
    date: Aug 10, 2015
---

I'm launching a series of podcasts focused on academic/practitioner conversations. In these podcasts, I interview academics who have published research in academic journals that I find interesting and relevant to tech comm.

The podcasts will be listed in my [regular podcast feed](/category-podcasts/), but they'll also appear here.

**Latest podcasts**:

{% for item in page.podcasts %}
* [{{item.title}}]({{item.url}}) ({{item.date}})
{% endfor %}
