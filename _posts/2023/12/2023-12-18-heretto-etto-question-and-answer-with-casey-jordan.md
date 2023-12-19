---
title: "Etto, a new AI co-pilot for Heretto — Q&A with Casey Jordan"
permalink: /blog/heretto-etto-question-and-answer-with-casey-jordan
date: 2023-12-18
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/heretto-etto-question-and-answer-with-casey-jordan
description: "Etto is a new AI copilot from Heretto designed to help content authors harness the power of structured content more easily. In this Q&A, <a href='https://www.linkedin.com/in/caseydjordan/'>Casey Jordan</a>, co-founder of Heretto, explains how Etto can reduce the complexity of XML authoring through guidance, content analysis and updates, refactoring, and other automations. Etto is focused specifically on structured content tasks and works collaboratively within documents so changes show up as track changes, like a human co-author. This allows for a conversational workflow. Unlike some competitor tools that rely on OpenAI, Etto's models remain completely within Heretto's platform for security and privacy. (Note: This is a sponsored post.)"
image: ettothumbnail.png
---

**[Tom] Can you tell us a little about Etto and why you developed it?**

**[Casey]** Etto is a new generative AI Copilot created by Heretto. We created Etto for two main reasons: first, to allow more users to harness the power of structured content and, secondly, to accelerate how quickly users can realize and multiply those benefits. Etto is a powerful tool that can significantly reduce the learning curve of structured content and maximize the productivity of existing users. 

**[Tom] What larger problems are you hoping Etto solves? Will this tool potentially reduce the complexity of XML authoring?**

**[Casey]** The benefits of structured content are immense but you're right that its complexity can often be daunting, especially for new users. Initially, we're hoping to vastly reduce the learning curve of structured content and reduce the complexity of creating and updating structured content. Etto can help with this by analyzing content and providing guidance as well as automating many common but time-consuming tasks, such as semantically enriching, converting or refactoring content.

**[Tom] The documentation says Etto can do the following:**

* **Etto can help users create new content; such as write a short description based on document content or build out initial content based on a ticket**
* **Etto can improve and update content, for instance adjust tone, simplify or make content more consistent**
* **Etto can refactor content such as converting paragraphs into lists, lists into tables and intelligently merging content**
* **Etto can provide guidance, for instance advising on best practices as well as helping to identify inconsistencies in the data or structure of content**

**Why did you choose to start with these tasks? Is it because they rely on existing content provided in the input source?**

**[Casey]** Etto can provide guidance and best practices for authors while they are working with structured content and can help with many tasks such as creating, improving/updating, refactoring and converting content. We started with these tasks based on feedback from both new and expert users and chose a set that we felt was approachable from a machine learning perspective. 


<figure><a href="https://go.heretto.com/etto-waitlist?utm_medium=3rd-party&utm_source=idratherbewriting&utm_campaign=q423-etto&utm_content=interview&utm_term=" class="noCrossRef"><img style="max-width: 800px; border:1px solid gray;" src="{{site.media}}/heretto-etto-screen1.png" alt="Etto inserting short description" /></a><figcaption>Etto generates and inserts a short description based on the content written by the author</figcaption></figure>

Since Etto is conversational, the user can also work through more sophisticated tasks like analyzing content and then discussing solutions with Etto and ultimately updating the content. This is really useful especially if, as a writer, you are updating a document that you have not worked on previously and want to make sure your edits are consistent with other information presented.

<figure><a href="https://go.heretto.com/etto-waitlist?utm_medium=3rd-party&utm_source=idratherbewriting&utm_campaign=q423-etto&utm_content=interview&utm_term=" class="noCrossRef"><img style="max-width: 800px; border:1px solid gray;" src="{{site.media}}/heretto-etto-screen2.png" alt="Etto performing content analysis" /></a><figcaption>Etto performs complex content analysis, identifies inconsistencies and recommends solutions</figcaption></figure>

We also evaluated having Etto automate many tasks within our CCMS such as auto classification and recommendation, automatically reviewing content and raising potential issues for evaluation, converting content, helping move content through workflows and providing a layer of automated governance over the entire document lifecycle from authoring to publication. These are just a few examples of many, and Etto has been designed to be able to handle these tasks in the future. Authoring is just where we started based on the most pressing needs in the market.

**[Tom] How does Etto compare with OxygenXML's Positron Assistant or the Madbot AI plugin? What makes Etto unique from these other AI assistants?**

**[Casey]** I think both of these tools offer a lot of value, especially for users who are familiar with using ChatGPT and want more integrated access. At Heretto, we really wanted Etto to feel like an expert you were collaborating on a document with and less like an embedding of a generative AI chat within our app. So we spent a lot of time training Etto to do specific tasks and allowing Etto to work within the same document, so the user can feel as if they are collaborating with a colleague. When you ask Etto to update your document, they appear as tracked changes just as if you had asked a colleague to do the same task. I think this is more approachable and efficient for users. Another big difference is the level of control we have over the AI security and governance process for Etto.

**[Tom] How does Etto work? Does Etto pass the content to OpenAI APIs? If so, which API, and can users customize the API version? Is Etto a wrapper around OpenAI?**

**[Casey]** Etto is a multi-modal LLM that is entirely within Herettos infrastructure so your content and conversations with Etto are never leaving our platform and are not going out to something like OpenAI API's. It's designed to understand how to delegate tasks based on context so we can expand to other tasks outside of structured authoring. It was very important to us when creating Etto that we had very clear control over security, governance and data privacy. Etto is not currently customizable by the end user but our approach to creating Etto leaves a lot of room for future options around customization from as simple as prompt design and providing training samples to even allow customers to plug in their own models for specific tasks and Etto could intelligently delegate to them.

**[Tom] What additional context does Etto pass to the API? For example, are there XML-specific instructions provided?**

**[Casey]** Depending on the task Etto will receive various information about the users context, right now this is mostly information around the current document being worked on, cursor location, link information, validation errors and some semantic guidance. Etto also is designed to have the future capability of requesting additional information if needed. This can come from sources within Heretto such as other documents, workflow or assignment information. In this scenario,  a user might ask "what document might need to be updated after my changes?" and Etto could retrieve additional information about linked or referencing documents to evaluate that request. This could also be extended to external API's that the customer has configured. For instance a user might ask "what needs to be changed based on jira ticket 8945" and Etto could go retrieve information about that ticket and evaluate it with the user's request. 

**[Tom] How do you account for potential changes to the model that alter how Etto responds to scenarios you've already developed and tested?**

**[Casey]** This is a good question and can be challenging but ultimately relies on good AI governance and QA process. We have a host of automated and manual tests that help us evaluate changes to Etto. And since we control Etto's models we also can implement our own governance processes and change control without worrying about a third party making changes under our feet.

**[Tom] What challenges did you face with AI hallucination in the responses, and how do you overcome them? How do you measure the accuracy of Etto's responses?**

**[Casey]** It's definitely a challenge giving any LLM enough flexibility to understand and accomplish a variety of tasks while also reducing or eliminating hallucinations. The best way we have found to strike this balance is to do a lot of testing and provide specific training examples to Etto when we find situations that don't match our expectations. We then memorialize this in a test to ensure we can measure accuracy going forward. One benefit in using structured content is that it is much easier to evaluate correctness based on best practices and existing rules. I wouldn't want the challenge of having to evaluate the correctness of general questions like "What's the best way to build a bridge?", "Should I trademark my product?", "Who was the greatest guitar player of all time" or "Should I use the oxford comma?" haha

**[Tom] Can users reply to the responses in a back-and-forth way, like a chatbot?**

**[Casey]** Yes, Etto is conversational. You can work through a question or a task with Etto and then, once satisfied, accept Etto's changes. One reason we choose this approach is that the responses from LLM's are significantly more accurate when you are concise and stay on one topic at a time for a session. There were a number of very interesting studies published by researchers at UC Berkeley that had a big impact on how we choose to design and implement Etto.

**[Tom] Is privacy an issue for users? Are there concerns that their conversations will end up training OpenAI's LLMs?**

**[Casey]** That is not an issue with Etto as we don't use OpenAI's systems and we don't use any customer content or conversations to train Etto. In the future, we may provide customers the ability to have their own customized and trained version of Etto. In that case, they will be the only ones with access to that version of Etto and have security controls over what is used to train Etto, as well as the ability to remove data from their Etto model.

**[Tom] What does the Etto roadmap look like? How do you decide which features to prioritize?**

**[Casey]** Right now we are focusing on continuing to refine Etto's ability to help authors, in the future we plan to extend this so that Etto can analyze and create larger document sets, provide insight into how topics are related and where there may be potential for re-use. Eventually we hope to make Etto an end to end co-pilot that can help with everything from initial content conversion, review, workflow, personalization, publishing/deployment. We have also been looking into giving Etto analytics on how end users are using and consuming content to super charge every part of this process. 

Heretto is a very product-driven organization so we prioritize based on a matrix of customer centric criteria to help us make the best choices. Spending a lot of time with our customers, learning how they use our product and what needs they have is ultimately the biggest factor in prioritization. 

**[Tom] How can users try out Etto? Is there a planned release date?**

**[Casey]** Etto is currently in private beta and users can sign up [here](https://go.heretto.com/etto-waitlist?utm_medium=3rd-party&utm_source=idratherbewriting&utm_campaign=q423-etto&utm_content=interview&utm_term=). We will be rolling Etto out to groups of beta testers through the end of the year and plan on a full release early in 2024.
