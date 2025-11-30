---
title: "AI Book Club: A Human in the Loop"
permalink: /ai-book-club/
linkedin: https://www.linkedin.com/posts/tomjoht_ai-book-club-a-human-in-the-loop-activity-7305637955602157569-3Oh3
type: page
last-modified: 2025-07-19
---

This book club focuses on reading and discussing popular books about AI, with an emphasis on how humans, specifically tech writers, might steer and guide AI systems toward the outcomes they want. 

The reading covers general books on AI, not necessarily books oriented towards tech comm, or engineering-heavy books, or even books specifically focusing on this "human in the loop" theme. As you can see from the reading schedule below, the books are generally popular books on AI targeting a general interest audience. 

However, these books are a good catalyst for thinking about AI, and there might be many themes and takeaways that will likely apply to whatever you're interested in. The human-in-the-loop theme encourages us to look for ways to stay relevant at a time when AI becomes increasingly intelligent and self-directed.

* TOC
{:toc}

## Reading pace {#readingpace}

The reading pace is one book a month, as listed in the schedule below. This accelerated pace ensures that engaging in this club will likely pull you away from the minutiae of life and require you to spend time on the printed page. The meetings take place online through Google Meet, with recordings posted afterwards. There's also a workspace for online chat, and an email group for announcements.

Although AI news seems to change daily, giving the impression that books are too slow to keep up, the core issues and themes have much more longevity. Books elevate our thinking and engagement with these topics, allowing us to explore them in depth rather than just keeping up with the latest model release or news headlines.

There's no cost to join the book club (except buying the books), and you can attend as few or many meetings as you like. You can read part or all of the books, and participate as much or little as you like. The meetings take place online on the third Sunday of each month at 10am Pacific Time.

## Recordings

Each book club is recorded, using Google Meet as the platform. The recordings are uploaded to YouTube and shared on this site. See the MEETING RECORDING links in the table below or view this [ai-book-club category](/category-ai-book-club/) on the site.

{:.note}
If you don't want to be recorded or have the recording shared on YouTube, this isn't the book club for you. By joining the book club, you consent to the recording. If you do need me to edit out part of the conversation, though, let me know and I will try to make the edit. In general, avoid saying things you don't want recorded.

## Reading schedule {#schedule}

The following tables list the reading schedule. The descriptions are extracts from the book summaries on Amazon. More details for the notes and discussion links will be added as the meeting date approaches.

### Upcoming meetings

<table>
   <thead>
      <tr>
         <th style="width: 20%">Meeting date</th>
         <th style="width: 50%">Book and description</th>
         <th style="width: 30%">Notes</th>
      </tr>
   </thead>
   <tbody>
      {% for meeting in site.data.ai_book_club.upcoming %}
      <tr>
         <td>
            <b>{{ meeting.date }}<br/>{{ meeting.time }}</b>
             <figure><a href="{{ meeting.book.url }}"><img src="{{site.media}}/{{ meeting.book.image }}" alt="{{ meeting.book.title }}" /></a></figure>
         </td>
         <td>
            <p class="book-summary-top"><a href="{{ meeting.book.url }}"><i>{{ meeting.book.title }}</i></a> by {{ meeting.book.author }}</p>
             <p class="book-summary">{{ meeting.book.summary }}</p>
         </td>
         <td><p class="notes-links"><a href="{{ meeting.notes_url }}">Notes and discussion</a><br/>
             <a href="{{ meeting.meet_url }}">Google Meet link</a></p></td>
      </tr> 
      {% endfor %}
   </tbody>
</table>

### Previous meetings

The previous meetings include recordings, notes, and other resources. They're listed in order of most recently completed meetings.

<table>
   <thead>
      <tr>
         <th style="width: 20%">Meeting date</th>
         <th style="width: 50%">Book and description</th>
         <th style="width: 30%">Notes</th>
      </tr>
   </thead>
   <tbody>
      {% for meeting in site.data.ai_book_club.previous %}
      <tr>
         <td>
            <p><b>{{ meeting.date }}<br/></b><br/>
               {% if meeting.recording.url %}
               <a href="{{ meeting.recording.url }}"><b>{{ meeting.recording.text }}</b></a>
               {% else %}
               {{ meeting.recording.text }}
               {% endif %}
            </p>
             <figure><a href="{{ meeting.book.url }}"><img src="{{site.media}}/{{ meeting.book.image }}" alt="{{ meeting.book.title }}" /></a></figure>
         </td>
         <td>
            <p class="book-summary-top"><a href="{{ meeting.book.url }}"><i>{{ meeting.book.title }}</i></a> by {{ meeting.book.author }}</p>
             <p class="book-summary">{{ meeting.book.summary }}</p>
         </td>
         <td>
            <p class="notes-links"><a href="{{ meeting.notes_url }}">Notes and discussion</a></p>
            {% if meeting.review %}
            <p class="notes-links"><a href="{{ meeting.review.url }}">{{ meeting.review.text }}</a></p>
            {% endif %}
         </td>
      </tr>
      {% endfor %}
   </tbody>
</table>

## Monthly meetings {#meetings}

The meetings are usually the *third Sunday of the month at 10am Pacific Time*. I realize that meeting on a Sunday might not work for many people &mdash; that's okay. This is a book club, not a tech comm webinar. The main focus will be the substance of these books. Only those who truly want to engage in the reading and discuss these topics will likely join, and that's all right. And if you can join the meetings, you can watch or listen to the recordings.

## Slack online discussion forum {#slack}

There's a Slack workspace set up for online discussion. Go to one of these links:

* Already a workspace member? Go to [https://aibookclubtechcomm.slack.com](https://aibookclubtechcomm.slack.com/)
* Need to join the workspace? Go to [aibookclubtechcomm](https://join.slack.com/t/aibookclubtechcomm/shared_invite/zt-3hdnn35w0-nZd1HFUtIF38BgVfXBKGpQ)

The Slack workspace is used to chat, share info or other thoughts, etc. Feel free to introduce yourself in the Slack and ask questions. However, the main interaction will be with the monthly meetings.

Note that the Slack workspace resets all threads every 30 days. Unfortunately, the costs to maintain messages beyond the 30-day window are astronomically ridiculous, so just keep in mind that Slack messages periodically reset.

## Email list {#emaillist}

In addition to Slack, there's an email list you can join to receive announcements, information, and other details. I post the same info on Slack, but email can be easier for people who don't use Slack much.

<iframe data-w-type="embedded" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://0gj01.mjt.lu/wgt/0gj01/xqnx/form?c=b362b3d3" width="100%" style="height: 0;"></iframe>

<script type="text/javascript" src="https://app.mailjet.com/pas-nc-embedded-v1.js"></script>

## Google Meet for the meetings {#googlemeet}

For the monthly meetings, we use [Google Meet](https://meet.google.com/). If you use Google Calendar, you can [join this Google Group](https://groups.google.com/g/aibookclub-humanintheloop) and the meetings should automatically appear on your calendar. Otherwise, you can copy the event to your Google Calendar through [this link](https://calendar.google.com/calendar/event?action=TEMPLATE&tmeid=M2kwZmxubjB2aXVsNHZidmNrb25kOXZsbG5fMjAyNTExMTZUMTgwMDAwWiB0b21qb2h0QG0&tmsrc=tomjoht%40gmail.com&scp=ALL) or by clicking this button:

<a target="_blank" href="https://calendar.google.com/calendar/event?action=TEMPLATE&amp;tmeid=M2kwZmxubjB2aXVsNHZidmNrb25kOXZsbG5fMjAyNTA0MjBUMjEwMDAwWiB0b21qb2h0QG0&amp;tmsrc=tomjoht%40gmail.com&amp;scp=ALL"><img border="0" src="https://calendar.google.com/calendar/images/ext/gc_button1_en.gif" alt="Google Calendar"></a>

## How do I join and get started? 

1. Join the [email list](#emaillist).
2. Join the [slack group](#slack).
3. Join the [google group](#googlemeet) or manually add the event to your calendar.
4. Order the books and start reading.

## FAQ

**Who's the audience for this book club?**
: Mostly people working in tech comm who want to deepen and broaden their knowledge of AI, but who aren't looking to dive into the technical details of AI as an engineer might. These books fall more within a general interest category for technology and AI.

**How did you come up with the book list?**
: I look for books that are both popular and highly rated, so preferably books that have hundreds of reviews and average at least 4 stars. 

**What are the meetings like?**
: The meetings are interactive and discussion-based, as you might expect from any book club. To prepare for the book club meetings, I provide a notes document that summarizes the book's themes and also presents some questions for discussion. 

**Can I recommend a book?**
: Sure, send your book recommendations either to the [aibookclubtechcomm](https://aibookclubtechcomm.slack.com) or to me directly via the [contact form here](/contact).

**I'm not a technical writer -- can I still join?**
: Sure, you don't need to be a technical writer. I only added this facet to try to ground what is a broad domain (AI) with a more immediate and practical perspective.

**Isn't this field changing too fast for books?**
: Perhaps. However, many of these authors are wrestling with topics that go beyond the daily news headlines and which speak to long-term transitions in the way we think and work. Additionally, reading gives you space from the chaos and frenetic pace of the Internet news cycles.

**I'm not sure if I have time to read books.**
: There's a mental health benefit to reading long-form content instead of scrolling through bite-sized information nuggets. Reading books provides deeper engagement and a more satisfying experience for the brain. It takes time to read a 300-page book. That reading patience will offset a world where we're saturated with short-form content that reduces and fragments our attention spans.

<style>

table img {
    max-width: 150px !important;
    display: inline-flex;
}

table {
  width: 100%;
  border-collapse: separate; /* Changed from collapse to separate */
  border-spacing: 0px; /* added border-spacing */
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
  background-color: white;
  border-radius: 8px;
  overflow: hidden;
  margin-bottom: 30px; /* added margin-bottom*/
}

th {
  background-color: var(--primary-color);
  color: white;
  text-align: left;
  padding: 15px; /* increased padding */
  font-weight: 500;
}

td {
  padding: 15px; /* Increased padding */
  border-bottom: 1px solid var(--border-color);
  vertical-align: top;
}

tr:last-child td {
  border-bottom: none;
}

tr:hover {
  background-color: var(--hover-color);
}

.author {
  color: var(--secondary-color);
  font-style: italic;
  margin-top: 5px;
  display: block;
}

.book-summary {
  font-size: 0.9em;
  color: #555;
  padding: 15px;
  padding-top:0px;
}

.book-summary-top {
  font-size: 1.2em;
  color: #555;
  padding: 15px;
  padding-bottom: 5px;
  font-weight: bold;
}

.notes-links {
  font-size: 0.9em;
  padding: 15px;
  padding-bottom: 5px;
}

@media (max-width: 768px) {
  table {
    font-size: 14px;
  }
  
  th, td {
    padding: 10px;
  }
}
</style>
