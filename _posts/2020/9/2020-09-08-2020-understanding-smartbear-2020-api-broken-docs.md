---
title: "SmartBear's 2020 The State of API report finds Accurate and Detailed Docs to be second-most important characteristic of APIs"
permalink: /blog/SmartBear-2020-state-of-api-docs-review/
categories:
- api-doc
keywords:
rebrandly: https://idbwrtng.com/
description: "SmartBear recently published their 2020 The State of API report, which collected responses from 52 questions from 3,500+ respondents. Reading this report will make any technical writer feel like he or she has an important role with API docs. However, the report also suggests that processes related to software documentation need improvement in the software industry, with a bold headline that asserts, 'API documentation represents big opportunity for improvement.'"
published: false
---

## Report overview

You can download the SmartBear report here: [2020 The State of API report](https://SmartBear.com/resources/ebooks/the-state-of-api-2020-report/) (some information fields are required before you can download the PDF). The report is short, but if you're pressed for time, just read "API Strategies" (pgs 10-18) and "API Documentation" (pgs 42-47).

Here are the highlights that will make technical writers puff up their chests with pride:

> While the top 3 most important characteristics in an API remained the same year over year, *Accurate and detailed documentation* beat out *Responsiveness/ performance* for the 2nd position with a significant 13% increase. For context, when we asked the same question in 2016, only 25% of respondents selected documentation as a top factor. This year, 63% of respondents chose it.

<a href="https://SmartBear.com/resources/ebooks/the-state-of-api-2020-report/"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/SmartBear2020mostimportantchars.png" alt="As an API Consumer, what are the top three most important characteristics you need in an API?" /></a>

Not only did documentation remain high on the list of important characteristics &mdash; it actually shot up 13% from last year.

I almost feel like including this screenshot in my email signature, or making T-shirts with the graphic. The report follows up this graphic with an astute observation that rankings about what's important depend on the group doing the ranking. *API producers* rank differently than *API consumers*:

> While *Performance* rates number one overall for API success [for API producers], to the API consumer *Ease of Use* and *Accurate Documentation* are the top choices.

In other words, for developers consuming the API (*API consumers*), ease of use and accurate docs are the most important, whereas for internal dev teams (*API producers*), performance and uptime/availability are the most important elements. Here's what matters to internal teams producing APIs:

<a href="https://SmartBear.com/resources/ebooks/the-state-of-api-2020-report/"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/SmartBear2020success.png" alt="How do you measure the success of your API?" /></a>

The juxtaposition of these two graphics say a lot. Why is there misalignment between what's important for API producers and what's important for API consumers? Wasn't the whole point of agile development to help align what devs teams create with what's important for the audience?

In my experience, documentation hardly gets the attention it should merit based on API consumer rankings here. For example, how many product engineering meetings have you been in that focused on *ease of use* and *accurate and detailed documentation* rather than *performance* and *uptime/availability*? Most meetings focus heavily on technical matters and very few meetings (maybe less than 10%) focus on *ease of use* (the developer experience) and *accurate and detailed documentation*.

If API consumers esteem documentation to be so important, why don't dev teams prioritize it more? The report says that basically, teams don't have the time or resources for docs:

> According to 64% of the survey participants, *Limited time* is the biggest obstacle to providing up-to-date API documentation. Following that, 47% of the organizations surveyed deal with API Documentation that is now out of sync with the API implementation. Lastly, for 29% of respondents, they could deal with the problem of outdated API documentation if they had more personnel.

Admittedly, if we're expecting engineers to write docs while simultaneously writing code, it's no wonder that they lack the time, or that why when they do write docs, they do it in haste and without the care and meticulousness the activity requires. The SmartBear report seems to suggest that generating docs from an OpenAPI spec is the main request/process around docs, and that most engineering teams can handle this documentation task without technical writers. They only mention technical writers as a fallback to engineers who can't auto-generate API docs from the spec:

> Without the option to render machine-readable code, 15% of the organizations use technical writers to create API documentation.

Here's the accompanying graphic:

<a href="https://SmartBear.com/resources/ebooks/the-state-of-api-2020-report/"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/SmartBear2020howhandledocs.png" alt="Which best describes how your team handles API documentation?" /></a>

This mention of tech writers always catches me by surprise here It portrays tech writers as some kind of antiquated group of craftsmen who are typing out documentation laboriously by hand in old-school ways. In my surveys on dev doc trends, most API docs (including reference) are generated in a collaborative effort involving both tech writers and engineers.

The SmartBear report also finds that most survey respondents feel their docs are sub-par and in need of improvement:

> Documentation is so important to the successful adoption of an API, and yet 43% of survey participants indicated their documentation was poor and needs improvement. Most organizations (52%) rated their API documentation Good to Average. Only 5% of the survey respondents felt their API documentation was Very good.

<a href="https://SmartBear.com/resources/ebooks/the-state-of-api-2020-report/"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/SmartBear2020howrate.png" alt="How would you rate the documentation your organization provides today?" /></a>

I'm curious whether developers would answer the question similarly about their APIs or other code. Whatever the reason, most people feel their docs need a lot of improvement. Documentation is one of those things that, if it were rated on Amazon, would rarely climb above three stars &mdash; good docs are rare. Reading this part of the report, I started to realize that something must be broken about documentation in the software industry. More on this later.

The report tries to identify the docs that should have the highest priority based on user need. It turns out that "examples" top the list by a wide margin:

> Of all the elements that make up successful API documentation, the desire for *Examples* is the top choice for the second year in a row, coming in at 70%. A close tie for the next three spots is Status and errors at 51%, Authentications at 50%, and Error messages at 49% of survey respondents.

<a href="https://SmartBear.com/resources/ebooks/the-state-of-api-2020-report/"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/SmartBear2020topdocsneeded.png" alt="Please select the top 5 most important things you look for in API documentation." /></a>

I admit that I'm a little confused at how "examples" differ from "code samples," and the report never explains what examples are. I assume examples refer to sample apps, for the most part. Not just a small code snippet but an actual working example of an implemented API.

Regardless of the lack of clarity about examples, the previous screenshot is golden in highlighting different components of API tech docs. In fact, I'm inclined to print out a list like this as a quality checklist for docs. In looking at the list, the report authors make a good observation:

> From the exhaustive list of items and active responses across categories one begins to understand ... the scope of work required to create and maintain documentation.

Amen to that! Yes, when you start thinking about all the elements required for good documentation &mdash; not only examples (sample apps), but documentation for error messages, getting started guides, tutorials, change logs, glossaries, and more &mdash; the scope and work do feel daunting.

## What's broken

While the report does an excellent job of highlighting the importance of docs, the report also suggests that documentation is broken in the software industry. To recap some of these findings:

* Docs rank as the second-most important characteristic of an API, but software teams rarely reflect this importance in their API development (just ask any tech writer who has ever worked with software documentation).
* Only 23% of teams consider their documentation good, and only 5% consider is very good.
* 64% say limited time is the biggest obstacle to providing updated API docs
* 47% say their docs are out of sync with the API implementation

While I'm floored to see the importance of documentation highlighted in such a prominent way, I am skeptical that the report will change the industry. Do we expect that product/engineering teams all over the country will start reading this report and think, hey, maybe it's time for us to allocate headcount for a dedicated technical writer on our team! In other words, is this report going to change the software industry in a way that fixes documentation? Unfortunately, I doubt it.

How did documentation get into this state? Poorly resourced, never enough time for it, out of date, average in quality &mdash; despite customers saying it's the second most important factor in APIs? Maybe the processes development teams use to create documentation are broken.

## Two ways documentation processes are broken

There are at least two reasons why documentation processes are broken with software development teams.

### 1. Scrum authors weren't documentation champions

We can thank the authors of Scrum for de-emphasizing the importance of documentation by proclaiming in the agile manifesto the principle of "Working software over comprehensive documentation" ([Manifesto for Agile Software Development](https://agilemanifesto.org/)). Even if the intent wasn't meant to include end-user documentation, they never clarified this nor do they include documentation as part of the sprint development process. For example, during sprint demos, features are demo'd. What if the Scrum authors had included some kind of documentation component in sprints?

The truth is that tech writers have never fit neatly into the Scrum model, where engineers are fully dedicated but tech writers are spread thin across half a dozen projects and treated in ad hoc ways. (For more on this topic, see [Tech docs and Agile: Problems with integrating tech writers into engineering Scrums (Part 1)](https://idratherbewriting.com/2017/08/04/part1_when-agile-doesnt-work-technical-writers/).)

### 2. No built-in quality control mechanism

Lack of more formalized recognition of documentation and a more integral role in Scrum would be helpful, but there's a larger issue with roles and responsibilities. Dev has QA to quality-check the code devs write, but who quality-checks the docs that tech writers write? Tech writers can pretty much write what they want, get an overworked/hurried engineer to nod approval, and then hit publish. There's no quality control enforced with docs like there is with code, and as a result, documentation regularly fails to meet the quality standards organizations want to achieve.

Note that when I say "mechanism," I'm referring to some more integral checkpoint built into a process &mdash; something that writers can't easily bypass.

It's rare that developers would push code straight to production without getting approval from the QA team. Some developers fill hybrid-QA roles, so it's not this black and white. But there's a strong tradition of QA acting as quality control for devs, but not tradition of any role acting as quality control for writers.

## Possible quality control mechanisms for docs

The following are possible quality control mechanisms for docs.

### Editors {#editors}

But what about editors as a quality control? For example, a journal has an editorial review board that ensures the articles they publish meet a quality standard. Don't docs work the same way?

Yes, some doc teams have editors that review docs and ensure they meet a quality bar. However, these editors tend to focus mostly style more than accuracy and completeness of content. Usually, editors don't have the bandwidth or expertise to step through the instructions themselves as a test user.

### QA team {#qa_team}

One approach might be to have an editor review docs for style, and have the QA team review docs for accuracy. This could create a more holistic check from different perspectives.

QA members can review docs for accuracy, but few QA teams ever feel it's their responsibility to review docs, and like developers, they lack bandwidth. In my experience, the doc reviews from QA tend to be marginal and don't assess clarity (such as whether a user could understand and follow the instructions).

### Usability testing {#usability_testing}

Another approach could be to test docs with actual users. Writers could bring in users for beta testing of docs, or use other tech employees as user proxies. However, deadlines rarely accommodate this, nor could this be done on a regular basis with each iteration of docs. Additionally, especially with API docs, it's often not possible to do quick user tests. Many of the products I work on take at least a week to implement, if not multiple weeks.

### Formal signoffs {#formal_signoff}

Some teams implement required formal signoffs before publishing docs. These mechanisms are often implemented after a product manager becomes upset about something that was incorrectly published in docs and so implements tighter preventive controls.

The problem with stricter signoff controls is that not all changes merit signoff. Imagine following the same release process for fixing a typo as for the first release of new software. If you have to get 100 approvals to publish anything, this creates a bottleneck to being able to publish in a more rapid, dynamic way that fits the pace of development.

### Multi-stage doc review {#multistage_doc_reviews}

Although I don't have a formal signoff process, my process for quality control is to implement an informal five-step review process that involves the following:

* Review with doc team (me - I have to be able to make the instructions work for myself)
* Review with product team (the ones who created the software)
* Review with field engineers and support teams (our field engineers interface with partners and represent the voice of the developer)
* Review with Legal (if I think it's warranted)
* Review with beta users (if the product has a beta)

I try to push docs through these stages of review and get an informal approval from each group. Although I've described this review process to teams, the timelines I work in rarely accommodate all levels of review. I'm working on a documentation project now that's a good example. The product team literally gave me two weeks to work on documentation for something they spent a year developing. I think a more reasonable timeline would have been 1-2 months. Partly it's my fault for not providing clearly requirements around timelines and review processes ahead of time, especially when I saw the product on the roadmap horizon long before.

### Regulatory standards {#regulatory_standards}

Other industries often have regulatory standards that docs must meet. (In fact, someone once asked if I would participate in creating a regulatory standard for API docs, though I passed on this because no company I've ever worked with has used regulatory standards.) Standards are more common in Europe and in industries outside of software.

I like the idea of a standard, but who would enforce it? And how specific would the standard be? For example, would the standard require a specific sentence reading level? Would it require all error messages to be defined in the documentation? I can see how some best practices might not always apply.

### Working sample apps {#working_sample_apps}

Another approach for quality control is to complement documentation with a sample app. The sample app does a tremendous job in ensuring that the steps in the documentation achieve the advertised result. If you can can walk through each of your steps in a sample app, and you get the right result, there's a good chance that the docs will be accurate. If the sample app doesn't work, there might be something you've missed in the documentation.

Not all projects have sample apps, and this is definitely one area where norms in one industry differ from other industry norms. But championing sample apps as a quality control check has the additional advantage of providing "Examples" to users, which is their most requested type of documentation. (This assumes you can actually release the sample app.) Truth be told, sample apps are often  more illustrative than explanatory documentation.

### Reduced project allocations {#reduced_project_allocations}

Another quality control mechanism could be to reduce the number of projects you're allocated to. I described this in two recent posts:

* [Part IV: Engaging deep enough to blur the lines between content and product design](/blog/reflecting-seven-years-later-about-layoff-colman-designer-hybrid/)
* [Playing a product design role as a content designer -- podcast with Jonathon Colman](/blog/podcast-colman-playing-product-design-roles-as-a-content-designer/)

The idea is that writers who engaged on 1-2 projects only can likely have the bandwidth necessary to create great docs. After all, when one starts to examine what's required for great docs (the long list earlier in response to "Please select the top 5 most important things you look for in API documentation"), people start to realize the required resourcing to write docs.

That said, I doubt I could radically pivot towards this model by simply rejecting many of the requests that come my way.

## Conclusion

Overall, what is the best quality control for docs? In what ways can this quality control be enforced, so that it can't be overlooked or ignored? A good mechanism is one that requires you to follow it because it's baked into the process that you have to follow. For example, if your intake process populates a ticket with a list of required fields, it enforces information collection into the process itself rather than being a best practice to remember.

When I look over the list of possible quality controls, from those I've tried, what works best for me is the following:

* Sample apps
* Informal signoffs

I think most docs
