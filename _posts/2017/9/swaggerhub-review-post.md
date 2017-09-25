---
title: "SwaggerHub review post"
categories:
- api-doc
keywords:
summary: ""
bitlink: http://bit.ly/
published: false
---

Smartbear recently announced [support for the 3.0 version of the OpenAPI (Swagger) spec in SwaggerHub](https://swaggerhub.com/blog/news/openapi-3-0-swaggerhub-support/). The 3.0 version of the OpenAPI spec provides a number of enhancements, which you can read about [here](https://swagger.io/announcing-openapi-3-0/).

(If you're unfamiliar with the OpenAPI landscape, [Smartbear](https://smartbear.com/) is the company that maintains and develops the open source Swagger tooling (Swagger Editor, Swagger UI, Swagger Codegen, and others). Smartbear formed the OpenAPI Initiative and leads the evolution of the [Swagger (OpenAPI) specification](https://github.com/OAI/OpenAPI-Specification/). Smartbear developed [SwaggerHub](https://swaggerhub.com/) as a way for teams to collaborate around the Swagger spec. Swagger was the original name of the spec, but it was changed to the "OpenAPI spec" to reinforce the open, non-proprietary nature of the standard.)

I've written in the past about how [Swagger-related posts are the most visited posts](http://idratherbewriting.com/2017/01/17/trends-2017-swagger-all-the-way/) on my site. Swagger continues to be the most dominant specification for describing REST APIs. Because of this, I added a [tutorial on Swagger](http://idratherbewriting.com/learnapidoc/pubapis_swagger_intro.html) and information on [Managing Swagger Projects with SwaggerHub](http://idratherbewriting.com/learnapidoc/pubapis_swaggerhub_smartbear.html).

## Why Swagger is so popular

The Swagger/OpenAPI spec continues to be popular because it provides a standard in an area of technology that is a wild west of differing options, approaches, and terminology. Many technical writers who want to learn more about API documentation are overwhelmed by breadth and diversity in this area. It's not that there are new terms, new tools, and new documentation techniques. It's that there are *so many conflicting terms, competing tools, and varying documentation techniques* that unless you're a maven in this space, it's hard to know the right path to follow.

What do you call all of your endpoints/methods/objects/resources/paths. How do you refer to the various types of path/query/body/head parameters? What format do you follow in the documentation? Do you auto-generate content from the code, or describe the API manually? Do developers write the content, or technical writers, or both?

It's like being dropped off in a busy, bustling city in another continent, without a map or idea of transportation, and without a clear idea of where you even need to go, just that you need to go somewhere, and do something.

When you find the Swagger spec, you suddenly have a map and a direction. You have a language to describe it all. You have a documentation template to populate. You have an idea of what developers want, and you're inspired with confidence by the positive reception most developers have the interactive, try-it-out documentation format. It's a win all around -- the spec grounds technical writers with direction and a map for success in an area rife with confusion and complexity.

## Struggling against the complexity of the spec

If the spec were simple and easy to follow, producing documentation would be a no-brainer for both developers and technical writers. However, because the API landscape is technically diverse, the spec has to be flexible enough to support this technical diversity. Unlike library-based APIs (like Java APIs or SOAP), REST is an architectural style that follows a number of characteristics, not an exact protocol that all systems follow in the same way.

The architectural style means there's a lot of variety from one API to the next. While this variety helps reinforce the importance of the documentation (otherwise, users would never figure out your API), it also means that forming a specification that allows you to describe all of these APIs is a complex undertaking. You can't have a simple spec that masterfully describes a deeply complex technology.

As a result, the Swagger spec can be somewhat time-consuming to understand and create, especially if you're doing it manually. In a [comment thread on Hacker News](https://news.ycombinator.com/item?id=14035936) about Swagger's technical limitations, one developer writes:

> My problem with Swagger is almost the opposite... it solves the problem (APIs are very complicated to use!) by embracing this complexity with more complexity and more tools. Rather, I believe the solution is a push to just have simpler APIs.
>
> It's crazy to me that it's harder to write a Swagger file than it is to write the API itself. And there's a lot of tooling that benefits from Swagger, but... I've found they all work 80%. Codegen, documentation, etc get 80% of the way there.

And another comment:

> I've implemented Swagger with several APIs and agree that it's crazy complex and time-consuming to write Swagger files manually.
>
> I believe the best use-case for Swagger is to develop the API (perhaps just defining the routes with payload and response, but without controllers), and then auto-generating the Swagger files. This way the API consumers always have an up-to-date documentation, and there is only one place which represents the current state of the API.

And another:

> I had these same issues. It took me considerably more time and effort to write a Swagger spec and get the UI to actually behave than it did to write my entire API and some simple docs in markdown.
>
> I also tried out the "codegen" and a few other projects that generate boilerplate from a spec (for Python) - the code it generated was frustrating, lengthy, and much more complex than the simple endpoints that I quickly wrote from scratch.

Remember this is Hacker News, so most users are developers. Not all of them share the same thoughts about the complexity of the spec. One commenter says "Swagger yaml is hard to write? Hmm.. relative to the code that services it or consumes it, I find its pretty trivial." Others are debating whether it's easier to generate the spec from comments in the code or to write it manually.

My point in quoting these comments is to argue that creating the Swagger spec is not a simple undertaking, and that even many developers find it a complex task. But given the complexity of the information, I don't see how the Swagger spec could somehow be any less complex than the complexity it describes.

This complexity presents a problem. For many technical writers, they may quickly decide that they don't have time to sink a few weeks into learning (and troubleshooting) the spec. They may punt the task into the developer's domain to create, then offer to edit the content the developer provides.

I'm not a fan of this approach, as it usually portrays technical writers as grammar/language editors only and reinforces their technical inadequacy. Most developers write documentation in hasty, poor ways, and technical writers end up struggling to sort out and simplify the meaning. Developers will naturally gravitate toward adding comments in the code to auto-generate the Swagger spec, and unless you're granted access to branch and commit to the code repo, it might be difficult to edit and contribute to the generated spec.

## Collaborative tools as a solution

I've argued that the OpenAPI/Swagger spec provides the much-needed roadmap for REST API documentation, but that this spec is complex to create. As a result, technical writers are often intimidated by it and, given their busy workloads, will tend to fall back on more familiar, free-form approaches for documentation.

What's the solution to overcoming the technical hurdles and satisfying the needs of both technical writers and developers with REST API documentation? This is where SwaggerHub comes into view.

SwaggerHub provides a collaboration point for technical writers and developers to interact. I'm usually hesitant to point towards tools as a solution to problems (even with my proclivity for doc tools), but SwaggerHub is a different sort of tool. A cloud-based solution, SwaggerHub provides a space where both developers and technical writers can interact in creating the spec.

If technical writers are more familiar with the Swagger spec, they can create a skeleton outline for the various endpoints, parameters, sample requests, and other details. Then developers can log in and add the details to the skeleton outline. In this way, technical writers can guide developers through the documentation process.

Conversely, if a developer team is familiar with the Swagger spec, he or she can create the skeleton outline, and the technical writer can fill in the details or edit and shape the content.

The point is that SwaggerHub acts as a point of collaboration that brings technical writers and developers together, working on the same content. They aren't emailing files back and forth. They don't need to create and merge branches in git. In fact, SwaggerHub even allows users to add comments in the margins of the spec, so when a developer provides a half-baked jargon-filled description of something, you can highlight it and ask, "What do you mean here?" to get more information.

The Swagger spec provides a kind of template that




relevance hook:
- support for 3.0
- addition in my api course
- swagger continues to be popular. remains top-viewed page on my site
- hypothesis: popularity of swagger due to the spec, the guidance. the spec nails down things to a model to follow. devs love this model. its like giving them a form to write.
- problem: not a simple path to follow. spec is undeniably difficult.
- solution: better tools can make life easier. particular, tools that enable collaboration. some of the problems are that devs don't want to write, but devs possess the right knowledge.

the issue:
-

1. spec provides the guidance people need.
2. main idea: crazy difficult to write spec by hand, but by hand is the trend most people are following.
3. what is next idea: tool provides the solve for this? yeah, sort of...





- why not just use free version
- how does this tool pose a shift? with dev doc, you work with engineers
- what's new in the tool
- what was discussed at conference
- 3.0 support. always support the latest version of the spec. big deal.
- gives users guidance on what to document, how to do it. this is huge for engineers. otherwise, what
would they write? it would be free for all
- what is story? is swaggerhub taking off with engineers or with regular TWs?
- my role is evolving to provide support for engineers to write.
- **devs used to documenting ref aspects of an api. they did this with javadoc, doxygen. so they have a natural
inclination to do it. give them a tool.**
- **giving devs a tool also gives them a process, a form to fill out, guidance. without it, there would be so many**
diff. approaches to something.
- **you remove burden from yourself this way. no longer do you bear the brunt of all the doc tasks.**
- **you support lots of engineering teams. provide them with a tool, guidance, access, and ability to deliver. you need a platform. you can help them get started. you can see them thru, without having to author all yourself.**
- **tech writers also need handholding. what do you document, what do you call all of these things? following the swagger spec can be huge. but you don't want to do it all yourself. this is not possible in dev doc. the stuff is so freaking complicated that you'll die if you choose this route. so you need a collaborative tool.**
- **popularity of api doc site is b/c tw need lots of guidance with this topic.**
- develop content in a format independent of the output. this is crucial. lets you migrate doc from one platform to another more easily. like dita and platforms.
- **they just announced support for 3.0.** https://swaggerhub.com/blog/news/openapi-3-0-swaggerhub-support/#more-645. lead with this.
https://app.swaggerhub.com/help/openapi-3-support?_ga=2.116763654.1886138830.1506268487-141146686.1506268487


http://swaggerhub.com/wp-content/uploads/2017/02/Documenting-An-Existing-API-with-Swagger-2.pdf

-------

cs 2

main idea: the spec provides a guide

- is this a good premise?
- does mister wizard support this idea?
- is this idea taking off?



gkoberger 173 days ago [-]

In my experience (we have a product where people upload Swagger files), most people write it by hand. There's two reasons:
1) Many people use Swagger to design (rather than document), meaning the Swagger comes before the code
2) Most people just prefer to write it out, since the tooling otherwise isn't necessarily great (especially for non-developers)
**We ran a poll and "by hand" (either on Swagger Hub/Apiary, or locally) won by a landslide.**
https://news.ycombinator.com/item?id=14035936

dwaltrip 172 days ago [-]

How does a non-developer know how to document or design an API?

numbsafari 172 days ago [-]

Perhaps the first pass of the doc is written by a developer but it is later updated by a tech-writer, or you need to produce a translated version.

main prob: hard to write the spec by hand. tech writers already overwhelmed


**here's wahts'  new in 3.0:
The overall structure of the specification was refactored for better reusability
Added Support for describing callbacks
Links to express relationships between operations
The JSON schema includes support for: oneOf, anyOf and not
Improved parameter descriptions, including the ability to use a schema
Better support for multipart document handling
Cookie parameters are in; dataForm parameters are out
Body parameters have their own entity
Better support for content-type negotiation
The security definitions have been simplified and enhanced**
https://swagger.io/announcing-openapi-3-0/

- this remains one of the biggest gaps and opps for tw's
- devs are hungry for a spec to consume, a model to follow. swagger provides this. sure it has limitations, but ..
- how can you learn it quickly and guide others?
- how can devs learn it? everyone is too busy...
- can be diff. to create. acknowledge, sure.
- gives you substance to become an expert in your field, more than just writer
- why didn't you implement swagger last time you had a chance?
- the challenge is that it's hard to actually learn this spec


**My problem with Swagger is almost the opposite... it solves the problem (APIs are very complicated to use!) by embracing this complexity with more complexity and more tools. Rather, I believe the solution is a push to just have simpler APIs.
It's crazy to me that it's harder to write a Swagger file than it is to write the API itself. And there's a lot of tooling that benefits from Swagger, but... I've found they all work 80%. Codegen, documentation, etc get 80% of the way there.** https://news.ycombinator.com/item?id=14035936

main idea: crazy difficult to write spec by hand, but by hand is the trend most people are following.
- this is backed by the popular traffic to my swagger tutorial page.
----------

cs 3:

what is main idea so far:

1. spec provides the guidance people need.
2. main idea: crazy difficult to write spec by hand, but by hand is the trend most people are following.
3. what is next idea: tool provides the solve for this? yeah, sort of...
4. It’s difficult to gather feedback from reviewers about specific parts of the spec

how does the tool provide the solution?
- provides a collaboration point between writers and developers

what else does the tool do?
- provides versioning
- more powerful editor

is the tool ever the solution? don't we often make this assumption? the tool will save the day?

when has the tool provided the solution?
in this case, is the solution really collaboration?
what's the real problem?
- you have a difficult spec that is hard to learn/absorb

what do users of swaggerhub say?

does their coupling of the tool with their sponsorship of the spec make them more potent? i think so.

at the end of the day, don't we tend to think all problems can be resolved with tools, whereas this might be a people problem?

how do you know when something is a tool problem versus a people problem?

what exactly is the problem? no direction, no pattern, no standard.

the spec imposes a standard, and with that standard, a pattern, a set of terms, the tool just brings it all together. makes a lot of sense.

do you have to have a rest api in order to use swagger.

is there a parallel where the tool has provided a solution? yeah, sometimes tools work out great.
