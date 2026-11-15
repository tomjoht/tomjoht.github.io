---
title: "AI Book Club: Every book we read"
permalink: /ai-book-club-books/
sidebar: sidebar_ai_book_club
type: page
last-modified: 2026-11-15
---

This gallery collects all 19 books the [AI Book Club](/ai-book-club/) read between April 2025 and November 2026. Click any cover to jump to that book's session post, including the recording, discussion notes, takeaways, and transcript. For full book summaries, Audible links, and notes on how the club operated, see the [main AI Book Club page](/ai-book-club/).

## Books we discussed

<ul class="bookGrid">
  {% for meeting in site.data.ai_book_club.previous %}
  {% if meeting.recording.url %}
    {% assign bookLink = meeting.recording.url %}
  {% elsif meeting.review.url %}
    {% assign bookLink = meeting.review.url %}
  {% else %}
    {% assign bookLink = meeting.book.url %}
  {% endif %}
  <li class="bookGrid-item">
    <a href="{{ bookLink }}" title="{{ meeting.book.title }} by {{ meeting.book.author }}">
      <span class="bookGrid-cover"><img src="{{ site.media }}/{{ meeting.book.image }}" alt="Cover of {{ meeting.book.title }}" loading="lazy" /></span>
      <span class="bookGrid-title">{{ meeting.book.title | split: ":" | first }}</span>
      <span class="bookGrid-author">{{ meeting.book.author }}</span>
      <span class="bookGrid-date">{{ meeting.date }}</span>
    </a>
  </li>
  {% endfor %}
</ul>
