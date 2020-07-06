---
title: "An inside look at DeveloperHub -- hosted documentation portals for API docs"
permalink: /blog/developerhub-product-faq/
categories:
- api-doc
keywords:
bitlink: https://idratherbewriting.site/developerhubfaq
description: "DeveloperHub is a new publishing platform for API documentation that lets you combine your API reference information with tutorials and other documentation, complete with search, branding, navigation, and other features in a developer portal. In this post, I asked Zaid Daba'een, CEO & Founder of DeveloperHub, to share a bit of info about DeveloperHub."
---

*Note that DeveloperHub is a site sponsor.*

### What is DeveloperHub?

[DeveloperHub](https://developerhub.io/?utm_source=idratherbewriting&utm_medium=hibanner&utm_campaign=c1){:rel="nofollow"} provides hosted documentation portals as a service for product and API documentation. We eliminate all engineering resources that are required for you to build a documentation portal and provide you with the complete toolkit to create and publish top-notch documentation portals.

Here's a sample page from the DeveloperHub's Getting Started documentation:

<a href="https://docs.developerhub.io/v1.0/support-center/getting-started" rel="nofollow"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/developerhubscreenshot1.png" style="border: 1px solid #dedede;" alt="DeveloperHub Published Documentation" /></a>

Here is the same page in the Editor view:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/developerhubscreenshot2.png" style="border: 1px solid #dedede;" alt="DeveloperHub Editor" />

### Who is your target audience?

Our target audience is tech companies, mainly SaaS, but also general software and hardware companies. We target small and medium businesses with product teams as big as 20 or more.

### Why did you create DeveloperHub?

I've been developing products, APIs, and SDKs for 7 years, and every time I get to the documentation phase, I realize how all the solutions out there are very time-consuming. The developer experience has changed dramatically since I started working professionally, from PDFs to markdown readmes in GitHub projects, to static websites, to what are now called developer hubs, or developer portals.

The problem is, creating developer portals is very hard. It's a complete product and companies have to assign a big team of product managers, developers, designers, DevOps, etc., to get that developer portal up and ready. Writers have to learn new skills or burden the developers with requests to copy Google Docs into the documentation code.

Going through this journey, I realized how out-dated most technical writing software is. It's shocking to see how developer tools are so convenient and powerful, but still, tech writing software is many years behind.

It was clear to me then that the problem does not exist only for developer portals. It's all over the documentation world. So we set out to build the top-notch experience for writers and readers of product and API documentation.

### How does DeveloperHub differ from Readme?

[Readme](https://readme.com){:rel="nofollow"} has a great offering for enterprise with its developer metrics. It has paved the way for dynamic documentation adoption. Regardless, we've had many customers moving off from Readme to DeveloperHub due to a few reasons:

* [**Customisability**](https://docs.developerhub.io/support-center/customising-visuals){:rel="nofollow"}: DeveloperHub is highly customizable to the last CSS option, just as if you're editing it in the browsers' DevTools. It's your documentation portal &mdash; please show off your branding!
* **Editor**: Our editor is one of the best out there. Markdown is constrained to developers, and extensibility is very limited. Our customers report 30% faster content development using our editor due to the modern instant formatting and the different formatting options there are (Markdown, toolbar, and keyboard shortcuts).
* [**Data portability**](https://docs.developerhub.io/support-center/exporting-documentation){:rel="nofollow"}: We not only allow you to export your content but also celebrate it and provide you with powerful tools to export it. Our exports can be imported back perfectly, without data loss. That means that you can have an offline version which you can mass-edit, restructure, and then upload back to give your documentation portal a complete makeover, or just simple replacements.
* **Documentation variety**: We're a platform for product managers, technical writers, and developers. We host portals for product, APIs, SDKs, user guides, and even hardware documentation and datasheets.
* **Support**: Ask any DeveloperHub customer what they think of our support, and their answer would be: "Unbelievable, fast and personal." I keep personal connections with all of my customers, ensuring their happiness at every different level of team size.

### Can you import an OpenAPI specification file?

We have support for [OpenAPI 2.0/Swagger specification files](/learnapidoc/pubapis_swagger_intro.html), and OpenAPI 3.0 support is upcoming in early 2020. The [references created by DeveloperHub](https://docs.developerhub.io/support-center/api-references){:rel="nofollow"} are beautiful and the information is laid out clearly in a three-column layout. The third column, for code examples, contains [auto-generated requests](https://docs.developerhub.io/support-center/code-generation){:rel="nofollow"} using different libraries, and auto-generated responses if they were not specified in the spec file.

Here's an example of an API reference topic:

<a href="https://docs.developerhub.io/api/ref#getlists-all-project-versions" rel="nofollow"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/developerhubscreenshot3.png" style="border: 1px solid #dedede;" alt="DeveloperHub API Reference" /></a>

API reference topics should never be separated from user guide topics; thus our lightning-fast search looks through user guides and references in one go.

### How does DeveloperHub solve the fragmentation issue between conceptual docs (not defined in an OpenAPI spec file) and reference docs (defined in an OpenAPI spec file)?

We believe OpenAPI specs should be [auto-generated from code](https://docs.developerhub.io/support-center/view-references#generators){:rel="nofollow"} (there are tons of libraries which do that) and should be delivered to your documentation portal through CI/CD pipelines. That's why we provide a [secure API](https://docs.developerhub.io/api/ref){:rel="nofollow"} through which your deployment process can update the API Reference, so your API Reference is never outdated with your code. Using versioning, you can keep multiple API References for each API version.

### How do you handle some of the more challenging tasks in tech comm -- PDFs (of the entire doc set), localization, and search?

We would like to be changers of the world of documentation, we want to move it forward. It was shocking and wonderful to see that many hardware manufacturers do not want to publish a PDF anymore for datasheets. They want datasheets to be readily available, on a website, completely searchable and editable at any time. Once you have an editable website, you no longer need to update PDFs all around different hardware websites when document revisions happen. While our pages are print-ready and optimized, we'll still encourage sending a URL rather than a PDF.

Many customers localize their product documentation by setting up localized documentation sections. At DeveloperHub, [every project](https://docs.developerhub.io/support-center/project-structure){:rel="nofollow"} can have many versions (v1.0, v1.1, etc.), and each version has many documentation/reference (Android SDK, iOS SDK, etc.) sections. Thus, our customers set up documentation under a version and name it according to the locale &mdash; en, fr, zh and so on. Moreover, using custom Javascript, you could set up any of the online on-the-fly translation services.

Our [search](https://docs.developerhub.io/support-center/using-search){:rel="nofollow"} is lightning fast at (~15ms average speed) &mdash; nothing less than what you'd expect from the top websites out there. Typos are forgiven. Every search result leads you to the heading where you'll find the answer. Most importantly, it looks through your user guides and your API references, so you get the complete picture.

### Do you have any on-premise offerings?

We do not have any on-premise offerings.

### Can you password protect docs?

DeveloperHub documentation can be [private](https://docs.developerhub.io/support-center/password-protection){:rel="nofollow"} or public. Public documentation is available for everyone on the web. Private documentation can be accessed in two ways:
* **Using a password**. You will be prompted to enter a password on attempting to access the documentation.
* **Using a secure link**. Similar to how Google Docs allows you to share links, DeveloperHub allows you to provide your readers with a secure link that bypasses the login and allows them to view content.

### Can you re-use the same content on different pages?

We are at the moment implementing two types of single-sourcing features:
* **Variables**: Define your variables and use them as desired in your documentation. Once you change a variable value, it'll be changed for every instance. No more "replace all."
* **Content snippets**: Similar to variables, content snippets include rich text and rich media which can be reused in your documentation.

Expect these two features very soon in Q4.  

### How much control do you have with styling and branding?

[Complete control](https://docs.developerhub.io/support-center/customising-visuals){:rel="nofollow"}. We provide simple controls to change colors, logos, navigation, and font which helps everyone get general branding in seconds. For more control, you can change every last detail using our Custom CSS feature. Add animation, borders, icons, your own custom font &mdash; anything really. Furthermore, you can add a website footer to unify the experience with your main website.

### How much does DeveloperHub cost?

Today, DeveloperHub has [three tiers](https://developerhub.io/pricing){:rel="nofollow"} between $39 and $99 per month, depending on the team size and customizability options needed. Also consider that because DeveloperHub eliminates the need for engineering resources to publish and host your documentation, you could be saving at least 10x the time and money.

To learn more, go to [DeveloperHub](https://developerhub.io/?utm_source=idratherbewriting&utm_medium=hibanner&utm_campaign=c1){:rel="nofollow"} and start exploring the platform with a sample project. You can get started in under a minute.
