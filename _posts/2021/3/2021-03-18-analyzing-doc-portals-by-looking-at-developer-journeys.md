---
title: "Analyzing doc portals by looking at developer journeys -- recommended podcast episode from Cherryleaf"
categories:
- technical-writing
permalink: /blog/analyze-doc-portals-by-looking-at-user-journeys/
keywords:
description: "Podcast 104 - Fixing broken developer portals, in Ellis Pratt's Cherryleaf podcast, is well worth listening to. Ellis explains a strategy of analyzing developer portals by looking at the developer journeys within the portal and identifying gaps or friction points in that journey."
rebrandly: https://idbwrtng.com/fixingdocportalsdevjourneys
---

You can listen to the Cherryleaf episode here: [Podcast 104: Fixing broken developer portals](https://www.cherryleaf.com/2021/03/podcast-104-fixing-broken-developer-portals/) or through the player embedded below:

<iframe title="104. Fixing broken developer portals" src="https://www.podbean.com/media/player/audio/postId/16537466?url=https%3A%2F%2Fwww.podbean.com%2Few%2Fpb-5ekrg-fc577a&version=1" width="100%" height="122" style="border:none;" scrolling="no" data-name="pd-iframe-player"></iframe>

The Cherryleaf post also has a transcript of the podcast.

Ellis says that when [Bob Watson](https://docsbydesign.com/) and [Emmelyn Wang](https://twitter.com/lifewingmate) served as judges for the [API Developer Portal awards](https://devportalawards.org/), they based their criteria how well the API documentation served the developer's journey. Ellis explains:

> Imagine you’re a developer from the start wanting to get a response from the API. Go through and look at all the steps that need to be taken that are advised from the site. So what needs to happen and create what’s called a friction log. And in your friction log, you can have a column for all of those steps that are going to happen, and then another column where you can document your experience of going through their steps.
>
> Was the step of signing up easy, or was it difficult?
>
> What’s the step of understanding what the product do clear and understandable?  
>
> And if there are any issues or problems, in terms of the information not being clear or being missing.
>
> Then you write that down in that column for that particular step, and then the column next to it you can then record down any immediate thoughts on how that problem can be fixed.
>
> So you go down through the journey at each point identifying any issues with navigation, accessibility, comprehension.

I like this approach. It's given me food for thought given my previous articles on [Measuring progress against documentation quality goals](/learnapidoc/docapis_measuring_impact.html). My approach to measuring documentation quality was to analyze an API doc portal against quality measures that include findability, accuracy, relevance, clarity, completeness, and readability (see [First-level checklist for API documentation](/learnapidoc/docapis_metrics_first_level_checklist.html)).

However, I think that another approach, perhaps a better one, might be to analyze documentation quality against the developer journey, as Ellis and others explain. This developer-journey approach would require you to first define that developer journey, though. And understanding that journey might not be straightforward &mdash; there might be many different developer journeys once developers get past the initial steps of signing up and authorizing an API call.

One common analogy used with developer docs is that an API is like a cupboard full of ingredients &mdash; you provide the ingredients, and the developer figures out what recipe to make. In this analogy, the "chef's journey" might include getting out a mixing bowl, turning on the oven, setting a timer, etc. But the number of other tasks in the chef's journey would depend on the particular recipe they're following, which could be one of hundreds.

Not all API products have hundreds of journeys, but my point is that there's some flexibility here. I touched upon this briefly in [Checklist of different types of API docs](https://idratherbewriting.com/blog/doc-suite-checklist/). For sure, I think that knowing and understanding the developer journey is central to shaping a documentation portal. But at the same time, pinning down the developer journey is not always easy and might require a lot of research into developer profiles, tasks, contexts, business domains, and friction points. This is certainly something that should be on our minds but which we might overlook if we assume that the product development team has already done this research, and we are merely documenting a product that fits that journey.

Perhaps in some upcoming articles in the metrics and measurement section, I'll try to provide a more formal approach to analyzing developer portals by looking at the developer journey. It's hard to say how feasible this approach is without more hands-on experience trying it out. At Amazon, I once wrote a 35 page article describing the developer journey in building a Fire TV app for both Amazon and Roku, and it was one of the most illuminating articles I'd ever written (internal only, unfortunately). Knowing the key points in the developer journey, if only at a high level, made it easier to shape the general trajectory of the documentation.
