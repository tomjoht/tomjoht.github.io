---
title: "Write the Docs Podcast Episode 2 (which Focuses on Findability) Now Available "
categories:
- technical-writing
- wtd-podcasts
description: "Episode 2 in the Write the Docs podcast is now available. The topic of episode 2 is findability: How do you allow your users to find what they're looking for in your documentation? We talk about various tools for findability: search, tags, faceted filters, sidebar navigation, inline links, related links, terms/glossaries, and breadcrumbs. In this post, I also share a few more details about Lunr search."
bitlink: http://bit.ly/wtdpodcastep2findability
---

You can view the Write the Docs podcast here:

<iframe width="640" height="360" src="https://www.youtube.com/embed/Z8puPiBVa0w" frameborder="0" allowfullscreen></iframe>

You can also go to the [WTD podcast site](http://podcast.writethedocs.org) to view it: [Episode 2 - Findability](http://bit.ly/wtdpodcastepisode2).

Why did we choose to talk about findability? Besides the fact that it's a recurring theme in tech comm, recently someone contacted me with this exact question. They wanted to increase the ability for users to find what they're looking for in their documentation.

I have a lot of thoughts about findability in documentation. I once wrote a [lengthy series of posts on organizing content](https://idratherbewriting.com/2010/05/17/new-series-organizing-content-organizing-content-1/) and have presented numerous times on findability (see [Making Content More Findable When Users Browse and Search](https://idratherbewriting.com/2013/06/24/recording-of-making-content-more-findable-when-users-browse-and-search-ua-europe-presentation/).) The topic has a tremendous number of angles and depth.

In the beginning of this podcast episode, we talk a lot about search tools. Search is an increasingly difficult component if you're working with a static site generator like [Jekyll](http://jekyllrb.com) for your authoring tool. [Static site generators](http://www.staticgen.com/) typically don't include search features, so you have to figure out the approach you want to take.

You can integrate third-party search such as with [Swiftype](https://swiftype.com/) or [Algolia](https://www.algolia.com/), if you're okay with hosting an index of your content on a third-party server and paying approximately $300/month.

While I'd love to use one of these services, it's difficult to get security approval, budgetary go-ahead, executive buy-in, and other corporate processes aligned to make this happen. I think doc teams are accustomed to having their help authoring tool provide the search out of the box.

I've been working on a [new version of my documentation theme](https://idratherbewriting.com/documentation-theme-jekyll-next-version/). In this version (still under development), I implemented [Lunr search](http://lunrjs.com/) by following this excellent tutorial by Mike Neumegen from [CloudCannon](http://cloudcannon.com/) here: [Jekyll Search Using Lunr JS](http://jekyll.tips/jekyll-casts/jekyll-search-using-lunr-js/).

In our WTD podcast discussion, Jared said for large sites, Lunr search might not scale. However, I've chosen to implement Lunr a bit differently. In my doc theme, you can do either a global search or a product search. The global search looks across all doc pages, while the product search looks for doc pages within a specific product.

The idea is that with a more limited subset of content, Lunr search might be adequate.

To configure Lunr search, you loop through the pages you want and push them into a variable that Lunr uses to execute the search against. The content is stored in JSON, and you can boost certain values with more weight. I'll provide more details when I release the next version of my doc theme, but overall I'm excited about it.

If you like to listen to podcasts, be sure to subscribe to the [Write the Docs podcast](http://podcast.writethedocs.org). You can subscribe through email, RSS, iTunes, Stitcher, or Youtube. See [How to Subscribe](http://podcast.writethedocs.org/how-to-subscribe/) for more information.
