---
title: "2017 Technical Writing Predictions/Trends"
categories:
- api-doc
- general
keywords: trends, documentation, technical writing, github, software documentation
summary: "My 2016 predictions turned out to be pretty accurate. For 2017, I'm predicting that more technical writers turn to Github in their documentation workflows. This applies mainly to technical writers working with engineers to create API and other developer documentation."
bitlink: http://bit.ly/2017techwritingtrends
published: false
---

## Reviewing 2016 trends

In 2016, I based my trends predictions off of the rapid growth of REST APIs. Based on API growth, I outlined 10 ripple effects that would extend to technical writers. See [My 2016 technical writing trends and predictions, or the ripple effects of API growth on technical writers](http://idratherbewriting.com/2015/12/29/trends-technical-writing-2016/) for full details.

Before jumping into trends for 2017, let me briefly review how my 2016 trends predictions turned out.

### 1. Use of Swagger with API docs becomes an expectation

The [most popular 3 posts on my site during 2016](http://idratherbewriting.com/2017/01/17/trends-2017-swagger-all-the-way/) were all Swagger related, with the [Swagger tutorial](http://idratherbewriting.com/pubapis_swagger/) taking the number one spot and driving a massive uptake in traffic to my site. So yes, Swagger took off in 2016.

### 2. Markdown as an authoring format gets taken more seriously by the tech comm community

With Github's integration of Markdown (including auto-builds with Jekyll site through [Github Pages](https://pages.github.com/)), Markdown has continued to proliferate as the dominant syntax for documentation among developers. More tools support Markdown out of the box, and as Markdown becomes the default format on Github, Stack Overflow, and many other tools, it is natural and easy for developers to use. Selling developers on any other syntax (even rST, with all the semantic benefits it offers) is increasingly difficult.

### 3. Github as a collaboration platform rises in popularity among tech writers

Github has continued to become the go-to platform for open source development projects. Teams are not only managing code on Github but documentation as well. It makes sense to use the same platform for managing documentation as you do for code, treating code and doc with similar workflows.

In an insightful post about 2016 trends, Shaun McCance outlines the [top 5 trends in open source documentation](https://opensource.com/article/16/12/yearbook-5-trends-open-source-documentation). He names Git, lightweight languages, static site generators, continuous integration, and hosted documentation services as trends. Github encompasses all of these characteristics.

### 4.  Write the Docs meetup groups proliferate over STC

[Write the Docs](http://www.writethedocs.org/) exploded in positive ways during 2016. In Eric Holscher's [2016 Year in Review](http://www.writethedocs.org/blog/write-the-docs-2016-year-in-review/), Eric mentions thriving statistics for the conferences, Slack group, meetups, and more (such as the [podcast](http://podcast.writethedocs.org]). Write the Docs is on an upward trajectory and will continue to gain popularity, while the paid membership model of the [STC](https://www.stc.org/) wanes.

### 5. Security paranoia forces authentication of docs

2016 saw numerous scandals with security, from [Yahoo's implosion with millions of hacked accounts](https://www.nytimes.com/2016/12/14/technology/yahoo-hack.html?_r=0), political information from the [DNC leaked](https://en.wikipedia.org/wiki/2016_Democratic_National_Committee_email_leak), ["misinformation hacks" from Russia](http://dayontheday.com/2016/12/13/are-cia-claims-on-russia-hacking-legit-or-part-of-misinformation-campaign/) (if they can be considered hacks), and more. Nevertheless, I haven't noticed any particular trends in the authentication of docs. I don't have a lot of data about this, though.

### 6. Tech writers explore non-traditional tools instead of HATs

Many tech writers are starting to work with [static site generators](http://www.staticgen.com/) such as Jekyll, Sphinx, and Middleman. Some developers simply choose to [build their own custom documentation sites](https://blog.reactioncommerce.com/an-intro-to-redoc/).

It's hard to find data measure how many doc teams are migrating away from HATs and other traditional tech comm tools to static site generators. But I think in API documentation spaces, static site generators continue to pop up.

### 7. Technical writers create more tutorials (instead of just tasks)

It's hard to evaluate this trend. The [search for "Swagger tutorial"](https://www.google.com/search?q=Swagger+tutorial) brought a ton of traffic to my site. Additionally, with the Jekyll docs, we will be adding a "Tutorials" category (stored in a collection unique from docs).

When I look at [Google trends for "tutorials"](https://www.google.com/trends/explore?q=tutorial), it shows a slow downward slope.

### 8. Technical writers study at least one programming language

I had numerous people ask me advice on learning a programming language in 2016. I point them to this post: [API doc survey: The most common programming languages tech writers know](http://idratherbewriting.com/2014/12/22/most-common-programming-languages-tech-writers-in-my-survey-know/).

Adam Wood also has a good post on [What (and how much) to learn?](http://hackwrite.com/posts/what-and-how-much-to-learn/). Udemy has taken off with its array of nanodegree courses, and more technical writers are hungry to learn development techniques.

Additionally, numerous people have told me that my [API documentation course](http://idratherbewriting.com/docapis_course_overview/) was helpful. For example, [David Wilks said](http://idratherbewriting.com/docapis_course_overview/#comment-3124829110), "Tom, this course is great. I'm only part way through it, but it already helped me get a job by appearing fluent in APIs during an interview." I've heard similar feedback from a lot of people this year.

### 9. Technical writers deliver content via APIs themselves

This prediction didn't really play out. Although I listed [Contentful](https://www.contentful.com/) as a platform to watch, I haven't heard anything about content-based APIs this year.

## 2017 Trends

Before jumping into predictions for 2017, let me first say that different documentation spaces have different trends. Here's my space: **API documentation in Silicon Valley, California**. I'm not entrenched in machinery documentation in Germany. I'm not creating screencasts and instructional learning for large orgs. I'm not on a team that consists of hundreds of writers. I'm not writing GUI documentation. I'm not trying to break into the industry as a first-timer. I'm not an XML consultant.

So recognize that my views and perspectives are shaped by my own experience. With that said, here's what I think is coming for 2017, particularly in developer documentation spaces: **Github as a platform for managing and hosting technical documentation.**

Here's why:

Github has come to define the workflow and interaction model that developers follow in collaborating on documentation. Internally, many software shops implement models similar models following Git, but without the Github interface. However, I think documentation needs this GUI layer to manage issues, handle pull requests, facilitate reviews, and manage all aspects of the doc process is a more visible, trackable way.

More and more, I'm realizing that documentation is a collaborative effort by communities of people. It isn't the effort of a single technical writer assigned to a project.

The idea that documentation can be perfected by just a few technical writers working outside the business, outside immersion in deep developer tasks, and largely working alone is ludicrous.

The past couple of months, I wanted to become more familiar with open source workflows for docs. So I participated in some documentation on the [Jekyll](http://jekyllrb.com) site. I thought I'd contributed heavily to some doc improvements, but then I looked at the [list of resolved issues in the 3.4.0 issues](http://jekyllrb.com/docs/history/#v3-4-0) and realized my contributions were a mere drop in the bucket.

There were probably 100+ issues surfaced, discussed, resolved, and merged across dozens of different people and teams. *A lot* of effort goes into running a software project, and seeing the list of doc updates humbled me. Even with my contributions, others followed to correct some errors or gaps in what I'd written.

If documentation for any project is going to thrive, it needs the attention and contributions of a whole village of users.

At my work, we want to embrace a Github workflow. You can already see this revolution in other companies with [Microsoft and their Azure docs](https://docs.microsoft.com/en-us/azure/). They shifted away from the cumbersome, slow XML model with MSDN and have reinvented their docs in the community following an open source model. Their docs embody all the points Shaun mentioned: Markdown-based, generated with static site generators, housed on Github, continuously integrated, pull-request workflow for updates, and more.

Solutions architects and business developers tell me that they want docs to be in the same space that devs are in. Developers are on Github, Stack Overflow, and more. We want our docs to tap into these communities and integrate into common developer touchpoints. We want to enable developers, field engineers, and others to flag issues with docs, and track the progress of submitted issues, submit pull requests, and more.

Technical writers do not have the bandwidth to author every doc needed for a project. The Github workflow is something developers understand and can easily work with. Technical writers will take on roles where they process pull requests, integrate doc into the larger site, edit and simplify content, test out instructions to ensure accuracy, and more.

But rather than manage this process through tedious email chains, or trying to insert yourself into the right meeting, they'll do it through Github. Technical writers will need to become masters of the Github workflow. They need to understand how to review pull requests, suggest improvements, clone patches and make edits themselves, run tests prior to merging, and more.

In summary, in 2017 and beyond, we'll see developer documentation start to move to Github as the primary platform for interaction points with developers both inside and outside companies.

Note that I'm just referring to developer docs, such as APi documentation. I'm not referring to documentation for non-technical end users, or documentation for airline mechanics or other groups who might not be familiar with Github and engineering workflows.



