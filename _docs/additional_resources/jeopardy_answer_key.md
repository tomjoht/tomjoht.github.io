---
title: API jeopardy answer key
permalink: learnapidoc/jeopardy_answer_key.html
course: "Documenting REST APIs"
weight: 16.6
sidebar: docapis
section: resources
path1: learnapidoc/resources.html
last-modified: 2019-03-31
---

{% include coffeeshopbook.html %}

{% include image_ad_right.html %}

The API Jeopardy questions are in the [Conclusion section of Workshop Activities](workshop.html#conclusion).

{% if site.format == "print" %}
*Note: This content doesn't embed well in print because it contains JavaScript. Please go to [https://idratherbewriting.com/learnapidoc/jeopardy_answer_key.html] to view the content.*
{% endif %}

{% if site.format == "web" %}

### Questions (jeopardy answer key)

{% for item in site.data.jeopardy.list %}
<button type="button" class="btn btn-danger" data-toggle="collapse" data-target="#q{{forloop.index}}">{{forloop.index}}</button>

<div id="q{{forloop.index}}" class="collapse">
<p>{{item.question}}</p>
</div>
{% endfor %}

{% endif %}

{% include ads.html %}
