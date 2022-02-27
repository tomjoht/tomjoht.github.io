---
title: "Wikis and crowdsourcing (Trends to follow or forget)"
permalink: /trends/trends-to-follow-or-forget-wikis.html
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.com/trendswikis
series: "Trends to follow or forget"
jtype: notes_fizzled_trends
description: "This post is part of a series on trends that explores trends that I've either followed or forgotten, and why. The overall goal is to better understand the reasons that drive trend adoption or abandonment in my personal career. This post focuses on wikis and crowdsourcing."
---

## What are wikis and crowdsourcing?

Wikis allow for larger numbers of people to contribute and edit content. Open-source wikis like [MediaWiki](/2009/12/06/ramping-up-on-mediawiki/) (the same platform powering Wikipedia) scale in an impressive way to allow practically anyone to edit and contribute content from a browser. Any reader can usually toggle the webpage into an editor mode, make and update, and click Save.

Wikis support the possibility of crowdsourcing, which is the idea that you no longer need a dedicated team of writers; instead, the content can be contributed by many different people, just like Wikipedia. If 100 people each contribute a few paragraphs here and there, you’ve suddenly created the bulk of your docs without the need for tech writers. Or at the very least, tech writers' efforts can be magnified and enhanced through contributions and refinements from community members.

## Why I embraced wikis and crowdsourcing

As I explained in [HATs and single-sourcing](/trends/trends-to-follow-or-forget-hats.html), I was working for a company that had a [large number of volunteers](/2011/11/06/managing-60-volunteer-writers/) eager to contribute content. Wikis were the right tool for this scenario, not HATs. Further, because MediaWiki was open source, we didn’t have any licensing issues for each contributor.

## Why I abandoned wikis and crowdsourcing

Trying to crowdsource documentation from volunteers didn’t work. I wrote about this extensively here: [My Journey To and From Wikis: Why I Adopted Wikis, Why I Veered Away, and a New Model](/2012/06/11/essay-my-journey-to-and-from-wikis-why-i-adopted-wikis-why-i-veered-away-from-them-and-a-new-model-for-collaboration/). The most common reason people volunteered was to build up their portfolios and get more tech writing experience (which makes sense), so they needed a lot of handholding and direction. Most of the documentation tasks required access to internal project teams and information. It was hard to connect external volunteers with the needed inside information, especially given corporate access restrictions.

For those volunteers who did contribute content, their contributions were often mediocre, and the volunteers didn’t take into consideration how their added paragraph or article flowed with the rest of the page content or surrounding product context. The reality is that writing technical content is hard and many people falsely assumed that just because someone can write, they can also produce professional-level documentation. It isn't the case. Crowdsourcing really only works if you have simple tasks that don’t require much expertise or effort.

In the end, I expended a lot of effort trying to wrangle and manage volunteers, without much output or productivity. One day I measured up the time I spent managing and coordinating the volunteers versus the output and how long it would take me to produce the same content, and I decided the crowdsourcing model didn’t really work, so there was little point in continuing to use a wiki.

## Current status of wikis and crowdsourcing

Wikis are still going strong in internal contexts, such as for corporate platforms. [Confluence](https://www.atlassian.com/software/confluence/premium) is a common internal infrastructure for many companies. It does seem that within the enterprise, you need a scalable, simple solution that allows everyone to create and publish content. But as far as a doc platform for external docs, as well as crowdsourcing models, I don’t see too many examples outside of Confluence. Splunk's [Ponydocs](https://docs.splunk.com/Documentation/Ponydocs/1.0/Content/WhatisPonydocs) is probably the strongest current example of MediaWiki-based external documentation.

Even when wikis are used for external docs, the docs don’t usually give outsiders the ability to edit the content. To allow for "crowdsourcing," making the docs available on GitHub and allowing people to [submit pull requests](/learnapidoc/pubapis_github_pull_requests.html) is now more common. Even so, the [GitHub model of pull requests never worked for me either](/2017/03/08/crowdsourcing-docs-with-github-docs-as-code-tools-same-as-wikis/), but I'll get to that later.

In hindsight, the failure of crowdsourcing actually ensured the survival of the technical writer's role. Even within the most celebrated success stories with wikis (Wikipedia), the actual number of active contributors and editors is a tiny fraction of user base.
