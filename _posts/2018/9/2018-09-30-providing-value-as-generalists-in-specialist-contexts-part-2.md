---
title: "Part II: Why tech writer jobs are moving toward the developer domain"
categories:
- api-doc
- simplifying-complexity
- writing
keywords:
weight: 2
tags: series_trends_specialist_generalist
series: "Tech comm trends: Providing value as a generalist in a sea of specialists"
summary:
published: false
---

{% include series/seriesTagGeneralistSpecialists.html %}

## The impact of UX and the need for documentation

It seems that technology is getting simpler on the front-end for mainstream end users, but also more complex on the backend with development. In a recent episodes of the Cherryleaf podcast, [40. The evolution of the technical communicator’s career](https://cherryleaf.podbean.com/e/the-evolution-of-technical-communication/), Ellis Pratt discusses an article called [Software technical writing is a dying career (but here’s what writers can do to stay in the software game)](https://softwaresaltmines.com/2015/06/16/software-technical-writing-dying/), by Jim Grey published in 2015.

Grey’s main argument is that "companies are leaning into good user-interface design and stepping away from online Help systems and printed/PDF documentation." Grey explains that he had lunch with a business owner who explained this transition, saying:

> Technical writing is dying off…. It’s all about clean, engaging UX now. I have talked to more than a hundred startup and small software companies as I’ve built my business. Almost none of them have technical writers, and almost all of them have UX designers.

Grey argues that UX design has displaced the need for tech comm in software companies. Instead of hiring a tech writer to provide explanations for confusing interfaces, companies (at least those that want to be successful) hire UX designers to get the design intuitive from the start.

<figure><img src="/images/generalist_specialist_design_not_docs.svg"/><figcaption>Grey says the trend, at least for end-user products, is to hire UX designers to create products that don't need documentation</figcaption></figure>

Companies recognize that a usable interface can easily work with can make the difference between success and failure. Companies like Apple have cemented the idea that users are willing to pay for well-designed products that don't rely on a ton of documentation.  

Obviously, products that don’t need docs because they’re so intuitive are likely going to be more successful among end-users than products that require a lot of docs to figure out. So if you want your company or product to be successful, it’s clear where you need to spend your money: UX, not tech comm.

Riding this demand, the practice of user experience design has matured into a full-fledged discipline rich with research-backed design principles, methodology, and professional expertise. UX designers are now much more common in engineering groups.

The consequence of this increased emphasis on UX design is that there is less need for user guides to accompany GUI interfaces. You might have UX copywriting needs, but you don’t usually need an extensive user guide for a product because if users need documentation, your product itself will likely fail. Better to invest in good design from the start.

Sensing his irrelevance as a technical writer, Grey jumped off the documentation ship and into software testing instead, where he says he brought along many useful skills he learned in documentation.

## Evaluating Grey's argument and changes in the profession

How do you evaluate Grey’s move? Was he right or wrong about his conclusions that tech comm is dying? It’s probably not possible to make any conclusion about tech comm jobs declining (as a result of UX design) without a comprehensive analysis of tech comm job postings analyzed over the past two decades.

In the Cherryleaf podcast, Pratt looks generally at job trends and concludes that no, technical writing jobs haven’t gone away. Pratt says:

> Is this true? Has the tech writing job disappeared since 2015? Clearly not, because there are still … [many] technical writers and authors. But I think there is a truth in saying that the role of the technical author is changing, and the requirements and the skills that they need are changing as well. And it may be that the job title changes and the way in which the role is perceived.  

In other words, the jobs haven’t disappeared, but the _roles have evolved_. This evolution of the tech comm role is what I’m exploring here with my focus on trends. I agree with Ellis. The job landscape for technical writing has changed.

If you look at the latest [STC Salary Database](https://www.stc.org/salary-database/), you can see that tech writing jobs have largely remained the same since 2012:

<figure><a href="https://www.stc.org/salary-database/"><img src="https://idratherbewriting.com/images/techwriterjobsovertime.png"/></a><figcaption>Tech writing jobs have largely remained the same since 2012</figcaption></figure>

Plus or minus a few thousand jobs, there are about 50,000 technical writing jobs in the United States. This information comes from the [Bureau of Labor Statistics](https://www.bls.gov/ooh/media-and-communication/technical-writers.htm), or BLS. Among professional writing disciplines, the report notes that technical writing is "the only occupation which has seen employment growth in each year since 2011, with an average annual employment increase of 1.9%."

So tech writer jobs haven’t simply disappeared because of the emergence of what is sometimes called the "[Golden Age of UX design](ac318099c5b9)." But while tech comm jobs haven’t necessarily diminished in number, they have likely shifted more from the *end-user* domain to the *developer* domain.

## UIs getting simpler, behind-the-scenes code getting more complex

While user interfaces might be getting simpler, the code behind them is getting more complex. The classic example of this shift towards simple frontends and complex backends is Google’s homepage. On the surface, it looks pretty simple. But go to View > Source and copy the code on that page, and then paste it into Microsoft Word. It’s _73_ pages long!

<figure><a href="https://google.com/"><img src="/images/googlehomepagescreenshot.png"/></a><figcaption>Google's home page looks simple on the surface, but the code fills 73 pages </figcaption></figure>

Or consider another example: voice interaction. When I say, "Alexa, show me the latest action movies," this interface attempts to simplify the user experience. There’s no need to find the right menu, to type out my search using the remote controller’s direction pad, and so on. But behind the scenes, making this simple interaction has an incredible amount of complexity and code. There are multiple systems interacting in harmony with each other, or sometimes clashing, which can result in Alexa misinterpreting your utterance and returning the unexpected.

Technology is like an iceberg &mdash; seemingly simple on the surface, but massive amounts of code underneath.

<figure><img src="/images/generalist_specialist_iceberg.svg" /><figcaption>Technology is often made simple on the surface for end users, but is complex below the surface, dependent on a lot of complex systems interacting with each other.</figcaption></figure>

Tech writers are always needed where there’s complexity &mdash; if there’s nothing complicated or confusing, tech writers are extraneous. Hence, this complexity is pulling tech comm professionals more toward developer documentation, away from end-user documentation.

This trend toward increased complexity underneath the surface is particularly apparent in UX development itself. In a comical article called [How it feels to learn JavaScript in 2016](https://hackernoon.com/how-it-feels-to-learn-javascript-in-2016-d3a717dd577f), Jose Aguinaga contrasts what it's like to learn JavaScript today versus a number of years ago. Here's a quick excerpt:

> I need to create a page that displays the latest activity from the users, so I just need to get the data from the REST endpoint and display it in some sort of filterable table, and update it if anything changes in the server. I was thinking maybe using jQuery to fetch and display the data?
>
> -Oh my god no, no one uses jQuery anymore. You should try learning React, it’s 2016.
>
> Oh, OK. What’s React?
>
> -It’s a super cool library made by some guys at Facebook, it really brings control and performance to your application, by allowing you to handle any view changes very easily.
>
> That sounds neat. Can I use React to display data from the server?

> -Yeah, but first you need to add React and React DOM as a library in your webpage.

Aguinaga explains how jQuery, Bootstrap, and Bower are now passé. He then walks through about 30 confusing JavaScript frameworks and technologies front-end developers need to sort through in coding.

For example, he says today, front-end web developers have replaced the jQuery, Bootstrap, and Bower libraries with React, JSX, Babel, ES6, Browserify, WebPack, VueJS, RxJS, Grunt, Gulp, Broccoli, SystemJS, Typescript, OCaml, Ramda, Fetch, Request, Bluebird, Axios, Flux, Flummox, Alt, Fluxible, Redux, SystemJS, and dozens more JS frameworks and tools.

## Moving into hyperspecialization

Aguinaga's article illustrates how, for the past few decades, technology (at least behind the scenes in the realm of development) has been getting more and more complex and specialized &mdash; more extensive, varied, complicated, and deep. The engineer who implements the frontend of a site has a very different skillset from the one working on the backend.

For fun, think back to a time when we had "webmasters." The idea of a "webmaster" &mdash; a person who handles all aspects of a website &mdash; is an especially dated idea. Today, you’re not just a "software developer." You’re a JavaScript developer for web apps, you’re an Oracle database specialist, you’re a release management configuration engineer, and so on.

We have these specialists because complexity has increased. The idea of a Renaissance tech person, one who can adeptly navigate across UX design, frontend and backend technologies, doc publishing systems, middleware infrastructure, server configurations and deployments, or even web metrics, is rare. We all specialize in something.

An article in the _Harvard Business Review_ noted that we’ve even moved past specialization into "Hyperspecialization." The authors explain,

> Just as people in the early days of industrialization saw single jobs (such as a pin maker’s) transformed into many jobs (Adam Smith observed 18 separate steps in a pin factory), we will now see knowledge-worker jobs—salesperson, secretary, engineer—atomize into complex networks of people all over the world performing highly specialized tasks. ([The Big Idea: The Age of Hyperspecialization](https://hbr.org/2011/07/the-big-idea-the-age-of-hyperspecialization))

The author even notes that with some encyclopedia articles, different paragraphs _within the same_ article are sometimes written by different specialists. Each specialist-written paragraph fits together into a larger article.

For more on how the level of complexity is increasing, check out a book called [*Overcomplicated: Technology at the Limits of Comprehension*](https://www.amazon.com/Overcomplicated-Technology-at-Limits-Comprehension/dp/0143131303) by Samuel Arbseon. The author talks about how we’ve built systems that very few people fully understand, and these systems are interacting with other systems in ways no one can fully predict. Sometimes when these complex systems have bugs (such as with Toyota’s acceleration problem), we end up scrambling through millions of lines of code across systems.

## The developer domain lacks UX designers to vet and filter poor designs

So the developer domain is complex. We know that. But here's one more detail that makes it even worse: In the developer domain, UX designers don't vet and filter out poor designs.

When companies develop an API or SDK, usability professionals (champions of the simple interface) aren’t usually involved in its design. Developers usually build their own tools, without taking guidance from UX designers. Theoretically, UX designers could prototype mocks (such as using the OpenAPI with REST API designs) and beta test them with the target developers, but this spec-first philosophy is somewhat rare, and if done, isn’t usually led by usability professionals. Engineers usually feel that they know what’s best for other engineers.

As a result, developers are left on their own when it comes to designing their APIs, SDKs, and other technical frameworks. (After all, they’re often the only ones who understand them thanks to specialization.) What’s the result? The outcome, when engineers play roles in design, is often parallel to the outcomes when developers created user interfaces. Remember back before UX designers were common, engineers would create user interfaces that looked something like this:

<figure><a href="https://blog.codinghorror.com/this-is-what-happens-when-you-let-developers-create-ui/"><img src="/images/when_developers_create_interfaces.png"/></a><figcaption>When developers create user interfaces, the result is often an atrocity. But what about products that are code-based? Well, without the designer to prototype, vet, and perform usability analyses, the end result can also be atrocious. (Image from <a href="https://blog.codinghorror.com/this-is-what-happens-when-you-let-developers-create-ui/">Coding Horror</a>)</figcaption></figure>

Looking at this, we laugh. But when developers create developer products (that is, tools for developers), the result is often the same but is less visible because developer products don’t often have interfaces. They create code spaghetti and kluges, with really confusing processes and setups.

Recently in a  Write the Docs Slack channel, during a discussion about how to handle documentation for broken products, someone said,

> I remember a colleague at a previous job getting told off for prefacing some instructions with something along the lines of: “You need to follow every step of these instructions to the letter, even if they seem weird or pointless, otherwise the whole thing will break.” ... It was a fantastic way (IMO) of demonstrating just how broken the product was. ([Transparency in documentation: dealing with limits about what you can and cannot say](https://idratherbewriting.com/2017/07/13/transparency-in-documentation/))

Developers probably intend to embrace simple solutions at the start and only turn to more complex or nonstandard workarounds when they encounter an impasse. To get around the impasse, they have to invent creative workarounds to get past the limitations. In some ways, complexity is just a necessary reality of coding. Still, without the same design constraints, I wonder if the simplicity bar is set too low.

I’m sure you’ve encountered code that developers have created, which you must document, and thought, _who allowed the developer to create this monstrosity_? Developers aren’t often checked by any design constraints as they are with UX. If UX designers would vet developer products themselves, it might be a different outcome. But without this UX filter, developers seem to have unlimited freedom to create nightmares of non-standard complexity.

For example, one product I document starts out with good intentions by using a standard syntax (Jayway JsonPath) for parsing JSON feeds. But then a senior developer ran into some limitations, so he created a variable written as `$$par$$` in the query syntax, which I then try to explain in the docs. Then for other scenarios not covered, such as with CDATA tags and targeting attributes, the developer invented other custom syntax to work around limitations in the parsing library. The end result is a lot of custom syntax where you use standards in some places and custom syntax in other places.  

As a tech writer explaining this to users, at some point I started to wonder whether this same kind of technical ugliness would have been developed if had we employed a UX designer to test and vet code designs with users, just like they do with user interface designs. Because technical writers are generalists, we're often bulled over by developers who say that the developer audience will understand and know how to use the code.

## TC jobs moving into developer domain

Bob Watson notes that when APIs are hard to document, it's often a sign that your API is poorly designed and will experience trouble in the market &mdash; see [If your API is hard to document, be warne](https://docsbydesign.com/2018/02/18/if-your-api-is-hard-to-document-be-warned/). Let's put aside issues of design and just agree that the developer domain is complex. It is likely complex for a number of reasons (not just the absence of UX designers). My larger point here is that **tech writer roles are transitioning into the developer domain**. We’re moving from GUIs to code, from mainstream end-user domains to developer domains. This transition is _huge_ and significant and presents all kinds of new challenges which many tech comm professionals have never faced.

<figure><img src="/images/generalist_specialist_job_trends.svg"><figcaption>With job trends, there seem to be more tech writing jobs in the developer domain (APIs, SDKs, etc.) than in the end-user domain (for GUIs and products for mainstream users)</figcaption></figure>

In the next section, I'll discuss one more trend that is arising from this complexity in the developer domain: developers start writing docs.

## Your reactions and input

<script>
EMBED_PARAMS = {};
EMBED_PARAMS.surveyID =6324634;
EMBED_PARAMS.domain ="//www.questionpro.com";
EMBED_PARAMS.src ="//www.questionpro.com/a/TakeSurvey?tt=Hd5ZtgOP2j0%3D";
EMBED_PARAMS.width ="100%";
EMBED_PARAMS.height = "750px";
EMBED_PARAMS.border = "hidden";
</script>
<div id="div_6324634"></div>
<script src="//www.questionpro.com/javascript/embedsurvey.js?version=1"></script>

You can <a target="\_blank" href="https://www.questionpro.com/t/PESakZc1sh">see the responses (so far) here</a>.

{% include series/seriesTagGeneralistSpecialists_next.html %}
