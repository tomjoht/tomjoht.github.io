---
title: "From API docs to developer portals"
permalink: /blog/from-api-docs-to-developer-portals/
categories:
- api-doc
keywords:
rebrandly: https://idratherbewriting.site/apidocstodevportals
categories:
- api-doc
- podcasts
keywords: usability, API, design web
bitlink: https://idratherbewriting.site/devportalsintro
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/devportalsintro.mp3
podcast_file_size: "3.04 MB"
podcast_duration: "32:29"
podcast_length: "29943785"
description: "One comment I often hear from API workshop participants and other readers is that they want a more advanced API course. I've been thinking about what that more advanced course would involve, in addition to what might be involved in leveling up at my work, and I've come to a realization that I need to transition more from API documentation to developer portal strategies. Developer portal strategies includes API documentation but also encompasses broader concerns as well, not too different from content strategy. "
---

I also recorded this post as a conversational podcast (rather than a narrated one).

{% include audio.html %}

## Parallels with content strategy

The transition from API documentation to developer portals mirrors the same transition that took place in tech comm domain from documentation to content strategy. When that transition happened, I resisted calling myself a content strategist because I felt like much of the tech writer's role already involves making many decisions about content strategy. But it's not always the case, and probably much less often than I assumed. The meaning of "content strategy" forked into several different connotations whether you're in marketing, tech comm, or running an SEO business, which further complicated the direction.

Regardless of parallels, in many circles related to API docs, I keep seeing an emphasis on "developer portals." Sometimes anything that isn't strictly "API reference documentation" is considered part of the developer portal, such as a Getting Started tutorial, how you authorize your calls, your publishing platform, your contributor workflows with Git, etc. In many ways, a developer portal is similar to a documentation portal, but the developer portal has some unique traits and considerations given the developer audience.

In this post, I'll outline a few details of what's involved in running and managing a developer portal that goes beyond mere content development. There are many topics to cover, but I'll limit the focus here to brief bullet points. I do elaborate a little more in the podcast, but not much.

## Developer portal topics

The following topics are roughly grouped into four categories: tools, policies and procedures, high-level strategies, and user flows. If you have feedback on any of these topics or directions, I'd love to hear it.

### Tools

*  Authoring and publishing toolchain selection and implementation

*  Federated search and findability

*  Git workflows and permissions

*  Review and monitoring of Git commits and contributors

*  Implementation of style/grammar checkers at the platform level

*  The design and style of the docs (the theme)

*  Security tickets and the developer portal

*  Configuration of PDF output and generation

*  Understanding how the doc toolchain builds and publishes content from end to end

*  Management of the cloud console and resources for distributing files and storing assets

*  Verification scripts to perform automated checking (such as looking for broken links or style inconsistencies)

*  Search engine optimization and discoverability in search engine results

### Policies and procedures

*  Release process for SDKs, sample apps, and other code artifacts

*  Contributor processes (e.g., pull requests or other strategies for outside contributors)

*  Localization processes, priorities, and workflows

*  Style guide development and implementation

*  Processes for whitelisting beta partners

*  Processes for collecting feedback from beta partners

*  Onboarding guide for contributors, including training

*  Monitoring and handling incoming tickets from other groups

*  Content audit of the entire site, with a current list of owners and contact points

*  Ensuring all docs meet common guidelines, including release notes for changes, etc.

*  Intake processes for product launches that span across field engineers, marketing, and support, etc.

*  Deprecation old content and establishing correct processes

*  Defining the review process for docs (this might include various levels, such as doc team, product team, field engineers, legal team, and beta partners) prior to publication

*  Defining the internal team's workflow of tickets via a Scrum or agile methodology

*  Defining policies for when PDFs are delivered

*  Establishing standards for REST API reference content such as using OpenAPI

*  Reviewing auto-generated reference docs from library-based APIs (e.g., Javadoc, Doxygen) to ensure proper standards and tagging

*  Defining templates for docs that provide standards for content such as CLI docs, schemas, and other structured information that doesn't have an industry standard

*  Defining and implementation the display of specification information for different products &mdash; the attributes, display approach, and data storage approach

*  Awareness and understanding of legal red flags and danger zones, as well as the legal review process and resolution

* Strategies for versioning content

*  Managing sprint planning for docs and maintaining team momentum of priority items

*  Understanding product naming and branding, and then enforcing this against individual teams that might launch new feature names in unapproved ways

*  Publicizing updates to mailing list to communicating changes to all relevant parties

### High-level strategies

*  Aligning the team's efforts and priorities with larger org's priorities

*  Coordination and partnerships with other doc teams, including aligning on similar directions, tools, or processes

*  Analyzing trending support tickets and products (even when not filed by these teams against docs), and syncing with engineering teams on resolutions

*  Syncing with field engineers and other groups on a regular basis to gather input points from customers and product roadmaps

*  Assessing incoming requests and deciding how to approach them, whether to work on them
 or not
*  Understanding your team's correct fit in the organizational chart (e.g., Engineering, Marketing) and vying for correct placement

*  Reporting upwards with weekly, monthly, and yearly reporting cadences

*  Understanding larger initiatives in executive strategies/reports and connecting the dots with all of these products

*  Developing strategies for funneling information from developers back to product teams

*  Providing input on developer satisfaction surveys and then taking action on the results

*  Building rapport with key stakeholders and providing regular updates about the performance of their docs, etc.

### User flows

*  User journeys from marketing landing pages to docs

*  How content across the portal all fits and flows together &mdash; docs, marketing, support, console

*  Arrangement of multiple doc sets into a master index or starting point

*  Movement from marketing pages into documentation

*  Integrating the support path from the docs

*  Developer console logins and flows, including in-app help

*  Ensuring the homepage and other marketing pages on the site properly match messaging in the documentation

*  Building trust with developers

*  Understanding the customer side of each developer product

*  Awareness and review of pages outside the docs that include the post-login console, marketing pages, Stack Overflow, GitHub, etc.

*  Understanding analytics and regularly investigating trending pages, then prioritizing updates based on analytics

*  Understanding how every product fits together as a whole across the developer portal (rather than only understanding the docs you work on)

*  Driving developers to sign up to newsletters and other forms of outreach from the docs

*  Researching developer journeys on competitor sites



## Conclusion

In all of these points, I have barely mentioned anything about content development. I'm just trying to paint a picture of the broader concerns involved in managing a developer portal.
