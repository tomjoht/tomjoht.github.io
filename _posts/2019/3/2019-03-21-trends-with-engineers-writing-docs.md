---
title: "Results from survey about engineers who write documentation"
categories:
- api-doc
- writing
keywords:
bitlink: http://bit.ly/surveyresultsengineersanddocs
description: "I recently conducted a survey with engineers who write documentation to see why they are coming to my API documentation site &mdash; whether certain trends are pushing them to write more documentation, or whether the technology landscape is becoming more complex, or some other reason. Results from the survey are provided below. The most interesting result is that engineers who write docs almost unanimously agree that they prefer to treat docs like code."
---

## About the survey

A few months ago I was looking at my site's metrics and noticed a [large amount of traffic (59%) going to my API documentation site](https://idratherbewriting.com/2019/01/14/site-analytics-from-2018-59-percent-traffic-going-to-api-doc-site). The gender and age demographics (according to Google Analytics), more closely aligned with programmer demographics, so I guessed this influx of users must consist mainly of engineers writing docs. But I wasn't sure.

I wanted to understand more about this audience, so I embedded [a survey](https://www.questionpro.com/t/AOaGwZduq7) (still open) at the top of my [API documentation site](/learnapidoc) for engineers to complete. I wanted to know if more engineers were writing docs, if they resented writing docs, if they mostly wrote reference docs, and so on. I collected 101 responses over the course of several weeks.

Here are the [survey results](https://www.questionpro.com/a/showVOCDashboardII.do?mode=default&lcfpn=false).

<a href="https://www.questionpro.com/t/PE5tIZduq7"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/engineersurveyresponses.png" alt="Responses to survey about engineers writing docs" /></a>

## Results and analysis

Note that in my commentary here, I'm combining the responses for agree and strongly agree by simply noting that "a [percentage]% said ...". Each of the bold sentences indicates the result, and my commentary follows it.

**82% said they write some of the documentation for the products they build.**

Presumably, the rest (18%) might do testing or other engineering tasks unrelated to building the software.

**67% mostly write reference documentation (e.g., API endpoints, Javadocs).**

This result aligns with what I would expect, since typically technical writers and others tackle more conceptual, tutorial-based material around developer documentation.

**Only 46% said that they write this content because it's too complex for non-engineers to understand.**

Many comments here indicated that technical writers weren't present or available in their company. One mentioned that he or she is both an engineer and technical writer. I hadn't even thought of this scenario &mdash; technical writers are a luxury many companies don't even have.

**80% said that when they engage in documentation efforts, they prefer to treat documentation like software (using Git, text editors, Markdown, static site generators, building from the server, etc.).**

I found this result somewhat fascinating and believe it provides strong support for adopting the [docs-as-code model](https://idratherbewriting.com/learnapidoc/pubapis_docs_as_code.html), particularly when you're integrating engineers into the documentation authoring/publishing process.

**61% are contributing more to documentation now than they previously did.**

I asked this question ("Are you contributing more to documentation now than you previously did?") because I wanted to know why so many people were suddenly coming to my API doc site, and whether this reflected a growing trend of engineers writing docs. But I'm not sure the survey question can conclude anything because the audience for the survey is self-selecting. Only developers who write docs would come to the site and take the survey, so it makes sense that they would be writing docs. I'd need to survey developers in general independent of whether they come to the API doc site to get a sense of whether more developers are writing docs or not. (I'm getting better at developing survey questions, and this is one I didn't think through very well. Next time...)

**Only 50% said that they are contributing more to documentation because the level of complexity in the technology landscape has increased.**

I mentioned in a previous post that I abandoned the argument that technical skills are in such high demand because the technology landscape is getting more complex (see the [Latest thoughts on trends](https://idratherbewriting.com/2019/02/24/slides-for-trends-preso-symposium-for-communicating-complex-info/#latest-thoughts-on-trends) section in my "Recording and slides for my trends presentation at SCCI" post). One reason I abandoned the argument was due to the responses here. If engineers didn't feel the landscape was getting more complex, this was probably a tough argument to make. Read that post for more of my thoughts here.

Note that this is one instance where survey responses shape and influence my thinking and direction. I really do take the responses seriously.

**65% said that when writing documentation, standards such as the OpenAPI specification help guide them in valuable ways.**

I think [OpenAPI specs](https://idratherbewriting.com/learnapidoc/pubapis_swagger_intro.html) have been quite helpful in providing standards for REST API docs. For more, check out my [OpenAPI tutorial here](https://idratherbewriting.com/learnapidoc/pubapis_openapi_tutorial_overview.html). Despite the guidance these standards provide, I'm guessing that some find these standards lacking or incomplete for their own [API documentation](/learnapidoc).

**Only 41% said that although they contribute to documentation, they dislike writing docs and resent that they have to write them (when they could otherwise be coding).**

One person commented, "I wish I didn’t have to write docs, but they’re incredibly important to our customer success." Another said, "Not convinced most docs are ever read." I guess quite a few developers actually enjoy writing documentation. There is a common stereotype that most developers hate to write docs, but that might be a minority sentiment. But as I said before, this survey only includes engineers who write docs. There might be many, many more developers who didn't come to the API docs site and who hate writing docs with a passion. They would have never even taken in this survey.

**28% said that when they read documentation themselves, they would rather read content written by an engineer (rather than a tech writer), even if it's written poorly.**

Responses suggest that engineers aren't necessarily biased against technical writers creating docs, and they might have a more balanced perspective about the quality of docs written by engineers. Many times when engineers write docs, they can be poor and unusable. On the other hand, one person said, "I rarely to never read documentation," which suggests that perhaps many didn't agree (or were neutral) simply because they feel they never read documentation (even though they write it themselves).

**60% said that for highly technical content (such as developer documentation), technical writers are more suited to editorial/publishing roles rather than authoring content.**

One person noted that it "Depends on whether the TW has technical skills." Another said, "Well, some of them have no idea what they're trying to change 'for good'. But junior lvl engineer with good writing skills that works as a technical writer - best choice for such a task." I think it's quite common at companies like Google for junior engineers to be tasked with writing documentation until they gain more experience and become regular engineers. In this sense, writing docs is sort of a lower-level activity or punishment, or perhaps a rite of passage.

## Conclusion

What's the most interesting conclusion here? I think the strongest takeaway is that when engineers engage in documentation efforts, they prefer to [treat documentation like they manage code](https://idratherbewriting.com/learnapidoc/pubapis_docs_as_code.html) (using Git, text editors, Markdown, static site generators, building from the server, etc.). This question had majority agreement and provides support for tool directions I've taken when working in developer-centric documentation departments.

Overall, I'm not sure if this survey answered my initial question, which was to find out if the traffic influx to the site consists of engineers. I had the survey on my site for several weeks and barely collected 101 responses. Perhaps many others coming to the site are technical writers, or other folks other than engineers? To try to pinpoint the audience, I'm planning to add a one-question demographic poll on the site for everyone to complete.

Another question, unrelated to this survey, is how to more quickly gauge responses from readers. With thousands of people coming to my site each day, I should be able to tap into those readers to quickly gather feedback about different topics. I'm not sure a note at the top of each page asking users to complete a short survey is the best approach. I dislike pop-up dialogs, but they might get more attention. Either way, I'm having a lot of fun with these surveys.


