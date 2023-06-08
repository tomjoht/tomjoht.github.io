---
title: "Site analytics for 2021 -- a few observations and reflections"
permalink: /blog/2021-site-analytics-reflections
categories:
- technical-writing
keywords: analytics, metrics, trends
rebrandly: https://idbwrtng.com/2021analytics
description: "I updated my site <a href='/analytics/'>analytics page</a> for 2021. As far as noteworthy metrics, not much that has changed, but there are a few small trends worth reflecting on."
---

* TOC
{:toc}

## Overall traffic trends during the year

First, unfortunately traffic waned a bit for the last half of the year. I attribute this to my less frequent posting and online activity during the second half of the year, as well as general online reader fatigue from the pandemic.

<figure><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/analytics2021pageviews.png" alt="Site traffic graph" /> <figcaption>I'd Rather Be Writing received 1,865,635 page views during 2021. This works out to an average of 5,111 page views a day.</figcaption></figure>

Even so, there were more sessions this year than the previous two years: 1,207,264 sessions (2019) -> 1,195,729 sessions (2020) -> 1,266,999 sessions (2021).

## Traffic sources

Traffic to the API doc site has remained strong, accounting for 76% of site traffic.

In social, YouTube has become a growing contributor to traffic origination. YouTube's percentage of social traffic has grown from 8% (2019) -> 13 % (2020) -> 19% (2021).

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/youtubereferral_origination.png" alt="YouTube origination" />

However, the percentage of traffic from all social media sources only accounts for 11,346 sessions from 1,266,999 total sessions (less than 1% of overall traffic), so this is just one drop in a bucket.

<img style="max-width:450px" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/value_of_social_analytics2021.png" alt="Is traffic from social all that important?" />

Organic search results have always dominated traffic origination, accounting for 90% of overall traffic. Yet social media seems to play into our psychology more prominently, giving us the sense of having content go viral. In reality, my most read page is this page from my API doc course: [Step 3: Parameters (API reference tutorial)](/learnapidoc/docapis_doc_parameters.html). This page did not go viral on Twitter.

Analyzing metrics makes me wonder how worthwhile it is to spend time posting on social media channels. It's probably more strategic to look at content driving organic traffic, then investing in SEO.

## Confusing "Users" versus "New Users" metrics

There's one metric that doesn't make much sense to me: Users versus New Users. Apparently, over the course of an entire year, only 450 users returned. Everyone else was a new user:

<img style="max-width: 400px" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/users_vs_new_users2021.png" alt="Users versus new users" />

Unless readers are frequently clearing their cookies, using plugins to prevent any sort of tracking, surfing in incognito mode, reading at midnight (when sessions expire), or constantly switching browsers, I can't understand this metric. Only 450 people made subsequent visits to my site in 2021? If so, Mark Baker's mantra "Every page is page one" might better be rendered as "Every user is a first-time visitor."

The data is further complicated by introducing "New Visitor" and "Returning Visitor" with conflicting numbers.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/usersgraphs2021confusing2.png" alt="Confusing user data" />

If Users and New Users are about the same, how can the average Number of Sessions per User be 1.29? Wouldn't those additional .29 sessions be counted as "returning users/visitors"? If so, assuming 982,313 total users, that would mean about 285,000 returning users.

At this point, I sort of shrug my shoulders and wonder if pursuing the answer, no doubt convoluted, is worth it. I'm sure the real answer is complex.

{% include ads.html %}

## Times of day and location

Here's another interesting metric about traffic correlated with time of day and traffic by country:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/2021analyticscountries_times3.png" alt="Traffic correlated with time of day and traffic by country" />

Most people tend to read content in the morning, with some reading at night. I'm in the Pacific time zone, so it might make more sense for me to send my newsletter right before bed rather than first thing in the morning.

Also, India! Wow, I nearly have as many readers from India as from the United States. What a growing juggernaut of a tech country. Perhaps I should get a better understanding of the tech comm scene in India. I did once present a [keynote in Bangalore](/2015/03/18/recording-of-innovation-in-technical-communication-keynote-at-tcworld-india-2015/) as part of tcworld 2015, and I really enjoyed the experience. (I posted my [thoughts here](/2015/03/22/some-thoughts-on-attending-tcworld-india-2015/) after the conference.)

Finally (and this is outside of Google Analytics), in July 2020 I added a [Buy me a coffee](https://www.buymeacoffee.com/learnapidoc) button on my site. From July 2020 through Dec 31, 2021, there were 139 supporters who donated a collective total of $1,920:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/coffeestats2021.png" alt="Coffee stats in 2021" />

## Overall takeaways

Here are my overall takeaways:

* I need to post more this year and be more active online. I should focus on shorter, more frequent content.
* [API docs](/learnapidoc) are still driving most of the traffic on my site. However, I'm not so sure that simply posting content that isn't API-doc specific (just related to dev docs) in /learnapidoc actually makes it more visible. Most people don't usually read more than 1.5 pages per session.
* Investing in SEO makes the most sense for increasing traffic.
* Sharing content early in the morning has the best engagement.
* YouTube is a growing source of traffic on social.
* For most traffic by country, India is only slightly behind the US.
