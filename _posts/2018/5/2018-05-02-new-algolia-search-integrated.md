---
title: "My site now has Algolia search integrated"
categories:
- technical-writing
description: "You might have noticed a new search box on my site. My new search integrates <a href='https://www.algolia.com/'>Algolia</a>'s search service, replacing the Google Custom Search Engine I previously had. While Google Custom Search Engine was good, it draws people away from my site and more into the general web. There are tradeoffs to both Google Custom Search and Algolia."
bitlink: http://bit.ly/algoliasearchirbw
---
Let's look at a few pros and cons of each.

## Pros and cons of Google Custom Search Engine

* <span style="color: green">Pro</span>: It's free and familiar.
* <span style="color: green">Pro</span>: Most people use Google, so when you use it, you get accustomed to seeing your content as most users see it in searches.
* <span style="color: green">Pro</span>: It indexes all of your content.
* <span style="color: red">Con</span>: It takes people away from your site and into the general web.
* <span style="color: red">Con</span>: It's difficult to analyze query metrics.
* <span style="color: red">Con</span>: You have no control over page weighting apart from aligning with Google's algorithms.

Google recently [deprecated their custom search](https://searchengineland.com/google-sunset-google-site-search-product-recommends-ad-supported-custom-search-engine-269834), where you could embed Google's results into your own pages (and for a premium, remove ads). They still provide the [custom search engine](https://support.google.com/customsearch/answer/7669707?hl=en), which is the equivalent of searching with "<code>site:somedomain.com some keywords</code>" in your search query, restricting the results to a specific domain. The results appear on Google rather than embedded within your own site. (I never had custom search, just the custom search engine.)

The main problem with custom search engine is that searches on Google lead users away from your site. Additionally, I recently noticed that after you click a result and return to Google's results page, you're prompted with similar searches that take you even more easily away from the site-specific search you initially executed. Here's an example:

<figure><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/googlesearchsimilar.png"/><figcaption>After you click this result and return to the search results page, Google shows you similar queries, but those similar queries aren't restricted to the site-specific domain you initially entered.</figcaption></figure>

## Pros and cons of Algolia

Now let's look at <a href='https://www.algolia.com/'>Algolia</a>.

* <span style="color: green">Pro</span>: Results keep users on your site.
* <span style="color: green">Pro</span>: You have control over the search (the weighting, the integration, the UX).
* <span style="color: green">Pro</span>: The results are accurate and in-depth.
* <span style="color: red">Con</span>: Beyond small sites, it costs money (unless you get [approved as open-source](https://www.algolia.com/for-open-source)).
* <span style="color: red">Con</span>: In my current integration, although the results are instant, after you click a result, the search results page disappears.
* <span style="color: red">Con</span>: It requires UX work to integrate it seamlessly.

With my current Algolia implementation, someone actually submitted a [PR to my GitHub repo with the integration](https://github.com/tomjoht/tomjoht.github.io/pull/3). They wanted to show my users how Algolia search could look and work for a site like mine (it is ingenious marketing). I welcomed the integration because in any Jekyll site I've built, search has always been a challenge, so I'd like to be more savvy with search tools. I want to spend more time getting to know Algolia and the possibilities it provides, including UX integration.

The current integration shows just one way Algolia could be integrated. Depending on your UX skills, you could even implement faceted filtering or a variety of techniques. Algolia has a [good integration with Jekyll](https://github.com/algolia/jekyll-algolia), allowing you to update your search index from the command line or more automated through a tool like [Travis CI](https://travis-ci.org/).

Overall, I still have a lot to learn and explore with Algolia, but it's a great first step. If you want, try it out (the search box is in my nav bar) and tell me what you think.
