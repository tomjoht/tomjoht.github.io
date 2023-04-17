---
title: "Five ways to leverage big-picture thinking as a technical writer"
permalink: /trends/five-approaches-to-big-picture-thinking-tech-comm.html
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.com/fiveapproachesbigpicture
series: "Trends to follow or forget"
jtype: notes_fizzled_trends
description: "In a technology world growing increasingly specialized, technical writers can stay relevant by leveraging their most salient skill: the ability to see the big picture, to look across systems or individual APIs and see the shape of the whole. Technical writers can employ big-picture thinking with docs by emphasizing the following content types: (1) Detailed product overviews, (2) developer journeys, (3) cross-system workflows, (4) integrated API data, (5) and external domain knowledge."
---

## Recap of series argument

This series, [Trends to follow or forget](/trends/trends-to-follow-or-forget-intro.html), is one I started last year but never finished. It's been a while since I last added to the series, so let me provide a brief recap of where I left off.

I argued that the overwhelming trajectory of technology is one of increasing specialization. Almost nothing is getting simpler but rather moves in the opposite direction. When I look at the engineers around me, they seem burdened by the ever-widening scope of what they need to know. As soon as I ask them a question outside their stewardship, they're quick to point me to someone else. 

It's not just engineers; basically, technology roles all around us are becoming more specialized. This is resulting in some interesting outcomes. The discourse is narrowing, making it more difficult for people to communicate with others outside their sphere of specialized jargon. Systems are becoming more complex, with many parts of the same system being handled by different groups in cross-organizational ways. Individual workers understand very little about how their contribution impacts the whole. One team delivers one API, another delivers one piece of data, another works on one aspect of infrastructure, and so on&mdash;all working on the same product. Each is hyper-focused on a narrow view of the product.

Very few roles in tech possess big-picture understanding. Few understand the entire system from end to end, even if in a superficial way. Technical writers are among the few roles that have access to this perspective. Other roles would be product manager, systems architect, and perhaps support, but not many others. This big-picture perspective is rare; it's something to be nourished and developed. It's a dimension of our role that keeps us from being labeled as useless generalists. We might not know how to code Java, but we can understand how the Java API interacts with a cloud API the other team is building, how these APIs get their data from a team in another org, how that data gets tested, transformed, and processed, and how these APIs fit into the larger SDK and the developer journey.

In this series, I argued that technical writers should embrace the big-picture perspective, or their systems view understanding, and apply this knowledge in ways that demonstrate high value to the organization. If we abdicate our big-picture perspective, we end up trying to compete with more specialized technology workers in ways that we won't win. If our only role is language editing and publishing toolchain knowledge, the value of those skills will be reduced by AI language editors and docs-as-code toolchains that replicate the software developer toolchains and workflows. To thrive, we must extend and promote our big-picture perspective.

In this post, I'll explore 5 ways to use the big-picture perspective as a technical writer.

## Detailed product overviews

<img style="max-width: 375px; float: right; padding-left: 10px" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/prodoverview-trends.jpg" alt="Product overview" />

The easiest way to embrace the big-picture perspective is to create detailed product overviews. Nearly every product has some type of product overview, but there's a huge variability in quality from one overview to another. Have you ever read a product overview with language that read okay, but at the end, you're scratching your head, still wondering what the product is, who it's for, how it differs from other products at the company, how it differs from competitive products, what the use cases are, how you get started, how you get support when needed, what an architectural diagram of the system looks like, how it affects other components, and more? 

I've already written extensively about [product overviews in my API course](/learnapidoc/docapis_doc_overview.html), so I won't repeat the same material here. Of all the approaches I describe here, the product overview is the most relevant and immediate for technical writers to tackle. The product overview is probably the hardest page in a documentation project to write, and one that you likely can't finalize until you've written the rest of your documentation.

{% include ads.html %}

## Developer journeys

<img style="max-width: 375px; float: right; padding-left: 10px" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/developerjourney-trends.jpg" alt="Developer journey" />

A developer journey describes the end-to-end process that a developer takes through your system. (This assumes that you're writing developer documentation. If you're writing end-user documentation, consider this your user journey.) At Amazon, I once wrote a 30+ page developer journey document that described all the steps developers needed to take to create a streaming media app on Fire TV versus an app on Roku. 

The effort started out as an assignment to write a comparative business analysis document. (I later learned it was a strategy thought up by my skip-level manager to bring visibility and awareness to the documentation team.) I initially pushed back on the comparative business analysis request, arguing that there was a different team dedicated to researching product benchmarks against competitor products, but eventually, I relented to doing the project, as I'm generally open to trying new things. I picked out 8 milestones on the timeline and described the choices at each step of the way, comparing them with Roku. This formed the developer's journey, which is something I realized we sorely needed.

The business document outcome was brilliant and did capture the attention of senior executives. The post-presentation outcome led to many action items (far outside the scope of documentation) that never really went anywhere. For example, I discovered that my app on Roku received far more views than my app on Amazon. Regardless of how irrelevant these non-documentation action items might have been, the true outcome, I realized, was to understand the developer journey in more in-depth ways than before. The journey gave us a structure to shape content in the developer portal around, and it helped me understand our users better.

Very few people in the organization understand the developer journey, especially for competitor products. By both understanding and articulating this information as a developer's journey, the outcome was both helpful and highly visible.

## Cross-system workflows

<img style="max-width: 375px; float: right; padding-left: 10px" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/crosssystemworkflows-trends.jpg" alt="Cross-system workflows" />

I recently wrote about cross-system workflows, or big-picture narratives, in [Attempting to write a Life of a \[something\] narrative](/trends/writing-a-life-of-a-something-narrative.html). These narratives describe the workflow through multiple systems, or through multiple parts of an organization. I wrote a couple of these end-to-end workflows at Google&mdash;one called "Life of a commute." The document traces the path that information takes when people make a directions request with Google Maps, all the backend systems and processes that the request travels through before that magical route appears on your phone. A second end-to-end workflow describes the workflow of vehicle observations captured through car sensors, and how they are packaged, processed, and delivered.

Both workflows traveled paths that extended far outside my familiarity zone, not just with products, but with the org chart. I had to interact with various people and teams I was unfamiliar with. Granted, I didn't describe the flow of information at each stage in the journey with too much depth, but I connected the dots across systems in ways that no one had previously done. 

These end-to-end workflows, I found, are most relevant to two groups: newbies and senior managers. Newbies (both new to the company or internal transfers new to the group) are trying to understand how their new stewardship plugs into the larger system. Compare the experience to walking into a large store for the first time. When most people enter a store, they look around to get a sense of the space, the aisles, the product groupings, and other orienting features before proceeding to their grocery list items.

The other group interested in end-to-end workflows involves senior managers. These managers are working at higher, more strategic levels and need to understand how various systems fit together. For the individual contributor whose main job might be fixing a bug, however, these end-to-end workflows come across as kind of irrelevant.

## Integrated data from multiple APIs

<img style="max-width: 375px; float: right; padding-left: 10px" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/integratedapidata-trends.jpg" alt="Integrated API data" />

Recently I've been working on an experimental project called a "Comprehensive attributes list." It takes the data returned by 4 different APIs and arranges the data in a list. I resisted this project for the past year and a half (despite requests for something similar) because creating this list required me to duplicate the same information from API documentation. Navigating Javadoc outputs for returned data wasn't something that many partners (particularly non-engineers) found easy to do. At any rate, this undertaking had surprising outcomes as well (outcomes that are still in progress).

First, I started to understand how the same data is surfaced across different APIs. I could more easily see inconsistency in the descriptions of the data. I also started to better understand how our APIs worked, such as how the same objects could be returned from different classes, and so on. 

Any developer portal has a jumble of different APIs. The APIs are usually produced by different teams and presented as separate, unique APIs. I've even discovered two APIs that have the exact same name, if you can believe it. (Both teams were unaware of each other's API.) As a technical writer, I tried to bring all of those APIs together into one space and compare the data they returned. Admittedly, this project mostly involved working with Jinja templating. I stored all the data in JSON and rendered it through a Jinja template macro (which I love creating, by the way). The project also involved figuring out processes to implement so that we could keep the data up-to-date.

If you're a tech writer working with APIs, consider the larger API landscape within your developer portal. What are all the APIs available to developers? How do the APIs fit together? What data do they return? How does that returned data compare across the various APIs? There's a lot you can do with API information from a big-picture perspective.

## Domain knowledge from outside your company

<img style="max-width: 375px; float: right; padding-left: 10px" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/bookclub-trends.jpg" alt="Book club" />

My final technique for advancing big-picture perspectives is to increase your domain knowledge, especially from outside the company, by reading books, articles, and other material. By domain knowledge, I mean knowledge of the product space you're working in, such as the larger industry. 

About eight months ago, I started a book club at work called Auto and Transport Book Club. Each month we read a book and discuss it. So far, it's been an interesting experiment. I'm not exactly sure what the takeaway is, but I feel more educated, informed, and aware of the space I'm working in.

Most of the books take a critical look at the role of automobiles and big tech. Quite a few call out Google explicitly. Sometimes the perspective fills me with a sense of ambivalence about the value of the documentation I'm producing. It makes me conflicted about the purpose of our products and who they serve. The history of automobiles, especially how the government funded and sponsored infrastructure that promoted driving over public transportation, is highly troubling. 

But you know what? For all the talk about tech writing being boring, immersion in the auto and transport space has made the work much more interesting, at the least. So often as a technical writer, I've operated as an outsider to the domain I'm writing about, understanding barely enough to explain how a system works and generally what it's for, but not much about the business domain or many details about why partners want the product.

You don't have to immerse yourself in lengthy books and other literature. But try to absorb knowledge from outside your company&mdash;knowledge about your partners, about your competitors, about the space in general. It will make writing documentation more meaningful, and you'll be more capable of connecting the dots between the various services and your partner's business purposes.

## Conclusion

These five strategies are a start to focusing on the big picture. Sure, we also have more mundane, smaller-scoped doc bugs to work on. But don't let the smaller, specialized tasks dominate your larger focus as a technical writer. Remember that you're one of the few remaining roles that can both see and articulate the big picture. Technology corporations desperately need this perspective. Otherwise, the content on developer portals risks turning into hyper-specialized nonsense produced by groups working in isolation.