---
title: "Course overview"
permalink: learnapidoc/docapis_overview.html
sidebar: docapis
path1: learnapidoc/docapis_overview.html
weight: 0
course: "Documenting REST APIs"
section: overview
last-modified: 2026-07-27
---

{% include coffeeshopbook.html %}

{% include chapter_description.html %}

## The 17 chapters {#chapters}

The course runs roughly in the order below, moving from what REST APIs are, through hands-on work with a real API, into reference documentation, publishing, and the working life of an API technical writer. You don't have to read it straight through &mdash; each chapter stands on its own, so jump to whatever you need.

<ul class="courseTiles courseTiles-compact">
{% for folder in site.data.docapis.folders %}
{% if folder.tiledesc %}
{% assign chapterNumber = folder.title | split: ":" | first %}
{% assign chapterName = folder.title | remove_first: chapterNumber | remove_first: ":" | strip %}
{% assign topicCount = folder.folderitems | size %}
  <li class="courseTile-item">
    <a class="courseTile" href="{{ folder.landing }}">
      <span class="courseTile-eyebrow">{{ chapterNumber }}</span>
      <span class="courseTile-name">{{ chapterName }}</span>
      <span class="courseTile-desc">{{ folder.tiledesc }}</span>
      <span class="courseTile-foot">
        <span class="courseTile-count">{{ topicCount }} topics</span>
        <span class="courseTile-go" aria-hidden="true">&rarr;</span>
      </span>
    </a>
  </li>
{% endif %}
{% endfor %}
</ul>

## About this section

{% include minitoc.html %}
