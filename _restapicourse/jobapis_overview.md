---
title: The Job market for API technical writers
course: "Documenting REST APIs"
permalink: /jobapis_overview/
weight: 8.1
type: notes_docapis
---
{% include notes.html %}

## Demand is high
A recruiter for Google recently told me that the two positions most in demand for Google are UI designers and technical writers who can write developer documentation. There are plenty of technical writers who can write documentation for graphical user interfaces, but not many who can navigate the developer landscape to provide highly technical documentation for developers.

In this section of my API documentation course, I'm going to dive into the job market for API documentation.
 
## Ability to read programming languages

In nearly every job description for technical writers in developer documentation environments, you'll see requirements like this:

> Ability to read code in one or more main programming languages, such as Java, C++, or Python.

You may wonder what the motivation is behind these statements. Here's the most common scenario. The company has a REST API for interacting with their services. However, to make it easy for developers, the company has provided SDKs or client implementations in various languages for the REST API.

Take a look at Algolia's API for an example. You can view the documentation for their [REST API here](https://www.algolia.com/doc/rest). However, when you implement Algolia (which provides a search for your site), you'll want to follow the documentation for your specific platform. 

<a href="https://www.algolia.com/doc"><img src="{{ "/images/algolia_clientsdks.png" | prepend: site.baseurl }}" alt="Algolia client implementations" /></a>

Although users could construct their own code for using the REST endpoints, most developer users would rather leverage existing code to copy and paste what they need.

When I worked at Badgeville, we developed a collection of JavaScript widgets that provided code that users could easily copy and paste onto their web pages. Sure developers could have created their own widget code based on the REST endpoints, but sometimes it can be tricky to know how to retrieve all the right information, and then to manipulate it with the right code.

Remember that developers are typically using a REST API as a third-party service. The developer's main focus is his or her own company's code, and they're just leveraging your REST API as an additional, extra service. As such, the developer wants to just get in, get the code, and get out. This is why company's need to provide multiple client references in as many languages as possible &mdash; to make it easy for developers to implement.

If you were recruiting for a technical writer to document Algolia, how would you word the job requirements? Can you now see why even though the core work involves documenting the REST API, it would also be good to have an "ability to read code in one or more main programming languages, such as Java, C++, or Python."

## Technical writers who are former programmers

When faced with these documentation challenges, hiring managers often search for technical writers who are former programmers to do the tasks. There are a good number of technical writers who were once programmers, and they can command more respect and competition for these developer documentation jobs. 

But even developers will not know more than a few languages. Finding the technical writer who commands a high degree of linguistic fluency, organization, and analytical skills in addition to a deep technical knowledge of Java, Python, C++, .NET, Ruby, and more puts you into the unicorn land. 

If you find one of these technical writers, the person is likely making a small fortune in contracting rates and has a near limitless choice of jobs. Companies often list knowledge of multiple programming languages as a requirement, but they realize they'll never find a candidate who is both a Shakespeare and a Steve Wozniak.

Why does this hybrid individual not exist? In part, it's because the more a person enters into the worldview of computer programming, the more they begin thinking in computer terms and workflows. Computers by very definition are non-human. The more you develop, the more your brain and language starts thinking and expressing itself via these non-human, computer-driven gears. Ultimately you begin communicating less and less to humans using regular speech and fall more into the mechanical computer's processes. 

This is both good and bad &mdash; good because other engineers in the same mindset may better understand you, but bad because anyone who doesn't inhabit that perspective and embrace the terminology already will be somewhat lost. Who do you think is reading the documentation you're writing?

## Wide, not deep understanding of programming

Although you may have client implementations in a variety of programming languages, the implementations will be brief. The core documentation will be for the REST API, and then you will have a variety of reference implementations or demo apps in these other languages. 

You don't need to have deep technical knowledge of each of the platforms to document them. You're probably just scratching the surface with each of them. 

As such, your knowledge of programming languages has to be more wide than deep. It will probably be helpful to have a grounding in fundamental programming concepts, and a familiarity across a smattering of languages instead of in-depth technical knowledge of just one language.

Having broad technical knowledge of 6 programming languages isn't really easy to pull off, though. As soon as you throw yourself into learning one language, the concepts will likely start blending together. 

And unless you're immersed in the language on a regular basis, the details may never fully sink in. You'll be like Sisyphus, forever rolling a boulder up a hill (learning a programming language), only to have the boulder roll back down (forgetting what you learned) the following month.

Technical writers are at a disadvantage when it comes to learning programming. Full immersion is the only way to become fluent in a language, whether we're referring to programming languages or spoken languages like Spanish. I studied Spanish for 3 years in high school, but it wasn't until I lived in Venezuela and interacted with natives for 6 months that the language finally clicked for me.

As such, you might consider diving deep into one core programming language (like Java) and briefly playing in other languages (like Python, C++, .NET, Ruby, Objective C, and JavaScript). Of course, you'll need to find a lot of time for this as well.

## Diverse technical landscape
The technical landscape is diverse, so the generalizations I'm providing here may not hold true in all companies. You may be in a Java shop where all you need to know is Java. If that's the case, you'll need to develop a deeper knowledge of the programming language so you can provide more depth. 

However, with the proliferation of REST APIs, this scenario is much less common. Companies can't afford to cater only to one programming language. Doing so drastically reduces their audience, limiting their revenue. The advantages of providing a universally accessible API using any language platform far outweigh the specifics you get from a native library API. 

The company I work for has a Java. .NET, and C++ API that does the same thing but in different languages. Maintaining the same functionality across three separate platforms is a serious challenge. Not only is it difficult to find skillsets for developers across these three platforms, it's also harder to test and maintain the code. It's three times the amount of work, not to mention three times the amount of documentation.

Since native library APIs are implemented locally in the developer's code, it's almost impossible to get users to upgrade to the latest version of your API. You have to send out new library files and explain how to upgrade versions, licenses, and other deployment code.

It's much more feasible to move to a SaaS model using REST, and then create various client implementations that briefly demonstrate how to call the REST API using the different languages. With a REST API, you can update it at any time (hopefully maintaining backwards compatibility), and developers can simply continue using their same deployment code.

It's not uncommon for companies who want to extend their reach as far as possible to provide a dozen or more specific client implementations. Take a look at Parse or Twilio. The more you can facilitate implementation in the user's desired language, the higher your chances of implementation. Which means greater product adoption, revenue, and success.

This proliferation across platforms creates more pressure on the multi-lingual capabilities of technical writers. Here's one consolation, though. If you can understand what's going on in Java, then your description of the C++ and .NET reference implementations will follow highly similar patterns. What mainly changes are the code snippets and some of your lingo. You may refer to "functions" instead of "classes," and so on.

Now you'll face other challenges, such as maintaining consistency across the various platforms. As you try to single source your explanations for various languages, your documentation code becomes complex and difficult to maintain. 

Additionally, product managers may want you to push out separate outputs for each programming language, keeping things simple for the users. Can you imagine pushing out a dozen different outputs across different languages, for content that follows highly similar patterns and has common explanations, but differs in just enough ways to make single sourcing from the same core content an act of sorcery?

## Not an easy problem to solve
The diversity and complexity of programming languages is not an easy problem to solve. To be a successful API technical writer, you'll likely need to incorporate a regular regiment of programming study. 

Fortunately there are many helpful resources (my favorite being Safari Books Online). If you can work in a couple of hours a day, you'll be surprised at the progress you can make. 

Some of the principles that are fundamental to programming, like variables, loops, and try-catch statements, will begin to feel more familiar. You'll also be equipped with a confidence that you can learn what you need to learn on your own (this is the hallmark of a good education).

## But will hiring managers understand?
In discussions with hiring managers looking to fill 6-month contracts for technical writers already familiar with their programming environment, it will be a hard sell to persuade the manager that "you can learn anything." 

The truth is that you can learn anything, but it may take a long time to do so. It can take years to learn Java programming, and you'll never get the kind of project experience that would give you the understanding that a developer has.

It's a hard path to follow. You're pretty much doomed to forever be a novice in a language, dependent on engineers for code samples and explanations. Your role will likely be to interview engineers about what's going on in the code, and then try your best to describe the actions in as clear speech as possible.
 
 You can always fall back on the idea that for those users who need Python, the Python code should look somewhat familiar to them. Well-written code should be, in some sense, apparent. Unless there's something odd or non-standard in the approach, engineers fluent in code should be able to get a sense of what's going on.

You'll need to focus on the higher level information, the "why" behind the approach, the highlighting of any non-standard approach, or the general strategy behind the code. 

But even these assumptions are flawed. Developers who write code may not be experts in the code. For example, the developers may be Java programmers who know just enough iOS to provide code samples for iOS clients, but for more detailed knowledge, the developers are depending on the expertise of the developer users.

Additionally, those developer users who are implementing code may not be experts in iOS. Maybe the developer has real expertise in Ruby but is winging it in iOS-land enough to pull off a basic implementation.

More detail in the documentation is always welcome, but you have to use a progressive-disclosure approach so that the expert users aren't bogged down with novice-level detail, and the novice users aren't left scratching their heads for more information. Expandable sections, additional pages, or other ways of grouping the more basic detail (if you can provide it) might be a good approach. 

--- 
other ideas:
where are the jobs
silicon valley as the hub
how much more do api jobs pay
how to brand yourself as an api technical writer
how to persuade hiring managers of your competence
you want to avoid getting into situations past your skill level
some writers working in these environments simply edit content, they don't really test it



