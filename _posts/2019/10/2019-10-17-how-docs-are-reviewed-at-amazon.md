---
title: "Matching documentation review practices to company culture"
permalink: /blog/matching-doc-review-practices-to-company-culture/
categories:
- technical-writing
keywords:
bitlink: https://idratherbewriting.site/matchingcompanytodocreview
description: "Although I've been doing tech writing for enough years that this issue shouldn't even be an issue, I'm still perplexed by best practices around document review. The right practices seem to vary from company to company, from toolset to toolset, from group to group. I've written previously about <a href='https://idratherbewriting.com/2014/07/31/how-to-review-dita-content-with-subject-matter-experts-6-essential-points/'>various review practices</a>, but in this post, I'll reflect on Amazon's document review process."
---

In this linkbait article, [Jeff Bezos: This is the ‘smartest thing we ever did’ at Amazon](https://www.cnbc.com/2019/10/14/jeff-bezos-this-is-the-smartest-thing-we-ever-did-at-amazon.html), CNBC writes,

> Jeff Bezos has a nontraditional management style at Amazon, and he says Amazon’s unique twist on meeting structure is the "smartest thing we ever did."
>
> "Many, many years ago, we outlawed PowerPoint presentations at Amazon," Bezos said at the Bush Center’s Forum on Leadership in 2018. "And it’s probably the smartest thing we ever did."
>
> To replace the PowerPoint presentations, Bezos created a new way to hold meetings: Meetings start with each attendee sitting and silently reading a "six-page, narratively-structured memo" for about the first 30 minutes of the meeting.
>
> "[The memo is] supposed to create the context for what will then be a good discussion," Bezos said.)

This *really is* how many meetings are run. The meeting starts as someone distributes a carefully prepared document that everyone reads silently for about 20 minutes before launching into a discussion.

Given this culture of reading documents during meetings, review of technical documentation tends to work best when approached this same way. People arrive at a meeting expecting to have time to read the required documentation at the start of the meeting, and then offer their review during the meeting. The whole affair should start and finish during the allotted meeting time.

I've done doc reviews like this in the past of course, so this is nothing new. But there are some challenges with this approach. First, you have to allocate the first half of your meeting to silent reading. This means you have to limit the amount of documentation that you review to whatever is feasible to read within that time limit. In some ways, this constraint is good because it ensures that (a) reviewers actually read the content and (b) you aren't biting off more than you can chew in one review session.

The other challenge is that it's hard to gather every stakeholder together into the same room at the same time. Try scheduling a meeting with important people when docs are needed, and you'll likely find that their calendars don't overlap &mdash; except maybe three weeks into the future. As a workaround, do you set up multiple individual meetings with 1-2 people, giving each a half-hour to read the document prior to the review? It feels silly scheduling meetings just so people will read the content, but I'm starting to think that's the only approach that really works.

Another challenge with doc reviews in which everyone is in the same room is figuring out how to pinpoint the outcome of the discussion. Often times discussions start to spiral and there are back-and-forth exchanges and so on, and it all feels like the content is being reviewed and decided on, but when the meeting is over, I find myself asking, so what exactly was decided here? Or I find that the different viewpoints don't in fact make sense together, or it's just murky what people were actually advocating for. When people leave comments on documents, on the other hand, the meaning is often more precise and clear. To address the confusion, I'll often record meetings and re-listen to them later.

Overall, although I often think the most efficient way to review content would be for each reviewer to read the content on their own time and make precise, detailed comments using an annotation tool, replying to other comments and so on, this method rarely works in my company. Instead, people have become accustomed to reading only when handed a document during a meeting. With that in mind, I foresee many more meetings in my future.

Beyond carving out meeting time to allow for the reading of documentation, there are a couple of other key considerations for doc reviews. Companies tend to have toolsets that they use for collaboration and review of content. At one company I worked at, everyone was on G Suite, so they used Google Docs to review everything. It worked out extremely well. At Amazon, different groups use different tools, but in my group, [Quip](https://quip.com/) tends to predominate. Quip is basically Salesforce's version of Google Docs. I get much better reviews if I put content on Quip than on, say, Workdocs or distributed as a PDF or a Word doc. But getting the docs into Quip means I have to copy the web output (from our Jekyll site) and paste it into Quip. Then I have to fix the tables and paragraph spacing in places.

Finally, there's one other technique that tends to work well with documentation reviews: reviewers love to be asked questions. I'll often create a Quip doc that simply lists all my questions for the reviewers. Or I'll highlight parts of the documentation in Quip that I have specific questions about (this works better because it provides the context). People tend to enjoy being asked a specific question rather than just reviewing content generally. I'm not sure why, but it focuses the discussion and presents a clear issue to which they can respond. I like questions too, I guess. If you've ever been on a podcast in which the interviewer asks you a bunch of questions, it's kind of fun.

In summary, when you think about the best way to review your documentation with engineers and other stakeholders, consider these points:

* Identify your company's existing culture for reviewing documents, and try to follow it with technical documentation reviews as well.
* Consider setting up meetings and devoting the first half of it to simply having reviewers read the content.
* Use the collaboration tools that your company uses most often.
* Ask reviewers specific questions that you want them to address.
