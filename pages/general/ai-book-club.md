---
title: "AI Book Club: A Human in the Loop"
permalink: /ai-book-club/
sidebar: sidebar_ai_book_club
linkedin: https://www.linkedin.com/posts/tomjoht_ai-book-club-a-human-in-the-loop-activity-7305637955602157569-3Oh3
type: page
last-modified: 2026-11-15
---

{:.note}
The AI Book Club concluded in November 2026 after reading 19 books over nearly two years. All [meeting recordings, discussion notes, transcripts, and book reviews](#previous) remain archived below, along with a [visual gallery of all 19 books](/ai-book-club-books/) and notes on [how the club was set up and run](#how-it-worked).

From April 2025 through November 2026, this book club met monthly to read and discuss popular books about AI and technology, with an emphasis on how humans, particularly technical writers, might steer and guide AI systems toward the outcomes they want.

Most of the reading list focused directly on AI. At one point, when reading back-to-back AI books started to feel repetitive, the group planned to alternate with broader technology reads, though in practice that amounted to only a couple of detours (*Careless People* and *Breakneck*) before the picks drifted back to AI. Overall, selection favored accessible trade books over engineering textbooks or manuals specifically about technical communication. Even as AI news shifted week by week, those books served as a good catalyst for thinking through longer-term changes in how people write, learn, and stay relevant alongside increasingly capable systems.

* TOC
{:toc}

<a id="schedule"></a>
## Why the book club wrapped up {#concluded}

After reading and discussing 19 books between April 2025 and November 2026, the club reached a natural saturation point. Any book club focused on a single theme eventually exhausts its genre. Two years is probably the upper limit for a themed book club before new releases start repeating the same histories, anecdotes, and arguments.

Letting the club wrap up at the end of 2026 opens space for new adventures and smaller collaborative experiments in 2027, particularly around designing documentation for AI agents. For more reflections on ending this run, see the final ten minutes of our [*Co-Existence* recording](/blog/ai-book-club-co-existence-mollick) and [Looking back at the AI Book Club one year in](/blog/looking-at-book-club-one-year-in).

## Books discussed, recordings, and notes {#previous}

The table below lists all 19 sessions from most recent to oldest, with links to the meeting recordings, prep notes, discussion questions, and book reviews. You can also browse the [cover gallery of all 19 books](/ai-book-club-books/) or view every related post in the [ai-book-club category](/category-ai-book-club/). Every book in the catalog has an audiobook edition, with an Audible link next to the author's name (see [Why Audible links were included](#audible)).

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
      <tr style="vertical-align: top">
         <td>
            <p class="book-summary-top"><b>{{ meeting.date }}<br/></b><br/>
            </p>
             <figure><a href="{{ meeting.book.url }}"><img src="{{site.media}}/{{ meeting.book.image }}" alt="{{ meeting.book.title }}" /></a></figure>
         </td>
         <td>
            <p class="book-summary-top"><a href="{{ meeting.book.url }}"><i>{{ meeting.book.title }}</i></a></p>
             <p class="book-author">by {{ meeting.book.author }}{% if meeting.book.audible_url %} &middot; <a href="{{ meeting.book.audible_url }}"><i class="fa fa-headphones" aria-hidden="true"></i> Audible</a>{% endif %}</p>
             <p class="book-summary">{{ meeting.book.summary }}</p>
         </td>
         <td>
            <p class="notes-links">
            {% if meeting.recording.url %}
               <a href="{{ meeting.recording.url }}"><i class="fa fa-video-camera" aria-hidden="true"></i> {{ meeting.recording.text }}</a><br/><br/>
               {% endif %}
            <a href="{{ meeting.notes_url }}"><i class="fa fa-file-text-o" aria-hidden="true"></i> Notes and discussion</a><br/><br/>
            {% if meeting.review %}
            <a href="{{ meeting.review.url }}"><i class="fa fa-comment-o" aria-hidden="true"></i> {{ meeting.review.text }}</a>
            {% endif %}
            </p>
         </td>
      </tr>
      {% endfor %}
   </tbody>
</table>

## How the book club was set up and run {#how-it-worked}

If you're curious how an online book club like this comes together, or want a blueprint for starting one of your own, the sections below preserve how the group was organized and run from 2025 to 2026. Keeping the operational setup lightweight made it sustainable to run monthly sessions for nearly two years alongside full-time work.

<a id="readingpace"></a>
### Reading pace and monthly schedule {#meetings}

The club read one book a month and met online on the third Sunday of each month at 10am Pacific Time. There was no cost to participate beyond getting the books, and members could drop in for as few or as many sessions as they liked, whether they finished the whole book or only part of it.

Meeting on a Sunday morning didn't fit everyone's schedule, and that turned out to be fine because this was a book club rather than a workplace webinar. Holding sessions on Sundays filtered naturally for people who wanted to do the reading and talk about the substance of the books, while anyone who couldn't make the live call could listen to the podcast episode or watch the recording afterward.

Live attendance averaged roughly four to eight people per session, which proved to be the right size. Much like a dinner table conversation, four to eight participants gives everyone room to speak and build on each other's points, whereas groups past ten or twelve tend to turn most attendees into bystanders watching a panel.

### Prep docs, recordings, and shownotes {#recording}

Before each monthly call, a shared Google Doc summarized the book's main arguments and listed a handful of discussion questions to get the conversation moving. Sessions started out on Google Meet and later moved to Riverside for cleaner multi-track audio and video recording.

After each meeting, the video went up on YouTube and the audio went out through the site's podcast feed, paired with a blog post containing topic takeaways, a standalone narrative essay drawn from the conversation, and a cleaned-up transcript. Because public sharing was central to the format, recording consent was stated upfront for anyone joining a live call, with an open offer to edit out any segment a participant asked to remove afterward.

### Why Audible links were included {#audible}

Every entry in the reading list included an Audible link alongside the Amazon print link because audiobooks were how I got through most of the reading while riding my bike, commuting in the car, or working in the yard with my hands busy and my ears free. A title that existed only in print was much harder to finish on a monthly schedule. That preference didn't affect how other members read the books, of course, though it meant print-only releases usually lost out during book selection, and all 19 books we read ended up having audiobook editions.

### Notifications, chat, and calendar setup {#channels}

To coordinate between monthly calls without creating heavy administrative overhead, the club relied on three simple channels that have since been retired:

* **Slack workspace:** A dedicated free-tier Slack workspace gave members a place to introduce themselves, suggest upcoming books, and share articles between sessions, though most of the real discussion stayed in the live monthly calls. Because Slack's free tier clears messages after 30 days and paid retention costs far too much for an informal hobby group, the workspace operated as an ephemeral rolling chat rather than a permanent archive.
* **Email announcement list:** An embedded Mailjet signup form on this page sent monthly reminders, reading picks, and discussion doc links to people who preferred email over checking another Slack workspace.
* **Google Group calendar sync:** Joining a companion Google Group automatically placed the recurring monthly meeting and video room link onto members' Google Calendars, supplemented by a one-click calendar template button for anyone adding individual dates manually.

## Archive FAQ {#faq}

**Who was the audience for this book club?**
: The club drew mostly technical writers and people in adjacent tech roles who wanted to broaden their understanding of AI without diving into machine learning math or model engineering. Most of the participants worked in technical communication, though anyone interested in the books was welcome to join.

**How were the books chosen?**
: Selection favored popular, well-reviewed trade books, generally titles with hundreds of ratings averaging around four stars or higher, along with an audiobook edition on Audible. Within the AI theme, the list spanned lab histories, alignment debates, practical guides, and literary nonfiction, plus a couple of broader tech detours when straight AI books started feeling repetitive.

**What were the meetings like?**
: Sessions were informal, interactive, and discussion-driven rather than presentation-based. Most meetings kicked off by having everyone rate the book out of five stars to see where opinions split, then moved through whichever themes from the prep doc sparked the most debate.

**Wasn't AI changing too fast for books?**
: In some ways, yes, and practical how-to books dated fastest of all, sometimes within six months of publication. However, the strongest books on the list wrestled with human, organizational, and historical questions that outlast individual model releases, while offering a slower, more reflective counterweight to daily AI news feeds.

**Why read 300-page books instead of shorter articles?**
: Long-form reading slows the brain down in a way that scrolling through short posts and summaries never does. Committing to a book a month acted as a forcing function to step away from fragmented online feeds and spend sustained time following an author's full argument, which turned out to be one of the best reasons to run the club in the first place.

<style>

table img {
    max-width: 125px !important;
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
  font-size: 1.0em;
  color: #555;
  padding: 15px;
  padding-top:0px;
}

.book-summary-top {
  font-size: 1.2em;
  color: #555;
  padding: 15px;
  padding-bottom: 0px;
  font-weight: bold;
  margin-bottom: 0;
}

.book-author {
  font-size: 0.95em;
  color: #777;
  padding: 0 15px 5px 15px;
  margin-top: 2px;
}

.notes-links {
  font-size: 0.9em;
  padding: 15px;
  padding-bottom: 5px;
}

@media (max-width: 1198px) {
  table {
    font-size: 14px;
  }
  
  /* Hide table headers */
  thead {
    display: none;
  }

  /* Make rows display as blocks */
  tr {
    display: block;
    margin-bottom: 20px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.05);
    border: 1px solid var(--border-color);
    border-radius: 8px;
  }

  /* Make cells display as blocks */
  td {
    display: block;
    width: 100%;
    padding: 15px;
    box-sizing: border-box;
    border-bottom: none; /* Remove default border */
  }

  /* Add spacing between the image cell and the content cell */
  td:first-child {
      padding-bottom: 20px;
      border-bottom: 1px solid var(--border-color); /* Optional separator */
  }
}
</style>
