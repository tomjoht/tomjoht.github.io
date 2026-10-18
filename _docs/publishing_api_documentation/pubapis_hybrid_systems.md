---
title: "Hybrid documentation systems"
permalink: learnapidoc/pubapis_hybrid_systems.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 9.8
section: publishingapis
path1: learnapidoc/publishingapis.html
last-modified: 2026-10-17
---

{% include coffeeshopbook.html %}

Rounding out the publishing tool options, there is a class of developer doc tools that provide online GUIs for authoring and publishing, but they still store your content as flat files in repositories such as GitHub, GitLab, and Bitbucket. In other words, they provide a WordPress.com-like experience for your content (giving you a user interface to browse your posts, pages, layouts, and other content) but allow your content to live in plain text files in version control repositories.

* TOC
{:toc}

## Headless CMS solutions

Just as we have [jamstack.org/generators](https://jamstack.org/generators/) that lists common static site generators, there's a similar index of [headless content management systems](https://headlesscms.org/), this one arranged in alphabetical order (rather than ranked by popularity).

<a class="noCrossRef" href="https://headlesscms.org/"><img src="{{site.api_media}}/headlesscms.png"/></a>

There are nuances between headless and decoupled CMSs that I won't go into, but the basic metaphor is that the head refers to the authoring interface, and the body refers to the storage database or file system. If a CMS is headless, it means the authoring interface is connected to the data storage through an API, and the data storage can live in a completely different system, such as GitHub.

Not all tools listed here are headless CMSs, so I have called them more generally "hybrid" solutions, since many of these doc tools don't fit into neat categories.

{% include random_ad3.html %}

## TinaCMS (formerly Forestry.io) {#forestry}

Forestry.io was one of the early CMS interfaces for static site generators such as Jekyll and Hugo. It gave you a WordPress-like GUI for seeing and managing content that still lived as Markdown files in a Git repository. Forestry has since shut down, and its team moved users to [TinaCMS](https://tina.io/), its successor. (See the [Forestry.io to TinaCMS migration guide](https://tina.io/forestry).) TinaCMS is open source and also stores content in Git, but it adds visual editing so authors can see their changes on the page as they type.

The idea behind these CMS interfaces is that most static site generators ostracize less technical users by forcing them into the code. (For example, when I write a post in Jekyll, usually others who look over my shoulder think I'm actually programming, even though I'm just writing posts in Markdown.) The CMS removes this by making the experience much more user-friendly to non-technical people while also still leveraging the openness and flexibility of the static site generator platform.

{% include random_ad2.html %}

## Decap CMS (formerly Netlify CMS) {#netlifycms}

[Decap CMS](https://decapcms.org/), which was called Netlify CMS until 2023, is similar to TinaCMS in its offering of a content management system for static site generators. But rather than limiting the static site generators you can use, it provides a more open platform wrapper (built with React but using Git to manage the content) that integrates with any static site generator.

One of Decap CMS's key advantages is in simplifying the content development experience for less technical users. But you can also standardize your authoring through the interface. Decap CMS lets you map the custom fields in your theme to a GUI template, as shown in the image below. These custom fields reduce the chance that authors might use the wrong frontmatter tag in their pages (for example, `intro_blurb` or `IntroBlurb` or `introBlurb`). Here's a sample interface:

<figure><a href="https://decapcms.org/" class="noExtIcon"><img src="{{site.api_media}}/netlifycms.png" style="border: 1px solid #dedede;"/></a><figcaption>Decap CMS (shown here when it was still called Netlify CMS) lets you create a user interface for your custom fields.</figcaption></figure>

Your content source can be stored in GitHub, GitLab, or Bitbucket. Decap CMS also integrates with [Netlify](pubapis_hosting_and_deployment.html#netlify), which is a popular hosting and deployment service for static site projects.

{: .tip}
To get started, see the [Decap CMS documentation](https://decapcms.org/docs/), which includes guides for Jekyll, Hugo, and other static site generators.

## ReadMe {#readmeio}

[ReadMe](https://readme.com/) is an online CMS for docs that offers one of the most robust, full-featured interfaces for developer docs available. For years, ReadMe stored content in its own database rather than in your repository, so it wasn't a headless CMS. However, ReadMe now offers [bi-directional sync](https://docs.readme.com/main/docs/bi-directional-sync) with GitHub and GitLab. With this sync, you can edit pages in ReadMe's interface or as Markdown files in a Git repository, and changes flow in both directions. As such, ReadMe now fits the hybrid model described on this page fairly well.

ReadMe's emphasis is on providing an interface that helps you more easily write documentation based on best practices and designs. ReadMe provides various wizard-like screens to move you through documentation processes, prompting you with forms to complete. For example:

<figure><img class="docimage medium border" src="{{site.api_media}}/readmeio_manual_api.png" alt="ReadMe" /><figcaption>ReadMe</figcaption></figure>

Most importantly, ReadMe includes specific features for displaying API documentation content, which puts it into a class of its own. Although you can add your API information manually, you can also import an [OpenAPI specification file](pubapis_openapi_intro.html). You can experiment by choosing one from the [OpenAPI examples](https://github.com/OAI/learn.openapis.org/tree/main/examples/v3.0), such as [this one](https://raw.githubusercontent.com/OAI/learn.openapis.org/main/examples/v3.0/petstore-expanded.yaml). ReadMe's integration of OpenAPI along with other doc content helps integrate outputs that are often separated. (This fragmentation is a problem I explore later in [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html).)

{% include ads.html %}

Overall, ReadMe provides a robust GUI for creating API documentation in a way that is more extensive and well-designed than virtually any other platform available. The output includes an interactive, try-it-out experience with endpoints:

<img class="medium" src="{{site.api_media}}/readmeiotryitout.png" style="border: 1px solid #dedede;" />

The experience is similar to Swagger in that the response appears directly in the documentation. This API Explorer gives you a sense of the data returned by the API.

{% include random_ad4.html %}

There are some challenges with ReadMe. A free Starter plan exists, but features that teams usually need, such as inviting teammates, branching and reviews, and [reusable content](https://docs.readme.com/main/docs/reusable-content), require a paid plan. (When I checked the [pricing page](https://readme.com/pricing) in October 2026, the Pro plan was $250/month, billed annually.) Additionally, the reuse features are fairly basic compared to tools built for single sourcing, so if you produce multiple outputs from the same content, ReadMe may not be for you. Finally, if you want to customize your own design or implement a feature not supported, you can't just hack the code (though you can add custom CSS, HTML, and MDX components). Overall, with a hosted solution like ReadMe, you're stuck within the platform's constraints.

{% include image_ad_right.html %}

Even so, the output is sharp, and the talent behind this site is top-notch. The platform is continuously growing with new features, and there are many high-profile companies with their docs on ReadMe. If you consider how much time it takes to build and deploy your own doc solution, going with a platform like ReadMe will save you a lot of time. It will let you focus on your content while also adhering to best practices with site design.

Here are a few sample API doc sites built with ReadMe:

* [Tripadvisor Content API](https://tripadvisor-content-api.readme.io/reference/overview)
* [Formstack API](https://developers.formstack.com/reference/api-overview)
* [Zype API](https://docs.zype.com/reference)

ReadMe also has competitors that take a similar hosted approach, such as [Mintlify](https://mintlify.com/), which Box and Coinbase (both previously listed here as ReadMe examples) now use for their developer docs.

{: .tip}
Which tool should you use? I provide some more concrete recommendations in [Which tool to choose for API docs -- my recommendations](pubapis_which_tool_to_choose.html).
