---
title: "Faceted filtering"
permalink: /trends/trends-to-follow-or-forget-faceted-filtering.html
categories:
- technical-writing
- innovation
keywords: faceted filtering
rebrandly: https://idbwrtng.com/trendsfacetedfiltering
series: "Trends to follow or forget"
sidebar: sidebar_fizzled_trends
description: "This post is <a href='/trends/trends-to-follow-or-forget-intro.html'>part of a series</a> that explores tech comm trends that I've either followed or forgotten, and why. The overall goal is to better understand the reasons that drive trend adoption or abandonment in my personal career. This post focuses on faceted filtering."
---

## What is faceted filtering?

Faceted filtering is a technique you often see on sites that sell physical products (e.g., shoes, clothing); on these sites, the faceted filters allow you to select various options to narrow down what you want to find. For example, you might select filters such as style, gender, age, size, color, sport, etc. to narrow down the results as you’re looking for a new pair of running shoes.

I wanted to implement the same faceted filtering paradigm with docs, allowing users to narrow the content down by operating system, location, version, feature, context, popularity, and more. I used a tool called Semantic MediaWiki that allowed me to add semantic data to wiki pages and then create advanced queries that would sort the topics by the semantic values. I created various sortings of docs, presented the sortings on the homepage and allowed users to choose the entry point that made the most sense for them.

## Why I embraced faceted filtering

At the time, I was trying to [unlock the key to findability](/2010/05/17/new-series-organizing-content-organizing-content-1/), and I was drawn in by the [faceted filtering patterns](/2010/05/17/25-facets-for-navigation-organizing-content-5/) on sites [like Amazon](/2010/05/20/faceted-classification-faceted-search-organizing-content-6/) and [elsewhere](/2013/05/29/can-help-content-have-recognizable-facets/). The web was still maturing, and the search patterns on these sites provided a clearly superior experience.

Further, the [semantic web](/2010/06/10/the-semantic-web-and-content-findability-interview-with-patrick-warrant-organizing-content-14/) was much discussed and hyped at this time. The semantic web promised to enrich content with semantics (especially through [microformats](/2007/03/11/microformats-and-the-semantic-web/)) in ways that would improve discoverability. XML was the driving technology behind the semantic web. Faceted filters would simply leverage the semantic-laden attributes to make it easier to find what you were looking for.

As a culminating presentation on my exploration into faceted filtering, I delivered a 2013 WritersUA Europe keynote titled [Making Content More Findable When Users Browse and Search](/2013/06/24/recording-of-making-content-more-findable-when-users-browse-and-search-ua-europe-presentation/).

## Why I abandoned faceted filtering

Providing a [custom set of filters for navigation](/2010/05/21/implementing-faceted-classificationsearch-with-a-help-authoring-tool-organizing-content-7/) was never an out-of-the-box product that was easy to implement without major engineering support. Further, having multiple presentations of content topics confused users, as this wasn’t a standard pattern in documentation. There also weren’t a clear set of facets (e.g., size, color, sport) by which to sort informational content like there were with physical products.

Additionally, although you can create different ways to sort and present topics, when a user goes to a page, there can be only one sidebar shown on the left. So if you have a list of the most popular topics, topics related to a specific locale, and topics related to a particular feature, when viewing that topic as a single page, the sidebar wouldn’t list these other organization schemes. Each page can only have a single, static sidebar. The organization of topics in that sidebar should generally match the organization of topics presented elsewhere on the site.

{% include ads.html %}

## Current status of faceted filtering

Some more robust documentation tools, such as [Fluid Topics](https://www.fluidtopics.com/), allow users to sort content using faceted filters, but only using the conditional profiling filters provided through DITA. Most tech comm tools never really delivered on this faceted filtering pattern. Faceted filters are still frequently used with merchandise sites, but you don’t see too many examples with documentation sites that go beyond the basic filters (such as version, language, or platform).

Although DITA XML allows for filters in the outputs, the more common DITA tooling pattern is to generate separate outputs based on [profile conditions](/conditional_profiling/), not provide toggles to filter content within the same output. Providing the filters within the same output is a much more advanced, complex undertaking. On the other hand, providing separate outputs for each type of user is traditionally a print paradigm.

Finally, another reason faceted filtering never took off is because [XML and the web drifted farther apart](/2015/02/13/xml-and-the-web-drifting-farther-apart/). The core technologies of the web are HTML, CSS, and JavaScript, and unfortunately these formats didn't support the semantic attributes of XML.

## Takeaway

{: .tip}

Faceted filtering works best when your product has a clear set of facets/attributes that users can identify to narrow the information. Finding tool support to implement faceted filtering is challenging.

## Next post

Continue to the next post in this series: [Screencasting](/trends/trends-to-follow-or-forget-screencasting.html).