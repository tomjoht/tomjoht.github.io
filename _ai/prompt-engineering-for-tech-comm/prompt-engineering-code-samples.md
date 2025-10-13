---
title:  "Using AI to jump-start code samples"
permalink: ai/prompt-engineering-code-samples.html
linkedin: https://www.linkedin.com/posts/tomjoht_using-ai-to-jump-start-code-samples-activity-7246959051304026112-YKJx
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-09-29
rebrandly: https://idbwrtng.com/prompt-eng-code-samples
---
{% comment %}
{% include coffeeshopbook.html %}
{% endcomment %}

In this article, I'll provide a strategy for one of the most challenging topics in prompt engineering with docs: using AI to help with code samples. At the extreme end, this could mean using AI to generate code samples from documentation; at the other end, it could mean describing code that's already been written. My approach is more of a hybrid between the two.

## Typical scenario

To provide some context, here's a recent scenario in which I used AI to help with code examples. I imagine this scenario is somewhat typical.

I was documenting a new SDK that had 8 different gRPC APIs. We had already written overviews and generated reference docs, but we didn't have any code samples or even a general code usage sample. The gRPC API didn't make requests to a cloud endpoint but rather to an on-device server, with streamed results for some calls, so it was somewhat different from the typical REST API we were used to documenting. 

As this was a new product, the engineering team had a dogfood app to test out the calls and make sure things worked. However, I couldn't just pull code from the dogfood app because, as I've come to see time and again, actual implementations are much more complex than simple code examples suitable for documentation. Some additional code was available in a test app, which provided buttons to click and receive responses. End-to-end test code was also available, though this code often included classes and other design patterns more suitable for large-scale testing rather than application development. 

In discussions about this product, other tech writers asked me why the team didn't provide a sample app. At first glance, a sample app seems ideal, but I've found that engineering teams rarely want to provide these sample apps for fear that developers will use the simplified code in the sample app as a starting point, without incorporating appropriate techniques for a robust, scalable application. It's better not to mislead external developers with primitive code that they really shouldn't be using.

I reached out to our partner engineers and engineers for code samples but was met with pushback each time. It seemed like no one wanted to provide us with code samples, and I didn't feel capable of writing them myself. So our documentation simply lacked code samples. Even so, the new partners, who were super tech-savvy, didn't seem to mind.

At one point during discussions about code samples, I mentioned creating some samples with AI and having engineers review them. This approach seemed to be one that teams wanted us to attempt, so that's what we ended up doing.

## The approach

Working with another tech writer on this project, we pulled relevant code samples from the test app, dogfood app, or end-to-end test code — whichever seemed most clear and straightforward. We put these code extracts into a Google Doc. Then we combined the following into a prompt for AI:

- The conceptual documentation about the API.  
- The reference documentation for the API.  
- The extracted code samples from the test apps (including the internal test app, end-to-end test code, or dogfood app).

Then we asked AI to draw upon this documentation and code sample to provide a more straightforward, cleaned-up code sample along with a description of what the code was doing.

We used a prompt like this:

> You're a technical writer creating a code sample for an API. The code sample should provide one or more basic examples of how to call the API, along with some basic descriptions of what the code is doing. Include any relevant callouts or notes from the documentation as needed for the explanation. To help with the code, I'll share the conceptual documentation, reference documentation, and some extracts from test apps showing sample code.
> 
> Here's the conceptual documentation: \[PASTE CONCEPTUAL DOCS\]  
>   
> Here's the API reference documentation: \[PASTE IN API REFERENCE\]  
>   
> Here's some extracted code from a test app: \[PASTE IN EXTRACTED TEST APP CODE\]

We then took the response and put it into a separate Google Doc.

We then created bugs for engineers asking them to provide code samples, and we included links to both Google Docs — to the code extracted from the test apps, and the AI-assisted code plus explanation. We decided that the engineering team that owns the API should be responsible for code samples, not the partner engineers who help partners with implementations. We assigned the bugs to the point of contact (or “directly responsible individual”) for the API.

## The response

The response was mixed. Of the 8 bugs, about half the engineers accepted the bugs. So far, 2 have provided code examples. They both massaged and adjusted the AI-assisted code sample. They made quite a few edits to the AI-assisted code sample and explanation, as was visible from looking at the revision history in the Google Doc. I was surprised that they both gravitated to the AI-assisted version rather than the extracted code from the test apps.

What about the others? One team said they're understaffed for this effort, another said the API is changing in the next few weeks and so we should hold off until the changes are in. But by and large, the responses have been positive and suggest that the AI-assisted code provides enough of a starting point to help jump-start this process.

The process isn't too unlike asking an engineer for help with docs. If you ask an engineer to write an overview for their API, chances are they'll be too overwhelmed to start. But give them a draft and ask them to edit it or use it as a starting point, and you'll have much more success. If AI can help provide this starting point for engineers with code samples, then it's a huge advantage in helping engineers contribute to documentation.

## Points to ponder

In going through this process, I had a number of thoughts worth noting: 

- **Test apps exist.** There's usually a test app someone has with some basic code. This can be a source to get code samples, even if they're simplistic or have extraneous test methods. Someone almost always has a test app and some end-to-end test code. However, this code is basic and doesn't exist within the workflow of a real application. It might also be undocumented and customized for testing scenarios. Trying to identify the relevant code in a test app might be like untangling the right strands of hair from a hairbrush.  
- **AI-assisted code differs.** The AI-assisted code differs just enough that it's hard to tell whether the differences make the code invalid or not. Without a stronger understanding of gRPC and Java, the code samples are almost impossible to evaluate. The AI output requires SMEs to review and validate it. This is unlike conceptual topics where you can review source documents to confirm the material yourself, for the most part.  
- **AI-assisted code is hard to alter.** With text output from AI, it's easy to change the language and make it more your own language. But with code output from AI, it's much harder to change. If you change an object name \+ comments \+ arrangement, there's a chance that you could make it invalid. It's much easier for an engineer to customize it.  
- **API teams own code.** I think API teams should own and provide code samples for the APIs they're building and supporting. It shouldn't be the tech writer's responsibility to provide this code. And yet, few engineering teams are willing to do this. Maybe this is all just a process problem? For example, when launching a new API, I should have made it a firm requirement for engineers to provide code samples as part of the minimum required documentation to launch.  
- **Test code differs from app code.** The engineering teams' reluctance to provide code should give tech writers some pause in jumping into this task. If engineers are reluctant, why? They understand the complexities of code samples. A simple code example that makes a call to the API might not be so useful. There's a big difference between **test code** and **application code**, as the following section will elaborate on.

## Test code vs. application code

What's the difference between test code and application code? Test code is often used to validate/verify that an API call works. In contrast, application code works within the context of an application workflow. Real application code needs to do the following: 

* Establish dependencies  
* Handle errors  
* Scale appropriately  
* Process parallel requests  
* Be sensitive of data download time  
* Address memory and CPU limitations  
* Provide good performance  
* Make the request at a certain event  
* Get valid data to pass into the request  
* Pass responses into other API calls  
* Hook into an event loop<sup>*</sup>

<sup>*</sup> In a mapping application, other APIs get the vehicle's location frequently; the other APIs draw upon this location in their calls. 

There might be other configurations for an SDK that define locale, measurement units, and other information centrally. In a real app, it's rare that an API request would stand alone from the configuration set for the SDK.

## Why are engineers hesitant to provide code?

Understanding the differences between test code and application code makes it clear why engineers are so hesitant to provide code samples:

* **Oversimplified for app contexts**. If code is pulled from a test app, the code is often oversimplified and doesn't account for the complexities of app code that conforms to development best practices. Building an app is a much different task than building an API. The API makes requests and returns data. An app is a functional piece of software for a business scenario. Engineers feel uneasy about test code being used in an app context.  
* **Avoiding blame**. If the code has any problems, engineers don't want to be at fault. For example, suppose the code doesn't handle errors, and those errors stem from invalid data. If the app crashes and the partners trace the issue to the code sample provided, will the engineers who provided the code be blamed, even if we add disclaimers that the sample code is basic only and not intended to be copied into a real app?  
* **Maintenance oversight**. Maintenance of the code is also a burden. With each release, someone has to check whether the new features and updates impact the existing code samples. It's easy to overlook updating code samples, and quickly they become outdated. There isn't a clearly defined process for checking the existing code samples against the updates in each new release. (This could be another AI prompt as part of the release.)  
* **Regular tests are burdensome**. Theoretically, the code samples in the docs should be tested regularly, but testing the code might require another framework or be duplicated by other end-to-end testing apps and code. This means the code exists in multiple places and becomes out of sync. For cloud APIs, it's easier to isolate the code in snippets that you can call and run, but for more complex APIs that require apps to run and are language-specific, automating tests is difficult. Essentially you have to duplicate the test apps. Test apps are often littered with input fields and buttons to initiate calls, which then make the sample code altered and non-standard. Pretty soon tech writers become part-time QA testers.  
* **Protective of bandwidth.** Providing code samples requires extra work, which engineering teams most likely don't have. Already teams are quick to draw lines around their responsibilities and to reject any requests that don't squarely fall within those responsibilities. Tech writers do the same with docs — for example, I almost never write docs for features outside the specific APIs I support.  
* **It's undocumented.** When engineers do provide code, it's often completely undocumented. The code is provided as a chunk of code, often with no comments at all. There's no indication of needed packages, dependencies, inputs, what it returns or what data is needed, or the larger expected context of considerations that developers should account for when implementing it.

## Is test code useful to partners?

The distinction between test code and app code prompts the question of whether the test app code is even useful to partners. The larger questions partners often have aren't how to call an API but rather how to account for all the larger app questions and contexts described earlier. 

Answers to questions that arise from building an app could be documented. But those answers are often specific to the business context of the app, the particular company's use case, product, environment, and needs. They are questions more appropriate to partner engineers who are more embedded as solutions engineers and consultants to the partners.

## Questions to consider before doubling down on sample code for docs

Before doubling down on sample code for your documentation, consider these questions:

* **Where are the requests for code samples?** I rarely seem to get specific requests for code examples, and I'm not sure why. Traditionally, one of the hallmarks of good documentation is the presence of code samples — functional code samples that developers can copy and paste, and which work. But if that's the case, where are the doc requests for these code samples? Am I the only one who doesn't seem to receive these requests?  
* **More harm than good?** Is there a point at which providing code can do more harm than good? Can basic code mislead developers? Is it so prone to being out of date that it's more hazardous than helpful? Is it better to have developers think through their application needs in the context of the API reference material?   
* **Is there a need to document the "what"?** What value are we really adding if the code documentation focuses on the *what* rather than the *why*? Is there a real benefit to describing what the code does, rather than deeper questions of purpose and design? Partners can paste code into an AI tool and ask it for an explanation, especially if they also paste the documentation. However, documenting the *why* is usually a next-level task when it comes to API documentation. It's extremely difficult to get the "why" questions and the larger rationale behind app development decisions.

## Conclusion

Providing code samples in documentation remains one of the most challenging aspects of API documentation. Even so, I'm optimistic about the helpfulness of AI tools to jump-start the process for tech writers. We can leverage code from test apps along with documentation, especially reference documentation, to provide starter code that engineers can then customize and adjust. 

However, whether these basic code samples are helpful is another question. They might be mistaken for more valuable application code that would get into the deeper questions about how to design an application and handle the complexities of the developer's specific business logic, along with questions about purpose, rationale, and design patterns.

