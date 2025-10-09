---
title: "Do developers need code samples in API documentation?"
permalink: /blog/code-samples-might-not-be-needed-anymore
date: 2025-03-02
categories:
- ai
- api-doc
- technical-writing
keywords: 
linkedin: https://www.linkedin.com/posts/tomjoht_using-ai-to-jump-start-code-samples-activity-7246959051304026112-YKJx
rebrandly: https://idbwrtng.com/code-samples-might-not-be-needed-anymore
description: "Although code samples have long been a staple in API documentation, I'm not sure users need them that much. Many developers now use AI tools that can generate the same basic code samples that are commonly provided in documentation. If these same developers pass in either the source files or reference documentation, AI tools can generate the code samples they need in the language they want, and better yet, tailored to their project and business context."
---

Most code samples in documentation are fairly basic, which is by design. Documentation tries to show the most common use of the API, not advanced scenarios for an enterprise-grade app whose complexity would easily overwhelm developers. (At that point, you end up with a sample app.)

Over the years I've presented a lot about the importance of code samples, so taking the opposite view in this blog post is a bit of a turnaround. What changed my mind? This past week I struggled to get two code samples approved for some APIs I'm documenting. The code samples just weren't a priority in light of bandwidth needed for feature development and bug fixes. Overall I sensed that, while code samples were a “nice to have,” developers didn't actually need them anymore. Internal devs also argued that adding the code samples into the docs would also create a maintenance burden, as they could easily go out of date with API changes.

For the code samples I mentioned, I used AI to generate the code, which I thought would help facilitate the developer's review, but it didn't work out so well. Because I'd generated the code, the developers no longer felt like the task belonged to them; instead, they reassigned their role on the tickets as reviewers. 

Also, not being an engineer, I struggled to understand the nuances of the code in ways that an expert would. The engineers picked over problems with the AI-generated code, which put me into a position of relying on AI to regenerate new code to address the issues they noted. 

But then I quickly realized that I was just functioning as an interface between engineers and AI, without having valuable input myself. Couldn't engineers interface with AI tools directly and cut out the middleman? If engineers used AI directly, they could more easily iterate on AI-generated code outputs, instructing fixes and other improvements.

Engineers didn't want to do this, however, as they didn't have bandwidth to create code samples in the first place. They wouldn't use AI, nor would they write the code from scratch. 

But they also objected in a more fundamental way to the endeavor: they said the code samples weren't very interesting. The code samples didn't address more challenging scenarios or use cases. They were instead basic and were obvious to anyone who could read the source code. I argued that simple and obvious was okay. 

{% include ads.html %}

Engineers were also hesitant to approve any code that hadn't been tested and run in a compiled system. While this sounds easy for a REST API, it wasn't for these APIs, which were gRPC APIs that must be compiled in an app running on a specific build of Android, and also fed certain input data. I quickly saw that getting the samples approved would require me to build my own sample app compiled on a system running Android &mdash; yikes, this could take me a while to figure out. Now I was the one who didn't have bandwidth for this.

Overall, the scenario prompted me to rethink my approach toward code samples. Did we actually need them? In fact, no partner had requested the code samples. I was just providing them as a best practice for API documentation. Because of this, I decided that, in the future, I would only provide code samples when partners specifically requested them. And I would assign the ticket directly to engineering teams rather than trying to be a middleman.

What's been your experience with code samples? Do you find your users still request them and need them, or are they becoming more of a relic of a former state of API documentation?

