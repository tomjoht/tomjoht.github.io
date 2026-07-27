---
title: "AI Book Club: Every book we've read"
permalink: /ai-book-club-books/
sidebar: sidebar_ai_book_club
type: page
last-modified: 2026-07-26
---

Every book the [AI Book Club](/ai-book-club/) has read, plus what's coming up. Click any cover to jump to that book's discussion — the recording, notes, and takeaways from the meeting. For the full schedule with summaries and meeting links, see the [main book club page](/ai-book-club/).

## Books we've discussed

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

## Coming up

These haven't met yet, so the covers link to the book itself. Meeting details are on the [main book club page](/ai-book-club/).

<ul class="bookGrid">
  {% for meeting in site.data.ai_book_club.upcoming %}
  <li class="bookGrid-item">
    <a href="{{ meeting.book.url }}" title="{{ meeting.book.title }} by {{ meeting.book.author }}">
      <span class="bookGrid-cover"><img src="{{ site.media }}/{{ meeting.book.image }}" alt="Cover of {{ meeting.book.title }}" loading="lazy" /></span>
      <span class="bookGrid-title">{{ meeting.book.title | split: ":" | first }}</span>
      <span class="bookGrid-author">{{ meeting.book.author }}</span>
      <span class="bookGrid-date">{{ meeting.date }}</span>
    </a>
  </li>
  {% endfor %}
</ul>

Want to join us for one of these? Everything you need — meeting times, the Google Meet link, and the Slack forum — is on the [AI Book Club page](/ai-book-club/).
