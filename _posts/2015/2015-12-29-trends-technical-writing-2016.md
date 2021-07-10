---
title: "My 2016 technical writing trends and predictions, or the ripple effects of API growth on technical writers"
categories:
- api-doc
keywords:
description: "In 2016, the continued growth of APIs will create a ripple effect across the technical writing community that involves a variety of changes. Some of these changes include an increased adoption of Swagger, Markdown, revision control, learning programming, authentication solutions, Write the Docs meetups, new authoring tools, tutorials, API-based CMSs, and more."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/rippleapi.png
---

{{site.data.alerts.note}} This article also appeared in the <a href="http://intercom.stc.org/2016/03/2016-technical-writing-trends-and-predictions-or-the-ripple-effects-of-api-growth-on-technical-writers/">Feb 2016 issue of Intercom.</a> {{site.data.alerts.end}}

## About trends posts
I have often wondered why posts about "trends" tend to get massive reads. And I think I finally understand why.



One reason we read posts about trends is because we want to know whether our skills are evolving to match the changing technology landscape, so that we'll feel comfortable and secure in the future of our jobs.

If we find that technology is changing more rapidly than we can process, we might need to reorient our skillset, adjust our job functions or focuses, or alter our career direction to better align with the demands of the market.

But trends posts are a mixed bag. For trends posts to be interesting, writers have to go beyond the obvious to explore some new, unthought angle about the future. Those kinds of far-out predictions tend to be amusing but unfounded.

I highly doubt you'll be riding to work in your driverless car while coding on a large holographic computer screen, using your hands to manipulate objects like in *Minority Report* while your wearable tech jacket communicates to your doctor a host of data about your health and physical condition (probably that you'll soon die of heart disease from sitting all day).

On the other hand, more conservative predictions about trends for the coming year probably tell you just slightly more than you already know, which is likely disappointing as well. People crave new information and ideas (we're all curious about the future), and there's no better soapbox to evangelize your new ideas than with a trends post, which welcomes grandiose predictions without much backing.

In this trends post, I'll try to avoid both of these pitfalls. I want to start with one main undeniable trend, based on a fact. In this case, the core trend that will act as a starting point is the proliferation of APIs in companies.

Based on this core trend, I'll then extrapolate all the ripple effects of the trend on the technical writing community. Basically, as the following diagram illustrates, the ripple effect of API growth will affect technical writers in a variety of ways.

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/apiripple.svg" | prepend: site.baseurl }}" alt="The ripple effect of APIs on the technical writers" />

## The starting point: APIs, endpoints, device meshes grow in popularity

According to Evans Data (in 2014), about half of the developers worldwide are working on APIs of some kind. Evans Data says:

>"Of the 18.2M software developers in the world, 1.2M are now publishing APIs for external use... 4.7M publish APIs that are external but limited to their partners or registered associates.... Not all APIs are published externally, 8.9M developers worldwide publish APIs for internal use only."

In other words, about 50% of developers are working on internal APIs. Although only about 7% are working on external APIs, technical writers document both internal and external APIs, so it doesn't matter tremendously who the audience is. That's a lot of engineers working on APIs!

What's driving the rapid development of APIs?

Evans Data says:

> “The Internet of Things and the proliferation of platforms across all industries have led to an explosion in the number of developers publishing APIs externally” said Janel Garvin, CEO of Evans Data.” We expect that number to increase proportionately in relation to the population going into the next three years, and not just keep up with projected population growth.” ([1.2 Million Developers Publish APIs for External Use, New Evans Data Developer Population Study Finding](http://www.evansdata.com/press/viewRelease.php?pressID=207))

Gartner reports a similar trend. In their 2016 tech trends, they list the "device mesh" as a top trend:

> The device mesh refers to an expanding set of endpoints people use to access applications and information or interact with people, social communities, governments and businesses. The device mesh includes mobile devices, wearable, consumer and home electronic devices, automotive devices and environmental devices — such as sensors in the Internet of Things (IoT)."

> In the postmobile world the focus shifts to the mobile user who is surrounded by a mesh of devices extending well beyond traditional mobile devices," said Mr. Cearley.

> While devices are increasingly connected to back-end systems through various networks, they have often operated in isolation from one another. As the device mesh evolves, we expect connection models to expand and greater cooperative interaction between devices to emerge. ([Gartner Identifies the Top 10 Strategic Technology Trends for 2016](http://www.gartner.com/newsroom/id/3143521))

The device mesh means a large number of objects are connected to each other, so that it's one interconnected techscape of devices, all interacting with your own device as you navigate past them.

The device mesh interacts through a set of "endpoints" that allow the different systems to access applications and information.

A "set of endpoints" is another way of referring to an API, or application programming interface. An API exposes endpoints to allow other systems to interact with it.

Through the endpoints, these external systems make requests for data, and the API returns the requested data. The web has become a mashup of services that are interconnected through APIs.

How does this trend in APIs affect technical writers?

Chances are your company will be developing an API or at least exposing some endpoints for customers to interact with. Your job will be to document the API and its endpoints.

Most likely the API you document will be a REST API, since the software-as-a-service (SaaS) model is proliferating more than downloadable libraries. Everything is going online.

Additionally, since REST APIs are language agnostic, they're the most understandable kind of APIs out there for technical writers &mdash; you don't need to know programming as you do with the more traditional kinds of native library APIs (Java, C++, .NET).

Based on the fact that APIs are growing by leaps and bounds, here are some potential ripple effects on the technical writing community.

## 1. Use of Swagger with API docs becomes an expectation

You'll want to make your API documentation easy to understand and interactive. To do this, most likely you will describe your API following the [Swagger spec](https://github.com/swagger-api/swagger-spec).

The Swagger spec will allow you to publish your documentation in an interactive way that allows developers to quickly see the parameters in the requests and the responses. More importantly, Swagger will allow developers to try out the endpoints for themselves (inside your documentation) and see the exact format of the requests and responses.

The Swagger specification (as well as other specifications, such as RAML or API Blueprint) will also facilitate the discovery of your API by larger systems and allow you to plug into more robust and standardized tooling for your API.

Many development shops will realize that building everything from scratch isn't so cost effective when developing APIs. As a result, API developers will plug into API management platforms like [Mulesoft](http://mulesoft.com/), [Apigee](http://apigee.com/about/), or [Apiary](https://apiary.io/) to provide the security, licensing, authorization, access, SDKs, and other needed components for their API. These platforms leverage specifications like Swagger to provide some of the coolest interactive interfaces for API docs.

## 2. Markdown as an authoring format gets taken more seriously by the tech comm community

As you work with engineers who are developing APIs, you will be immersed in engineering cultures that are choosing to embrace Markdown more than XML. Most of the specifications mentioned in the previous section also allow Markdown, as do other API-doc tools.

Since API documentation at times contains highly technical material that is most suitable to be authored by engineers themselves, engineers will opt for solutions that involve Markdown instead of XML. These same engineers are often the ones building the tools that writers use, so their preferences will help drive the adoption of Markdown.

You can see this, for example, with [readme.com](http://readme.com), which was created by a developer/designer for API doc and uses Markdown.

In short, if developers are collaborating on docs, you will likely adopt tools that developers prefer.

(Update: Note that Markdown isn't the only format developers prefer. [Asciidoc](http://www.methods.co.nz/asciidoc/) is popular for those using [Asciidoctor](http://asciidoctor.org/), and [reStructuredText](http://docutils.sourceforge.net/rst.html) (RST) is popular for those using Sphinx and [Readthedocs.org](https://readthedocs.com). Both Asciidoc and RST use wiki-like syntax for producing HTML from text file formats. I only singled out Markdown because I think it's more widely known and has tremendous momentum, especially if your content is in Github.)

## 3. Github as a collaboration platform rises in popularity among tech writers

As you get immersed in API documentation and developer workflows, one developer utility that will likely see more prominence among the technical writing community is Github.

Instead of purchasing a component content management system (CCMS) for hundreds of thousands of dollars and converting all your content to DITA XML in order for the CCMS to process it, we'll see a rise in revision control systems like Github and Bitbucket as a means of interaction and collaboration among technical writers (not just among developers).

Although Github and Bitbucket are designed for developers, if you're authoring in text files (especially using Markdown) and collaborating with engineers, it will be a natural fit to plug into their same revision control systems.

These tools allow technical writers to further close the gap between themselves and engineers &mdash; you'll be living in the same world.

(To read more about Github with tech comm, see Anne Gentle's post [Why use GitHub as a Content Management System?](http://justwriteclick.com/2015/12/17/why-use-github-as-a-content-management-system/).

## 4. Write the Docs meetup groups proliferate over STC

Another trend emerging is participation in [Write the Docs](http://www.writethedocs.org/) meetups instead of the [STC](http://stc.org). Write the Docs is free and tends to include more technical, developer-oriented technical writers (including engineers doing technical writing). The group is more agile and can pivot to adjust to the latest trends.

When you want to talk shop about static site generators, API documentation, and other developer platforms, you'll find more community in Write the Docs. (If you're in the San Francisco Bay area, you can [join the Write the Docs group here](http://www.meetup.com/Write-the-Docs/).)

## 5. Security paranoia forces authentication of docs

Wiring up everything to the Internet creates a new wave of security vulnerabilities, especially for products that can result in actual death.

*WIRED* says that from automobiles to pacemakers, sniper rifles to baby monitors, anything that includes wifi can be hacked, and these security vulnerabilities can result in user deaths.

*WIRED's* Andy Greenberg and Kim Zetter write about the dangers of wifi in the automobile industry:

>Security researchers Charlie Miller and Chris Valasek forever altered the automobile industry’s notion of “vehicle safety” in July when they demonstrated for WIRED that they could remotely hack a 2014 Jeep Cherokee to disable its transmission and brakes. (See [How the Internet of Things Got Hacked](http://www.wired.com/2015/12/2015-the-year-the-internet-of-things-got-hacked/))

The security vulnerabilities associated with the Internet of Things will renew and reinforce a paranoia among companies to keep documentation about how to access and configure their APIs behind closed doors. Documentation will require secure authentication, especially for markets where a hacker can do real damage.

At the same time, the increased need for visibility and thought leadership online will require companies to establish themselves on the web through content marketing and other publishing activities. Now more than ever users are turning to Google for information about everything, and if you're not there, your company won't be visible.

## 6. Tech writers explore non-traditional tools instead of HATs

As technical writers start documenting APIs, they'll start looking at a lot of API doc sites for examples. They'll meet with UX designers who may suggest the most usable ways to present reference topics that show the endpoints, parameters, sample requests, sample responses, and so on.

In this new landscape, more technical writers will explore non-traditional tools, such as static site generators and other sites such as readme.com, readthedocs.com, Sphinx, Corilla, and Asciidoctor, which give them more flexibility to design powerful user experiences.

Since API docs are essentially the user interface for products, technical writers will work hand-in-hand with UX designers to deliver modern, user-friendly websites. The tripane site-in-a-box output from traditional help authoring tools will be pushed aside for more contemporary UX tools.

Note that there won't be a massive migration to new tools. Technical writers cannot make tool changes very quickly given the enormous difficulty of moving legacy documentation from one format to another and the steep requirements technical writers usually have for content re-use, single sourcing, and multichannel outputs.

But there will be more interest in web tools that give technical writers greater flexibility and power to document web APIs in modern ways on the web.

## 7. Technical writers create more tutorials (instead of just tasks)

The shift to API documentation doesn't necessarily mean a complete paradigm shift for technical writers. Sarah Maddox notes that API writing isn't that different from regular technical writing:

>The writing side isn't all that different from user-focused technical writing. You're telling people how to use something. In this case, it's an API or SDK or other tool" ([How to become an API technical writer](https://ffeathers.wordpress.com/2013/08/17/how-to-become-an-api-technical-writer/))

However, rather than producing documentation that consists of small, independently chunked tasks (which has dominated the thinking of technical writers for the past two decades, especially with the rise of DITA), technical writers will create more *tutorial-based content*, because the task-based model for tech docs doesn't necessarily fit API docs.

With APIs, developers have a list of endpoints they can call to get specific information. Your main job in documenting an API is to explain the types of information users can retrieve, and how to specify the requests.

Endpoint documentation doesn't necessarily fit the task-based model. The variety of ways users can leverage the information into their own applications exceeds the simple 1-2-3 steps of tasks that are more common in software interfaces.

Users will still need handholding to understand how to get the API keys, how to construct a request, how to use an SDK, and more. But this sort of information will fit better into a tutorial &mdash; similar to a Hello World Tutorial or Getting Started Tutorial &mdash; than a standalone task.

## 8. Technical writers study at least one programming language

Although REST APIs don't necessarily require you to know a programming language, when you write for developers, usually some programming language (whether it's Java, JavaScript, Python, or something else) becomes important to know.

As a best practice, most companies provide reference implementations or sample apps that show a basic integration of their API with a specific platform.

For example, take a look at [Parse's documentation for various platforms](https://parse.com/docs). If you just provide the API and nothing else, you put a lot of burden on developers to figure out the specifics for their own platform.

As technical writers try to get a foothold in the developer doc world, they'll turn to online courses to learn a programming language related to the project they're working on. This learning will not only build their confidence with the product, it will also encourage more integration into the developer's environment and mindset.

## 9. Technical writers deliver content via APIs themselves

As technical writers interact with APIs, explaining how to retrieve data and integrate it into web applications, technical writers will become curious about delivering some of their own doc content through an API.

In an earlier post, I provided a basic approach to rendering your content as a JSON file that can be consumed through JavaScript inside an application interface. See [Help APIs and UI Tooltips](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_help_api).

[Contentful](https://www.contentful.com/) is an actual API service to manage your content. According to their site, Contentful is "a content delivery backend with a RESTful JSON API, plus a web app for managing the content" ([Developer Center](https://www.contentful.com/developers/docs/).

In the demo tutorial, Contentful shows a sample request to return some content:

```bash
curl 'https://cdn.contentful.com/spaces/developer_bookshelf/entries?access_token=0b7f6x59a0&content_type=book'
```

This request (which you can run in your terminal &mdash; try it) returns the following JSON object:

```json
{
  "sys": {
    "type": "Array"
  },
  "total": 2,
  "skip": 0,
  "limit": 100,
  "items": [
    {
      "sys": {
        "space": {
          "sys": {
            "type": "Link",
            "linkType": "Space",
            "id": "developer_bookshelf"
          }
        },
        "type": "Entry",
        "contentType": {
          "sys": {
            "type": "Link",
            "linkType": "ContentType",
            "id": "book"
          }
        },
        "id": "5PeGS2SoZGSa4GuiQsigQu",
        "revision": 1,
        "createdAt": "2015-12-08T15:45:54.394Z",
        "updatedAt": "2015-12-08T15:45:54.394Z",
        "locale": "en-US"
      },
      "fields": {
        "name": "An introduction to regular expressions. Volume VI",
        "author": "Larry Wall",
        "description": "Now you have two problems."
      }
    },
    {
      "sys": {
        "space": {
          "sys": {
            "type": "Link",
            "linkType": "Space",
            "id": "developer_bookshelf"
          }
        },
        "type": "Entry",
        "contentType": {
          "sys": {
            "type": "Link",
            "linkType": "ContentType",
            "id": "book"
          }
        },
        "id": "2CfTFQGwogugS6QcOuwO6q",
        "revision": 2,
        "createdAt": "2015-12-08T15:45:17.684Z",
        "updatedAt": "2015-12-08T15:45:23.197Z",
        "locale": "en-US"
      },
      "fields": {
        "name": "How to manage content in a developer-friendly manner",
        "author": "Contentful",
        "description": "Make an API request, get JSON in return."
      }
    }
  ]
}
```

You would then use JavaScript to display parts of the JSON that you want on your web page.

Contentful also allows you to create and update content, deliver previews, download assets, and more.

By storing the content on an API server in the cloud and allowing applications to download the content they need, Contentful allows for multi-channel delivery across any number of sites and platforms, essentially replacing the need for a content management system.

I doubt Contentful will gain early traction in the tech comm market any time this year, but the idea of delivering user interface content (such as tooltips or interface tutorials) through a JSON file is something that is going to grow in popularity. I delivered UI content using Jekyll and the method I [described earlier](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_help_api), and I found it incredibly effective. I was able to single source the definitions from my main documentation help into both the JSON file (used for UI tooltips) and various documentation pages.

Contentful may have slow adoption in the tech comm community, but it's one of the fastest growing APIs. Take a look at this article on Programmableweb.com: [How SDKs and Community Drove Contentful's 2000% Growth In Two Years](http://www.programmableweb.com/news/how-sdks-and-community-drove-contentfuls-2000-growth-two-years/analysis/2015/12/03).

Contentful's main audience includes [media publishers and digital creative agencies](http://www.programmableweb.com/news/how-sdks-and-community-drove-contentfuls-2000-growth-two-years/analysis/2015/12/03?page=3) but I think this audience may eventually expand into other markets as well.

## Other trends

Although I focused exclusively on the ripple effects of API growth, there are many other trends I haven't covered here. I'm sure other writers will pick up on them.

When analyzing trends, I recommend that you look at technology trends in general, since documentation tends to piggyback on engineering trends.

If there are other ripple effects to API growth that I haven't considered here, please let me know.

If you want some tips on how to document APIs, see my free course, <a href="https://idratherbewriting.com/learnapidoc/">Documenting REST APIs</a>. (This is a resource I keep adding to and growing, so keep watching it.)
