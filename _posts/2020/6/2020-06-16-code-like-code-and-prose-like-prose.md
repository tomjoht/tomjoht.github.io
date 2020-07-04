---
title: "Treat code like code and prose like prose"
permalink: /blog/treat-code-like-code-and-prose-like-prose/
categories:
- writing
keywords:
rebrandly: https://idratherbewriting.site/proselikeprose
description: "Some recent experiences have prompted me to rethink the value of treating docs like code in some respects. I want to return to focusing more on content rather than technical workflows, especially when creating new content. Some of the docs-like-code processes exclude too many people in non-engineer roles who would otherwise contribute to the review and development of the content."
---

## "Prose like prose"

I recently participated in a podcast sponsored by Readme, where Andrew Baker of Twilio and I were interviewed about best practices with API documentation &mdash; see ["Building Great Documentation" -- WAPI FM radio hour](/blog/wapi-radio-building-great-documentation-recording/). When the Readme host asked us doc trends, I mentioned that more tech writers are treating documentation like code. When Andrew, who is the Director of Developer Education at Twilio, gave his response, he pushed back a bit on the idea of treating docs like code. He said their philosophy at Twilio is to "treat code like code and prose like prose." (This topic surfaces ~15m into the podcast if you want to listen to it.)

Andrew said it didn't make sense to run through their entire deployment process just to fix a typo, but he didn't elaborate much beyond this to explain what it means to treat prose like prose. This was the first time I'd ever heard the phrase "treat code like code and prose like prose." I didn't entirely understand what Andrew meant. Did they not treat documentation like code at Twilio? Why was he drawing a distinction between code and prose when so many people only seem to draw parallels between the two?

I started digging around a bit to understand Twilio's documentation processes better and found a presentation titled [How Twilio Writes Documentation](https://eventil.com/talks/qzSBmm-jarod-reyes-how-twilio-writes-documentation/transcript/). In the presentation, Andrew talks about how they wanted their code samples to be fully accurate and functional with each release (listen to about the ~18m to 24m mark). The problem was, when code was intertwined with documentation, there wasn't an easy way to test the code in an automated way to ensure its accuracy. Code couldn't be treated with the same stringent deployment processes that code merited. And in Twilio's research, code trumped nearly everything else in importance to users.

Andrew says they embraced a CMS called Wagtail because it provided a way to embed code from another source such as GitHub (you can see Twilio's [code snippets here](https://github.com/TwilioDevEd/api-snippets)). Using Wagtail's Streamfields feature, they could drop code into a documentation page without the code literally being stored in the docs. This allowed them to treat code like a first-class citizen, running tests on the code to ensure it was functional and accurate (that it compiles or runs) with each release. Storing the code on GitHub also allowed contributor to make pull requests to fix errors.

Hence the phrase "treat code like code and prose like prose" means to not treat code like docs but rather to store and manage your code snippets so that the code snippets can be properly treated like actual code, subject to the same deployment criteria as other code released. As for prose, decoupling prose from code deployment processes allowed them to make dynamic updates and to potentially personalize the display based on user preferences or other logic.

I wasn't expecting this direction. I now realize that when engineers hear the phrase "docs like code," they take it much more literally than I do. When I say "docs like code," I don't mean that docs should be treated exactly like code with software testing on each release. It can take software teams about a day to push a new release following an official deployment process. Of course fixing a typo shouldn't require this kind of process. When I say docs like code, I just mean working in a text editor and using version control to manage content and trigger builds to a server.

At any rate, this phrase &mdash; "treat code like code and prose like prose" &mdash; really prompted to think. I wondered, is there a good reason for treating prose differently from code? If even Twilio pushes back against treating docs like code, and instead encourages prose to be treated differently, should I reconsider treating docs like code, even in the general way that I mean it? Am I trying to force prose into an engineering workflow that isn't optimal for the inherent and unique characteristics of prose? What are those qualities that make prose unique from code?

Given my background in creative writing, this pushback awoke part of my past. I remembered back to my time in New York, when I was getting an MFA in literary nonfiction. In any creative writing workshop, the default approach is to write something and share it with others. The others mark up your content and provide feedback about your writing. The feedback can be discouraging or exhilarating, depending on the response. But one thing was certain &mdash; these workshops, where we were forging prose from blank pages, didn't treat prose like code.

This dilemma about whether to treat docs like code or prose like prose was especially challenging given that I'd just recently [concluded a survey](https://www.questionpro.com/t/PGhS9ZgCFE) with more than 400 dev doc writers responding about trends. In my survey, I had asked, "How do you review your docs prior to release?" The majority (25%) said they use "the same code review tools that engineers use to review software code."

<iframe src='https://www.questionpro.com/t/ZRimssZG1r6YQ' width='100%' height='600' frameBorder='0'></iframe>

I wondered if this trend was misguided. Should I stop trying to force prose into a workflow that isn't the best fit for what it is? I let this conundrum settle into my mind for a few weeks.

## Code reviews exclude non-engineers

A few weeks later, I had another experience that prompted to push back on the idea of treating docs like code. A software development manager at my work recently asked me to start pushing doc changes into code reviews, or CRs. Software developers use code review tools (like Review Board) when reviewing code with other developers. The code review contains a "file diff" snapshot that shows exactly what has changed in the commit, highlighting the differences line by line in red (for what's removed) and green (for what's added).

For docs, this meant being more careful about the exact changes I was making to a branch so that the file diff for a specific ticket could be captured and pushed into the code review tool. I could no longer make a variety of changes in a general branch and push it but instead had to scope my changes to a specific ticket, defined by a specific branch, so that the file diff would correlate with the code review.

It took me a while to figure out how to push a file diff to the code review tool. It wasn't as straightforward as it could have been. The code review tool would often try to guess the changes to include, and sometimes it included changes from some other ticket even when I properly switched branches when working on other tickets.

I spent a few days trying different workflows. I resorted to rebasing and squashing my changes into a single commit and passing a parameter to the CR to look only at the most recent squashed commit. This seemed to work but required more effort on my part. I also had to describe the changes in the CR too as well in a ticketing system (e.g., JIRA), so there was redundancy.

After all this effort, what was the result of committing CRs? Some engineers did provide comments in the CR tool, but project managers, field engineers, and UX did not. They didn't even try. It was like noise from an automated log message or something. For these other groups, I generated an output and uploaded it to an internal website and sent them the link.

Nevertheless, some writers on another doc team kept raving about their success with CRs, so I decided to stick with it. After all, I had only been trying out the process a couple of weeks.

About this same time, we onboarded a new writer, and I had visions in my had about everyone on our team contributing code reviews for doc changes so that we could all be acutely aware of what changes each of us was making and pushing.

I had trouble getting this idea off the ground, though, and it didn't make sense for many projects because the project managers whom these others writers were working with never requested docs to appear in code reviews. One of the other writers asked, what's the point? It seemed like a waste of time.

I still continued to push for doing CRs. Again, even on the project where the software development manager requested that I do CRs, he himself had yet to comment on any CR, and the only other engineers commenting were those who had created the code or feature that I was documenting. No one else really seemed to look at them at the CRs, even though I included them in the list of reviewers.

I continued trying to use CRs for about a month, but eventually I realized this review process seemed to be excluding a large group of people whom I wanted to review content. Not just program managers and field engineers, but the support team, other stakeholders, legal, and more.

Just like in the creative writing workshop, you don't write prose and have one person review it. You gather reviews from a large group of people, at least five or more, so that you can gather trends from the feedback. One person might like the story, while another can't stand it. One person might say a theme was apparent while another misses it entirely. Reviewing my docs with just one other person (i.e., the engineer who created the feature requiring documentation) was like showing up to a workshop where the reviewer already knows the story he or she wants to read. This isn't how prose is created. Prose is workshopped and rewritten as you gather input from many different people and grow the content more complete with each iteration.

The echoes of Andrew's phrase, "treat code like code and prose like prose" resounded in my head. I started to question whether prose, or rather, documentation, should actually be treated like code. If you've ever tried to read changes in a file diff display, it's not easy. The file diff usually shows you a side-by-side comparison of what's changed in a before and after way. If it's a small change, it's easy to identify a line or paragraph that is new, but in more substantive changes, the changes might span multiple files and include a confusing display of red and green highlighted lines from different parts of the file. Sometimes Git will highlight a changed line when all you did was move it down or change some formatting.

Additionally, the file diff highlights only what has changed. Sometimes when you add a new paragraph or make other edits, you want to read them in context of the whole, not just in isolation. Imagine a workshop where writers present their revisions in file diffs, where other workshop participants just read what has changed, not the new version in its entirety. There would be no real way to judge whether the revision fixed the problems with the initial version.

## The final blow

Despite my reservations with CRs, I continued creating and promoting them until the final turning point in this story: one of my colleagues left for another Amazon team. We have a small team of just three writers, and now as he transitions elsewhere, we will shrink down to just two &mdash; for the entire Amazon Appstore and every app development technology related to Fire TV and tablets. My manager asked me to compile a list of all the work for the year so that we could make better decisions about which projects to prioritize, so that we could make a business case for more writers, and so on.

I started copying roadmaps and lists of work from various teams. We serve many different teams in different organizations from Fire TV to Alexa to others. And we engage with them in varying capacities, sometimes acting as authors, other times as editors, other times only as publishers, in different combinations and strengths.

After looking at all the projects scoped for 2020, I realized there would be no way to play the author role for all the work. We would need to rely heavily on product teams to contribute to the documentation. In some cases, we might provide empty wiki pages and ask them to fill in the blanks. Teams might have different contributors for these doc projects &mdash; maybe the doc contributor one one team is a product manager, on another it's a QA person, on another it's an engineer, and so on. The many different roles and teams we interact with at Amazon are endless. Each project includes email threads with many people I've never met and whose roles are opaque to me.

In such a scenario where healthy input from project teams would be essential, how could I possibly tell them all to make a pull request for any changes they wanted to make, or to raise a CR? Engineers would understand, but few others. I saw myself handholding PMs through git workflows and teaching people again and again how to make comments in the code review tool. There was no way this was going to work.

At this point, I decided that the CR process wasn't feasible for my situation, and we should instead drive new content development through Quip, which is similar to Google Docs. Quip is already the wiki-like collaboration platform many use at Amazon, and so I decided to root ourselves in Quip as we work with teams to create the content they need.

The primary reason for developing content in Quip (or similar) is that it's more inclusive for different types of contributors and reviewers. If you try to conduct a review in a Code Review tool, you get the engineers commenting but few others. In a more general tool like Quip or Google Docs, everyone can easily jump in: project managers, field engineers, quality assurance, and even engineers. There's no barrier to entry. This more inclusive perspective and input is essential when writing and reviewing new content. This is how you make prose. It's not necessarily how you make code. In the writing process, you want to include as many readers and reviewers as possible.

Note that the scenarios I'm referring to here are scenarios where you have to write significant amounts of new content that require input and review from other groups. When I'm writing documentation that requires this kind of input, it's much easier and more fluid and flexible to use Quip or Google Docs. This is how I operated at a previous company I worked at &mdash; Badgeville, where we all had Google Docs. I would write content in a new Google doc, everyone would review it, and when finalized I would copy and paste the content into Drupal. It worked beautifully even if the copy/paste between systems was manual.

I'm not a fan of copying and pasting content from one system to another, of course, and ideally it would be great to operate entirely in Markdown and have people commenting in the same system. But if doing so means excluding 75% of the reviewers and contributors, I'll suffer with the manual copy and paste as the price to pay. There are always tradeoffs with authoring tools and approaches.

Since making this decision, I've felt a lot of relief. I think sometimes we try to push writing processes into more technical software engineering processes even when it doesn't make sense. Why do we do this? Perhaps doing so makes us feel aligned with engineering, like one of the gang, and it earns us street cred and respect (which is essential to compensate for the [low-value estimations we often sense from others about docs](/blog/reflecting-seven-years-later-about-layoff-intro/)). But at the end of the day, documentation really isn't like code. You can make many typos and mistakes in your writing, and it will still "compile" and publish. Writing doesn't need to be unit tested or security-hardened. Writing doesn't include *for* loops or parameters that you pass in from variables you define elsewhere. One typo won't usually crash an entire system. You can't automate testing of documentation like you can with code.

I'm sure people could challenge me on every point here and draw elaborate comparisons between writing and coding, but I'm growing tired of that comparison. I'd like to start treating prose like prose. Prose works best when developed on an inclusive collaborative authoring platform, when it's readable in its entirety, in a display similar to the output.

If you try to pick out pieces of what's changed in a file diff display, you can't see it as a whole as it's intended to be consumed. You can't see images and other visuals displayed, and how those visuals give balance to text. It's not easy to visually browse the structure, or to get a sense of how content is broken up across pages and how you flow from page to page. When you're developing new content, your focus should be on the content, not on the technical details of the platform and collaboration.

## Conclusion

As I move forward into more of a prose-like-prose model, I plan to develop more content in Quip and have a lot of back-and-forth with engineering/product teams. I still plan to keep the other docs-like-code aspects &mdash; this includes maintaining and updating content in Jekyll, managing content in Git, and triggering builds through CI/CD on various branches. I just think the initial doc development and review might be better off outside this workflow. I hope that this new process will reduce my workload without putting undue stress on others to develop content.

## Your feedback and input

I'm curious to hear your feedback and learn whether similar processes work for you. I like knowing whether the ideas I'm leaning towards in posts have merit, or if I'm just talking myself into a direction that might be counterproductive in the long run. I want to leverage your wisdom and experience as much as possible, so if you'd like to provide input in the following short survey, please do so. You can view the [ongoing results here](https://www.questionpro.com/t/PG6OEZhu3z).

<script>
EMBED_PARAMS = {};
EMBED_PARAMS.surveyID =7434181;
EMBED_PARAMS.domain ="//www.questionpro.com";
EMBED_PARAMS.src ="//www.questionpro.com/a/TakeSurvey?tt=vw2LeBn%2B3Yw%3D";
EMBED_PARAMS.width ="100%";
EMBED_PARAMS.height = "1200px";
EMBED_PARAMS.border = "hidden";
</script>
<div id="div_7434181"></div>
<script src="//www.questionpro.com/javascript/embedsurvey.js?version=1"></script>
