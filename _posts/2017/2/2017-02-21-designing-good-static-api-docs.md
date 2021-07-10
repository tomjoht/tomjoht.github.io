---
title: "Guest post: Design choices for organizing API reference content with other documentation"
categories:
- api-doc
keywords: api best practices
description: "In this guest post, Derric Gilling, CEO at Moesif, explores various design choices for organizing API reference content in relation to the rest of your programming tutorials. He looks at three different strategies: (1) Centralized docs with separate API reference, (2)  Centralized docs combined with API reference, and (3) Decentralized docs. The question of how to integrate API documentation into one seamless user experience -- particularly when you have auto-generated outputs of API reference topics from tools such as Swagger -- is a question that many technical writers regularly ask about."
bitlink: http://bit.ly/designchoicesapidocs
---

## Introduction

Designing and writing good API documentation can be a daunting task, but it's critical for any API-driven or B2D company to ensure developer success. Your documentation is also your company's marketing asset and may be the first few pages a new prospect visits to understand how hard your integration is and how your product works.

For Moesif, we performed quite a bit of research to ensure our documentation is organized and designed appropriately. Our findings are published here in this article. You can see our documentation at [www.moesif.com/docs](https://www.moesif.com/docs) and [www.moesif.com/docs/api](https://www.moesif.com/docs/api). Our API reference source is located at [github.com/Moesif/apidocs](https://github.com/Moesif/apidocs).

## High level organization

Before discussing specific documentation features, it's worthwhile to discuss the overall organization of the documentation. Although requirements differ, the organization of documentation with an API reference usually falls into one of three categories:

-   [1. Centralized docs with separate API reference](#centralized-docs-separate-api-ref)

-   [2. Centralized docs combined with API reference](#centralized-docs-combined-api-ref)

-   [3. Decentralized docs](#decentralized-docs)

## 1. Centralized docs with *separate* API reference {#centralized-docs-separate-api-ref}

Companies that fall into this category have usually have at least two layers of documentation: *Developer Docs* and *API Reference.*

Companies with both docs and API reference split visitors into two groups:

-   Developers who are interested in higher level integrations or SDKs
-   Developers who are interested in the raw REST API or API wrapper libraries

The *main developer docs* doesn't discuss the REST API at all, nor does it discuss API wrapper libraries. Instead, there are navigational links from the docs to a separate and independent *API reference* website.

Many times, the API reference uses a different design or layout (such as 3-column vs 2-column) compared to the rest of the documentation. The main developer docs then focus on getting started guides and how to use or integrate each product feature.

Companies that follow this approach may be very API-focused or developer focused, yet already have higher-level integrations. As such, working with the API directly is not be needed. Such companies include [Stripe](https://stripe.com/docs) and also us at Moesif. Stripe, for example, has their Stripe.js and Android/iOS SDKs front and center compared to their REST API.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/moesif-image01.png" style="border: 1px solid #dedede; max-width: 600px;" />

For Moesif, many developers will not need to work with the REST API directly as there are higher-level integrations to get started with. Thus, a new NodeJS developer visiting the docs for the first time will probably be more interested in the *moesif-express* middleware rather than reading about the raw *NodeJS API wrapper* library.

Look at the difference in topics between the [main developer docs](https://www.moesif.com/docs/) and the [API reference](https://www.moesif.com/docs/api). If both the NodeJS and the Express middleware were at the same level, a new developer might be confused about whether to get started with the Express middleware or NodeJS API library.



Remember, while you are probably very intimate with your own API and its SDKs, a new developer may not be. Keeping them separate can help reduce confusion.

### Benefits

-   Can drive new people to the appropriate getting started guide and avoid confusion about other integrations.

-   Navigational layout can be designed specifically for the documentation type. For example, the API reference can be a single long page, whereas general docs are split across many smaller web pages

-   Separate API References are useful for documenting REST APIs that are CRUD-like (create-read-update-delete)

-   Gives power users an excellent bookmark-able and SEO-optimized API reference URL for things like entity schemas without digging through verbose getting started guides

-   API reference site can use a separate tool chain and leverage tools like Swagger

-   Can be ideal for companies that have a clear division of responsibility between who owns the API reference vs developer docs & guides

### Downsides

-   Not ideal for companies having a single tier of integrations

-   Can artificially force the API reference to take the backstage, which may not be your business requirement

-   Centralized navigation may not scale well for companies with many distinct product lines

-   Terse API documentation may scare non-developers away

-   Can decentralize critical navigational elements like search

## 2. Centralized docs *combined* with API reference {#centralized-docs-combined-api-ref}

Companies that fall into this category combine their API reference with the rest of their developer docs and have no separate API reference website.

Companies with combined developer docs generally see their visitors as belonging to at least one of the following groups:

-   Developers who may use an SDK, integration, or possibly the raw REST API

-   Non-developers who just need to understand how to use the dashboard or product

Mixpanel and Amplitude both follow this approach pretty closely. Square also follows this with the [Square Docs](https://docs.connect.squareup.com/).

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/moesif-image03.png" style="border: 1px solid #dedede; max-width: 600px;"/>

Unlike Moesif, these companies market to both developers and non-developers. For Mixpanel and Amplitude, the primary user is not necessarily the developer who integrates the product. Rather, Mixpanel and Amplitude are marketing their product to data-curious marketers and product managers. Square is marketing their product to merchants and retailers. These companies are marketing the flexibility of the product rather than the flexibility of the API.

These types of companies may require documentation for both developers and for non-developers. Adding a third level for API reference can make the navigation confusing and scare away the primary user. Why? A separate API reference would create three levels of documentation: *non-developer help*, *developer docs*, and *API reference.*

Combined docs can also be used when there isn't a clear distinction between integration SDKs vs REST API and API wrappers. If all your integrations are API-centric and you can't cleanly bucket your integrations into *API centric* and *non-API centric* buckets, then using separate API documentation can potentially create a navigational nightmare where it's hard to view and search all integrations in one place. Combining API reference with other guides enables you to easily have how-to guides all centralized and searchable in one site.

If you look at Algolia's docs, while they do somewhat separate their raw REST API, all other integrations are at the same level. For the most part, Algolia is a blend between the first category and this one.

### Benefits

-   Avoids having too many doc sites such as non-developer help, developer docs, API reference, etc.

-   Ensures the API reference is at the same level as other integrations and not backstage

-   Provides an easy layout when writing new docs for a new product with minimal content

-   Search can be centralized, which is useful if some features require your API while others require an SDK

-   Avoids scaring non-developers away by having docs that are terse and too “Developer or API centric”

### Downsides

-   Can cause confusion by integration overload if you have both lower level and high level integrations

-   Hard to scale internal teams, especially if the API maintainer is different than general developer docs

-   Have to compromise on navigation design as certain elements may be better suited for navigating API reference vs. navigating general docs

## 3. *Decentralized* docs {#decentralized-docs}

Decentralized documentation is different from the other two categories. Rather than centralize types of documentation in the same site, they chose other pillars such, as product lines, to organize their documentation around.

As an example, Twilio's products include not only SMS messaging, but also authentication and video. Thus they silo [Twilio's docs](https://www.twilio.com/docs/) along product lines rather than docs vs API reference. Many of Twilio's users who want to integrate Twilio's SMS product may not care about their authentication product *Authy*.

Rather than cluttering a centralized doc site, these companies decentralize such that when viewing Twilio's API reference, you're only viewing the documentation related to you. If you're interested in Authy, then you only browse Authy. (They do have a cool *OR* function if you need to browse multiple products at the same time.)

Decentralized docs can be a good fit for large companies that don't have centralized documentation teams, where each product owns its respective documentation.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/moesif-image05.png" style="border: 1px solid #dedede; max-width: 600px;" />

### Benefits

-   Declutters complex product lines, which can be useful for large enterprise products

-   Enables the company to scale documentation by product teams. (You just need a small central team to maintain cross-cutting design and infrastructure.)

### Downsides

-   Can artificially silo products that are meant to be interconnected. For Twilio, SMS and Authy are truly unrelated products. However, you wouldn't want to silo separate yet related *features* within the *same product.*

-   Hard to organize getting started guides if the same library or integration is used across product lines

## Specific features to think about

In addition to choices about where to include your API reference material, you have some other design choices to make in your API docs.

### Sticky Navigation

This feature is a must for anyone creating long documents. As visitors scroll through your long document, they shouldn't have to scroll to the top just to see the navigation. No matter if you look at Stripe's, Auth0's, or Algolia's docs, they all have something in common: sticky sidebars in the left column.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/moesif-image07.gif" style="border: 1px solid #dedede; max-width: 600px;" />

### Saved scroll state

Saving scroll state can be useful if users refresh the page. They won't lose their spot. What can be even more important is updating the url hash tag links with the nearest link. This way, if the visitor copies the url from the browser to email to a colleague, the colleague can jump to the exact spot.

### Sidebar navigation styles

Most documentation is organized around some sort of sitemap menu on left. Some documentation sites choose to use an accordion style navigation such as [Navgoco](https://github.com/tefra/navgoco). Others, like Moesif's and Mixpanel's documentation, chose to have a static two-level sidebar.

Accordion style navigation can help declutter really long sidebars. However, they can also impede developers from seeing a quick sitemap of the documentation. Accordion menus work especially well with REST API reference docs when each sub-menu is a simple CRUD operation and is important to show as part of a sitemap.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/moesif-image08.gif" style="border: 1px solid #dedede; max-width: 340px;" />

### 3-column documentation

As mentioned, our docs were inspired by Stripe's 3-column API reference using [github.com/lord/slate](https://github.com/lord/slate) as a boilerplate. 3-column docs can be beautiful for API reference since this layout allows the core text of the docs to be the same for each language while allowing visitors to chose their specific language.

API reference material is ideal for this format since your entity schemas and method names/endpoints are usually the same no matter if you're using raw HTTP requests, a Java library, or a NodeJS library.

We've seen doc designers try to implement getting started guides or non-API reference documentation using Stripe's three-column format. Sometimes it can work, but many times it's not the correct design choice.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/moesif-image09.png" style="border: 1px solid #dedede; max-width: 600px;" />

### Long single page vs many pages

A single page is useful especially for API reference where a visitor can use their browser search to skip through the entire spec. For example, searching for all endpoints that support a particular JSON key in its schema, a user wouldn't want to open up all doc pages in separate browser tabs.

At the same time, single pages may not scale well for general, non-API reference documentation with hundreds of how-to and getting started guides.

### Edit on Github button

A link directly to the source on Github can encourage your visitors to be actively engaged in updating documentation. This can help both presenting your company as open for feedback, but also to ensure mistakes are fixed. When combined with storing your documentation source in Github, it shows an open culture. Just don't add unnecessary login gates to suggest edits.

Many larger companies are also using GitHub. Even Microsoft Azure has [azure-docs on Github](https://github.com/Microsoft/azure-docs).

<a href="https://github.com/Microsoft/azure-docs"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/moesif-image11.jpg" style="border: 1px solid #dedede; max-width: 160px;" /></a>

### Markdown

Markdown is practically the standard syntax used in developer documentation since it makes it easy to mark up static pages (like editing a wiki). Pretty much any developer who has written README.md or a Github repo is familiar with the syntax.

With Atom plugins like [markdown-preview](https://atom.io/packages/markdown-preview), you can have a free WYSIWYG solution in your authoring tool. Just keep in mind what Markdown renderer and flavor you choose, since there are a few of them and have some nuances. You should be good if you support GitHub Flavored Markdown (GFM), as many developers will be familiar with it.

### Responsive design

This goes without saying, but don't forget responsive design. While most visitors may be browsing your site on a desktop, they may quickly bring up a reference on a mobile device or other small screen. Your site should respond to the device type and display the content appropriately.

<hr/>

## About Derric Gilling

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/derric.jpg" | prepend: site.baseurl }}" alt="Derric Gilling" style="float: left; border: 1px solid #dedede; padding-right:10px; padding-top:0px; margin-top:5px; max-width: 150px;" />Derric Gilling is the current CEO at Moesif, an error analysis platform, based in San Francisco, CA. He also was the CTO at Trove Market and a computer architect at Intel on the Xeon Phi CPU. He studied Computer Engineering at the University of Michigan. He focuses on API design and development, debugging, analytics, and computer architecture.  
