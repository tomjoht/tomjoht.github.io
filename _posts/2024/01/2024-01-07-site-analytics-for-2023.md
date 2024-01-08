---
title: "Evaluating my 2023 site analytics -- why did my traffic drop?"
permalink: /blog/site-analytics-for-2023
date: 2024-01-07
categories:
- technical-writing
keywords: 
rebrandly: https://idbwrtng.com/site-analytics-for-2023
description: "Once a year, usually at the beginning of January, I look at my site analytics with the latest numbers from Google Analytics and also reflect on trends, changing directions, and other metrics for the year. This weekend I updated my <a href='/analytics'>site's analytics</a> for 2023. The metrics were kind of harsh for my site this year. Page views were down 35%, users down 37%. Page views per session were down 12%. My top 30 pages were almost all to pages in my API documentation course &mdash; almost none of which were new in 2023. Accounting for the shift could be the many changes to Google's search algorithms, the changes in Google Analytics itself, the layoffs and industry slowdowns in tech comm, the expanding influence of AI, or other reasons."
image: analyzingmetrics2024hthumb.jpg
---

* TOC
{:toc}

## What accounts for the drop in traffic?

Given the 35% drop in page views, I want to explore possible reasons.

<img style="max-width: 500px" src="{{site.media}}/analyzingmetrics2024.jpg" alt="Analyzing the reasons for site metrics in 2024" />

**Did I ruin my site's architecture somehow?** I [merged the sites into one](/blog/blog-and-api-doc-site-merged-same-code) on June 9, 2023, but this didn't spark a drop in traffic. I previously had my API course in a separate repo and Jekyll theme than my blog; I merged the blog into the same framework as the API doc site.

**Am I mis-measuring in the new Analytics?** In 2023, Google Analytics switched from Universal Analytics to Google Analytics 4 (GA4) &mdash; a massive change. I was able to see my 2022 page views in the G4 analytics (1.5 million page views) and also my 2023 page views (992k), so even within the same analytics tools, the traffic shows a decline.

**Did Google's algorithm changes account for the traffic drop?** The drop in traffic starts around late July until the end of the year. According to the [Blog Herald](https://www.blogherald.com/news/a-thorough-review-of-2023-google-algorithm-updates/), Google's algorithm underwent multiple changes throughout the year:

* Core Update in March: Rolled out from March 15 to March 28​​.
* Product Review Update in February: From February 21 to March 7​​.
* Review Update in April: Lasted from April 12 to April 25​​.
* Core Update in August: From August 22 to September 7​​.
* Spam Update in October: From October 4 to October 20​​.
* Core Update in October: Between October 5 and October 19​​.
* Review Update in November: Spanned from November 8 to December 7​​.
* Core Update in November: Lasted from November 2 to November 19​​.

I didn't see stark differences that map to these exact timeframes. There's just a general atrophy/dip that starts to happen in July onward. 

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/pageviewsscreenshotanalytics2023.png" alt="Traffic graph on Idratherbewriting.com" />

**What about the impact of AI?** Yes, AI tools have grown increasingly stronger in 2023, but it's hard to know if traffic is being diverted to ChatGPT or other sites. It could be that technical writers are more focused on learning AI, and other sites provide better content and training related to AI. In 2023, I added a new section called [AI tools and API documentation](/learnapidoc/ai.html), but it was difficult to write because the landscape was changing so fast, no one had a handle on the best approaches to use, and it was hard to distill best practices into concrete strategies that people could adopt for different companies, products, and tools. That section didn't become "the Bible" for tech comm AI by any means. In contrast, usually when a beginner is looking to learn about API documentation, people often recommend my site.

**Is the tech comm industry itself shrinking?** There was definitely a slowdown in hiring and layoffs. It could be that with massive layoffs in 2023, the focus shifted away from blogs and more toward upskilling through core learning websites.

**Is my content going stale?** Another factor could be stale content. I need to update the content in my API documentation course. When I was giving API documentation workshops (before the pandemic), I would meticulously comb through the course and make sure it was all updated. Now, perhaps because I'm not giving workshops anymore, I'm much less incentivized to update the content. It's a challenge to try to provide tutorials and getting started guides that don't go out of date in 6 months.

**Is my API documentation too basic?** I think most people who have worked in API docs for several years will quickly outgrow the content and find more relevance in their growing knowledge about the tools they're using, the programming languages, domain, and other details. So perhaps my content is tailored toward beginners, and during the 2017-2020 period, there was a surge in tech writers transitioning to API documentation and learning about it, but now that surge has fizzled.

**Do I have too much content outside of tech comm interests?** I've devoted a lot of time pursuing some non-tech comm-specific topics, with my series on [Journey away from smartphones](/smartphones) and a series on [trends that evolved into system thinking](/trends/trends-to-follow-or-forget-intro.html). It could be that these topics weren't that interesting to readers. Most people come to my blog to learn about technical writing and API documentation, not about focus or deep work.

**Are readers moving to the PDF version of my content?** In [Dec 2021 I started offering a PDF](/blog/pdf-and-ebook-formats-for-api-doc-course) of my API course, and then in [2022 I formalized it](/blog/chapter-pdfs-for-api-doc-course) even more and started charging for it, offering it on the [buymecoffee platform for $20](/learnapidoc/download.html). Since then, 86 people have bought it. This means more people could be reading offline, but it's unlikely to affect traffic.

**Were my inline ads a turnoff?** In 2022, I moved my ads from the sidebar to inline in an attempt to make them more visible. Perhaps this created more of a sense of a spammy, ad-filled site that people found to be a turnoff? Or maybe Google interpreted this content as ad-saturated and so penalized my site in search engine traffic more. Did the ad block intercepting my post content lower my site's sense of authoritative content?

**Is more traffic going to YouTube?** During the past couple of months, I've tried to make videocasts of more posts, publishing them on YouTube. It could be that users land on my post, click the YouTube link, then content on YouYouTubetube and interact less on my site. But theoretically I should be getting more traffic from YouTube presence.

**Are people moving away from blogs?** Blogs have been on the decline for the past decade or so, and no it seems most people launch Substact publications instead. In fact, [The Content Wrangler](https://www.thecontentwrangler.com/) moved from an open WordPress-based site to a sign-in-required Substack site instead. Most of my news comes through email newsletters, often delivered through Substack. RSS is much less common. That said, I deliver my content through an email newsletter too, so whether my site would be categorized as a blog, course, or some other e-publication, I don't think users much care.

## Metrics measure the wrong thing

I should also note that Google Analytics provides *advertising* metrics. They measure the things that are important from an advertising point of view. The metrics don't measure other forms of importance. In *Stand out of our light*, James Williams says we should measure websites based on whether users feel their time was well spent. Additionally, was 2023 time well spent for me? Instead of page views, shouldn't I instead focus on whether writing all this content was worth it? A couple of years ago, I have shifted notably away from topics that I'm less eager to write about, such as API documentation, and more to my series posts and have a much more niche focus and audience. I did wonder if this would have a long-term impact on my site, and maybe I'm just now seeing it. 

I'm not sure I want to commit to always keeping API documentation on my site fresh and current &mdash; a great time commitment. Advertisers are kind of drying up in this space, and thankfully I'm not as cash-strapped now that I've been working for big tech. Then again, with all the layoffs and job instability in 2023, and AI + automation always lurking around the corner, it might be a good idea to have the API documentation site ready in case I want to start doing workshops again.

## 2024 directions

Based on the analytics, I think I'll do the following in 2024:

* Focus more on my API documentation site content. I'll start by updating the top [30 pages on the site](/analytics#top_pages).
* Add in more content based on APIs I'm frequently documenting at work: 
  * Add a new section on proto-based APIs, including RPC. 
  * Expand more on the Java API section.
* Move the section on AI into a different collection and publication.
* Work on a series explaining how to apply principles from *Zen and the Art of Motorcycle Maintenance* into the practice of technical writing.
* Continue to expand the content on AI, focusing on concrete activities, use cases, and other tech-writing-related scenarios.

{% include ads.html %}

