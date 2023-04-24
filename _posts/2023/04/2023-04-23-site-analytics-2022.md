---
layout: post
title: "Meandering thoughts on my 2022 site analytics"
permalink: /blog/site-analytics-2022
date: 2023-04-23
categories:
- technical-writing
- AI
keywords: 
rebrandly: https://idbwrtng.com/site-analytics-2022
description: ""
published: false
---

I updated my [Site analytics](/analytics) page for the 2022 year. I usually do this at the turn of the year, particularly when I'm renewing ads on the site, but this year I got lazy and postponed it. This year I made the tables more readable and also added percentage changes. (Thanks Bard + ChatGPT for helping me with formatting and calculations. May I never have to manually code an HTML table again!)

I noticed that Google Analytics no longer provides info about Demographics (gender, age) or Interests unless I add a privacy disclosure statement on my site that users would have to agree to. I dislike those popups so do not plan to add anything. The Demographics + Interests info isn't helpful anyway.

My overall site traffic dipped (from 1,865,635 to 1,535,622). This was partly due to an algorithm change Google made mid-year. I believe the new algorithm emphasizes expertise, authoritativeness, and trustworthiness ("EAT"). A lot of websites had dips in traffic. I don't necessarily attribute this to a loss of interest in site content.

However, this past year I did chase a couple of themes outside my API doc course content: [Journey away from smartphones](/blog/awakening-moment-to-how-smartphones-fragment-our-attention/) and [Trends to follow or forget](/trends/trends-to-follow-or-forget-intro.html). I knew that pursuing these themes would detract from edits to my API course, and the content there is going a bit stale. This year I'm probably going to pause the year-long theme exploration and return to updating my API course. 

There are two reasons for this. First, I'm continually excited by the AI explosion in the tech sector right now. For sure, I'm drinking the koolaid. Second, in the event that there's major market disruption, I want to keep my API doc and tools skills fresh. Who knows what will happen over the next 12 months. Hopefully, the tables won't be completely overturned, but who knows. Now seems a good time to double-down with API doc focus. Plus, there's so much that seems applicable now that wasn't available last year.

I'm still perplexed to see that two-thirds of my traffic goes to my [API docs site](/learnapidoc). The API doc site has about 100 pages, and my blog has nearly 3,000 pages. This goes to show that if you provide evergreen course content, it's more valuable than an ephemeral blog. It's my hunch that Google search results don't surface blog posts that are more than 5 years old. A couple of years ago I started stripping the date from my post URLs, thinking that it would help with SEO (because perhaps Google wouldn't interpret the age of the posts?). However, it didn't seem to make a difference. (I always include the post date in the page content below the title.)

One other detail from my metrics: at least half of visitors who browse the site on a mobile device do so from an iPhone. I've been an Android user for 5+ years (ever since I started working at Amazon and wanted to be closer to Android). Perhaps I should switch to iPhone so that I can stay better in tune with what users see, but while working closely with Android, I'll stay on Android.

Not many other analytics changed. The majority of users are in the US, use Chrome on a desktop, visit one page that they find through organic search, stay on the page about 2.5 minutes, then leave. 

I struggle to convert those visits to newsletter subscriptions. I've thought about converting the [PDF and eBook formats](https://idratherbewriting.com/learnapidoc/docapis_formats.html) of my API course into gated assets requiring newsletter subscription, but I've never done this before and am not sure if I want to. I don't want to barter the newsletter subscriptions. BTW, to see which formats are most popular, just add "+" after any of my shortened idbwrtng.com links:

* [https://idbwrtng.com/learnapidoc-pdf+]: 4,161 clicks
* [https://idbwrtng.com/learnapidoc-mobi+]: 436 clicks
* [https://idbwrtng.com/learnapidoc-epub+]: 617 clicks

It's pretty clear that people prefer PDF over eBook formats. I should consider selling the PDF. Right now, it's 900 pages, which is crazy. It would be better for me to break this up into a PDF for every section or something. 

A lot of people actually donate through the Buy Me a Coffee button. Since putting it on my site a couple of years ago, people have donated a total of $3,035 dollars. I used to hit reply to say thank you after every donation, but then I kind of stopped. Not sure why. Also, I've noticed that fewer and fewer people donate. I don't quite understand why if so many of my visitors are first-timers coming from organic search results.

I do have a weird sense of my audience. I think of my primary audience as technical writers, often people I've met at conferences or whom I interact with on Write the Docs Slack. But analytics tells me that 80% of visitors find me through organic search results and that they just visit one page (the bounce rate is 83%). Who are all these people? I was briefly famous during 2022 on Hacker News and had something like 20k page visits that week. I'm guessing a lot of tech people find my site, but they don't convert into regular readers.

My regular readers, I like to think, read my blog. The poor blog struggles to complete with the API doc information, even though most pages are 2-3 years old on the site. Blog posts that are more than 2 years old are practically archived in Google's search results.

I also like to think that social network referrals account for a lot of traffic. It's kind of a rush to see a post get a lot of comments and likes on Linkedin, for example. But analytics tells me that social referrals account for very little traffic (x%).

Most analytics are focused on advertising analytics (time on page, page views, clicks), so we don't see many analytics about whether users found the content worth their time. As James Williams says, we should look to measure whether users find our content "time well spent."

Even so, I do have ads on my site, and advertisers want to know visibility and clicks. This year I moved my sidebar ads inline. On average, over one year's time, an ad gets clicked 434 times there. I sold these ads for $900, so that's $2.07 per click. 

Ads in the sidebar received on average 413 clicks. I sold those ads at $800 per ad, so that's $1.93 per click. Not a huge difference in visibility, actually. Moving ads inline didn't really do much. Plus, I had to go through and manually add an include ads tag to every single post on my blog and page on my API doc site. That took quite a while, and I have to remember to include the tag on future posts. (At some point, I'll figure out the JS to append it the tag automatically in a good spot.)

What performs much better are the tutorials I add to the site. The [Stoplight tutorial](https://idratherbewriting.com/learnapidoc/pubapis_openapis_quickstart_stoplight.html) had 34,490 page views during 2022. And the [Redocly tutorial](https://idratherbewriting.com/learnapidoc/pubapis_redocly.html) received 21,048 page views. That's a heck of a lot more traffic than the ad banners I've added to the site! The problem is that writing a getting started tutorial for someone's product sucks a lot of bandwidth from me. Interestingly, the Stoplight doc team asked if they could port my tutorial over to their docs (with proper attribution, which I allowed). Documentation content, especially how-to material, is that valuable. Perhaps I should ask that companies write their own how-to tutorials that I then add to my course. At one time I asked Readme if they wanted to do that, but they never got around to contributing the tutorial. I think their business was taking off just fine without it.

Recently I've started to send out more newsletter content, and I've been including ads in those newsletters. I became fond of the approach in the TLDR; newsletters. My plan is to send out maybe 2 newsletters per week that include a Sponsors section in there. In my initial experiments, I've mostly included blurbs for the Jump courses at [Become a Technical Writer](https://becometechnicalwriter.com/) and for [DevDocs](https://devdocs.work/). On average, those blurbs get 89 clicks per newsletter.

BTW, I'm actually not sure on the actual clicks. Rebrandly's click numbers are much more conservative. Mailjet (my newsletter) estimates about 4x the engagement, so I need to investigate why there's a discrepancy.

Much of the engagement depends on the blurb. A marketing-heavy blurb doesn't perform nearly as well as other advertising. This is why, I think, Leo Laporte must read his own ad copy in This Week in Tech. I'm guessing that engagement is much higher, and he knows how to speak to his audience. I should consider maybe writing blurbs for companies in my newsletter.

