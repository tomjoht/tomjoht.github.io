---
title: "Site analytics for 2021 -- a few observations and reflections"
permalink: /blog/2021-site-analytics-reflections
categories:
- technical-writing
keywords: analytics, metrics, trends
rebrandly: https://idbwrtng.com/2021analytics
description: "I updated my site <a href='/analytics/'>analytics page</a> for 2021. As far as noteworthy metrics, not much that has changed, but there are a few small trends worth reflecting on."
---

## Overall traffic trends during the year

First, unfortunately traffic waned a bit for the last half of the year. I attribute this to my less frequent posting and online activity during the second half of the year, as well as general online reader fatigue from the pandemic.

<figure><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/analytics2021pageviews.png" alt="Site traffic graph" /> <figcaption>I'd Rather Be Writing received 1,865,635 page views during 2021. This works out to an average of 5,111 page views a day.</figcaption></figure>

Even so, there were more sessions this year than the previous two: 1,207,264 sessions (2019) -> 1,195,729 sessions (2020) -> 1,266,999 sessions (2021).

## Traffic sources

Traffic to the API doc site has remained strong, accounting for 76% of traffic on idratherbewriting.com.

YouTube has become a growing contributor to traffic origination. YouTube's percentage of  traffic from social has grown from 8% (2019) -> 13 % (2020) -> 19% (2021).

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/youtubereferral_origination.png" alt="YouTube origination" />

The percentage of traffic from all social media sources only accounts for 11,346 sessions from 1,266,999 total sessions (0.9% of overall traffic), so this is just one drop in a bucket.

<img style="max-width:450px" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/value_of_social_analytics2021.png" alt="Is traffic from social all that important?" />

Organic search results have always dominated traffic origination, accounting for 90% of overall traffic. Yet social media seems to play into our psychology more prominently, giving us the sense of having content go viral. In reality, my most read page is this page from my API doc course: [Step 3: Parameters (API reference tutorial)](/learnapidoc/docapis_doc_parameters.html).

Analyzing metrics makes me wonder how worthwhile it is to spend time posting on social media channels. It's probably more strategic to look at content driving organic traffic, investing in SEO.

## Confusing "Users" versus "New Users" metrics

There's one metric that doesn't make any sense to me: Users versus New Users. Apparently, over the course of an entire year, only 450 users returned. Everyone else was a new user:

<img style="max-width: 400px" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/users_vs_new_users2021.png" alt="Users versus new users" />

Google's [explanation about how users are counted](https://support.google.com/analytics/answer/2992042?hl=en#zippy=%2Cprevious-calculation-method) doesn't clarify this number much, and this [alternative explanation](https://www.hotjar.com/google-analytics/glossary/users/) is better, but I still can't believe it.

Unless readers are frequently clearing their cookies, using plugins to prevent any sort of tracking, surfing in incognito mode, reading at midnight (when sessions expire), or constantly switching browsers, I just can't understand this metric. Only 450 people made subsequent visits to my site in 2021?

If so, Mark Baker's mantra "Every page is page one" might be spun as "Every user is a first-time visitor."

Look at this data and tell me how it makes sense:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/usersgraphs2021confusing2.png" alt="Confusing user data" />

If Users and New Users are about the same, then how can the average Number of Sessions per User be 1.29? Wouldn't those additional .29 sessions be counted as "returning users/visitors"?

According to Google, "A session is a group of user interactions with your website that take place within a given time frame. For example a single session can contain multiple page views" ([How a web session is defined in Universal Analytics](https://support.google.com/analytics/answer/2731565?hl=en#zippy=%2Cin-this-article)).

The session timeout period is 30 minutes of inactivity, passing of midnight, or somehow clearing the tracking cookie. Google then explains this common scenario of a user leaving a tab open and inactive:

> In this scenario, the first session that was opened when Bob arrived on the site ends 30 minutes into his lunch break. When he returns from lunch and continues browsing the website, then Analytics sets a new 30-minute expiry, and a new session begins.

If there are 982,763 users, and they have on average 1.29 sessions, then why wouldn't these users be counted as returning users on their additional .29 sessions? For fun, Google switches terms from "users" to "visitors" with the pie chart graphic and says there are 88% new visitors and 12% returning visitors, even though these numbers clearly contradict the users and new users metrics. At this point, I sort of shrug my shoulders and wonder if pursuing the answer, no doubt convoluted, is worth it.

## Times of day and location

Here's another interesting metric about traffic correlated with time of day and traffic by country:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/2021analyticscountries_times2.png" alt="Traffic correlated with time of day and traffic by country" />

Most people tend to read content in the morning, with some reading at night. I'm in the Pacific time zone, so it might make more sense for me to send my newsletter right before bed rather than first thing in the morning.

Also, India! Wow, I nearly have as many readers from India as from the United States. What a growing juggernaut of a tech country. Perhaps I should get a better understanding of the tech comm scene in India.

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
