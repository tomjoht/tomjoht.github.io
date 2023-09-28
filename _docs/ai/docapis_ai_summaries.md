---
title:  "Use cases for AI: Create summaries"
permalink: learnapidoc/docapis_ai_summaries.html
course: "Documenting REST APIs"
weight: 14.5
sidebar: docapis
section: docapisai
path1: learnapidoc/ai.html
last-modified: 2023-09-06
---

{% include coffeeshopbook.html %}

Providing summaries of content is one of the most useful and powerful capabilities of AI chatbots powered by large language models (LLMs), like ChatGPT, Bard, and Claude. As such, AI chatbots can significantly help tech writers in a variety of documentation-related tasks, such as generating summaries at the top of each document, generating product overviews that summarize features and capabilities, and helping tech writers process content more quickly from long articles, bugs, meetings, and other documents.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Summary patterns in tech docs

At every level in tech docs, summaries provide distilled information about the next level below it. These summaries help users navigate information. Specifically, good tech docs follow summary patterns like this:

* Product overviews provide summaries of the chapters/sections they contain.
* Chapter/section overviews provide summaries of the topics they contain.
* Topics provide summaries of the subheadings they contain. They also provide a table of contents that outlines the content below.
* Subheading titles summarize the paragraphs they contain.
* Topic sentences provide summaries of the paragraphs they introduce. 

When information follows this pattern, the docs become easy to skim and read. You can read through a product overview before deciding whether the product is relevant to your needs. You can skim through a chapter overview to decide if the chapter is relevant. You can skim through subheadings to decide whether the sections are worth reading, and so on. 

In short, summaries facilitate information scanning and retrieval in key ways. Tech docs that lack summaries are hard to read. That's why the ability to [reduce and distill vast amounts of information down to its essence](https://idratherbewriting.com/simplifying-complexity/reduction-layering-distillation.html) is a key principle for simplifying complexity.

Summarizing even a 2,000 word topic into 100 words can be mentally taxing, as summaries require writers to comprehend the whole and then simplify those details into a concise and accurate representation (like making a poem out of a novel). 

To create summaries, I often make mini-outlines of the topic's key points and then try to integrate the various points into smooth-flowing sentences. It's not an easy task. 

{% include random_ad2.html %}

## Rich input sources make good summaries possible

Can AI chatbots help with summaries? Yes, AI tools excel at summaries partly because the input source (the content) is provided to the LLM. This makes them less likely to hallucinate. In contrast, when the AI tool has to draw upon its training of patterns across the Internet to create data, the chances of making bogus/spurious connections are much higher. 

Additionally, when writers are familiar with the topic's content (for example, when they wrote the content that they want AI to summarize), they can easily assess whether the summary is on target.

With [Claude.ai](https://claude.ai), the input source length can be much larger than with other LLMs &mdash; about 100k tokens, or 60,000 words. This allows you to paste in nearly any type of content for Claude to summarize. 

There's even a workaround if you have longer content requirements. To summarize lengthier material (> 60k words), chunk it up into pieces, then generate summaries of the pieces, then generate a summary of the summaries.

For example, the comprehensive [PDF of my API course](https://www.buymeacoffee.com/learnapidoc/e/146076) (containing all chapters) is too long for Claude to process, as it's nearly 1,000 pages. Because of this, I've broken this content down into individual chapters, each under 10 MB in length (which is Claude's max PDF size). If you want to summarize all 1,000 pages, you could summarize each individual chapter, compile the chapter summaries, then ask an AI tool to summarize the chapter summaries. (More on this later on in this article.)

{% include random_ad3.html %}

## Speed reading

Besides authoring scenarios, another way tech writers can use AI summaries is in consuming content. In [How Should I Use A.I. Chatbots Like ChatGPT?](https://www.nytimes.com/2023/03/30/technology/ai-chatbot-chatgpt-uses-work-life.html) _New York Times_ columnist Kevin Roose says AI can provide SparkNotes for everything. He says,   

> One of the most powerful abilities of A.I. language models is quickly summarizing large amounts of text.
> 
> I've used A.I. programs to “read" long articles for me, and summarize dense academic papers. Usually they get the broad strokes right, even if some of the details are missing.
> 
> This power really shines when you combine it with other A.I. abilities, like transcribing audio and video recordings. Suddenly it becomes possible to condense a two-hour podcast into bullet points, or get a concise summary of a work meeting _while you're still in the meeting._
> 
> If you're bored of reading this newsletter, you could ask ChatGPT or Bing to summarize the rest of it for you, or to rewrite it as a jaunty limerick. I promise I won't be offended.

Asking AI chatbots for summaries of long articles is how I frequently use AI as well. Here are a few scenarios where I ask AI to summarize content:

* Summarize a Reddit or Hacker News thread that has a lengthy number of comments.
* Summarize a long *New York Times* article that takes too long to get to the point.
* Summarize a journal article from a publication such as _Technical Communication Journal_ (getting to the conclusion and argument more quickly).
* Summarize the comments thread on a lengthy bug.

{% include ads.html %}

## Adjusting the simplicity levels of the explanation

Beyond merely providing summaries, AI tools are excellent at _simplifying_ complex concepts, making the content understandable for second-grade reading levels or similar. For example, suppose you paste in an academic journal article and ask it for a summary, but the summary is still opaque and hard to understand. You could ask the AI to explain it like you're 5 years old, or explain it like you're a high schooler, or to just provide a simpler explanation. AI tools often do an amazing job at simplification.

Kevin Roose explains how he uses ChatGPT to simplify concepts:

> For the last few months, I've been using ChatGPT as my personal tutor every time I get curious about a new topic. If it's, say, fractional reserve banking, I'll start by asking ChatGPT to “explain fractional reserve banking at a high school level." (Or, if I'm still confused, “at a middle school level.")
> 
> ChatGPT and other A.I. chatbots do well with these types of prompts, using their skills at **natural language processing**, as long as you don't ask about very recent events or extremely obscure topics. Calling on an infinitely patient, zero-cost tutor to guide me through new subjects feels like a superpower. Used properly, [they can be amazing teaching tools](https://www.nytimes.com/2023/01/12/technology/chatgpt-schools-teachers.html). ([How Should I Use A.I. Chatbots Like ChatGPT?](https://www.nytimes.com/2023/03/30/technology/ai-chatbot-chatgpt-uses-work-life.html))

{: .tip}

Kevin Roose and Casey Newton have a tech podcast called [Hard Fork](https://www.nytimes.com/column/hard-fork), which covers AI and other tech topics. It's my favorite podcast to listen to.

Additionally, I often ask AI tools to provide concrete examples as a way of clarifying concepts. Reading 10 concrete examples of any concept usually clears it up. 

{% include random_ad4.html %}

## Experimenting with summaries

To experiment with summaries, I decided to compare Claude's summaries against the chapter summaries in my API course. I already had chapter descriptions written for the 18 chapters in the course. The chapter descriptions preface each chapter. I uploaded each chapter PDF to  Claude and asked it to do the following:

<div class="chat">
Provide a 1 paragraph summary of this chapter. This summary will appear as a high-level description of the chapter's contents. Don't refer to the chapter as "This chapter provides..." Write the summary's main points directly.
</div>

Here are the results. My original description is “Tom" and the AI-written description is “Claude." Which summaries are better?

**[Chapter 1: Introduction to REST APIs](docapis_introtoapis.html)**

**Tom:** REST APIs are flourishing in the marketplace, and the web is becoming a mashup of interconnected APIs. REST APIs consist of requests to and responses from a web server. Job prospects are hot for technical writers who can write developer documentation. This course will help you break into API documentation, especially if you complete the many portfolio-building activities.

**Claude:** 

<div class="response">
REST APIs are flourishing and consist of requests and responses between clients and servers over HTTP. There is a strong need for accurate API documentation, and technical writers can apply their skills to fill this gap. This introduction discusses different API types, reasons for API growth, and why docs are critical for REST APIs. It outlines course contents, prerequisites, goals, and target audiences. The introduction sets the stage for learning API documentation through the hands-on activities in the course.
</div>

**[Chapter 2: Using an API like a developer](likeadeveloper.html)**

**Tom:** Playing a brief role as a developer will help you understand developer needs better, as well as what developers typically look for in API documentation. Developers often use tools such as Postman or curl to make calls. They look at the structure of the response, and they dynamically integrate the needed information into web pages and other applications.

**Claude:**

<div class="response">
This chapter covers using a REST API from a developer's perspective. It walks through getting API keys, making requests with Postman and curl, analyzing JSON responses, and dynamically displaying API responses on a web page. These hands-on activities provide context for understanding developer needs and how developers use APIs. After using the API, you switch perspectives and start documenting the API in the next chapter. Going through the developer workflow first gives you insight into developer requirements for documentation.
</div>

**[Chapter 3: Documenting API endpoints](docendpoints.html)**

**Tom:** Reference documentation for API endpoints consists of five general sections: resource descriptions, endpoints and methods, parameters, sample requests, and sample responses and schemas. To document the reference endpoints of an API, provide detailed information for each of these sections.

**Claude:**

<div class="response">
This chapter covers documenting API endpoints, the core reference documentation for APIs. It walks through the five key sections: resource description, endpoints and methods, parameters, request example, and response example/schema. These sections provide the reference details developers need to work with the API. The chapter includes a hands-on tutorial to create documentation for a sample endpoint, as well as activities to evaluate and improve existing API reference topics. The goal is to learn best practices for structuring and writing clear API endpoint documentation.
</div>

**[Chapter 4: OpenAPI spec and generated reference docs](restapispecifications.html)**

**Tom:** The OpenAPI specification provides a formal way of describing your REST API and includes all the reference sections mentioned in the previous section, Documenting API endpoints. Display frameworks such as Swagger UI can parse the OpenAPI specification and generate interactive documentation that lets users try out endpoints while learning about the API.

**Claude:** 

<div class="response">
Chapter 4 covers the OpenAPI specification, which provides a standard way to describe REST APIs. The chapter introduces the OpenAPI spec and shows how tools like Stoplight Studio, Swagger UI, SwaggerHub, and Redocly can use an OpenAPI file to generate interactive API reference documentation. The chapter includes tutorials on creating an OpenAPI file both manually and using a visual editor, validating the spec, and publishing the documentation. Key topics include spec-first development, integrating reference docs into full documentation, and leveraging the OpenAPI spec to empower API design, testing, implementation, and documentation.
</div>

**[Chapter 5: Step-by-step OpenAPI code tutorial](openapi_tutorial.html)**

**Tom:** If you want to build the OpenAPI spec by hand in a text editor, this tutorial will help you get started. Even though documentation isn't necessarily linear, I break down the various sections in the OpenAPI YAML file and go through them line by line. Approaching the OpenAPI file manually requires a more advanced understanding of the spec, YAML or JSON syntax, and how to approach strategies specific to your API.

**Claude:**

<div class="response">
Chapter 5 provides a step-by-step tutorial for manually creating an OpenAPI specification document. It walks through each of the main objects in the OpenAPI spec, including openapi, info, servers, paths, components, security, tags, and externalDocs. For each object, it shows code samples and explains how the information maps to an interactive documentation site powered by the OpenAPI spec. The tutorial uses the OpenWeatherMap API as an example and shows how to build the OpenAPI document in the Swagger Editor using YAML. The goal is to gain familiarity with the OpenAPI objects and properties by building a valid OpenAPI file from scratch.
</div>

**[Chapter 6: Testing API docs](testingdocs.html)**

**Tom:** Testing your documentation is critical to providing accurate, thorough information. With API and developer docs, due to the high level of complexity and engineering requirements, technical writers might be inclined to simply take information that engineers give them and incorporate it wholesale, without personally testing it. Merely playing an editorial/publishing function, however, can reduce your role to that of an engineer's secretary.

**Claude:**

<div class="response">
Chapter 6 focuses on the importance of testing documentation, especially for APIs and developer documentation. It emphasizes setting up a test environment, walking through all instructions personally, testing assumptions against real users, and collaborating with QA teams. Key points are that documentation should be treated like code and put through rigorous testing before release. Writers should not just passively document what developers say but actively validate everything. The chapter provides strategies for testing docs, getting access to test systems, and soliciting user feedback. Thorough testing leads to higher quality and more accurate documentation.
</div>

**[Chapter 7: Conceptual topics in API docs](docconceptual.html)**

**Tom:** While reference topics in APIs generally receive the most attention, the conceptual topics, such as getting started tutorials, information about authorization, rate limiting, status and error codes, quick reference guides, and other topics constitute about half of the documentation. These topics are usually handled by technical writers more than engineers. You can evaluate the quality of API documentation in part by looking to see whether it includes these conceptual topics.

**Claude:**

<div class="response">
Chapter 7 covers the common conceptual topics that make up about half of API documentation, including product overviews, getting started tutorials, authentication and authorization, status and error codes, rate limiting and thresholds, quick reference guides, glossaries, and best practices. These conceptual topics provide critical context for understanding and using the API beyond just the reference documentation. The chapter explores best practices for each topic, reasons why the topics are often neglected, and includes examples from API documentation sites. Activities guide you to evaluate these topics in an open source API project and decide which examples demonstrate best practices. The chapter emphasizes the importance of conceptual documentation in facilitating the user's journey in understanding and adopting the API.
</div>

**[Chapter 8: Code tutorials](docapiscode.html)**

**Tom:** Documenting code poses one of the most challenging tasks for technical writers, especially if the writers don't have an engineering background or familiarity with the code. Even without deeper engineering expertise, you can still document code — everything from code snippets to full-fledged sample apps. This section explores techniques and strategies for documenting code.

**Claude:**

<div class="response">
Chapter 8 covers techniques for documenting code, one of the most challenging aspects of API documentation, especially for non-engineers. It starts by explaining why code is difficult to document, including its non-linear nature, audience variance, and dependence on specific languages. Research provides guidance around when to document simple vs complex code, timing docs with development, focusing on "how" questions, and accommodating opportunistic learning behaviors. The chapter then explores five strategies for documenting code: separating conceptual "why" from code "how," using a third column for juxtaposed commentary, building up complexity in steps like Legos, starting simple and expanding complexity like a nautilus shell, and creating interactive browser experiences. Other code documentation forms covered include code samples, sample apps, and SDKs. The chapter concludes with assessing API design and developer experience usability.
</div>

**[Chapter 9: The writing process](writing_process.html)**

**Tom:** The writing process refers to the way you write and develop content. There are five main steps to the writing process: planning, information gathering, writing, reviewing, and publishing. Although these aspects of the writing process are general to almost every type of writing, in this section I tailor the information to be specific to writing technical documentation.

**Claude:**

<div class="response">
Chapter 9 covers the 5 main steps in the API documentation writing process: planning (creating a doc plan, establishing roles), gathering information (interviewing engineers, product managers, partner engineers, QA), writing (separating content into groups, outlining, scheduling reviews, writing the first draft), reviewing (strategies for ineffective and effective reviews, incorporating feedback, resolving conflicts), and publishing (integrating new content, adding metadata, coordinating timing, publicizing releases). The chapter provides practical tips tailored to tech writers creating API documentation, such as recording engineering interviews, bringing questions to review meetings, and publicizing releases through newsletters.
</div>

**[Chapter 10: Publishing API docs](publishingapis.html)**

**Tom:** API documentation often follows a docs-as-code workflow, where the tools to author and publish documentation align closely with the same tools developers use to write, manage, build, and deploy code. Docs-as-code involves using lightweight formats such as Markdown, collaborating through Git or other version control, building your doc site with a static site generator, and deploying it through a continuous build model, where the build happens on the server when you push commits to a particular branch.

**Claude:**

<div class="response">
This chapter covers best practices and tools for publishing API documentation. It discusses common design patterns seen in API doc sites, such as consistent structure and templates, seamless branding, abundant code samples, lengthy pages, and interactive API explorers. The chapter then explores docs-as-code tools like static site generators, version control systems, Markdown, and hosting platforms. It provides an overview of tools like Jekyll, Hugo, Sphinx, GitHub Pages, ReadTheDocs, and more. The chapter concludes with recommendations for selecting the right publishing tools based on your content, authors, infrastructure, and other requirements. The main goal is to choose lightweight tools that integrate into engineering workflows, so developers can more easily contribute to the docs.
</div>

**[Chapter 11: Publishing tools](publishingtools.html)**

**Tom:** This section focuses on various publishing tools and tutorials related to those tools. The chapter continues similar themes of publishing from the previous chapter but dives into the details of several tools, a publishing workflow, case study, and more.

**Claude:**

<div class="response">
This chapter focuses on publishing tools and workflows for technical documentation. It provides tutorials on using GitHub wikis and GitHub Desktop to manage content with Git version control. It also covers pull request workflows through GitHub as a way to collaborate on content. There is a tutorial on using Jekyll with CloudCannon for continuous deployment, and a section on using Oxygen XML with docs-as-code workflows. The chapter also profiles Blobr, an API portal that arranges API use cases into products, and includes a case study on transitioning documentation processes to docs-as-code. The chapter finishes with a frequently asked questions section on documentation tools.
</div>

**[Chapter 12: Thriving in the API doc space](jobapis.html)**

**Tom:** Getting an API documentation job and thriving requires you to demonstrate your technical aptitude through a writing portfolio. The portfolio should include samples of documentation written for developers. One way to build this portfolio is by working on an open-source project. You also need to live in a tech hub where API documentation jobs are available, such as California, Texas, New York, or Virginia. Overall, thriving in the developer documentation space requires you to continually learn a healthy dose of code, which can be challenging.

**Claude:** 

<div class="response">
This chapter focuses on getting a job in API documentation and thriving in the field. It covers the basic qualifications needed, such as familiarity with programming languages, experience writing developer docs, and a portfolio with writing samples. The chapter discusses how much code knowledge is needed and strategies for learning code. It looks at the best locations for API doc jobs, with a focus on tech hubs like California, Texas, New York, and Virginia. The chapter includes activities for finding an open source project to contribute to and creating a sample API reference topic, which will build your portfolio. Overall, the chapter provides guidance on building the skills and portfolio needed to get an API documentation job.
</div>

**[Chapter 13: Native library APIs](nativelibraryapis.html)**

**Tom:** Native library APIs refer to Java, C++, or other programming-specific APIs. In this model, rather than making requests across the web for the information, you download a library of code and integrate it into your project. The library is compiled directly into your application's build (rather than accessed through web protocols as with REST APIs). Although this type of API is less common, I include it here in part to clarify what makes REST APIs so different from native library APIs.

**Claude:**

<div class="response">
This chapter covers native library APIs, which are programming language-specific APIs like Java and C++ that get compiled into a developer's code rather than accessed over web protocols. It provides an overview comparing REST APIs to native library APIs. The chapter includes a tutorial on generating Javadoc documentation from a sample Java project, with details on Javadoc tags and style guidelines. It also covers Doxygen, a popular document generator for C++. The chapter emphasizes that reference documentation alone is insufficient, and technical writers need to create conceptual documentation around tasks as well. Overall, the chapter aims to clarify native library APIs and how to approach documentation for them.
</div>

**[Chapter 14: Processes and methodology](docapis_managing_doc_processes.html)**

**Tom:** The process for managing developer portal documentation includes a number of different tasks outside of content development. The role of a DX (developer experience) content strategist plays a key role in defining workflows, standards, user flows, processes, and other aspects of the site. workflows for different types of documentation. In this section, I cover details for how to manage the doc work, including processes for fixing doc bugs versus tackling larger doc projects. I also explain processes for releasing SDKs, managing external contributions, and more.

**Claude:**

<div class="response">
Chapter 14 covers processes and methodology for managing developer portal documentation. It outlines strategies for handling both large documentation projects and smaller documentation requests, including following an adapted Scrum methodology. The chapter also discusses kickoff meetings, documentation reviews, maintaining existing docs, collecting feedback, working with external contributors, changing documentation culture, sending status reports, broadcasting meeting notes, and ensuring documentation coverage for software releases. The key themes are integrating documentation into formal processes, building visibility for the documentation team, and maintaining healthy documentation practices.
</div>

**[Chapter 15: Metrics and measurement](docapis_metrics_and_measurement.html)**

**Tom:** Metrics and measurement addresses ways to measure API documentation quality and how to track your progress on improvement. You can use the quality checklist here to review essential components of documentation and decide how your API docs measure up. The checklist can be a way to investigate, analyze, and interrogate your documentation from another perspective and discover ways to improve it.

**Claude:**

<div class="response">
Chapter 15 discusses ways to measure API documentation quality and track improvement efforts. The chapter first looks at the challenges of relying solely on user surveys and satisfaction scores to evaluate documentation. It then surveys different research on defining documentation quality, identifying common criteria like accuracy, clarity, completeness, and relevance. The chapter introduces a comprehensive quality checklist with criteria tailored specifically to API documentation. The checklist can guide an in-depth review to assess strengths and weaknesses of documentation and identify areas needing improvement. While a scoring approach is discussed, the real value is having concrete, actionable criteria for elevating documentation quality. The checklist serves as a practical model for progress.
</div>

**[Chapter 16: AI and API documentation](ai.html)** 

**Tom:** AI tools can help speed up authoring, demystifying code, automating publishing tasks, populating templates, and more. This section will look at how to use AI tools within the context of API documentation.

**Claude:**

<div class="response">
Chapter 16 explores practical applications of AI tools like ChatGPT and Claude for API documentation workflows. It looks at using an AI assistant plugin in Oxygen XML for tasks like improving readability, generating index terms, and fixing errors. Other applications covered include using AI for pattern-based content prompts, building automation scripts, learning code basics, getting language advice, creating doc updates for bugs, analyzing search analytics for themes, comparing API responses to docs, and assisting with glossary creation. While AI tools can't fully replace human technical writers, the chapter focuses on targeted ways AI can provide helpful assistance with certain documentation tasks, accelerating productivity.
</div>

**[Chapter 17: Glossary](glossary_overview.html)**

**Tom:** This section contains definitions of glossary terms. It also contains term groups so you can learn all the key terms within a specific subject area.

**Claude:**

<div class="response">
The glossary chapter provides definitions and explanations for over 130 key terms related to API documentation. The terms span a wide range of topics relevant to documenting REST APIs, including general API concepts, OpenAPI/Swagger specifics, API parameters, responses, methods, tools, project management approaches, writing best practices, and more. This glossary serves as a quick reference for readers to look up unfamiliar documentation terminology they encounter throughout the course material. The terms are organized alphabetically as well as by common topic groups, allowing readers to easily browse terms within certain subject areas.
</div>

**[Chapter 18: Additional resources](resources.html)**

**Tom:** This section contains additional exercises and information, such as more activities for calling APIs, or more info about alternative specifications. I also archive topics here that don't seem to fit well anywhere else.

**Claude:**

<div class="response">
Chapter 18 provides a variety of supplementary material to expand on topics covered in the course. It includes a detailed article comparing REST and GraphQL APIs and recommendations for documenting each. There are several hands-on activities for calling additional APIs to get more practice working with endpoints, parameters, and responses. Tutorials are provided for two alternative API specification formats &mdash; RAML and API Blueprint. The chapter also contains answer keys for activities, as well as video recordings of full-day workshops delivering this course content. Overall, this additional resources section offers more in-depth exploration of key course topics for those looking to further solidify their learning.
</div>

{% include image_ad_right.html %}

## The verdict? Claude's responses are better than mine, but also problematic

Most of the time, I like Claude's descriptions more than mine. This is partly because summaries are hard to write, and I dislike writing them. I would gladly hand the pen to Claude to craft a summary from a chapter PDF that I've written anyway. AI tools just seem to do a better job at distilling large amounts of information into summaries than I do &mdash; at least for the time I'm willing to put into the summary task. I'd rather save my cognitive bandwidth for content creation and development.

That said, Claude's responses (which are similar to other AI chatbot responses) are problematic: they describe content from an external perspective, with phrases such as "This chapter discusses ..." or "The chapter includes ..." Remember back in high school when nearly every essay started out with an introductory paragraph that described what the author was going to say instead of just saying it? For example, 

> "In this essay, I explore widgets. I argue that widgets are great, and that everyone needs widgets. I list the main reasons why people fail to adopt widgets, and then how we can overcome these reasons. Finally, I provide some examples of widgets in real use cases."

When I later became a composition teacher, I learned to despise these constructions. I would regularly write, *Don't tell me what you're going to say, just say it!* Unsurprisingly, this is Claude's problem too. Claude describes the chapters from a third-party perspective, as if it's a robot analyzing what someone else has written rather than making the points more directly. 

Additionally, when you come to recognize what AI-written summaries look like, you can more easily identify them. Someone recently sent me a newsletter that had all the hallmarks of AI-written summaries, and I could barely get through the paragraphs without having this same composition-teacher reaction.

Although I liked Claude's summaries, I ended up rewriting the summaries in a more direct, active way as much as possible. I couldn't entirely omit the "This chapter discusses..." convention, but I tried to. It was helpful to have Claude's summary a starting point. I also tried to train ChatGPT to switch the perspective of these passages more toward the approach I wanted, but it usually failed and I had to take over the wheel. At any rate, to read my fixes for the summaries&mdash; see the [Course organization](index.html#course_organization) in the introduction.

## The summary of summaries

I mentioned earlier that a workaround to the summary limits in Claude is to paste in various summaries and then ask Claude to generate a summary of those summaries. Here's the outcome with all 18 chapter summaries pasted into Claude.

<div class="response">
<p>This book provides a comprehensive guide to creating effective documentation for REST APIs. It approaches the topic from the perspective of a developer first using an API, then as a technical writer documenting the API. The book covers foundational concepts like making API calls, analyzing responses, and displaying data dynamically. Core skills for API documentation are then addressed, including documenting API endpoints, parameters, requests, and responses. Best practices are provided for reference docs, conceptual topics, tutorials, code samples, and testing.</p>

<p>The book explores tools and specifications like OpenAPI that power interactive documentation through validated machine-readable specs. It gives tutorials for creating OpenAPI files manually and with visual editors. Workflows for publishing API docs are covered in detail, including docs-as-code tools like static site generators, version control with Git, continuous deployment, and reviewing with pull requests.</p>

<p>Additional topics include documenting native library APIs like Javadoc, evaluating docs through quality checklists, leveraging AI for documentation tasks, creating glossaries, and managing documentation processes. The book aims to provide both strategic advice and practical skills for technical writers creating developer documentation for REST APIs. It combines big picture concepts with realistic tutorials and activities centered around sample APIs. Readers will gain the knowledge needed to create clear, usable API documentation that empowers developers to use APIs effectively.</p>
</div>

I could definitely see this copy written on a jacket cover. Again, the style follows the convention of a third-party analyzing the content, which I dislike, but my pet peeve for this style might not be entirely reasonable.

## Conclusion

In the case of writing summaries, AI tools work best when starting with an input source. If I were to ask Claude to write a chapter based on the summary, the results are much less compelling. For example, I took the summary of chapter 2 and asked Claude to actually write the chapter content. Here's my prompt.

Prompt:

<div class="chat">
Based on the description of this chapter, write out the actual chapter content. The chapter should be approximately 10 pages long. Make sure you cover all the detail mentioned in the description here. Break information into various subheadings with numbered steps as appropriate for the tasks.
</div>

Here's Claude's response:

<div class="response">
Here is a draft chapter walking through using a REST API from a developer's perspective:

<h2>Chapter 4: Exploring a REST API as a Developer</h2>

<h3>Introduction</h3>

<p>Understanding the developer experience is crucial for writing effective API documentation. This chapter provides hands-on practice using a sample REST API to see firsthand how developers interact with APIs. We will go through the end-to-end workflow of getting API keys, making requests, processing responses, and displaying data. These activities will build empathy for developer needs and requirements. In the next chapter, we'll switch roles and begin documenting this API, bringing hard-won lessons from the developer perspective.</p>

<h3>Getting Set Up</h3>

<p>Let's first get set up to start making requests. For this exercise, we will use the SpaceX API (https://api.spacex.com), a free REST API with data on SpaceX launches, rockets, and more. </p>

<p>To begin, you'll need to register for an API key. The SpaceX API uses token authentication, with the key passed in an Authorization header. Registering provides a test token we can use.</p>

<p>Now we're ready to start making requests. We'll use Postman, a popular GUI tool for testing APIs. Postman has built-in support for authorization. Install Postman and import the SpaceX API from the app library to get started.</p>

<h3>Making GET Requests</h3>

<p>Let's start with a simple GET request to retrieve all SpaceX launches. The endpoint is <code>https://api.spacex.com/v4/launches</code>.</p>

<p>Enter this URL in Postman. Then click Params and enter your API key in the authorization field. Send the request.</p>

<p>You should get a 200 OK response with launch data in JSON format. The response body contains an array of launch objects. Each object provides details like launch date, rocket name, success indicator, and more.</p>

<p>We can pass parameters to filter the response. Let's add launch_success=true to get only successful launches. Update the URL:</p>

<pre class="highlight http">
https://api.spacex.com/v4/launches?launch_success=true
</pre>

<p>Now the response only contains successful launches. We could also filter by other fields like launch year or rocket ID.</p>

<h3>Making POST/PATCH Requests</h3>

<p>So far we've only done basic GET requests. Let's try a POST to create a resource. The /launches endpoint supports POST to add a new launch.</p>

<p>Switch to the POST tab in Postman. Set the request body to JSON for a new launch. Provide launch details like name, date, and rocket ID.</p> 

<p>Send the request. You should get a 201 Created response with the ID of the new launch. We can GET that launch ID to confirm it was added.</p>

<p>For updating resources, we use PATCH requests. The /launches endpoint supports PATCH to modify launches. </p>

<p>Let's change the launch date we created. Switch the request to PATCH and set the ID path param. Provide the new date in the body. Send the request to update the launch.</p>

<h3>Processing JSON Responses</h3>

<p>Until now we've looked at JSON responses in Postman. But in an actual app, how do we work with the JSON programmatically?</p>

<p>Let's use a little JavaScript code to parse a launch response. We'll access fields from the JSON object.</p>

<p>First make a GET request using curl and save the response:</p>

<pre class="highlight">
curl -H "Authorization: Bearer &lt;your_key&gt;" https://api.spacex.com/v4/launches/latest &gt; response.json
</pre>

<p>Now open response.json and load it into a JavaScript variable:</p>

<pre>
const response = require('./response.json');
</pre>

<p>This parses the JSON into a JavaScript object. We can access fields directly:</p>

<pre class="highlight curl">
const launchName = response.name; 
const launchDate = response.date_local;
</pre>

<p>We could build UI or pass data to other functions. Processing JSON is critical for working with API data.</p>

<h3>Displaying API Responses</h3>

<p>Let's combine what we've learned to display launch data on a webpage. We'll:</p>
<ol>
<li>Make API call </li>
<li>Process response</li>
<li>Insert data into HTML</li>
</ol>

<p>First, we set up a simple HTML page with placeholders for the data:</p>

<pre class="highlight html">
&lt;html&gt;
    &lt;h1&gt;Latest SpaceX Launch&lt;/h1&gt;
    
    &lt;h2&gt;Launch: &lt;span id=&quot;name&quot;&gt;&lt;/span&gt;&lt;/h2&gt;
    &lt;p&gt;Date: &lt;span id=&quot;date&quot;&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/html&gt;
</pre>

<p>Next, we use fetch() in JavaScript to GET the latest launch and process the response:</p>

<pre class="highlight js">
fetch('https://api.spacex.com/v4/launches/latest', {
    headers: {
        'Authorization': 'Bearer &lt;your_key&gt;'
    }
})
.then(response =&gt; response.json())
.then(data =&gt; {
    document.getElementById('name').textContent = data.name;  
    document.getElementById('date').textContent = data.date_local;
});
</pre>

<p>This makes the API call, parses the response to JSON, and inserts launch details into the page. The result is a simple page dynamically populated from API data!</p>

<h3>Conclusion</h3>

<p>This chapter walked through hands-on API exploration from authentication to displaying data. Key lessons for writing documentation include:</p>

<ul>
    <li>Guide developers through all steps from getting credentials to processing responses</li>
    <li>Provide examples developers can easily adapt like Postman requests</li>
    <li>Explain how to parse and work with JSON programmatically</li>
    <li>Include sample code for using API data in apps and sites</li>
</ul>

<p>Approaching documentation from this developer perspective will ensure you provide what developers need to use the API successfully. In the next chapter, we'll apply these lessons as we move to the other side and begin documenting the API.</p>
</div>

As you can see, this isn't actual content. This is why I haven't recommended using AI tools to write content from scratch like this. 

Also, note that although Claude can take a large input, its outputs tend to be brief. If you really wanted to try generating content based on an outline, it would be better to the approach it as I described in [Step 2: Expansion of detail](docapis_thematic_analysis#expansion_of_detail) in the thematic analysis chapter. This approach involves asking for a high-level outline, then proceeding through each of the points with detailed requests rather than requesting the entire content in one response.

Despite how poor the content generation is here, starting a draft this way can give you a lot of ideas and something to work with. But don't expect much of the AI-written chapter. In sum, AI chatbots are decent at summarizing content you provide it, but not so much at creating original content.
