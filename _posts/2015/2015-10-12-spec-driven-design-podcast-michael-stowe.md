---
title: "Podcast: Spec-driven Development of REST APIs, with a focus on RAML -- interview with Michael Stowe"
categories:
- api-doc
- podcasts
keywords:
description: "Spec-driven development is an approach to developing REST APIs by first describing and prototyping the API through a specification file (such as RAML or Swagger), and then coding the API. The spec not only serves as a contract for the API's development, it can also generate interaction documentation, unit tests, client SDKs, and provide other benefits."
date: 2015-10-12
tags:
- RAML
- API
- specifications
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/mikestowe.mp3
podcast_file_size: 76.9 MB
podcast_duration: "45:48"
podcast_length: 76933334
bitlink: http://bit.ly/interactiveapidocsmikestowe
---

{{note}} If you're in the Bay area, come listen to Michael Stowe speak tonight (Monday, Oct 12) at the STC Silicon Valley chapter in Santa Clara. See the <a href="http://www.stc-siliconvalley.org/2014/10/09/october-12-2015-spec-driven-development-raml-api-documentation/">meeting details here</a>.{{end}}

<a href="http://www.amazon.com/gp/product/B0125TOLNU?keywords=undisturbed%20rest%20michael%20stowe&qid=1444665700&ref_=sr_1_1&sr=8-1"><img class="alignright" src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/undisturbed_rest_mike_stowe.png" | prepend: site.baseurl }}" alt="Undisturbed REST: A guide to designing the perfect API, by Mike Stowe" /></a>

In this episode, I interview Michael Stowe, author of [Undisturbed REST: The guide to designing the perfect API](http://www.amazon.com/gp/product/B0125TOLNU?keywords=undisturbed%20rest%20michael%20stowe&qid=1444665700&ref_=sr_1_1&sr=8-1), about spec-driven design for REST APIs. The podcast has an emphasis on RAML as the specification format, but the discussion goes beyond a particulate specification to discuss development approaches that focus on creating a specification file (which acts like a contract) before coding the API.

You can listen to the audio here:

{% include audio.html %}

(The audio is a little choppy in the beginning due to some bit rate issues &mdash; sorry about that.)



## Topics covered in the podcast

Some of the topics covered in the podcast include the following:

* The purpose of RAML, Swagger, and API Blueprint REST specifications
* The philosophy of spec-driven development
* Benefits of interaction API documentation
* Agile development and versioning with APIs
* Treating the spec as a contract for what developers are building
* Prototyping and mocking services from the spec
* Client SDK generation from spec files
* Determining which spec to use
* Using the spec as a point of collaboration for all groups
* Treating the spec as a single source of truth
* Workflows and processes about when to create the spec and when to annotate the code
* How to get support and buy-in for using a spec-driven development approach

## Resources

* [mikestowe.com](http://mikestowe.com)
* [RAML](http://raml.org/)
* [Undisturbed REST: The guide to designing the perfect API](http://www.amazon.com/gp/product/B0125TOLNU?keywords=undisturbed%20rest%20michael%20stowe&qid=1444665700&ref_=sr_1_1&sr=8-1) (on Amazon)
* [Undisturbed REST: The guide to designing the perfect API*](https://www.mulesoft.com/lp/ebook/api/restbook) (Free PDF download)
* [APImatic.io](http://apimatic.io)
* [Spotify API Console](https://developer.spotify.com/web-api/console/) (example of RAML API Console)
* [Swagger](http://swagger.io/)
* [API Blueprint](https://apiblueprint.org/)

## Podcast transcript

I also created a transcript of the podcast below. (My questions are in bold; his responses are in normal font.)

**Tom: You're listening to another podcast from Idratherbewriting.com. My name is Tom Johnson. Today I'm talking with Michael Stowe, who is the author of *Undisturbed REST: The guide to designing the perfect API*. Michael, can you tell me a little bit about yourself and your book?**

First of all thank you for having me on your podcast here. I was engineer for about 10 years, and actually the reason I wrote the book was a little bit selfish. I kept using APIs that were a bit difficult to use.  I felt that there were a lot of different conventions out there.

*Undisturbed REST* is really a book about going back to the basics. What is REST? What is this design theory, this architecture? How do we make it work, and what are the best practices with it? If I have to use APIs, they should work and there should be standards, so I'm not pulling out my hair (because I can't afford to lose anymore).

**Tom: You work for Mulesoft, right, and a lot of the book focuses on RAML. Most of my listeners won't be too familiar with RAML and Swagger specifications. Can you give a brief into to what these REST API specifications are, and how they came about?**

Yes, absolutely. The first specification that came out was [Swagger](http://swagger.io/). This was created by Tony Tam about 5 years ago, and it was for his company Wordnik. At the time we had these APIs coming out, there was really no support for documentation, client generation, server generation, code generation. You would create the API, write the code, and then you'd have to do all of these additional services on top of it. Wordnik wanted to create a quick way to easily document your API and create some SDKs, so they created Swagger.

A couple of years ago, a new spec came out called [RAML](http://raml.org/). RAML stands for REST API Modeling Language. It took the idea that Swagger had, which was once you have the API you can document it, a step further. What if you can actually design your API before you build it? What if you could see what your API looked like before you build it? What if you could prototype it and collaborate with your users to make sure your API meets your needs before you spend time on the code? And then get all the goodness of okay, now we can document it, now we can create SDKs, now we can generate code. And now we can offer support for it.

All the specs have really evolved into that space, where they're enabling people to design their API before writing code, before spending a substantial investment in those aspects to make sure they get the design right so they can have a long-lived API.

**Tom: As I was reading your book, I found that point about using the spec as a way to design the API really interesting, because as a technical writer my job is to provide documentation for APIs and other developer tools at my company. We have an API that's a 1.0 product, and it's undergone quite a bit of revision from 1.0 to 1.1 to 1.2. I think about half of the API endpoints change each time, which creates a huge amount of revision for the documentation. I started to wonder how one might use RAML or other modeling languages to prototype first. I mean, obviously the prototype can give you a sample of the shape, but can you actually execute requests or do other kind of mock calls with this?**

Absolutely. It's kind of a loaded question on several fronts. Dr. Roy Fielding, who created the theory of REST in his dissertation, came out and said, you know, people are usually really good at short-term design but usually awful at long-term design because we tend to design for the current release.

That's one of the challenges we have with APIs. We're writing code and are trying to design this, and we're thinking about what we need right now, not what we need next month or what we need a year from now or five years from now. So what these tools allow you to do is several different things. By designing your API first with the spec, you can visually see what the API looks like.

This is important because a lot of times we say we want this API, we write the code and put it out there, and then it's not really what we envisioned. But it's too late. It's already in production, and we're stuck with it.

Another thing RAML offers is code review with design patterns. You can make sure your resources and methods are consistent, so that your entire API it operates very similarly throughout. Once you create the design, you can use a mocking service which takes in the RAML file and creates a mock of your API using the sample data or the schemas that lets your users interact with the API as if they were using a real API.

What this means is that your users, the ones who will actually be relying on your API, can look at it and say hey, this is great but this doesn't meet my needs. Or this is great, but this is inconsistent. Or you did this here, but this doesn't make sense. They can find the design flaws for you, so all of a sudden you're bringing agile user assistance into the API design process to make sure your users get exactly what they're looking for. This is one of the big benefits it offers.

**Tom: Just to be clear, on the mocking service, does it actually return the values that are unique to a specific user's data, or is it just returning sample, prepackaged/pre-canned responses for that endpoint?**

In this case, it's just returning back the sample data that you give it. It's not a real API. You haven't built anything yet. With RAML you literally create a few lines in plain text format, saying this is the resource, this is the example response, or maybe you have a JSON or XML response or both, and you put that in there. Then it creates a service that operates off of the spec and returns the example data. If I call that API, I'm not getting real data, but I'm getting that data as if I were actually calling that API, and I'm interacting with the mock service as if I were actually interacting with the real API.

**Tom: That makes sense to me, and that's how I thought it was, but i just wanted to make sure. You know, the point about consistency I think is huge. As technical writers, if we're going through and documenting all the parameters of different endpoints, consistency jumps at us. In this most set of endpoints I was recently documenting, some of the parameters were in uppercase, others were in camelcase, others were lowercase. Some of the endpoints submitted all the parameters in the URL, others submitted them in the request body. Some had parameters that other endpoints didn't but which should have. There was a lot of inconsistency. And I started to wonder why this happens.**

**Tom: Tech writers often lower-down in the food chain, so things have already been coded. It's not like you can say, *Go fix all this*, and people are going to have to stop the sprint and change direction, etc. It's a major undertaking. It would be ideal to prevent all of this in the first place by designing a more thought-out API. Is that essentially what these specs are going to allow you to do?**

Absolutely. You know it's funny that you talk about the query parameters, and how the properties are having different values or casing. Actually, I came across an API that had two resources that did exactly the same thing, just with different names. From the coding perspective is, we get this idea of what we want to build, and they say okay go build it.

But there's really no blueprint for what they're trying to build, so developers start putting the code in and start guessing and making their best guesses as they write it. As you said, you get these inconsistencies that include case sensitivity changes, value changes, resource name changes, all because they don't know what the other people are doing.

What the spec gives you (again with RAML) is something called resource types and traits. For resource types, you can set up all your responses so that every single resource behaves identically with just the data, responses, and methods you want. With the methods, if you have pagination, filtering, or searching, you can actually create a trait so the behavior for all those different methods and functions is the same.

What makes this really nice is that once you have the spec, even after the second, third, fourth, or fifth iteration, where people just start going off the path, you know exactly what the contract is with the users.

For developers, it's very easy to jump in the code and just change code. And once you change the code, you introduce backwards incompatibilities, you can break other features without realizing it. But the spec is still there, it says no, you have to test this, you have to make sure it stays consistent. It is the contract, and by following it you know you're not breaking backwards compatibility.

Also, you're able to test with each iteration &mdash; is this going to last in the long term, is it going to allow me flexibility in the long term? Am I doing something that's probably not as smart?

**Tom: So the spec is a blueprint, design, almost like a requirements for the developers to look at to get their thinking about endpoints and parameters down in this model. It's like a prototype, right? What is the general workflow between the specification and then laying in the annotations in the code?**

My approach is something I call spec-driven development. Spec-driven development says the spec is the source of truth. One of the dangers of annotations in code is that if you put your source of truth in the code, code changes. And it can change without anybody knowing that it's going to change.

It's as simple as me going in and updating something in the code, or changing an annotation, or if you're using commas, changing a comma. When you're developing things, you may not exactly get the best interests of the users or the ability to test what you're actually doing.

With spec-driven development, what we recommend is actually that you build the API in two parts. The first is that you do an agile user-experienced based development of a spec. You work with your users, you design the spec, you test the spec, make sure the spec meets certain needs. What you're really trying to do is find out and make sure there's no design flaws or bugs with it.

The way it works is you create the spec, you prototype it, you share it with your users, you get feedback, and then based on that feedback you can say the spec is ready for prime time and ready to start coding. Or no the spec isn't ready.

Again, once you put annotations in code, once you start putting the power to control the contract in code, you're really offering a lot of flexibility to deviate from contract. You almost create two different contracts &mdash; do you honor the annotations in the code, or do you honor the spec? I think there's a danger with that.

What we recommend during spec-driven development is to first do the agile design, and then you do the agile cycles of development. You say we have this design, we know we can build this design, we can develop it fearlessly. Your developers don't have to guess what the response should look like or what the property names should be, or what case sensitivity it should be. They can just write the code and do so efficiently.

People always ask, what happens if you find a flaw with the design at this stage, or find something that's not doable at this stage. It's very simple. You go back to the spec, you change it in the spec, you test the spec, you validate that change, and then you jump right back in the code. So you're not losing time. More importantly, you're getting a tested spec that you know will stand the test of time. Which means your API will stand the test of time.

**Tom: You mentioned having a single source of truth and this spec being this contract, this source of truth about what developers are building. How does that fit in with the other user guides and other documentation that tech writers have to create? Because technical writers have a list endpoint descriptions, descriptions of the parameters, etc., in whatever help system they're creating. And now they have this other place in the spec file where the endpoints and parameters are also defined. Is there a redundancy, or do you include one in the other? How do you manage having different sources that all have the same content?**

First of all, as a developer I feel bad for tech writers because things are changing so quickly, and it is so easy for things to get out of sync. In one of the presentations I did, I mentioned that the quick death of an API is out-of-sync documentation.

I wish this wasn't the case, but sometimes as developers we aren't always the transparent about the changes we've made. Or sometimes we make a change and forget about it, and we don't relay that to the technical team. Thankfully you guys often do the test and find that for us, and you still write amazing documentation.

What the spec does, though, is (again) provide the single source of truth, where all the documentation that the technical team needs to generate, they can get from the spec. Even more so, they can actually generate a majority of the documentation and tooling from the spec itself, rather than having to create redundant paragraphs saying "with this information *here* and this information *there*...."

Not only can you use the spec as a single source of truth, it also functions as as a single source of collaboration. That's one of the great things about RAML &mdash; it doesn't matter if you're a developer or technical writer or in marketing, you can actually go in to the spec (because it's in a plain text format) and put in the documentation or descriptions to make sure that it meets your needs. This allows you to have a single source of truth and also collaborate so that the technical writers are tied much more closely to the developers, and developers are tied much more closely to technical writers.

**Tom: Are the descriptions that are in the spec about the endpoints and parameters intended to be brief and quick definitions? If there are some lengthy notes and other conceptual details or gotchas or special quirks, do those other special bits of information go elsewhere?**

Every spec is different. The nice thing about the spec is that it can be interpreted by certain people depending on how you put in your descriptions. For RAML, what we recommend is using Markdown. With that you can actually put a lot of information in the fields that are available within the API. You can describe the API in regards to query parameters, form parameters, post data, types and responses you get back, response bodies, response headers, to describe the functionality of the API.

In regards with documentation, you have the description properties where you can author in Markdown. RaML is also unique in that it has a documentation property, so you actually put documentation under the documentation property in an array for the different pages, and then set it up so that it calls from that documentation property.

You can pull in much more extensive documentation &mdash; for example, here's how you set up an account, or use OAuth, or here's how our hypermedia works. You're able to pull in the full documentation into a single source of truth again and have it all connected without requiring people to go to different places.

**Tom: Can you explain more about this documentation property? Is it like some kind of include that points to some other file? I'm a little fuzzy.**

RAML does certainly let you do includes. If you wanted to do it as an include and point to another file, you can. But with this property you would say "documentation," and then in a YAML format you would create an array, maybe the documentation is OAuth &mdash; you would just put your Markdown or whatever text format you're using in that area. You could put all of your documentation in that RAML file.

If you find that the RAML file is becoming huge, with too much data, you could use an include and store it the separate file and pull it in. But essentially the documentation becomes part of the RAML file itself.

**Tom: It seems to me that the two main specification competitors out there are RAML and Swagger. I know there's API Blueprint, which is another specification, but it doesn't seem like it's got the momentum that these other two do. You mentioned that RAML has some properties about it that enforce more consistency, that is, the resource types and traits. How does one decide on whether to use RAML or Swagger?**

First, RAML, Swagger, and API Blueprint are all great specs. Jacob, who is behind [API Blueprint](https://apiblueprint.org/), is very knowledgeable in the API field and does a great job. I wanted to give him a shout-out. The biggest difference between RAML, Swagger, and API Blueprint is that API Blueprint is more focused on purely documentation. It doesn't encompass the full API lifecycle as much, whereas Swagger moved in that direction, and RAML has always started with the full API lifecycle.

It's like choosing any type of tool. You need to choose the tool that meets your needs. Myself, I'm a fan of RAML. The reason I'm a fan of RAML is first of all the code re-use. The ability to design and have very succinct code that I know is going to be consistent throughout the entire API. I like the documentation properties &mdash; especially full-on documentation instead of having to divide documentation into a separate area. Those are two big things for me with RAML.

But there always going to be trade-offs. You have to look at what you need. "What I recommend, and this is a horrible shameless plug, but if you go to [mikestowe.com](http://mikestowe.com), there's an [API spec comparison tool](http://www.mikestowe.com/2014/12/api-spec-comparison-tool.php), where you can compare RAML to Swagger, API Blueprint, Mashape, I/O Docs, and even WADL to see what the strengths and weaknesses of each one area.

Again with RAML, I think you're going to have a more succinct spec. Also, RAML 1.0 is right around the corner, which is going to offer even more powerful tooling and modeling for developers. RAML was designed to encompass the whole API lifecycle from the start, which I think is huge.

Swagger is doing a great job at getting there. But RAML's native support was the full API life cycle. With that said, if you're looking for the most frameworks to generate things from, RAML is growing these things, but since Swagger has been around for the past 5 years, you're going to find more with Swagger.

If you're looking for larger community, Swagger does have a larger community. But then again if you're saying we want someone who is backed by the most industries, like working-group wise, then you have RAML which is backed by Mulesoft, Akana, Cisco, and several others. Smartbear just acquired Swagger, however, and has been pushing that forward as well.

**Tom: You're saying that RAML addresses the whole life cycle more thoroughly. What do you mean by that? How does it address the whole life cycle?**

Again, RAML was designed so that no matter where you're at in the API lifecycle, whether you're building the API from scratch or whether you have a pre-built API and you just need to document and generate SDKs, it can meet those demands.

Swagger was initially built for the idea that once you have the API, then we'll start doing those things. With Swagger 2.0, they started moving more and more towards API first design. But Swagger's not really taken as strong a stance of saying hey we're going to tackle all this. They do have the tooling now where they just released their API designer and their API mocking service powered by Apigee. They also launched Swaggerhub, so they're making some of this functionality available. But again RAML was kind of the leader in that space of saying you should actually design your API through the spec if you can, because you get more benefits from that. But we'll meet you wherever you're at in the API life cycle.

**Tom: I've played around with both RAML's API Console and Swagger UI, and I like both of them. I actually like the API Console from RAML quite a bit because it's branding isn't so .... what's the word... it doesn't look like every other Swagger implementation. Then again, this is a kind of minor difference. I was playing around with the Swagger one this morning, trying to get it to work, and I ran into a problem. I'm wondering if this problem is one I'll find in any spec. My request was blocked by CORS, the cross-origin resource sharing limitation. I think it's because the API I'm documenting is intended for server-to-server communication. You can create cURL requests and it's fine, or use Postman and it's fine, but if you try to make a request from a web page, you get blocked. Is that the case with every one of these interactive outputs?**

Yes, with any tool that is based on Javascript that uses CORS to make the call, you're going to run into a CORS issue unless CORS is enabled with the API. If you're using the mocking service, that's enabled. Unfortunately, it's just a thing that you run in with JavaScript. In that case you'd have to need to use the server side aspect.

**Tom: In 5 years from now, do you think that people will have settled on one spec, or will there always be competing specs?**

This is one of my favorite questions. People like to create this battle between the specs. Is RAML going to win, or is Swagger going to win? I'm a fan of both specs. Personally I prefer RAML because it offers a little more versatility. But honestly in 5 years, my guess is that there will be a brand new spec altogether. What we saw is Swagger come out, then we saw RAML 0.8 come out, and it really raised the bar and challenged the idea of how we do API design, and what the capabilities of an API spec is.

In Swagger 2.0 we saw Swagger move in that direction, adding a bit more functionality. And with RAML 1.0 we're going to see the spec and its capabilities reinvented again. We see the competition between the specs driving each other forward. As it happens, someone is going to say hey these are good ideas, what if we did this on top of that and create a new spec. I think everyone will be like, this is amazing! My guess is that in 5 years there will be a brand new spec that is running.

**Tom: Yeah, it's impossible to really predict what's going to happen in 5 years due to the rate of change. Let me step back a little bit because my audience is almost all technical writers. This is entirely new. Mostly the people producing these specs are developers who are also doing documentation or working with documentation in some way. If you were to ask the average technical writer what RAML or Swagger is, it's new. How should technical writers work with developers in producing the code annotations or the spec file? What's the general workflow for plugging into that?**

I think the whole idea of spec-driven development is actually new for a lot of people. There are a lot of companies that have not heard of Swagger or RAML, even on the developer side. The thing I recommend for designing an API is to involve your customers, involve the people who are closest to your customers, the API users, who are most knowledgeable about what you need to do.

Oftentimes, the people most knowledgeable about your platform are your developers who need to know your inner workings, but the people most knowledgeable about your customers tend to be your technical writers, evangelists, product marketing teams, or even sales, who can say this is what our customers are asking for.

What I encourage with the API design is actually a collaboration. You bring in your developers who say, we know the backend architecture very well. But they need to work with the customers, the people who are working with the customers, and ask whether it meets our customers needs. Because it doesn't matter how well the API is designed, or how well it's coded, if it doesn't meet their needs it's not going to be any good. So I recommend right off the bat getting everybody involved in saying let's create a solution that works for everybody and works for our customers.

When it comes to design the API, you want people who are strong with REST design theory to design it. Thankfully RAML and the API Designer walk you through that and give you the best practices through tooltips and hints, as well as descriptions &mash; once you create the overall design, how do you describe the API in a way that makes sense.

I found that there are two types of developers: there are developers who are absolutely great at writing documentation, they just get it. And there are developers who, for whatever reason, are not able to convey the documentation in a sense that somebody who is extremely experienced will understand *and* someone who is brand new to the API will understand. It's very hard to write it in that manner.

That's where technical writers &mdash; you guys have so much more experience in this &mdash; where you can write the descriptions and documentation working with the developers to make sure everything is collaborative, but write it so that people will understand it.

Then you take advantage of the additional features and tooling that RAML offers. It's one thing as a technical writer to say here's how you describe this, or here's the documentation, but imagine being able to provide interactive walk-through with examples where you say here's how you make calls and do this, and by the way, here are the steps.

You can actually click a play button and go call by call by call, or even manipulate using Javascript and making your own call with that. That's what RAML gives you, it gives you the whole tooling, where not only you just have the flat documentation, which is absolutely vital &mash; there is nothing that can replace good documentation &mdash; but it gives you interactive tooling that complements the documentation. I really see it as a way to empower your technical writers to be able to provide even more tooling and even stronger documentation to the users.

**Tom: I know that providing interactive documentation experiences where people can try things out is huge in terms of helping people learn something. I also agree that these interactive documentation consoles are visual; they show the shape of the API, the shape of the request, the responses. It's not just chunks of text. But here's my question. How much better is it to have an interactive documentation experience versus having a list of the endpoints, parameters, and then telling people to plug it into their own GUI client like Postman or Paw? Do you really get that much more out of it by merging your API console directly into your documentation than you would if you just kept them separate?**

I can only speak for myself on this one. I can tell you that when there's interactive documentation or a console that I can use, it makes learning the API so much easier. Because you run into a challenge as a developer where maybe you integrate with the API, but something's just not working right. If I pull up the API console I can see exactly what fields I need to fill out, I can try making the call there, and I can see exactly what went wrong or what worked. What am I doing wrong in this case. Whereas with Postman, I still have to fill out the fields myself. Although if your API is described in RAML, I can pull in the RAML file and actually help me with that.

The other aspect too is that with the API Notebook, you're actually able to walk me through step by step how to do this. If you go to [APInotebook.com](http://apinotebook.com), and look at, for example, the Twitter example, it says here's how you find out who your last follower is from the Twitter API. It walks you through step by step of calling the API &mdash; here's your OAuth, here's your response of the latest followers, to here's how you get that last follower's information from the content that is returned.

What you're doing is providing another form of learning, and we have to remember that people learn in different ways. You have your audio learners, your visual learners, and your tactile learners. Most developers learn by doing.

What I tell people is if people come to your site and they can't figure out how to use your API, they're going to find out how to use your competitor's API. Whereas if you give good documentation that's very helpful and makes a lot of sense, for people who are brand new to your API, a lot of times when they first start trying it out, they'll first start making calls through the interactive console or notebook first just so they understand what they're doing. And it also lets them try these things out.

A lot of tools like Postman are absolutely fantastic &mdash; I love Postman. But there are a lot of developers who don't use these tools and aren't that familiar with APIs in the first place. By integrating the interactive API console into your documentation,you're creating an easy on-boarding process and greatly reducing the learning curve while helping your audience understand how the API functions.

**Tom: You mentioned that you can also pull RAML into Postman. That's a feature I haven't explored that. Where do you do the import?**

Let me see here, I have to pull up Postman so I can remember... You're putting me on the spot.

**Tom: You don't have to be that specific. Is there a special plugin that I have to install? Or is it somewhere on the Import tab that I haven't explored yet? Is it built into Postman somewhere?**

If you click on the Import tab in Postman, you'll see that you have three options. You have Upload Files, Paste Raw Text, or Download from Link. The three specs that Postman supports are RAML, WADL, and Swagger. You can literally paste in the link of your RAML file and it will automatically import the API methods and resources.

**Tom: I'll have to try that. That's pretty awesome. As a technical writer, I'm sold on this whole idea on the specification. It's something I've been really trying to get going. I'm excited about it. I think this opens up a lot of possibilities for technical writers. We're trying to provide value in organizations, especially in developer doc environments where a lot of times the content is so technical, the technical writers want to provide more than just editing and publishing.**

**Tom: We want to create interactive experiences that developers themselves might not know how to create, so this is a huge technology that tech writers could learn and provide tremendous value. But how is it, if you work in a developer environment and they're not using a specification, how do you persuade them as just the lowest-person-on-the-totem-pole-tech-writer that they should have their whole process built around a specification &mdash; the design process, the prototyping, testing. How do you move this mountain and change the whole way that they work?**

This is actually a tough discussion. A lot of times we get set in our ways and don't want to change things. But I think the easiest way is to provide the benefits that a spec like RAML offers. Like you said with the design phase, we talk about the business use case. How much time is spent on fixing design bugs, or trying to work around bugs in the API, or worrying about whether the API is going to be extensible. How much time is spent between developers going back and forth about what the response supposed to be like, or trying to dig through the rest of the API to try to understand it. And how much time gets spent doing things like writing unit tests, or creating SDKs or code libraries?

All of these different things that start to add up, which RAML lets you do very quickly and easily. It's really a matter of stepping back and saying, we can do it the old way, and these are the things we run into. But every developer knows the pains of a bad API. And I usually pick on a big giant social media website's API, who I don't want to say because they're awesome people and I don't want to pick on them, but their name starts with Face and ends with Book. They change their API about every other week it seems.

The problem is that these inconsistencies often break backwards compatibility, and developers are absolutely just up in arms about it. But it's Facebook, you can't say no, you just have to use their API.

For other companies, that's not the case. When you break backwards compatibility, you have support issues, you have maintenance issues, you have to upgrade people, you have to version. RAML was designed to eliminate a lot of the efficiencies of the API design process. It's a matter of looking at what we can gain from it. Can we design more quickly? Can we code more quickly? Can we design more efficiently? Can we make sure we're meeting our customer's needs? Can we generate content more quickly and let our technical writers do what they excel at doing, providing even more and even greater experiences.

On the technical documentation side, one of the best technical documents I've ever seen is Spotify, which is based on RAML. They used that spec to generate their documentation and the live try-its. For the SDK generation, you can hire developers or ask your developers to write SDKs and code libraries in 15 different languages, or you can a service such as [APImatic.io](http://apimatic.io) to generate them on the fly from the spec.

With testing, again you can spend hours and hours writing unit tests, or you can quickly create the tests with literally a quick shell command that generates it from the spec and also open up a world of possibility with the services such as API Science or API Fortress or Smartbear. The list goes on and on.

Even on top of that, it's the whole open source community you get, where not only do you build your API in a way that is solid and long-lived and flexible and extensible, but you've now gained access to hundreds if not thousands of open source tools to make your services better and make the on-boarding process even easier for developers.

**Tom: I agree. The whole client SDK generation from a lot of these specs is a huge selling point for some of our architects. It's what got a lot of their interest in using some of these. I just have one last question. I don't want to take all of your time here. Agile methodology is this celebrated approach to doing software development, where you code a piece in a few weeks, and you push it out and get feedback, and that informs your next iteration and so forth. It seems like approach doesn't really work with APIs as well because if you push something out there and you get feedback that they don't like it, then you have to somehow support the different version or support backwards compatibility when you change that endpoint. Do you think that agile methodology doesn't really fit well with API doc, or does it?**

I think agile actually fits really well with API documentation and API creation. But I think we have to use agile responsibly. We have to understand the difference between the two. One of my favorite things is that people would say we got rid of waterfall methodology, we moved to agile, and we don't have to document anything. No, actually, you have more documentation with agile because you have all of the user stories and all of the things you're working on. The other thing we lost with agile with teams is responsibility, again the contract. This is part of the movement to SaaS services, where we say hey, we can throw it out there, we can learn from it, and we can change it.

But as you said, the problem with APIs is that once you throw it out there, it's stuck, it's in production. You have to treat your API as a contract. We lost sight that when you build an API, you're making a contract. Developers don't just use your API because it's fun. Their basing their livelihood on your API. Which means when you break something on their end because you changed your API, you're taking time away from them from building new features and earning money. Instead of making money to feed their families and pay their rent, they're trying to fix things you broke.

We need to take that very seriously. That's why we look at spec-driven development. Spec-driven development isn't waterfall methodology, but what it does is split the agile methodology into two cycles. We're going to agilely create the user experience or the spec, and then we'll agilely create the code. But you're not changing the spec as you code. You're stuck in one box or the other to ensure the contract is withheld and stays consistent.

So yes, if you're constantly changing the code and the contract with that agile, you're absolutely doing it wrong. And you're actually setting yourself up to fail because you have a whole bunch of things that were thought out very well for the short term that were not designed for the long term and which will not make the API extensible &mdash; which is why we see API's version.

And I have to throw this out here because you caught me on my favorite topic. You got me on a tangent here. We create APIs with the idea that we'll just version 1. We push out version 1, and then we'll make it better with version 2. We treat APIs like desktop software.

I worked at a company where we had version 1, version 2, version 3, and then we went to version 10 because it sounded better. You can't do that with APIs. A good API is one that you don't have to version. The problem with API versioning is that it's expensive. It's not just expensive for your end users who have to spend time upgrading. It's expensive for you, because now you have two different APIs that you have to maintain. You're going to have bug patches, security patches, you have to keep those fixed. You're going to confuse your users because there are going to be features in version 1 that aren't in version 2, and they're not going to know the difference.

When I worked at Constant Contact as a developer evangelist, my job was to help people go from version 1 to version 2 of our API. In the year that I was there, I got only 4 people to switch from version 1 to version 2. They didn't want to do it.

I can't tell you the number of calls that I got where they said *Look, I'm struggling with your API.* I'd say, well what version of our API are you using? They would say, *well, your version*. Okay, is it 1 or 2? they would say, *I don't know. It's just yours*. I would ask, Is it using XML or JSON? *Well I do a POST request and I get data back.*

Maybe this is why I suck at tech support, but it would take me 15-20 minutes to figure out what version of API the guy was using. People have these battles, it's so expensive and so hard. Essentially what happens is six months out we send out an email saying we're discontinuing version 1, three months out you say we're discontinuing version 1, a month out, the same thing. Two weeks out, one week out, three days before, two days before... you remind them that you're discontinuing version 1, and when you finally do it, you get 50,000 emails with people asking, *What happened to version 1?* And everybody is pissed off at you and you're like, we told you. But as developers, if it's working we don't want to have to change it. We want to create things and build new things, not fix things that you broke.

**Tom: More than anything that's really what I got from your book, the whole philosophy of driving from the spec to get it right earlier rather than later through all of these versions. I really like that idea. Can you tell people where they can find your book, *Undisturbed REST: The guide to designing the perfect API*. It's a free download, we should mention that, and it's about 200 pages or so. It's not too long to read.**

Before I say that, I have to add my quick sales pitch. When I first heard of RAML I was actually using Mulesoft, and Mulesoft is one of the companies that supports the spec. RAML is not Mulesoft, but Mulesoft is in the working group. During the interview, the CTO was telling me about the RAML spec and said hey, you should check this out.

But You know, every tech company you go to, especially in Silicon Valley, always tells you they have this amazing wonderful thing they're backing, that it's going to change the world. It's basically made of pure gold. During the interview I was like sure, yeah, I'll check it out, whatever. And I went home and looked at it. I was thinking, this will be a monumental waste of my time because everyone says they have this amazing thing.

But after checking out RAML, a week later I ended up writing a blog post about how great RAML was, so much so that I created a one direction song professing my love to it. I've never had a blog post go viral until that one. I got calls from people saying, you like One Direction? (<i>Hey, don't judge.</i>)

Check out RAML, it's definitely a great spec. As for the book, it's called *Undisturbed REST*. You can download it free at [mulesoft.com/restbook](https://www.mulesoft.com/lp/ebook/api/restbook). Mulesoft has sponsored the download so you can get the full ebook version, which is 196 pages. This is not a "use Mulesoft" or a vendor-driven book. It's really about best practices and here are things to watch out for when you design your API to make sure that it's going to be long-lived, that it's going to meet your needs, and that it's going to be easy to use. Again, the URL is [mulesoft.com/restbook](https://www.mulesoft.com/lp/ebook/api/restbook). Although if you're feeling very generous you can [buy it on Amazon.com](http://www.amazon.com/gp/product/B0125TOLNU?keywords=undisturbed%20rest%20michael%20stowe&qid=1444665700&ref_=sr_1_1&sr=8-1) as well.

**Tom: So you can actually buy a physical book? I might just do that because I have a bunch of pages bound with a butterfly clip. Anyway...**

You had me on your podcast, I'll send you one.

**Tom: That's great. It's awesome to hear your passion for RAML and the whole spec-driven development philosophy. It definitely comes through in the book. I though was well-organized and written. You did a good job. I'm not a developer, but I was able to follow everything you were saying and understand it and see the value it. This is one of those topics that I'm trying to promote within the tech comm world where technical writers can find new ground and a new world to really excel in, so thank you so much for coming on this podcast and sharing your thoughts. Is there any topic that we didn't cover that you wanted to cover?**

Not that I can think of. Thank you for having me on the podcast. It's one of those things where there is too much of a divide between developers and technical writers. I'm really excited to see how these specs can change, and how we look at APIs in general, especially as we evolve in the whole Internet of Things world, and in the platform-as-a-service world. By the way, thank you for saying that you liked the book, that it was easy to read because that's the best part about writing a book, especially when copy editor sends it back with a note saying, "This is proof that you can't write."

**Tom: I thought you went into just the right depth for a lot of the sections, and for other sections you went into more depth and you didn't get too lost in the technical part, and you stayed with the conceptual level and promoted the philosophy behind doing things a certain way. What website can people go to find out more about you?**

The best website to find out more about me is just [mikestowe.com](http://mikestowe.com). It's spelled just like it sounds. That's the best answer I've got for that one. I have nothing fancy.

**Tom: I'll put a link to that in the show notes.**

Wait, I have another URL. You can actually go to [theapi.ninja](http://theapi.ninja).

**Tom: What is that site?**

That's actually the same site but with a much cooler URL.

**Tom: I think I've vaguely heard that you can get the ninja domain like that, but I have not seen one yet.**

Some days you just shouldn't drink and buy domains, that's all I'll say.

**Tom: Mike, thanks again for coming on the show. I appreciate all of your insight.**

Thank you Tom. This was an absolute pleasure.
