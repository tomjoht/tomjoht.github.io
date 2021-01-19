---
title: "Site analytics for 2020 -- trends, reflections, and thoughts"
permalink: /blog/site-analytics-reflections/
categories:
- writing
keywords:
rebrandly: https://idratherbewriting.site/2020siteanalytics
description: "At the beginning of each year, I update my <a href='/analytics/'>site analytics information</a> (pulled from Google Analytics) and analyze traffic trends, user data, and any other information for my site. These analytics sometimes influence what I focus on for the upcoming year. This year, not much changed in terms of site analytics (which is a good thing). I also have a few simple thoughts on the year ahead."
---

## What's different this year in terms of site analytics?

Not much changed in 2020 in terms of [my site analytics](/analytics/). Even with the pandemic, polarizing political scene, climate upheaval, and other changes going on in the world, my metrics more or less stayed the same. This is pretty amazing and shows the stability of the tech industry even in turbulent times.

In my [Analytics breakdown](/analytics/#analytics-breakdown) section, I included a three-year comparison of data, from 2018 -> 2019 -> 2020, to better observe trends in the data. Site traffic was slightly down, with 1,814,770 page views instead of 1,974,524. I wrote 85 posts in 2020, compared with 74 posts in 2019. However, new posts don't necessarily reflect all the changes I'm making on the site. I felt like I spent more time editing, rewriting, and making other updates to the [API doc site](/analytics/) in 2019 than 2020.

To confirm that I made more changes to my API doc material in 2019, I ran a couple of git log queries (using a query from this [stack overflow post](https://gist.github.com/Xeoncross/4020489) with some [date modifications](https://stackoverflow.com/questions/45405844/git-log-since-date-options)):

2020:

```
git log --shortstat --author "tomjoht" --since="2020-01-01" --until="2020-12-31" | grep "files changed" | awk '{files+=$1; inserted+=$4; deleted+=$6} END {print "files changed", files, "lines inserted:", inserted, "lines deleted:", deleted}'
```

2019:

```
git log --shortstat --author "tomjoht" --since="2019-01-01" --until="2019-12-31" | grep "files changed" | awk '{files+=$1; inserted+=$4; deleted+=$6} END {print "files changed", files, "lines inserted:", inserted, "lines deleted:", deleted}'
```

The results:

<table>
<thead>
<tr>
  <th>Activity</th>
  <th>2020</th>
  <th>2019</th>
</tr>
</thead>
<tbody>
<tr>
  <td>files changed</td>
  <td>4,898 </td>
  <td>11,921 </td>
</tr>
<tr>
  <td>lines inserted</td>
  <td>18,901</td>
  <td>74,432 </td>
</tr>
<tr>
  <td>lines deleted</td>
  <td>12,313</td>
  <td>59,018</td>
</tr>
</tbody>
</table>


Suspicions confirmed! I did a lot more work on my API doc site in 2019, probably because I was giving regular workshops and had to make sure the content was up to date. Full-day workshops were certainly a forcing function to keep the site more up to date.

## API doc site influence on metrics

In 2019, traffic to my [API doc site](/learnapidoc/) accounted for 72% of my overall site traffic. In 2020, this number climbed to 75%. I'm glad to see that the API doc traffic wasn't a temporary anomaly.

In 2019, my most popular site was this [Swagger tutorial](/learnapidoc/pubapis_swagger.html). Now it's a page about [Parameters](/learnapidoc/docapis_doc_parameters.html). Overall, the most popular pages in the API doc site involve topics for documenting REST APIs and using related tools. I listed out the [top 10 pages here](/analytics/#top-ten).

In 2020, I added an lengthy section on [documentation processes](/learnapidoc/docapis_managing_doc_processes_and_developer_portals.html). These pages haven't been as popular as the pages about [reference docs](learnapidoc/docendpoints.html) and related tools, but this is expected. Processes are more abstract and high-level, with a lot of differences from company to company about whether they even apply.

## Any observations about trends?

In looking at my site analytics, here are some small observations (comparing 2018 -> 2019 -> 2020):

* The non-US audience seems to be growing a little (US: 35% -> 32% -> 29%)
* Tablets are on their way out (1.7% -> 1.1% -> 0.6%)
* People are spending slightly less time per page (1.44 m -> 1.41 m -> 1.25 m)
* Organic search traffic continues to be the main entry point to the site (72% -> 85% -> 89%)

Nothing major here. Then again, metrics fluctuate a bit, so it's hard to identify what's a trend versus what's just normal variation. The only notable pattern during the past severals years that made me rethink my content was the increased traffic from the API doc content. If you look at traffic from 2014 through 2020, you can see the major increase in traffic due to this shift:

<figure><a href="/analytics/"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/historicalgrowthblog2006-2020.png" alt="Traffic in 2014 vs 2020" /></a><figcaption>Traffic growth from 2006 through 2020</figcaption></figure>

When I first noticed this trend, I [wondered whether whether more engineers were suddenly writing docs](https://idratherbewriting.com/2019/01/14/site-analytics-from-2018-59-percent-traffic-going-to-api-doc-site). But over the past few years, I've observed a continual interest from tech writers getting into API documentation. This continued interest in API documentation reinforces the good career direction and decisions I made when I moved to California from Utah back in 2013 and got into API documentation. Since then, I've seen a growing split in the tech comm field between two camps: API doc writers and UX writers.

## Remembering origins of the API doc site

I tried to remember when I actually started the API doc site. Sometime around late 2014 / early 2015, I started presenting on API documentation topics, and eventually was asked to give a more in-depth workshop on API documentation to a local staffing company. To prepare for the workshops, I created the [API course](/learnapidoc/) first as a series of notes, but then as I gave more [workshops](/learnapidoc/workshop.html), I refined the content each time. This all led to being asked to give more API doc presentations and more workshops on the topic.

All of this activity builds on itself. That's the nature of online interactions &mdash; the more you focus on one area, the more you get pulled in that direction by others. Eventually, when I saw the large boost in traffic from the API doc site, I started focusing more energy and time there, which increased the number of invites for API doc presentations and workshops and also qualified me for more API-focused jobs. This in turn also increased the traffic to the API doc site.

When 2019 neared its close, I planned to ramp up the number of full-day API documentation workshops I was giving to maybe 5-6 per year. But then the pandemic hit, and I wasn't too motivated to convert the course to a live online offering (Zoom fatigue with endless online meetings were already wearing on me). After the pandemic ends, I might return to giving full-day workshops. I enjoy interacting with others in classroom-like settings.

## Other areas of focus?

Besides workshops, I had other ideas for the API site as well. At first, I planned to create an ebook for the API doc material, publish it, and then move on to other topics, like [Simplifying Complexity](/simplifying-complexity/). However, seeing so much interest in API documentation, and so little interest elsewhere, it's hard not to devote more energy in the direction of API documentation. Literally 3 of 4 people coming to my site are reading the API documentation material (this still boggles my mind).

Also, I've realized that the content basically goes out of date on a yearly basis and I have to keep updating it. These updates are hard to find time to make, especially if my head isn't focused in the subject area.

## Site design

Technically, [idratherbewriting.com](/) (aka, "the blog") and [idratherbewriting.com/learnapidoc](/learnapidoc/) (aka, the "API doc site") are two different Jekyll sites (built with [GitHub Pages](https://pages.github.com/)). The former is generated from the [tomjoht.io repo](https://github.com/tomjoht/tomjoht.github.io) while the latter is generated from my [learnapidoc repo](/https://github.com/tomjoht/learnapidoc).

Even though they're separate repos, Google's search doesn't seem to care or notice (it treats it as one site in analytics analytics anyway), and the two sites are somewhat seamless. Even so, the theme code bases are entirely separate, as are the Algolia search indexes. At one time my [Simplifying Complexity](/simplifying-complexity/) series was its own Jekyll site too, but I grew tired of maintaining three sites and so folded it into the blog. I don't think readers noticed. Github's repo architecture is pretty neat that way. If I were using a Jekyll theme stored in a Ruby gem, I could easily segment my content into many small repos without duplicating theme files. But the themes have too many differences right now to use the same source.

In 2020, I did migrate all my images and audio files [from AWS S3 to Wasabi](/blog/inexpensive-media-hosting-and-cli-uploading-with-wasabi). So far, this has turned out to be a good decision economically, as it costs only $6/month rather than $30+/month. I also added a [Buy me a coffee button](https://www.buymeacoffee.com/) on the site. Surprisingly, lots of people buy me coffee ($640 from 48 supporters). More than money, though, when someone buys me coffee, it reaffirms the value of my site. This motivates me to keep writing. It also allows people to give back and provide support.

## Directions for 2021

Based on the analytics for 2020, what directions should I take for 2021? I'm not sure. I do want to keep adding to and refining the API doc course. I'm thinking of expanding the reference section to go beyond REST APIs. The sad truth is that I haven't had a REST API project to document for a long time now. Amazon was mostly focused on Android APIs (because Amazon's Fire OS is a clone of Android OS). At Google, Android is also a dominant technology, especially with so many Android operating systems external to the phone (e.g., cars, wearables, and more). There are many different types of APIs other than REST (e.g., GraphQL, gRPC) that are growing in popularity.

I'm toying with the idea of maybe adding a section related to Android and iOS SDKs. It's pretty common for companies to provide Android and iOS SDKs for their content so they can run their API or service on mobile platforms. If you think information about developing documentation related to Android or iOS would be useful and relevant, let me know.

## General directions and hopes for 2021

In general, I hope for life to be a bit more stable and return to normal in 2021. First, this means no more moving. In 2020, I moved *two times*. The first move was across town in Santa Clara to a larger house (because we needed the space due to the pandemic). Moving takes a lot of time &mdash; about a month preparing, cleaning, and packing, and then another month settling in to the new place. Multiply that by two &mdash; except even more because for our second move, we relocated to Seattle. This means the kids changed schools and there was even more disruption. We want to remain in our current house in Seattle until the end, basically. By end, I mean we want to be here at least until retirement, if not through retirement. Seattle has an incredibly strong tech presence, agreeable climate (especially as the earth gets hotter), and will be much better suited for our children after they graduate from college and look for employment.

What else? I'm hoping that in 2021 the vaccine rollout accelerates, infection rates slow to a trickle, climate change gets under control, politics returns to normal, kids go back to school, pickup basketball resumes, and that we return to the office. I want to become proficient in my role at Google, accrue deep knowledge about the geo products I work with, build relationships with key stakeholders and other writers at work, and generally ramp up my level of proficiency.

That's about it for now. If you have more thoughts on my site analytics or suggestions for future directions, let me know.
