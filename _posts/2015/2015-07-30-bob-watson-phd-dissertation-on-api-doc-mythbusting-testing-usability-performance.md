---
title: "Podcast: How do design, length, and relevance affect how people use API reference docs -- interview with Bob Watson"
categories:
- api-doc
- podcasts
keywords: bob watson, api usability, reference docs, design, performance, relevance, usability, testing, mythbusting
tags: [series_testing_documentation]
series: Testing your documentation
jtype: notes_testing_documentation
weight: 1.6
description: "Bob Watson recently finished a PhD with research that examined how the design and content of API reference docs affects the user's performance. In this podcast, I talk with Bob about his findings and his other research interests, primarily around goal testing to measure documentation's effectiveness."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/microphone.png
date: 2015-07-30
tags:
- API documentation
- best practices
- usability
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/bobwatson_apidocs.mp3
podcast_file_size: 56.5 MB
podcast_duration: "52:21"
podcast_length: 6530090
bitlink: http://bit.ly/bobwatsonpodcast
---

## Listen to the podcast

{% include audio.html %}

## Summary

Bob was a software engineer for 17+ years. He decided to get a PhD from the University of Washington's [Human Centered Design and Engineering](http://www.hcde.washington.edu/) because he felt that if the documentation for his software were better, the adoption of the software would increase. This led him to pursue research in technical communications.

He soon found that many other factors besides documentation contribute to product adoption. Still, the tech comm domain held his interest, as it contained many interesting problems to solve. For his PhD, Bob examined several questions related to API documentation:

* How does the design of API reference documentation affect the user experience?
* How does the relevance of the content on API reference documentation affect the user experience?
* How does the length of the content on API reference documentation pages affect the user experience?

He found that his changes to the topics' visual design didn't affect performance — whether your API documentation has lots of design elements or not didn't affect how quickly people found the information to achieve a goal. A strong visual design did, however, affect people's perception of the documentation's credibility and professionalism.

He also found that whether reference topics contained relevant information or not, people spent the same amount of time evaluating the topic for relevance (about 44 seconds).

Finally, he found that topic length influenced performance. Shorter topics were quicker to assess, but longer topics increased the user's perception of the topic's credibility and professionalism.



## Goal testing documentation

We also talked about testing. Bob said his background as a software engineer, a context in which code is heavily tested, led him to wonder why documentation wasn't also tested with the same degree of thoroughness. He found that testing documentation content was much more difficult. It's harder to determine whether documentation is achieving its goal, especially with API reference documentation, since a user may not implement the knowledge gained from the content until later, such as when the user writes code for an application he or she is building.

Bob noted several practical approaches to testing. One method is to get a new engineer in your company to test your documentation. He recommends designing 10- to 30-minute tests focused on a specific task. You can encourage people to participate by giving them Starbucks cards or other perks. The outcome of nearly every test, Bob noted, is that you realize that some assumption you had was wrong.

While you can enlist other non-engineering colleagues at your work to test your API documentation, you have to recognize the limits of your subjects. If you're asking a user (such as a product manager) to do something he or she wouldn't normally do, the results may not provide you with the information you need to optimize your information.

## Product-market-audience framework for analysis

One of the frameworks that Bob mentioned in making decisions about documentation is a product-market-audience framework. Whether you decide to include a strong visual design in your docs, or add a lot of detail to handhold users, etc., really depends on how these three factors intersect: product, market, and audience.

If your product is new in the market, and users are unfamiliar with it, then you probably want to add more detail in your product's documentation. If your documentation's purpose is to help sell the product and increase credibility for your product in the community, then you might want to implement a strong visual design. If your product is a familiar technology in the market, you may not need as much doc content. By analyzing the product, market, and audience, you can make decisions about what to emphasize in your documentation.

## Resources to learn more

Here are some links for some of the resource mentioned in the podcast:

* [Docs by Design](http://docsbydesign.com/) (Bob Watson's blog)
* [PhD study findings](http://docsbydesign.com/category/phd-dissertation-study/) (contains links to the posts that talk about the study findings)
* [Variations in design and information](http://docsbydesign.com/2015/06/22/api-reference-topic-study-summary-results/) (includes examples of the different variations in design)
