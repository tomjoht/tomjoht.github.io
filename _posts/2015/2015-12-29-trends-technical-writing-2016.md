---
title: 2016 technical writing trends and predictions
categories:
- api-doc
keywords: 
summary: ""
published: false
---

I have often wondered why posts about "trends" tend to get massive reads. And I think I finally understand why. 

One reason you read posts about trends because you want to keep up with the latest changes in the technology landscape. You want to know whether your skills are evolving to match the changing technology, so that you'll feel comfortable and secure in the future of your job.

If you find that technology is changing more rapidly than you can process, you might need to reorient your skillset, adjust your job functions or focuses, or alter your career direction to better align with the latest and most marketable technology demands.

But trends posts are a mixed bag. For trends posts to be interesting, analysts have to go beyond the obvious to explore some new, unthought angle about the future. But those kinds of far-out predictions tend to be bogus and unfounded. 

I highly doubt you'll be riding to work in your driverless car while coding on a large holographic computer screen, using your hands to manipulate objects like in Minority Report while your wearable tech jacket communicates to your doctor that you're developing heart disease from sitting all day.

On the other hand, more conservative predictions about trends for the coming year probably tell you just slightly more than you already know, which is likely disappointing as well. People crave new information and ideas.

In this post, I'm going to try to ground the trends in real facts but also spin them into all the various dimensions and angles I can.

## APIs, endpoints, device meshes

To understand the ongoing changes in the technology landscape, start with this one fact: about half of the developers worldwide are working on an API of some kind. In a February 2014 article by Evans Data, a research organization, the researchers explain:

>"Of the 18.2M software developers in the world, 1.2M are now publishing APIs for external use... 4.7M publish APIs that are external but limited to their partners or registered associates.... Not all APIs are published externally, 8.9M developers worldwide publish APIs for internal use only."

Can you believe that 50% of developers are working on internal APIs? Although only about 6 to 7%  work on external APIs, technical writers document both internal and external APIs, so it doesn't matter tremendously who the audience is. That's a lot of engineers working on APIs! 

What's driving the rapid development of APIs?

Evans Data says:
 
> “The Internet of Things and the proliferation of platforms across all industries have led to an explosion in the number of developers publishing APIs externally” said Janel Garvin, CEO of Evans Data.” We expect that number to increase proportionately in relation to the population going into the next three years, and not just keep up with projected population growth.” ([1.2 Million Developers Publish APIs for External Use, New Evans Data Developer Population Study Finding](http://www.evansdata.com/press/viewRelease.php?pressID=207))

Gartner reports a similar trend. In their 2016 tech trends, they list the "device mesh" as a top trend:

> The device mesh refers to an expanding set of endpoints people use to access applications and information or interact with people, social communities, governments and businesses. The device mesh includes mobile devices, wearable, consumer and home electronic devices, automotive devices and environmental devices — such as sensors in the Internet of Things (IoT)."

> In the postmobile world the focus shifts to the mobile user who is surrounded by a mesh of devices extending well beyond traditional mobile devices," said Mr. Cearley. 

> While devices are increasingly connected to back-end systems through various networks, they have often operated in isolation from one another. As the device mesh evolves, we expect connection models to expand and greater cooperative interaction between devices to emerge.

>[Gartner Identifies the Top 10 Strategic Technology Trends for 2016](http://www.gartner.com/newsroom/id/3143521)

The device mesh interacts is through a set of "endpoints" that allow the different systems to access applications and information. 

A "set of endpoints" is another way of referring to APIs, or application programming interfaces. APIs expose endpoints that allow other systems to interact with it. Through the endpoints, these external systems make requests for data, and the API server returns the requested data. The web has become a mashup of interconnected services through APIs.

How does this trend affect technical writers?

Chances are your company will be developing an API or at least exposing some endpoints for customers to interact with your product. Your job will be to document the API. 

Most likely it will be a REST API, since the software-as-a-service (SaaS) model is proliferating more than downloadable libraries. REST APIs are the most accessible kind of APIs out there, and don't require you to know programming like the more traditional kinds of native library APIs (Java, C++, .NET) APIs.

Because the REST APIs are web-based, it will only make sense to put the documentation for these web services on the web as well. Few developers will want a PDF for these APIs. Most developers want to browse modern websites to get details about the endpoints they're using. Your job will be to get the API documentation online in a way that's easy to find and navigate.

{{site.data.alerts.tip}} If you want to get a headstart on learning how to document APIs, see my course: <a href="http://idratherbewriting.com/docapis_course_overview/">Documenting REST APIs</a>. {{site.data.alerts.end}}

## Swagger UI to accompany API docs

You'll want to make your API documentation interactive and developer-oriented. To do this, most likely you will describe your API following the [Swagger spec](https://github.com/swagger-api/swagger-spec). The Swagger spec will allow you to publish your documentation in an interactive way that allows developers to quickly see the parameters in the requests and the responses. More importantly, it will allow developers to try out the endpoints for themselves and see the exact format of the requests that are submitted and the data that is returned.

The Swagger format will also facilitate the discovery of your API by larger systems and allow you to plug into more robust and standardized tooling for your API. Many development shops will realize that building everything from scratch isn't so cost effective; instead, API developers will plug into API management platforms like [Mulesoft](http://mulesoft.com/), [Apigee](http://apigee.com/about/), or [Apiary](https://apiary.io/) to provide the security, licensing, authorization, access, SDKs, and other needed components for their API solution. These platforms leverage specifications like Swagger to describe the APIs.

## Markdown as the authoring format

As you work with engineers who are developing APIs, you will be immersed in engineering cultures that are choosing to embrace Markdown more than XML. Most of the specs allow Markdown, as well as other API-doc tools. 

Since API documentation at times contains highly technical material that is most suitable to be written by engineers themselves, they will opt for solutions that involve Markdown instead of  XML. In short, if developers are collaborating, you will likely look for tools that developers prefer. 

## Github as a collaboration platform

As you get immersed in API documentation and developer workflows, one developer tool that will likely see more prominence among the technical writing community is Github. 

Instead of purchasing a component content management system (CCMS) for hundreds of thousands of dollars and converting all your content to DITA XML in order for the CCMS to parse your content, we'll see a rise in revision control systems like Github and Bitbucket as a means of interaction and collaboration among technical writers (not just developers).

Although Github and Bitbucket are designed for developers, if you're authoring in text files (using Markdown) and collaborating with engineers, it will be a natural fit to plug into these revision control systems. These tools allow technical writers to further close the gap between themselves and engineers &mdash; you'll be living in the same tool world.

## Write the Docs meetup groups

Another trend I see emerging is participation in [Write the Docs](http://www.writethedocs.org/) instead of the [STC](http://stc.org). The STC is associated with more traditional tech comm methods, with XML and old-school publishing (like Framemaker). But people are tired of paying costly association fees without seeing any tangible and impressive returns. 

Write the Docs is free and tends to include more technical, developer-oriented technical writers. It's a group that isn't encumbered by bureaucracy and politics. It's more agile and can pivot to adjust to the latest trends. 

When you want to talk shop about static site generators, API documentation, and other developer platforms, you'll find more community in Write the Docs than you will with STC.



