---
title: "Results from a survey about engineers who write docs"
categories:
- api-doc
- writing
keywords:
bitlink: http://bit.ly/surveyresultsengineersanddocs
published: false
summary: ""
---

## About the survey

In looking at my site's metrics, I recently noted that a [large amount of traffic (59%) is going to my API documentation site](https://idratherbewriting.com/2019/01/14/site-analytics-from-2018-59-percent-traffic-going-to-api-doc-site). My premise was that this influx of users consisted mainly of engineers writing docs because the gender and age demographics (according to Google Analytics), more closely aligned with programmer demographics.

I wanted to understand more about this audience, so I embedded [a survey](https://www.questionpro.com/t/AOaGwZduq7) (still open) at the top of my [API documentation site](/learnapidoc) for engineers to complete. I wanted to know if more engineers were writing docs, if they resented doing so, if they mostly wrote reference docs, and so on. I collected 101 responses over the course of several weeks.

Here are the [survey's results](https://www.questionpro.com/a/showVOCDashboardII.do?mode=default&lcfpn=false).

<a href="https://www.questionpro.com/t/PE5tIZduq7"><img src="/images/engineersurveyresponses.png" alt="Responses to survey about engineers writing docs" /></a>

## Results and analysis

Note that in my commentary here, I'm combining the responses for agree and strongly agree by simply noting that "a [percentage]% said ...". Each of the bold sentences indicates the result, and my commentary follows it.

**82% said they write some of the documentation for the products they build.**

Presumably, the others might do testing or other engineering tasks unrelated to building the software.

**67% mostly write reference documentation (e.g., API endpoints, Javadocs).**

This result aligns with what I would expect, since typically technical writers and others tackle more conceptual, tutorial-based material around developer documentation.

**Only 46% said that they write this content because it's too complex for non-engineers to understand.**

Many comments here indicated that technical writers weren't present or available in their company. One mentioned that he or she is both an engineer and technical writer.

**80% said that when they engage in documentation efforts, they prefer to treat documentation like software (using Git, text editors, Markdown, static site generators, building from the server, etc.).**

I found this result somewhat fascinating and believe it provides strong support for adopting the docs-as-code model when you're integrating engineers into the documentation process.

**61% are contributing more to documentation now than they previously did.**

I asked this question because I wanted to know why so many people were suddenly coming to my API doc site, and whether this reflected a growing trend of engineers writing docs. But I'm not sure the survey question can conclude anything because the audience for the survey is self-selecting. Only developers who write docs would come to the site and take the survey, so it makes sense that they are writing. I'd need to survey developers in general independent of whether they come to the API doc site to get a sense of whether more developers are writing docs or not.

**Only 50% said that they are contributing more to documentation because the level of complexity in the technology landscape has increased.**

I mentioned in a previous post that I abandoned the argument that technical skills are in such high demand because the technology landscape is getting more complex (see the [Latest thoughts on trends](https://idratherbewriting.com/2019/02/24/slides-for-trends-preso-symposium-for-communicating-complex-info/#latest-thoughts-on-trends) section in my "Recording and slides for my trends presentation at SCCI" post). One reason I abandoned the argument was due to the responses here. If engineers didn't feel the landscape was getting more complex, this was probably a tough argument to make. Read the post for more of my thoughts here. At any rate, this is one example where survey responses shape and influence my thinking and direction. I really do take the responses seriously.

**65% said that when writing documentation, standards such as the OpenAPI specification help guide them in valuable ways.**

I think [OpenAPI specs](https://idratherbewriting.com/learnapidoc/pubapis_swagger_intro.html) have been quite helpful in providing standards for REST API docs. For more, check out my [OpenAPI tutorial here](https://idratherbewriting.com/learnapidoc/pubapis_openapi_tutorial_overview.html). Despite the guidance these standards provide, I'm guessing that some find these standards lacking or incomplete for their own API's documentation.

**Only 41% said that although they contribute to documentation, they dislike writing docs and resent that they have to write them (when they could otherwise be coding).**

One person commented, "I wish I didn’t have to write docs, but they’re incredibly important to our customer success." Another said, "Not convinced most docs are ever read." I guess quite a few developers actually enjoy writing documentation. There is a common stereotype that most developers hate to write docs, but that might be a minority feeling. But as I said before, this survey only includes engineers who write docs. There might be many, many more developers who didn't come to the API docs site and who hate writing docs with a passion. They would have never even appeared in this survey.

**46% said that when they read documentation themselves, they would rather read content written by an engineer (rather than a tech writer), even if it's written poorly.**

Responses suggest that engineers aren't necessarily biased against technical writers creating docs, and might have a more balanced perspective about the quality of docs written by engineers. Many times when engineers write docs, they can be poor and unusable. On the other hand, one person said, "I rarely to never read documentation," which suggests that perhaps many didn't agree simply because they feel they never read documentation (even though they write it themselves).

**60% said that for highly technical content (such as developer documentation), technical writers are more suited to editorial/publishing roles rather than authoring content.**

One person noted that "Depends on whether the TW has technical skills." Another said, "Well, some of them have no idea what they're trying to change 'for good'. But junior lvl engineer with good writing skills that works as a technical writer - best choice for such a task."

## Conclusion

What's the most interesting conclusion here? I think the strongest takeaway is that when engineers engage in documentation efforts, they prefer to treat documentation like software (using Git, text editors, Markdown, static site generators, building from the server, etc.). This question had majority agreement and provides support for tool directions I've taken when working in developer-centric documentation efforts.

Overall, I'm not sure if this survey answered my initial question, which was to find out if the traffic influx to the site consists of engineers. I had the survey on my site for several weeks and barely collected 100 responses. Perhaps many others coming to the site are technical writers, or other folks? I think I need to create a general demographic poll on the site for everyone to complete. With the survey I analyzed here, I restricted the audience to engineers only.

Another question is how I can more quickly gauge responses from readers. With thousands of people coming to my site each day, I should be able to tap into those visitors to quickly gather feedback about different topics. I'm not sure a note at the top of each page asking users to complete a short survey is the best approach. I dislike pop-up dialogs, but they might get more attention.
