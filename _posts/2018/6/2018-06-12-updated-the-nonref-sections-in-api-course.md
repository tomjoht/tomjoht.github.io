---
title: "Non-Reference Content section updated in API course"
categories:
- api-doc
keywords:
description: "I updated and reworked the topics in the Non-Reference Content section in my API doc course. This section includes the following topics: API overview, Getting started, Authentication and authorization, Status and error codes, Rate limiting and thresholds, Code samples and tutorials, SDKs and sample apps, Quick reference guides, API best practices, and Glossary. These sections are important in API documentation but tend to be overlooked as most discussions around API documentation focus on endpoint documentation only."
bitlink: http://bit.ly/nonrefsectionupdate
---

Although this seems like a relatively easy section, it was actually one of the most tedious to write. It took me about a month to make these updates. I originally started updating this section when I [presented on non-reference content to the SF STC chapter back in March](https://idratherbewriting.com/2018/03/08/stc-sf-preso-nonreference-api-docs/). I then presented on the topic again in the [API workshop in Denver (it's Part III)](https://idratherbewriting.com/2018/03/12/api-documentation-workshop-in-denver/#video-recordings). I finally articulated some of the same instruction I gave during these presentations into written topics.

Here's a list of pages in the [Non-reference content](https://idratherbewriting.com/learnapidoc/docnonref.html) section, along with their intro sentences:

[API overview](https://idratherbewriting.com/learnapidoc/docapis_doc_overview.html)
: The overview explains what you can do with the API (high-level business goals), the pain points or market needs it solves, who the API is for, and other introductory information.

[Getting started](https://idratherbewriting.com/learnapidoc/docapis_doc_getting_started_section.html)
: Following the API Overview section, you usually have a “Getting started” section that details the first steps users need to start using the API. This section often includes the whole process from beginning to end, compressed as simply as possible.

[Authentication and authorization](https://idratherbewriting.com/learnapidoc/docapis_more_about_authorization.html)
: Before users can make requests with your API, they’ll usually need to register for some kind of application key, or learn other ways to authenticate the requests. APIs vary in the way they authenticate users. Some APIs require you to include an API key in the request header, while other APIs require elaborate security due to the need to protect sensitive data, prove identity, and ensure the requests aren’t tampered with. In this section, you’ll learn more about authentication and what you should focus on in documentation.

[Status and error codes](https://idratherbewriting.com/learnapidoc/docapis_doc_status_codes.html)
: Status and error codes refer to a code number in the response header that indicates the general classification of the response — for example, whether the request was successful (200), resulted in an server error (500), had authorization issues (403), and so on. Standard status codes don’t usually need much documentation, but custom status and error codes specific to your API definitely do. Error codes in particular help with troubleshooting bad requests.

[Rate limiting and thresholds](https://idratherbewriting.com/learnapidoc/docapis_rate_limiting_and_thresholds.html)
: Rate limits determine how frequently you can call a particular endpoint. Usually companies have different tiers (for example, free versus pro) and licenses (open-source, business, commercial) corresponding to different capabilities or rate limits with the API.

[Code samples and tutorials](https://idratherbewriting.com/learnapidoc/docapis_codesamples_bestpractices.html)
: Developer documentation tends to include a lot of code samples. You might not include these more detailed code samples with the endpoints you document, but as you create tasks and more sophisticated workflows about how to use the API to accomplish a variety of goals, you’ll end up leveraging different endpoints and showing how to address different scenarios.

[SDKs and sample apps](https://idratherbewriting.com/learnapidoc/docapis_sdks_and_sample_apps.html)
: SDKs (software development kits) and sample apps are similar to code samples but are much more extensive and usually involve a whole collection of files that work together as a package or app. The SDK might include libraries that you download and incorporate into your application, and can include tools, sample apps, and other code. Sample apps are self-contained applications that implement the API for a specific scenario. Sample apps demonstrate an implementation from beginning to end (usually including initialization, configuration, requests, etc.).

[Quick reference guides](https://idratherbewriting.com/learnapidoc/docapis_doc_quick_reference.html)
: The quick reference guide serves a different function from the getting started guide. While the getting started guide helps beginners get oriented by providing an beginning-to-end tutorial to make a simple API request, the quick reference guide helps users get a glimpse of the system as a whole often by providing a hierarchical diagram of the API endpoints.

[API best practices](https://idratherbewriting.com/learnapidoc/docapis_best_practices_with_api.html)
: API best practices can refer to any general advice your product team want to communicate about working with the API. There’s no set number of topics or content that is typically covered in API best practices. Instead, the best practices can be a catch-all folder title for content that doesn’t fit anywhere else.

[Glossary](https://idratherbewriting.com/learnapidoc/docapis_glossary_section.html)
: The glossary defines all the terms that might be unique to your company or API. Glossaries are often overlooked or skipped, but their importance should not be understated, since much of the user’s understanding of API documentation depends on the clarity and alignment of specific terms.



