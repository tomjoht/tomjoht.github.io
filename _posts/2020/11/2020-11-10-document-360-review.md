---
title: "How does Document360 handle challenges with API documentation?"
permalink: /blog/document-360-review/
categories:
- api-doc
keywords:
rebrandly: https://idbwrtng.com/document360-apireview
description: "How does Document360 handle some of the tooling tasks common with API documentation? In this post, I look at some sample API doc sites using Document360 and look at how they handle aspects such as collaboration, GitHub integration, search/findability, versioning, OpenAPI integration, code-syntax highlighting, context-sensitive help, and developer portal architecture."
---

*Note: This is a sponsored post.*

## Introduction

[Document360](https://document360.io/?ref=idratherbewriting) has been a site sponsor for the past couple of years (you've probably seen the Document360 banners on my site). Last year I also wrote a post introducing Document360 (see [First look at Document360 -- an authoring/publishing tool that satisfies both KB and tech pubs needs](/blog/document360-hybrid-between-tech-docs-and-support-tools/)). Since then, Document360 has been on a meteoric rise, earning number one rankings in knowledge management categories from the Gartner Digital Markets &mdash; [Capterra](https://datainsights.capterra.com/p/knowledge-management/177031/document360/references?i=36&c=&c=&c=&sc=2733887), [Software Advice](https://datainsights.softwareadvice.com/knowledge-management-software/document360/references?c=&c=&c=&sc=2733901), and [GetApp](https://datainsights.getapp.com/knowledge-management/document360/references?c=&c=&c=&sc=2733881). For such a new company, the ratings are especially impressive, especially scoring above competitors such as the more familiar Confluence.

However, in some ways, branding related to "knowledge management" and "knowledge base" is somewhat unfortunate because many of Document360's best documentation examples look like straightforward documentation sites to me, many of them API documentation sites. Additionally, the factors that recommendation groups like Capterra use to evaluate knowledge management software include aspects that might not be that important to API documentation scenarios. Some of their ranking factors include "collaboration," "content management," "decision tree," "discussion boards," "full-text search," and "self-service portal." (See [knowledge management categories](https://www.capterra.com/knowledge-management-software/?feature=%5B19078%5D&sortOrder=sponsored#buyers-guide) &mdash; the Buyers Guide &mdash; for more info.)

I'd like to explore Document360 from a unique tech-writer perspective &mdash; how does Document360 handle some of the more challenging aspects of API documentation? With my 15+ years of experience in the tech comm field, about half of that working with APIs, I'll look at the following 10 areas:

1.  [Collaboration with experts](#collaboration)
2.  [GitHub integration](#github)
3.  [Search/findability and analytics](#search)
4.  [OpenAPI/Swagger integration](#openapi)
5.  [On-page navigation](#navigation)
6.  [Responsive view](#responsiveness)
7.  [Versioning and localization](#versioning)
8.  [Context-sensitive help](#csh)
9.  [Code syntax highlighting and copying](#highlighting)
10. [Dev portal IA](#devportal_ia)

I'll use these sample Document360 documentation sites: [Spryker](https://documentation.spryker.com/docs/), [CTO.ai](https://cto.ai/docs), [Mambu](https://support.mambu.com/docs), [Decisions](https://documentation.decisions.com/docs), and [Customer.io](https://customer.io/docs/). Most of these sites are listed in the "Document360 in Action" section on the [Document360](https://document360.io/?ref=idratherbewriting) homepage.

## 1. Collaboration with experts {#collaboration}

One of the first considerations with API docs is what format to use. If you choose an XML-based format, it might make it easier to localize content, generate PDFs, and tap into more robust CCMS tooling, but what happens when you want engineers to contribute, or when you want product teams to control their own docs? XML can be intimidating. Even reStructuredText (rST) can be off-putting. Markdown is the most common format for developers when creating docs. Document360 lets you write docs in [Markdown](https://www.markdownguide.org/basic-syntax/):

<img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/document360-markdown.png" alt="Markdown editor" />

The editor shows a dynamic preview pane on the right that scrolls into focus based on your placement on the left. This simulates the automatic preview of static site generators that continuously rebuild the output. The editor also supports some custom markup for alerts, warnings, or [internal notes](https://docs.document360.io/docs/en/internal-notes). For example:

```
:::(Warning)
This is a warning alert.
:::
```

By using Markdown as a common format, you can empower many other developers and others to contribute and own different parts of the documentation.

## 2. GitHub integration {#github}

Document360 also offers integration with other platforms, including GitHub. If you look at the [Spryker docs](https://documentation.spryker.com/docs), you can see an "Edit or Report" button below the title.

<a href="https://documentation.spryker.com/docs"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/editorreportspryker.png" alt="Edit or Report" /></a>

Clicking Edit takes you to a GitHub page where contributors can make edits by forking the project and submitting pull requests. If you look at the pull requests for the Spryker project, there are [184 close pull requests](https://github.com/spryker/documentation/pulls?q=is%3Apr+is%3Aclosed) from a lot of different users. That means the Spryker doc team has likely set up a successful workflow where external contributors can contribute without giving them direct authoring and publishing access inside of Document360.

Currently, Document360 integration with GitHub is on their roadmap, so there’s no simple sync option already included in Document360’s settings. However, you can integrate with GitHub through the [Document360 API](https://apidocs.document360.io/docs) and using a third-party integration tool Webhook, which is what Spryker did here.

## 3. OpenAPI/Swagger integration {#openapi}

As I said before, I don't think that strictly grading Document360 by knowledge management / knowledge base criteria makes a lot of sense, especially with their example docs. Nowhere does it become more apparent that you're more in a tech doc space (rather than in a knowledge-management or knowledge-base space) than with the OpenAPI/Swagger integration. Here the Stryker docs integrate an OpenAPI 3.0 file for a REST API reference:

<a href="https://documentation.spryker.com/docs/rest-api-reference#/"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/document360-spryker-api-reference.png" alt="Spryker REST API integration" /></a>

If you look at the [GitHub source](https://github.com/spryker/documentation/blob/master/202009.0/9d23934a-df61-4378-bfe1-5e8aaefc0838.md) (raw) for this file, you see this embed code in the Document360 page:

```html
<div id="swagger-ui"></div>

<div class="script-link-loader" data-tag-type = "link" data-src="https://cdnjs.cloudflare.com/ajax/libs/swagger-ui/3.22.1/swagger-ui.css"></div>
<div class="script-link-loader" data-tag-type = "script" data-src="https://cdnjs.cloudflare.com/ajax/libs/swagger-ui/3.22.1/swagger-ui-standalone-preset.js"></div>
<div class="script-link-loader" data-tag-type = "script" data-src="https://cdnjs.cloudflare.com/ajax/libs/swagger-ui/3.22.1/swagger-ui-bundle.js" ></div>

<div class="script-embed" data-code="window.onload = function() {
                console.log('start');
				const ui = SwaggerUIBundle({
					url: 'https://spryker.s3.eu-central-1.amazonaws.com/docs/Document+360/json/spryker_rest_api.schema.json',
					dom_id: '#swagger-ui',
					deepLinking: true,
					presets: [
						SwaggerUIBundle.presets.apis,
						SwaggerUIStandalonePreset
					],
                     enableCORS: false,
					layout: 'BaseLayout',
                    supportedSubmitMethods: []
				})
                console.log(ui);
				window.ui = ui
			}">
</div>
```

The embed isn't an export of the OpenAPI file from Markdown but is dynamically rendered from the JSON file ([spryker_rest_api.schema.json](https://spryker.s3.eu-central-1.amazonaws.com/docs/Document+360/json/spryker_rest_api.schema.json)) and SwaggerUI. That's pretty cool.

Admittedly, there are upsides and downsides to this approach. The upside is that you don't have to manually convert the OpenAPI file into Markdown. You want to rely on a document generator like Swagger to convert it. The downside is that content within the OpenAPI file (e.g., `concreteProductId`) isn't going to be indexed in Document360's search.

Another Document360 example, [https://customer.io/docs/](https://customer.io/docs/), takes another approach with their REST API reference. They create a link from their [doc landing page](https://customer.io/docs/) to an externally generated file (generated outside of Document360).

<a href="https://customer.io/docs/api/"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/document360-customerio-api.png" alt="Customer.io API integration" /></a>

This is certainly a valid approach, and one that I recommend in [my API doc site](/learnapidoc/pubapis_combine_swagger_and_guide.html#option6). (BTW, I'm not sure what they're using for their [REST API reference](https://customer.io/docs/api/) &mdash; maybe the [Docusaurus open api plugin](https://github.com/cloud-annotations/docusaurus-plugin-openapi).)

One other Document360 API integration example is with the Mambu docs. In this case, I think the authors either manually created the API docs or generated a Markdown export from an OpenAPI file, and then embedded it into a Document360 page:

<a href="https://support.mambu.com/docs/index-rate-sources-api"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/document360-mambu-example-api.png" alt="Mambu API integration" /></a>

Although this approach is more manual, you get the benefits of search integration for any element (including code) on the page.

## 4. Search/findability and analytics {#search}

Another aspect of Document360 that works well is their search and filter feature (see the [Spryker docs](https://documentation.spryker.com/docs) for an example). You can search across all the docs using the search at the top. You can also filter topics in the sidebar by keywords:

<a href="https://documentation.spryker.com/docs"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/document360-findability-search.png" alt="Search and findability in Document360" /></a>

Search is especially important in a developer portal that has not just one product's documentation but rather documentation for many different products grouped together. It's common for a developer portals to offer a federated search across all documentation on the portal.

Equally important, on the backend, you can see [analytics related to the search](https://docs.document360.io/docs/en/analytics-search) &mdash; how many searches are users making, and which searches aren't returning any results.

<a href="https://docs.document360.io/docs/en/analytics-search"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/document360-search-metrics.png" alt="Search analytics in Document360" /></a>

You can also track feedback about [article performance](https://docs.document360.io/docs/en/analytics-performance) &mdash; which articles are viewed the most, and which have the most likes and which have the most dislikes.

<a href="https://docs.document360.io/docs/en/analytics-performance"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/document360-article-performance.png" alt="Performance analytics in Document360" /></a>

Documentation is an iterative process, and you need this kind of feedback to make incremental improvements with each cycle.

## 5. On-page navigation {#navigation}

Another common trend in API docs is to have a long page of reference material with on-page navigation controls that let you jump down the page. In the CTO docs, the [CLI Commands](https://cto.ai/docs/en/cli-commands) topic has a good example of this scenario. The page lists about 30 different CLI commands. The right-side on-page TOC lets you jump down to the desired topic.

<a href="https://cto.ai/docs/en/cli-commands"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/document360-cli-commands.png" alt="CLI commands display" /></a>

You really need to explore that [CLI commands](https://cto.ai/docs/en/cli-commands) page to get the full experience first hand about how well the navigation works there.

## 6. Responsive view {#responsiveness}

If you collapse the width of the browser (or switch to a mobile view using your JavaScript Console), the responsive view kicks in and hides that right-side menu so that your main content doesn't become impossibly narrow. Here's what the same CTO doc site looks like on an iPhone:

<a href="https://cto.ai/docs/en/cli-commands"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/document360-responsive-view.png" alt="Responsive view Document360" /></a>

Creating a good responsive view can be quite difficult, especially if you're not a web designer and are just hacking your way through media queries. Document360 also lets you collapse the left sidebar to give more viewing space for code or images.

<a href="https://cto.ai/docs/en/cli-commands"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/document360-sidebar-collapse.png" alt="Collapsible sidebar Document360" /></a>

Overall, the Document360 UX behaves in a modern, professionally designed way. (As a technical writer, you don't want to be in the business of creating the entire frontend UX for your site, as this takes away a lot of time that you could otherwise spend on creating content.)

Document360 does allow you to implement [custom CSS and JavaScript](https://docs.document360.io/docs/en/custom-css-javascript), though, and provides a [Homepage builder](https://docs.document360.io/docs/en/home-page-builder) so you can design the home page.

<a href="https://docs.document360.io/docs/en/home-page-builder"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/document360-design-and-navigation.png" alt="Customization with design elements in Document360" /></a>

## 7. Versioning and localization {#versioning}

[Versioning](https://docs.document360.io/docs/en/adding-a-new-project-version) also tends to be a complex feature to handle in documentation. Suppose you have multiple versions of the same topic depending on the release, or suppose you have multiple language versions. Document360 lets you create and manage multiple versions of the topic. The Decisions documentation shows a versions selector in the top navigation bar:

<a href="https://documentation.decisions.com/docs/en/sdk-overview"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/document360-versions.png" alt="Versioning in Document360" /></a>

Many static site generators don't have explicit features to support versioning and localization, so this is a welcome addition in Document360. There are even options for machine translation. Document360 recently published a blog post about this new feature, as it was recently added in September 2020: [Building Multilingual Knowledge base using Document360](https://document360.io/blog/multilingual-knowledge-base/). You can also read more about localization in the Document360 help docs here: [Localization - Getting started](https://docs.document360.io/docs/en/localization-101).

## 8. Context-sensitive help {#csh}

Context-sensitive help refers to help that appears inside of an application. Although less common in API docs, many times you have a developer console where users configure API keys and set up other services. You might have tooltips or other on-screen text in this console. Document360 lets you avoid duplicating content by providing an API to get your content out of Document360.

For example, suppose you want to [get an article](https://apidocs.document360.io/docs/en/get-article). Your request could look something like this:

<pre>
https://apihub.document360.io/v1/articles/<span style="color:purple">{page ID}</span>/settings?api_token=<span style="color:purple">{encoded API token}</span>
</pre>

For more details on using the Document360 API, see [Get article](https://apidocs.document360.io/docs/en/get-article) API documentation.

<a href="https://apidocs.document360.io/docs/en/get-article"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/document360-get-article-api.png" alt="Document360 API - Get an Article" /></a>

The API lets you do a lot of other operations beyond reading articles. You can create, edit, and delete content as well.

## 9. Code syntax highlighting and copy {#highlighting}

Code syntax highlighting is another hallmark of API docs. Here's some sample syntax highlighting for a JSON code sample in the Mambu API docs:

<a href="https://support.mambu.com/docs/en/payment-order"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/code-syntax-highlighting-document360-v2.png" alt="Code syntax highlighting" /></a>

Document360 uses [Prism.js](https://prismjs.com/) to do the syntax highlighting, and common language shortcodes (e.g., `java`, `json`, `csharp`, `js`) are used. For example:

    ```js
    [your code ...]
    ```

See [Creating code blocks](https://docs.document360.io/docs/en/code-blocks) for more details. Also, notice the convenient "Copy" button in the upper-right corner. Document360 even provides a light/dark theming toggle in case the users want to view a dark screen.

## 10. Developer portal IA {#devportal_ia}

Finally, another feature of interest to API doc scenarios is the developer portal information architecture (IA). Your specific documentation can have a landing page like this:

<img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/landingpage-document360.png" alt="Landing page Doc 360" />

But at an even higher level, you can also create a page that lets users browse a list of different products:

<img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/doc360_docportals.png" alt="Dev portal IA homepage list - Document360" />

Within each page of your docs, you can also list related pages. For content not suited to sidebar navigation (such as KB articles), you can provide tag-based category navigation.

## Conclusion

Overall, Document360 looks like an excellent platform not just for knowledge management solutions, but for API documentation as well. The company is still actively building out features (look at their [latest release notes](https://docs.document360.io/docs/en/august-1), for example) and keeps moving forward. This is a modern platform that incorporates all the features you would expect in a documentation website and makes authoring easy on the backend as well. If you're looking to upgrade your authoring/publishing tool, give [Document360](https://document360.io/?ref=idratherbewriting) a try.
