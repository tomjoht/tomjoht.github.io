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
description: "I updated my <a href='/analytics'>site analytics</a> page for the 2022 year. I usually do this at the turn of the year, particularly when renewing ads on the site, but this year I got lazy and postponed it until last weekend. In this post, I talk about a variety of site-related challenges and issues, from content focus to monetization and more."
---

## General updates

In the analytics update I made, the tables are more readable. I also added percentage changes from year to year. (Thanks Bard + ChatGPT for helping me with formatting and calculations. May I never have to manually code an HTML table again!)

I noticed that Google Analytics no longer provides info about Demographics (gender, age) or Interests unless I add a privacy disclosure statement on my site that users would have to agree to. I dislike those popups so do not plan to add anything. The Demographics + Interests info isn't helpful anyway.

My overall site traffic dipped (from 1,865,635 to 1,535,622) during 2022. This was partly due to an algorithm change Google made mid-year. I believe the new algorithm emphasizes expertise, authoritativeness, and trustworthiness ("EAT"). Many websites experienced a drop in traffic last year. I don't attribute this to a loss of interest in site content.

However, this past year I did chase a couple of themes outside my API doc course content: [Journey away from smartphones](/blog/awakening-moment-to-how-smartphones-fragment-our-attention) and [Trends to follow or forget](/trends/trends-to-follow-or-forget-intro.html). I knew that pursuing these themes would detract from edits to my API course, and the content there is going stale. This year I'll probably pause the year-long theme exploration and return to updating my API course.

There are two reasons to refocus on API documentation content. First, I'm excited about the AI explosion in the tech sector right now. For sure, I'm drinking the Kool-Aid. Second, in the event that there's major market disruption, I want to keep my API doc and tools skills fresh and presentable. Who knows what will happen in the next 12 months. Hopefully, the tables won't be completely overturned, but who knows? Now seems like a good time to focus on API docs.

## Traffic sources

I'm still perplexed to see that two-thirds of my traffic goes to my [API docs site](/learnapidoc). The API doc site has about 100 pages, and my blog has nearly 3,000 pages. This goes to show that evergreen course content is more valuable than an ephemeral blog. It's my hunch that Google search results don't surface blog posts more than 5 years old. A couple of years ago, I started stripping the date from my post URLs, thinking it would help with SEO (because perhaps Google wouldn't interpret the age of the posts?) It didn't seem to matter. I always include the post date in the page content anyway.

Another detail from my metrics: at least 48% of visitors who browse the site on a mobile device do so from an iPhone. The other 52% come from a myriad of brands, probably mostly Android-based. I've been an Android user for 5+ years (ever since I started working at Amazon and wanted to be closer to Android), so it’s sad to see Google Pixel traffic at 2%. But as long as I’m working closely with Android, I'll stay on Android.

Not many other analytics have changed. The majority of users are in the US, use the Chrome browser on a desktop computer, visit one page that they find through organic search, stay on the page for about 2.5 minutes, then leave.

## Conversions

I struggle to convert visits to newsletter subscriptions. I've thought about converting the [PDF and eBook formats of my API course](/learnapidoc/docapis_formats.html) into gated assets requiring a newsletter subscription, but I haven’t gotten around to doing that. By the way, to see which formats are most popular, just add "+" after any of my shortened idbwrtng.com links:

* PDF, [https://idbwrtng.com/learnapidoc-pdf+](https://idbwrtng.com/learnapidoc-pdf+): 4,161 clicks
* Mobi, [https://idbwrtng.com/learnapidoc-mobi+](https://idbwrtng.com/learnapidoc-mobi+): 436 clicks
* ePUB, [https://idbwrtng.com/learnapidoc-epub+](https://idbwrtng.com/learnapidoc-epub+): 617 clicks

It's pretty clear, with 10x the clicks, that people prefer PDF over eBook formats. I should consider selling the PDF. Right now, it's 900 pages, which is crazy. It would be better for me to break this up into a PDF for every section. I'll add this to my to-do list. Lots of people are excited to find my course, but almost no one can make it through. :)

As for other revenue sources from the site, many people donate through the Buy Me a Coffee button. Since putting this button on my site a couple of years ago, people have donated $3,035 dollars. I used to hit reply to say thank you after each donation, but then I stopped due to thank-you fatigue. Also, I've noticed fewer donations lately. I don't quite understand why, if so many of my visitors are first-timers coming from organic search results. This makes me question whether the majority of my users are really the nameless, unknowable masses that my site analytics always suggest.

I personally think of my primary audience as technical writers, the same people I've met at conferences or whom I interact with on Write the Docs Slack or at work. But if 81% of visitors find me through organic search results and visit just one page (the bounce rate is 83%), who are all these people? I was briefly famous during 2022 on [Hacker News for a smartphone post](https://news.ycombinator.com/item?id=31874846), and had something like 23k page visits that day. Many tech people find my site, but they don't convert into regular readers.

I write for my regular readers. My regular readers, I like to think, read my blog, not just my API doc site. My poor blog struggles to compete with the API doc information, even though most pages are 2-3 years old on the site. Blog posts older than a few years seem to be archived in Google's search results.

I also like to think that social network referrals account for substantial traffic. It's a rush to see a post get a lot of comments and likes on Linkedin. But analytics tells me that social referrals account for very little traffic&mdash;just 48,018 sessions from the 1,068,404 sessions, or 4.5% of traffic. The comments on Linkedin do provide valuable feedback to me about the content, though.

Most analytics are focused on advertising metrics (time on page, page views, clicks), so we don't see many analytics about whether users found the content worth their time. As James Williams says in [*Stand Out of Our Light*](https://www.amazon.com/Stand-out-our-Light-Resistance/dp/110845299X), we should look to measure whether users find our content "time well spent." That’s a nice thought but hard to measure. For example, out of those 1,068,404 sessions, how many users would say their 2.5 minutes was time well spent? If it was time well spent, wouldn't more readers subscribe to the newsletter?

## Inline ads

I do have [ads on my site](/advertising/), and advertisers usually want to know visibility and clicks. This year I moved my sidebar ads inline (directly within the post). I thought some readers would object to seeing inline ads, but they didn't. On average, over one year's time, an inline ad gets clicked 434 times. I sold these ads for $900, so that's $2.07 per click. Ads in the sidebar received on average 413 clicks. I sold the sidebar ads at $800 per ad, so that's $1.93 per click. Not a huge difference in visibility, actually.

{% include ads.html %}

Moving ads inline didn't really do much. Plus, I had to go through and manually add an include tag to every single post on my blog and page on my API doc site (for the random location). That took quite a while, and I have to always remember to include the tag on future posts. (At some point, I'll figure out the JS to append the tag automatically in a good spot.)

Is $2 a good CPC (cost per click) rate for my content and the industry? You’re getting a concentrated focus from technical writers here. Whether this CPC is worth it depends on the ROI and conversion rate from the clicks. This is also hard to track unless I can tie those conversions to a promo keyword. But $2 is actually somewhat low for long-tail keyword CPC rates. (See [How Much Does Google Ads Cost in 2022?](https://www.wordstream.com/blog/ws/2015/05/21/how-much-does-adwords-cost)) I should really do some Google Adword campaigns for the same content to see what the CPC actually is, and then price my ads in a similar range.

## Getting started tutorials

Mostly, I’ve noticed that people have ad banner blindness. What performs much better are the tutorials I add to the site. The [Stoplight tutorial](/learnapidoc/pubapis_openapis_quickstart_stoplight.html) had 34,490 page views during 2022. And the [Redocly tutorial](/learnapidoc/pubapis_redocly.html) received 21,048 page views. That's a heck of a lot more traffic than the banner ads I've added to the site! Imagine 34k clicks at a CPC of $2/click. That should be worth $68k!

I’d offer to write more getting-started tutorials, but the problem is that creating a getting-started tutorial for someone's product requires a lot of bandwidth from me. First, I have to ramp up on their product&mdash;time that companies rarely recognize. To write a good getting started tutorial, I’ll probably need to play with your product for several days just to get a superficial sense of it, let alone to write a decent tutorial for using it.

Interestingly, last year the Stoplight doc team asked if they could port my tutorial over to their docs (with [proper attribution and a link back to my site](https://stoplight.io/getting-started-with-stoplight), which I allowed). In return, I said they needed to keep it updated with future releases and share those changes with me.

Documentation content, especially how-to material, is valuable. Perhaps I should ask that companies write their own how-to tutorials that I then add to my course. I’m confident that I could easily shape these tutorials into attractive content. At one time I asked [Readme](https://readme.com/) if they wanted to contribute a tutorial, but they never got around to writing it, even though I created a template for them. I think their business took off just fine without adding it to my course.


## Newsletters


Recently, I've started to send out more newsletter content, and I've included ads in those newsletters. I became fond of the approach in the [TLDR newsletters](https://tldr.tech/). My plan is to send out 2 newsletters per week that include a Sponsors paragraph. In my initial experiments, I've mostly included blurbs for the Jump courses at [Become a Technical Writer](https://becometechnicalwriter.com/) and for [DevDocs](https://devdocs.work/). On average, those blurbs get 89 clicks per newsletter!

By the way, I'm actually not sure about the actual number of clicks. [Rebrandly's](https://rebrandly.com) click numbers are conservative. [Mailjet](https://mailjet.com) (my newsletter platform) estimates about 4x the number of clicks, so I need to investigate why there's a discrepancy.

Much of the engagement, I’ve noticed, depends on the blurb. A marketing-heavy blurb doesn't perform nearly as well as something written with more authenticity. This is why, I think, Leo Laporte reads his own ad copy in [This Week in Tech](https://twit.tv/). I'm guessing engagement is much higher this way, and he knows how to speak to his audience. I should consider writing blurbs for companies in my newsletter.

## Blogging purpose

Of course, my blog isn't about money. It didn’t start that way, and it’s never been the reason. In fact, a blog is probably a poor financial investment, and in writing this I've wondered (yet again), *is blogging worth it?*

I do, however, get a lot of value from writing, so regardless of the content, I always try to keep this in mind for new posts: what am I getting out of this? Do more of that. The two series posts I wrote last year emphasize that more personal move. (I'm still editing those into books, by the way. It just turned out to be more time-consuming than I realized.)

## Conclusion

In this post, I've been transparent and open about my blog. Thanks for reading! If you’d like to advertise on my site, see my [Advertising](/advertising) page. If you’re a reader who hasn’t yet subscribed to my newsletter, sign up through the form below. Thanks again for all your support!