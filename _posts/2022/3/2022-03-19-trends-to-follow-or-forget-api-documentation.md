---
title: "API documentation (Trends to follow or forget)"
permalink: /trends/trends-to-follow-or-forget-api-documentation.html
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.com/trendsapi-documentation
series: "Trends to follow or forget"
jtype: notes_fizzled_trends
description: "This post is <a href='/trends/trends-to-follow-or-forget-intro.html'>part of a series</a> that explores trends that I've either followed or forgotten, and why. The overall goal is to better understand the reasons that drive trend adoption or abandonment in my personal career. This post focuses on API documentation."
---

## What is API documentation?

[Application programming interfaces](/learnapidoc/docapis_what_is_a_rest_api.html#what-is-an-api) (APIs) have been around even before the Internet, but most APIs were library-based APIs, such as [Java or C++ APIs](/learnapidoc/nativelibraryapis_overview.html). Around 2010 or so, web APIs (most commonly, [REST APIs](/learnapidoc/docapis_what_is_a_rest_api.html)) started to emerge in a popular way, and APIs began to proliferate among companies.

Web APIs also seemed to change the importance of documentation. Whereas docs for library-based APIs were [generated from annotations in the source](/learnapidoc/nativelibraryapis_create_javadoc.html) code through tools like [Javadoc](/learnapidoc/nativelibraryapis_javadoc_tags.html) and [Doxygen](/learnapidoc/nativelibraryapis_doxygen.html) (and the outputs from these tools looked more or less the same), with web APIs, documentation wasn’t always generated from source annotations. At least [half the time](/learnapidoc/docapis_trends.html#api), people create reference docs manually. In fact, many API designers advocate using the [OpenAPI specification](/learnapidoc/pubapis_openapi_intro.html) (also called Swagger) to [design the API before you even begin coding](/learnapidoc/pubapis_openapi_intro.html#specfirst). The reference docs can be generated from this Open API spec rather than source-code annotations.

Regardless of the reasons why, documentation for REST APIs almost [varies dramatically from site to site](/learnapidoc/pubapis_apilist.html). Even though you can generate reference docs from the source using tools like [Swagger UI](/learnapidoc/pubapis_swagger_demo.html), the [reference docs](/learnapidoc/docendpoints.html) are just one part of the larger documentation. There's a lot more content needed, which I cover in [Conceptual topics section](/learnapidoc/docconceptual.html) of my API course:

<ul>
<li><a href="/learnapidoc/docapis_doc_overview.html">API product overviews</a></li>
<li><a href="/learnapidoc/docapis_doc_getting_started_section.html">API getting started tutorials</a></li>
<li><a href="/learnapidoc/docapis_more_about_authorization.html">API authentication and authorization</a></li>
<li><a href="/learnapidoc/docapis_doc_status_codes.html">API status and error codes</a></li>
<li><a href="/learnapidoc/docapis_rate_limiting_and_thresholds.html">API rate limiting and thresholds</a></li>
<li><a href="/learnapidoc/docapis_doc_quick_reference.html">API quick reference</a></li>
<li><a href="/learnapidoc/docapis_glossary_section.html">API glossary</a></li>
<li><a href="/learnapidoc/docapis_best_practices_with_api.html">API best practices</a></li>
</ul>

As you can see, there are a lot of opportunities for technical writers to contribute to developer documentation, especially with web APIs. Additionally, companies often pull UX resources together to create [modern-looking, web-friendly sites](/learnapidoc/pubapis_design_patterns.html) for their API docs, bringing both reference and non-reference content together in seamless ways.

{% include ads.html %}

## Why I adopted API documentation

When I [moved out to California](/2013/02/15/moving-to-california-and-starting-a-new-job/), it seemed most jobs in the Bay area involved API documentation. [Jobs in API documentation](/learnapidoc/jobapis_overview.html) tended to pay more, there was a higher demand for them, the work was more challenging, and it was generally an interesting space to be in.

Also, the emergence of web APIs made it easier for non-developers (e.g., tech writers with humanities backgrounds) to get involved in API documentation. Because web APIs are language agnostic, they're more accessible for tech writers to understand and document. At the core, REST APIs involve a simple request and response, which you can observe using [curl](/learnapidoc/docapis_install_curl.html) or using tools like [Postman](/learnapidoc/docapis_postman.html) (rather than building sample Java apps, for example). The response is usually returned in [JSON](/learnapidoc/docapis_analyze_json.html) as well, which makes it easy to read. In contrast, if my first API documentation job would have involved documenting a Java API, I might have concluded that I needed to be a developer to write the docs.

Besides the technical aspects of developer documentation, APIs provided a totally new landscape to explore. Writing API docs involved a new type of user (developers), [code examples](/learnapidoc/docapis_codesamples_bestpractices.html), [end-to-end tutorials](/learnapidoc/docapiscode.html), [getting started guides](/learnapidoc/docapis_doc_getting_started_section.html), [API explorers](/learnapidoc/pubapis_design_patterns.html#interactive_api_explorers), and more. You could [put your hands on code in a low-cost way and make it work](/learnapidoc/testingdocs.html), which was fun. I was already somewhat tech savvy (having worked as a [WordPress](/trends/trends-to-follow-or-forget-wordpress.html) consultant for years), though by no means at a developer level. I found that I liked working with code and in the developer space.

Also, within the tech comm industry, there had been a growing shift from traditional user documentation to API documentation. Documentation for GUI apps shifted more to the UI, with the emergence of [UX writing](/blog/ux-writing-processes-and-considerations-wtd-podcast-episode-28). Some even said that the [tech writer role was dying, no longer needed](/2018/10/09/tech-comm-trends-more-collaboration-with-engineers/#the-impact-of-ux-and-the-need-for-documentation). If your product requires docs to figure out, it’s dead in the water anyway. Users will choose simple, easy-to-understand interfaces over confusing ones that require reading through docs to figure out. As a result, companies often poured more resources into UX design rather than documentation. And the UX discipline matured.

UX maturity created less of a demand for documentation around interface-based solutions. With better UIs, users could more easily learn software through trial and error or interface help text. The demand for docs shifted more in the API space, where users didn't have a UI to explore and figure out on their own. It’s hard to guess the parameters of an API without some sort of docs. Some years ago, you used to hear the phrase “[No one reads the docs](/blog/history-of-content-content-components-podcast/)” every now and then. It’s not really the case within the developer documentation space. (And the phrase is less common in other spaces as well.)

## Why I didn’t abandon API documentation

The shift into API documentation helped me find my niche in tech comm circles. Everyone specializes in some aspect of tech comm. For example, some become UX writers, CCMS experts, DITA consultants, Flare experts, and so on. API documentation seemed to be my specialization, and I embraced it.

Also, financially speaking, once you start working for big tech companies and realize that the salary packages are on another level, it’s not really something you abandon. There’s a continual, growing need for API documentation across big tech, and the competition for unicorn tech writers &mdash; people who are comfortable in both programming languages and writing &mdash; continues to be strong. I feel a lot more stable in this field. It’s challenging, for sure, and half the time I barely understand what I’m documenting, but this also means there’s always a lot of opportunities for continual learning and advancement.

## Current status

About [75% of the traffic](/blog/2021-site-analytics-reflections) to my site goes to my [API documentation course](/learnapidoc/) (and it’s been that way for several years, ever since I created my API course. I think these analytics speak to the larger trends of API documentation itself. It’s a high-demand subject area, with rewarding challenges to keep professionals engaged and learning.

In 2015, I wrote a post titled [My 2016 technical writing trends and predictions, or the ripple effects of API growth on technical writers](/2015/12/29/trends-technical-writing-2016/). I made a series of predictions based on one ground truth: that APIs were going to create a ripple effect across the tech comm industry. What were the specifics of these ripples? I listed 9 outcomes from the continued growth and popularity of APIs:

1. Use of Swagger with API docs becomes an expectation
2. Markdown as an authoring format gets taken more seriously by the tech comm community
3. Github as a collaboration platform rises in popularity among tech writers
4. Write the Docs meetup groups proliferate over STC
5. Security paranoia forces authentication of docs
6. Tech writers explore non-traditional tools instead of HATs
7. Technical writers create more tutorials (instead of just tasks)
8. Technical writers study at least one programming language
9. Technical writers deliver content via APIs themselves

All of these predictions more or less played out in a true way.

APIs are here to stay. The web created a shift toward the information economy, where a company’s primary product is no longer a physical asset but rather information delivered through APIs. Data is what is bought and sold online. As long as the information economy continues to drive corporate products and services, APIs and related documentation will be in high demand.

Still, it’s challenging to find tech writers who are both experts in documentation and programming languages (and docs-as-code tools, too). Employers are often willing to overlook writing experience in favor of technical knowledge. If you’re young and want to move up in this field, consider going to a technical bootcamp rather than a tech comm program. If you can write reasonably well already, focus more on building up your technical expertise, and doors will open.
