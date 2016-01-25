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
 
## Ability to read programming languages

In nearly every job description for technical writers in developer documentation environments, you'll see requirements like this:

> Ability to read code in one or more main programming languages, such as Java, C++, or Python.

You may wonder what the motivation is behind these statements. Here's the most common scenario. The company has a REST API for interacting with their services. However, to make it easy for developers, the company has provided SDKs or client implementations in various languages for the REST API.

## Algolia example
Take a look at Algolia's API for an example. You can view the documentation for the [REST API here](https://www.algolia.com/doc/rest). However, when you implement Algolia (which provides a search for your site), you'll want to follow the documentation for your specific platform. 

[![Algolia client implementations](algolia_clientsdks.png)](https://www.algolia.com/doc)

If you were recruiting for a technical writer to document Algolia, how would you word the requirements? Can you now see why even though the core work involves documenting the REST API, it would also be good to have an "ability to read code in one or more main programming languages, such as Java, C++, or Python."

## Technical writers who are former programmers

When faced with these documentation challenges, hiring managers often search for technical writers who are former programmers to do the tasks. There are a good number of technical writers who were once programmers, and they can command more respect and competition for these developer documentation jobs. 

But even developers will not know more than a few languages. Finding the technical writer who commands a high degree of linguistic fluency, organization, and analytical skills in addition to a deep technical knowledge of Java, Python, C++, .NET, Ruby, and more puts you into the unicorn land. 

If you find one of these technical writers, the person is probably making a small fortune in contracting rates and has a near limitless choice of jobs.

## Wide, not deep understanding of programming

Here's the real issue, though. Although you may have client implementations in a variety of programming languages, the implementations will be brief. The core documentation will be for the REST API, and then you will have a variety of reference implementations or demo apps in these other languages. 

You don't need to have deep technical knowledge of each of the platforms to document them. You're probably just scratching the surface with each of them. 

As such, your knowledge of programming languages has to be more wide than deep. It will probably be helpful to have a grounding in fundamental programming concepts, and a familiarity across a smattering of languages instead of in-depth technical knowledge of just one language.

## Difficulty of knowing so many programming languages

Having broad technical knowledge of 6 programming languages isn't really easy to pull off, though. As soon as you throw yourself into learning one language, the concepts will likely start blending together. 

And unless you're immersed in a language on a regular basis, the details will never sink in. You'll be like Sisyphus, forever rolling a boulder up a hill (learning a programming language), only to have the boulder roll back down (forgetting what you learned because of non-use) the following month.

Technical writers are at somewhat of a disadvantage here. Full immersion is the only way to become fluent in a language, whether we're talking about programming or spoken languages like Spanish. I studied Spanish for 3 years in high school, but it wasn't until I lived in Venezuela and interacted with natives for 6 months that the language finally clicked for me.

## Diverse technical landscape
The technical landscape is diverse, so the generalizations I'm providing here may not hold true in some companies. You may be in a Java shop where all you need to know is Java. But if that's the case, you'll need to develop a deeper knowledge of the programming language so you can provide more depth. 

However, with the proliferation of REST APIs, this scenario is much less common. Companies can't afford to cater only to one programming language. Doing so drastically reduces their audience, limiting their revenue. The advantages of providing a universally accessible API using any platform far outweigh the specifics you get from a native library API. 

More commonly you have one REST API with various client implementations in different languages.

Here's one consolation, though. If you can understand what's going on in Java, then your description of the C++ and .NET reference implementations will follow highly similar patterns. What mainly changes are the code snippets and some of your lingo. You may refer to "functions" instead of "classes," and so on.

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



