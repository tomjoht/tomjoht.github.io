---
title: "SwaggerHub review post"
categories:
- api-doc
keywords:
summary: ""
bitlink: http://bit.ly/
published: false
---

*Note: SwaggerHub is one of the sponsors of my site.*

## A world standard for describing REST APIs

Smartbear recently announced [support for the 3.0 version of the OpenAPI (Swagger) spec in SwaggerHub](https://swaggerhub.com/blog/news/openapi-3-0-swaggerhub-support/). The 3.0 version of the OpenAPI spec provides a number of enhancements (such as for callbacks, linking between operations, enhanced examples, and easier re-use), which you can read about [here](https://swagger.io/announcing-openapi-3-0/).

(If you're unfamiliar with the OpenAPI landscape, [Smartbear](https://smartbear.com/) is the company that maintains and develops the open source Swagger tooling (Swagger Editor, Swagger UI, Swagger Codegen, and others). Smartbear formed the OpenAPI Initiative and leads the evolution of the [Swagger (OpenAPI) specification](https://github.com/OAI/OpenAPI-Specification/). [SwaggerHub](https://swaggerhub.com/) was developed by Smartbear as a way for teams to collaborate around the Swagger spec. Swagger was the original name of the spec, but it was changed to the "OpenAPI spec" to reinforce the open, non-proprietary nature of the standard. People refer to both names interchangeably.)

I've written in the past about how [Swagger-related posts are the most visited posts](http://idratherbewriting.com/2017/01/17/trends-2017-swagger-all-the-way/) on my site. Swagger continues to be the most dominant specification for describing REST APIs &mdash; in fact, in a [webinar on the OpenAPI 3.0 spec](https://zoom.us/webinar/register/293803506/success?user_id=aaANmfCXRHiEjpR25qzVBg&occurrence_times=%3B1506520800000), Smartbear says Swagger "as emerged as the world’s standard for defining and describing RESTful APIs." Because of this emergence as the world standard, in my [API course](http://idratherbewriting.com/learnapidoc/), I added a [tutorial on Swagger](http://idratherbewriting.com/learnapidoc/pubapis_swagger_intro.html) and another tutorial on [Managing Swagger Projects with SwaggerHub](http://idratherbewriting.com/learnapidoc/pubapis_swaggerhub_smartbear.html).

## Why Swagger is so popular

What accounts for Swagger's popularity and world dominance? The Swagger/OpenAPI spec continues to be popular because it provides a standard in an area of technology that is a wild west of differing options, approaches, and terminology. Many technical writers who want to learn more about API documentation are overwhelmed by breadth and diversity in this area. It's not that there are new terms, new tools, and new documentation techniques in this space. It's that there are *so many conflicting terms, competing tools, and varying documentation techniques* that unless you're a maven with APIs, it's hard to know the right path to follow.

What do you call all of your endpoints/methods/objects/resources/paths? How do you refer to the various types of path/query/body/head parameters? What template do you follow in your API documentation to cover the various elements in the API reference? Do you auto-generate content from the code, or describe the API manually? Do developers write the content, or technical writers, or both? Where do you publish your API docs, and how do you integrate the information into your user guides and other help material?

Documenting an API is like being dropped off in a busy, bustling city in another continent, without a map or idea of transportation, and without a clear idea of where you even need to go, just that you need to go somewhere, and do something.

When you find the Swagger spec, you suddenly have a map and a direction. You have a language to describe it all. You have a documentation template to populate. You have an idea of what developers want, and you're inspired with confidence by the positive reception most developers have with Swagger UI's ouput. It's a win all around &mdash; the spec grounds technical writers with direction and a map for success in an area rife with confusion and complexity. No wonder Swagger is so popular.

## Struggling against the complexity of the spec

If the spec were simple and easy to follow, producing documentation would be a no-brainer for both developers and technical writers. However, because the API landscape is technically diverse, the spec has to be flexible and diverse enough to support this technical diversity.

Unlike SOAP, REST is an *architectural style* that follows a number of characteristics, not an exact protocol that all systems follow in the same way (see [What is a REST API?](http://idratherbewriting.com/learnapidoc/docapis_what-is-a-rest-api.html)). The architectural style means there's a lot of variety from one API to the next. While this variety helps reinforce the importance of the documentation (otherwise, users would never figure out your API), it also means that forming a specification that allows you to describe all of these APIs is a complex undertaking. To describe a complex technology, with all the variations around endpoint operations, parameter types, authorizations used, response formats, etc., your spec must also be somewhat complex.

As a result, the Swagger spec can be somewhat time-consuming to understand and create, especially if you're creating it manually. In a [comment thread on Hacker News](https://news.ycombinator.com/item?id=14035936) about Swagger's technical limitations, one developer writes:

> My problem with Swagger is almost the opposite... it solves the problem (APIs are very complicated to use!) by embracing this complexity with more complexity and more tools. Rather, I believe the solution is a push to just have simpler APIs.
>
> It's crazy to me that it's harder to write a Swagger file than it is to write the API itself. And there's a lot of tooling that benefits from Swagger, but... I've found they all work 80%. Codegen, documentation, etc get 80% of the way there.

And another person comments:

> I've implemented Swagger with several APIs and agree that it's crazy complex and time-consuming to write Swagger files manually.
>
> I believe the best use-case for Swagger is to develop the API (perhaps just defining the routes with payload and response, but without controllers), and then auto-generating the Swagger files. This way the API consumers always have an up-to-date documentation, and there is only one place which represents the current state of the API.

Here's another comment:

> I had these same issues. It took me considerably more time and effort to write a Swagger spec and get the UI to actually behave than it did to write my entire API and some simple docs in markdown.
>
> I also tried out the "codegen" and a few other projects that generate boilerplate from a spec (for Python) - the code it generated was frustrating, lengthy, and much more complex than the simple endpoints that I quickly wrote from scratch.

Remember this is Hacker News, so most commenters are developers. Not all of them share the same thoughts about the complexity of the spec. One commenter says "Swagger yaml is hard to write? Hmm.. relative to the code that services it or consumes it, I find its pretty trivial." Others debate whether it's easier to generate the spec from comments in the code or to write it manually.

My point in quoting these comments is to note that creating the Swagger spec is not a simple undertaking, and that even many developers find it a complex task. And yet, I don't see how the Swagger spec could somehow be any less complex than the complexity it describes.

To get a sense of the Swagger YAML referenced here, take a look at the [sample Swagger spec in my API course](http://idratherbewriting.com/learnapidoc/pubapis_swagger_spec_deep_dive.html). This spec file describes a simple Weather API that I document in my course. The spec has various objects, such as `info`, `paths`, `securityDefinitions`, and so on. Each object has certain properties you can use to describe it. For example, a `paths` object contains the endpoints, and each endpoint contains the operations allowed, and each operation contains properties such as `summary`, `description`, and `parameters`.

The spec will take some time to learn, and you'll need to focus in on what's relevant for your API (particularly with the `securityDefinitions`, as the authorization method tends to vary the most across APIs.

This learning curve presents a problem. For many technical writers, they may quickly decide that they don't have time to sink a few weeks into learning (and troubleshooting) their spec. They may punt the task into the developer's domain for developers to create the spec, then offer to edit the content the developer provides.

I'm not a fan of delegating the work to developers, as this usually portrays technical writers as grammar/language editors only and reinforces their technical inadequacy. Instead, I prefer to get more involved in guiding and directing the efforts in creating the Swagger spec.

## Collaborative tools as a solution

I've argued that the OpenAPI/Swagger spec provides the much-needed roadmap for REST API documentation, but that this spec is complex to create. As a result, technical writers are often intimidated by it, and given their busy workloads, will tend to fall back on more familiar, free-form approaches for documentation.

What's the solution to overcoming the technical hurdles and satisfying the needs of both technical writers and developers with REST API documentation? This is where [SwaggerHub](https://swaggerhub.com/) comes into play. I'm usually hesitant to point towards tools as a solution to problems (even with my proclivity for doc tools), but SwaggerHub is a different sort of tool.

SwaggerHub provides a collaboration point for technical writers and developers to interact. As a cloud-based solution, SwaggerHub provides a secure, online space where both developers and technical writers can interact in creating the Swagger spec.

If technical writers are more familiar with the Swagger spec, they can create a skeleton outline for the various endpoints, parameters, sample requests, and other details. Then developers can log in and add more details to the skeleton outline. Conversely, if a developer team is familiar with the Swagger spec, he or she can create the skeleton outline, and the technical writer can fill in the details or edit and shape the content.

In this way, either technical writers or developers can guide each other through the documentation process. The advantage SwaggerHub brings is that it enables collaboration between technical writers and developers, letting them work together on creating the spec. You aren't emailing files back and forth. You don't need to create and merge branches in git. You don't need to try to use Google Docs. In fact, SwaggerHub even allows you to add comments in the margins of the spec, so when a developer provides a half-baked jargon-filled description of something, you can highlight it and ask, "What do you mean here -- can you be more specific?"

The Swagger spec provides a kind of template that you can follow. As a technical writer, you can create the bare-bone structure listing out the endpoints and parameters, and then ask developers to fill in the details, or to adjust them as needed, following the pattern shown. Developers respond extremely well to forms and wizards when creating documentation (the blank page is terrifying).

SwaggerHub gives you a space to work together. Where one person has gaps in their Swagger knowledge, the other can compensate.

Collaboration is just one aspect of SwaggerHub, of course. In my tutorial on how to [Manage Swagger Projects with SwaggerHub](http://idratherbewriting.com/learnapidoc/pubapis_swaggerhub_smartbear.html), I cover a number of other advantages to using SwaggerHub, and why you need it instead of just relying on the free version of the tools. Some of these other advantages include:

* [A more powerful Swagger Editor](http://idratherbewriting.com/learnapidoc/pubapis_swaggerhub_smartbear.html)
* [Version support](http://idratherbewriting.com/learnapidoc/pubapis_swaggerhub_smartbear.html#versions)
* [Inline commenting/review](http://idratherbewriting.com/learnapidoc/pubapis_swaggerhub_smartbear.html#inline-commentingreview)
* [Auto-generation of client SDKs](http://idratherbewriting.com/learnapidoc/pubapis_swaggerhub_smartbear.html#auto-generate-client-sdks)
* [HTML export](http://idratherbewriting.com/learnapidoc/pubapis_swaggerhub_smartbear.html#export-to-html)
* [Mocking servers](http://idratherbewriting.com/learnapidoc/pubapis_swaggerhub_smartbear.html#mocking-servers)
* [Content re-use (domains)](http://idratherbewriting.com/learnapidoc/pubapis_swaggerhub_smartbear.html#content-re-use-domains)
* [Organizations and projects](http://idratherbewriting.com/learnapidoc/pubapis_swaggerhub_smartbear.html#organizations-and-projects)

## Conclusion

In this post, I argued the following:

* Swagger has emerged as the standard for describing REST APIs
* Creating the Swagger spec can be a complex undertaking.
* SwaggerHub is a tool that can simplify creation of the spec by enabling collaboration between tech writers and developers

To learn more about SwaggerHub, see [https://swaggerhub.com/](https://swaggerhub.com).
