---
title: "How do you learn what you need to learn to be successful as a technical writer?"
categories:
- api-doc
- technical-writing
keywords: api best practices
description: "Keeping pace with new technology and information is a core challenge for tech writers. You can divide the needed knowledge into four areas: product, technology, user, and industry domains. To limit the scope in each domain, filter by the users' tasks. To find time for the learning, implement morning routines for gathering information and log issues for needed documentation. Then as you work on the documentation and find yourself lacking knowledge, jump into online resources to learn what you need."
bitlink: http://bit.ly/howtolearnsuccesstw
---

{{site.data.alerts.note}}This is an earlier draft of an article I was working on for an upcoming issue of the <a href="http://intercom.stc.org">STC Intercom</a> focused on research in the workplace. To read the final published version, which incorporates the idea of "research" more than simply "learning," as I do here, see <a href="https://www.stc.org/intercom/2017/12/how-to-research-what-you-need-to-learn-to-be-successful-as-a-technical-writer/">How to Research What You Need to Learn to Be Successful as a Technical Writer</a>. The article appeared in the Nov/Dec 2017 issue. {{site.data.alerts.end}}

## Challenges we face

Some years ago, I had an informal chat with other tech writers on my blog about their biggest challenges. The prevailing theme in their responses involved keeping up with technology. A few said:

* "For me, it's keeping up with the right technology and fighting to increase productivity without making our jobs horrid."
* "I have trouble keeping up with the rapid pace of innovation in the IT world and the many ways to deliver content."
* "Part of the problem about keeping pace with technology is that we often work under tight deadlines. ... at the end of the day, to learn new tools and technology, it's often on your own time." (See ["Number one issue for technical writers today: Keeping pace with rapidly evolving"][3].)

That chat took place a decade ago, in 2007. Looking back, those seemed like the early days of the Internet, when all you needed to know was HTML, a little CSS, and a couple of help authoring tools to get by.

Now the number of proliferating technologies to learn has reached new levels of madness. For example, in ["How it feels to learn JavaScript in 2016"][1], Jose Aguinaga explains how jQuery, Bootstrap, and Bower are now passé.

Aguinaga says today front-end web developers have replaced those libraries with React, JSX, Babel, ES6, Browserify, WebPack, VueJS, RxJS, Grunt, Gulp, Broccoli, SystemJS, Typescript, OCaml, Ramda, Fetch, Request, Bluebird, Axios, Flux, Flummox, Alt, Fluxible, Redux, SystemJS, and dozens more JS frameworks and tools.



In the light of proliferating technologies, many of us struggle just to keep our head above water.

## Continuing education mandates

To help their employees keep up, many companies provide continuing education for their employees. Many leaders recommend that employees regularly update their technical skillsets.

For example, AT&T chief executive Randall Stephenson says, "People who do not spend five to 10 hours a week in online learning will obsolete themselves with the technology” (["Gearing Up for the Cloud, AT&T Tells Its Workers: Adapt, or Else"][2]).

This isn't just fear in the face of the technology unknown. According to TechCrunch, a study by Washington University claims that 40% of companies in the Fortune 500 will be gone in 10 years (["In a knowledge economy, corporate learning is necessary to survive"][5]).

This is because technology advances at such a rapid rate, if employees don't keep up, their skill sets become outdated. In turn the products they create become outdated.

I work primarily with Android-related products, so there's a lot going to keep updated about. There are nearly 220,000 people following the [Android tag on Stack Overflow][7], making it the sixth most popular tag. (Java, which Android is based on, has 530,000 followers and is the second most popular tag.)

But in the struggle to keep up with technology, we have to avoid the trap of thinking that it's just new tech we have to learn. What we need to know to succeed as technical writers spans multiple domains and knowledge areas. Not only tech, but product, user, and industry domains as well.

Additionally, beyond understanding what to know, we have to develop strategies for organizing time for learning.

## What to learn

The knowledge a technical writer needs to learn can be divided into at least four groups:

* **Product knowledge**:  An understanding of the product you're documenting &mdash; how it works, how it's configured, what features it provides, and so on.
* **Technical knowledge**: A grasp of the technical foundation of the product, such as an understanding of a programming language or platform (Java, Android, PHP, and so on).
* **User knowledge**: An understanding of the goals, tasks, questions, issues, complaints, requests, and other feedback from the people using the product.
* **Industry knowledge**: An understanding of the general trends, issues, and other topics in the business context in which the product lives.

Unless you have a lot of time on your hands, you won't have the bandwidth to master each of these knowledge domains. You have to find some way of limiting the scope. [Mark Baker][9] proposes looking at user tasks as a way of restricting the knowledge you need to know in each domain. He writes:

> You clearly can't master all of these four fields [technology, product, and industry knowledge], so you need some way of limiting what you need to know about each of them to be effective. The task is what we write about, so the task is what we need to know” (["Three types of knowledge every technical writer needs to be successful"][4]).

In other words, you can filter down these knowledge domains by looking at a specific user goal or task.

## Filtering knowledge domains through user tasks

To clarify the filtering process, I'll go through an example of how this works, using a task I document at my work.

Let's suppose the user's task is to create a streaming media app to display videos for Fire TV. ([Fire TV][8] is a set-top-box similar to Roku or Apple TV &mdash; it converts a "dumb TV” into a "smart TV” by providing an online interface of video apps and options.).

How would focusing on this user task help limit the four domains of knowledge that a technical writer needs to acquire? Let's step through it domain by domain.

### Product knowledge

To acquire the product knowledge, you look at what frameworks are used to build such an app. There are several frameworks (or starter kits) for building Fire TV apps. How do these starter kits or frameworks work? Can you set the frameworks up and make them work with sample feeds? How do you configure your media feed and other navigation details? How do you adjust the appearance and other elements?

You probably spend the majority of your time in this knowledge domain. To get product knowledge, you immerse yourself in the product. You read wiki pages related to the project, attend demos from engineers, and go to sprints for the relevant teams. You ask engineers for sample apps along with instructions, and then you play with the product until you know it well.

### Technical knowledge

You also need to explore the technology behind the product &mdash; in this case, the technologies used in building streaming media apps. Android is used for building apps for Fire TV, but the world of Android is almost as vast as Java. Saying that one needs to learn Android is like saying one needs to learn "medicine” or "databases.” Which part of Android do you learn? Again, you can filter the domain by looking at the user tasks.

Most of Android is actually focused on building apps for smartphones and tablets, not TVs. But your users will be building TV apps, not smartphone apps. Already you've whittled down the massive Android landscape.

Building TV apps involves understanding requirements for the "ten-foot experience.” The user interacts with the app through a remote controller (not buttons on your device), so the controller's buttons have to map to events in the app. Media plays smoothly through media players that handle HD streams and even 4K video. The way audio focus gets handled also differs.

To get the technical knowledge, you could read a book on Android in [Safari Books Online](https://www.safaribooksonline.com/home/) or take a course on Android on [Lynda.com](https://www.lynda.com/). You could also dive deep with a nanodegree in Android on [Udacity](https://www.udacity.com/nanodegree), watch videos on [YouTube](https://www.youtube.com/), or read general tutorials across the Internet. You primarily get general technical knowledge outside of your company.

The goal in acquiring technical knowledge is to become familiar with concepts and lingo to understand what's going on at a high level. You don't need to get lost in the technical details. You won't be diving as deep as engineers do &mdash; they're building production-ready apps from the ground up.

Diving too deep into the technology might exhaust all your other knowledge-gathering bandwidth. You need to learn just enough code to be dangerous, as Adam Wood says. Don't aspire to developer-level coding ability &mdash; you'll get discouraged too easily. Wood says even developing "bad coding skills” is probably enough when you're learning programming (["Enough to Be Dangerous: The Joy of Bad Python"][6]).

### User knowledge

It's important to understand what goes through the heads of users who want to build streaming media apps. What do they need to know? What questions will they have? What issues or feedback have you received so far from existing users?

It turns out most developers don't want to build Fire TV apps from scratch. They already have an Android app they built for Google and want to port it to Fire TV. What they need to know is how Fire TV differs from Android TV. How do they change their existing Google Android app to make it work on Fire TV? What Amazon APIs do they need to use instead to handle services such as in-app billing or maps? Again, user tasks have filtered the scope of the knowledge domain.

To get user knowledge, you can visit forums, send surveys, and talk with field engineers. You can pick the brains of product managers, check support logs, or look at search queries in metrics. You can attend conferences, make visits to user sites, and more. Any place users go online, you go there too.

### Industry knowledge

Finally, technical writers need an awareness of industry knowledge. What's going on with streaming media apps in the industry? What other starter kits and frameworks are available on other platforms?

For example, how does the Fire TV app compare with apps for Apple TV, Roku, and Chromecast? Are there certain contrasting features or specs to be aware of across these different platforms? What trends are happening with streaming media apps on these set-top- boxes?

If 4k is a common need, what do developers need to know to make their videos play 4K? The Fire TV stick sells more than the Fire TV set-top-box, but the stick's CPU and chipset aren't as fast. How does this business trend towards less performant but cheaper devices affect how developers code apps? What will Apple release in their upcoming version of Apple TV? Is HDR (high-definition range) going to be the next big must-have feature?

You get this knowledge from reading industry websites, magazines, blogs, and other general news sources. Understanding industry trends and directions will help you focus your documentation in relevant ways.

## Where do you find the time?

Now that I've covered what a technical writer needs to know, another question remains. How do you find the time to get this knowledge? Even if you filter the product domains by user tasks, there's still a ton of ground to cover.

Here's my approach. I tackle the product, user, and industry knowledge at more or less the same time. First I compile a list of relevant news sources to gather the information. The links include the following:

* Company forum threads
* Stack Overflow forum threads
* Company blogs
* Product evangelist blogs
* Industry leader blogs
* Wiki pages
* Change histories in wiki spaces
* Release schedules
* Launch readiness reports
* GitHub Issues
* JIRA boards
* Sprint planning
* Sprint retrospectives
* Twitter accounts for product evangelists and marketing groups
* Metrics for document usage, including search queries
* Support reports
* Google alerts for product keywords
* Appstore new releases

My list of links has about 25 different information sources. When I roll into work in the morning, I spend about 30 minutes checking all these new sources.

When I find some relevant nugget, I log a task item (in JIRA) to add the information to the documentation. This information gathering session works well and makes me feel aware of what's going on.

Usually, one source will have more information on some days than others. For example, a company blog post might have new case studies and videos that state top tips or concerns from developers. Another day, an updated wiki page might reveal details about an upcoming feature and launch schedule. Another day, newly published apps in the Appstore might show a trend with a niche developer audience.

During my information gathering, I don't spend time creating new documentation. Here I'm just gathering information and logging JIRA items. When it comes time to work on the tasks (JIRA items), I identify the top two JIRA items to focus on for the day. I drag these items into the "In Progress” column on my Kanban board.

Now here's where my deep-dive into technology comes into play. To address a JIRA item, I may have to spend some time learning about a concept. For example, if the JIRA is to address audio focus handling in streaming media apps, I could turn to YouTube. YouTube has many Google I/O presentations, even some addressing audio focus. The YouTube video might introduce concepts that would be familiar to existing Android developers but which are new to me.

To better understand these new concepts, I turn to my other resources for learning, such as Lynda.com, Udacity, Safari Books Online, or other sources.

As long as I've grounded the knowledge need in an actually relevant JIRA I'm working on, I won't feel like I'm learning the wrong thing. This is the problem with most tech courses and e-learning. You often spend time learning things that aren't immediately relevant to your projects.

When you're a working professional, you can't sink countless hours of time in directions that seem like tangents. The effort must directly address the knowledge you want to gain. What you learn has to relate to JIRAs you're working on — otherwise, the efforts become tangential and unproductive.

## Conclusion

Efforts to stay updated with the right knowledge is a challenge that crosses all disciplines, but it's especially relevant to technology workers. Focus your attention on the four domains I mentioned — product knowledge, technology knowledge, user knowledge, and industry knowledge.

Then limit your scope to the user's tasks that you need to document. This will help you move forward in productive ways toward a successful career.

A decade later, you can look back at your current time period and wonder nostalgically how good you had it. You can smile for the days when there were only 30 or 40 JavaScript frameworks and a dozen help authoring tools to know about, rather than hundreds.

## Bibliography

* Aguinaga, Jose. "[How it feels to learn JavaScript in 2016][1]." Hackernoon. October 3, 2016.
* Hardy, Quentin. "[Gearing Up for the Cloud, AT&T Tells Its Workers][2]: Adapt, or Else." Nytimes.com. February 14, 2016.
* Johnson, Tom. "[Number one issue for technical writers today: Keeping pace with rapidly evolving][3]." idratherbewriting.com. March 1, 2007.
* Johnson, Tom. "[Three types of knowledge every technical writer needs to be successful][4]” idratherbewriting.com. April 27, 2016.
* Mehta, Karl. "[In a knowledge economy, corporate learning is necessary to survive][5]" TechCrunch. October 30, 2016.
* Wood, Adam. "[Enough to Be Dangerous: The Joy of Bad Python][6]" Hackwrite. January 1, 2017.


[1]: https://hackernoon.com/how-it-feels-to-learn-javascript-in-2016-d3a717dd577f
[2]: https://www.nytimes.com/2016/02/14/technology/gearing-up-for-the-cloud-att-tells-its-workers-adapt-or-else.html
[3]: https://idratherbewriting.com/2007/03/01/number-one-issue-for-technical-writers-today-keeping-pace-with-rapidly-evolving-technology/
[4]: https://idratherbewriting.com/2016/04/27/triangle-for-tech-comm/#comment-2649234858
[5]: https://techcrunch.com/2016/10/30/in-a-knowledge-economy-corporate-learning-is-necessary-to-survive/
[6]: http://hackwrite.com/posts/enough-to-be-dangerous/
[7]: http://stackoverflow.com/questions/tagged/android
[8]: https://en.wikipedia.org/wiki/Amazon_Fire_TV
[9]: http://everypageispageone.com/
