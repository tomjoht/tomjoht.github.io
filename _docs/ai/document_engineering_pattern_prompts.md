---
title:  "AI document engineering with pattern-based prompts"
permalink: learnapidoc/docapis_pattern_prompts.html
keywords:
course: "Documenting REST APIs"
weight: 14.2
sidebar: docapis
section: docapisai
path1: learnapidoc/ai.html
last-modified: 2023-07-06
---

{: .disclaimer}
This section is mostly experimental. I'm not an expert in prompt engineering and am only trying to apply some basic concepts to technical writing scenarios. I haven't tested this approach extensively because language models aren't available for me to use with the confidential documentation that I work on all day at work. However, I think the approach I describe here is how technical writers might use AI language models to write documentation in the future. The approach could significantly speed up documentation development. I will likely refine this content over time.

## Using patterns in prompts

Pattern prompting involves teaching the AI a specific structure or template, then having it populate information into that template. Pattern prompts are similar to few-shot prompts, but in this case, rather than having the language model populate the template with its own information, we'll have it sort and structure a mess of information into the template, thus reducing hallucination and error. 

Pattern prompts are among the most interesting strategies for making requests with language models; this is really where the "engineering" aspect of prompting comes into play. In this case, it's the practice of AI document engineering. By constructing prompts into patterns for the AI to complete, or templates to populate, you'll see the true power of language models emerge. Change your prompt into rules and a template for language models to populate, and the responses will be much better than open-ended questions.

The following sections describe a four step process for AI document engineering. These process involves the following steps: 1. Gather the information, 2. Create rules, 3. Create templates, and 4. Assemble the information into a prompt.

* TOC
{:toc}

To use a pattern prompt, follow these sections.

### 1. Gather the information

First, gather a lot of information about the API you're documenting. This information will provide the unstructured information that will be shaped by the template. Usually, when you're writing documentation, this information exists in myriad internal documents, scattered across internal sites, written by engineers and program managers, stuffed into engineering designs, project plans, analysis documents, and more. Gather up as much of the information as you can and make a list of the documents.

As you read through the documents, sort the relevant information into different buckets based on topic types. For example, group the information into the following different buckets:

* Product overview
* Troubleshooting
* Authorization
* Best practices
* Reference
* Installation
* Architecture
* Workflows
* Tasks
* Quick start tutorial
* Conceptual explanation
* Release notes
* Rate limiting
* Status and error codes
* Glossary

Consider this task the equivalent of sorting laundry. Put each type of clothing into its own pile&mdash;socks, underwear, pants, shirts, etc. For now, just throw everything into distinct buckets, unstructured and chaotic. 

Because of token limits, each bucket should be relatively short. If you're working with ChatGPT 4.0, consider a max of about 700 words or so. For ChatGPT 3.5, you can use the higher token limit, but the response might not be as good. 

{: note}
Admittedly, if you don't have any of this information, the auto-generation of content isn't going to work. I mean, you could still try, but without providing more context to the language model, chances are the model will end up hallucinating or predicting what it thinks the content should/could/might be. You might need to spend a lot of time gathering and reading through this information.

{% include ads.html %}

### 2. Create rules for the topic type

Now we need to create some rules for the AI language model to follow. To create the rules, you can leverage information resources such as the [Template Suite](https://thegooddocsproject.dev) from the Good Docs project, or information from my API course, or from DITA. Create a list of brief rules for each topic type, and then a template. 

The Template Suite from Good Docs makes this easy. For example, suppose you want to construct a task template. From the Template Suite, open the "how-to" and see the `about-how-to.md` topic. 

<a href="https://thegooddocsproject.dev" class="noCrossRef" ><img src="{{site.api_media}}/gooddocshowtotemplate.png" style="max-width: 350px" alt="Good Docs Template Suite" /></a>

Paste it into an AI language model with the following prompt:

```text
The following is a list of guidelines for writing tasks. These guidelines
provide tips and best practices to follow. Condense this information into
a brief, concise set of rules that an AI prompt can follow. Make the statement
of the rules machine friendly and oriented.
 
<PASTE IN TASK GUIDELINES FROM ABOUT-HOW-TO.MD>
```

The result might look like this:

> Rules for tasks:
> 
> * Single Task Focus: One guide equals one task.
> * Advanced Users: Guides cater to advanced users, not beginners.
> * No Concept Teaching: Guides should not explain concepts.
> * Clear Step Sequences: Provide ordered, straightforward steps.
> * Unexpected Scenarios Alert: Inform about possible error scenarios.
> * Avoid Over-Documentation: Document the most common or recommended task completion method only.
> * Ensure Accuracy: Test and confirm the technical accuracy of instructions.
> * Simplicity and Brevity: Limit each guide to 8-10 steps.
> * Prerequisites: Specify required knowledge, tools, and setups.
> * Regular Updates: Re-test instructions post product updates for continued accuracy.

You could also do more or less the same thing from the [DITA Task topic](https://www.oxygenxml.com/dita/1.3/specs/archSpec/technicalContent/dita-task-topic.html). For example, following a similar process as above, here's how the AI language model rendered these rules:

> Rules for tasks:
> * Ensure document type compliance with the latest standards.
> * Answer "How do I?" with clear step-by-step instructions.
> * Use distinct sections for prerequisites, context, steps, results, troubleshooting, examples, and follow-up tasks.
> * Keep prerequisites succinct and clear.
> * Provide brief but helpful context for the task.
> * Make steps sequential, logical, and easy to follow.
> * Detail specific actions for each step and optionally include additional information.
> * Clearly state the expected outcome in the results section.
> * Provide solutions in the troubleshooting section when expected results may not be met.
> * Support tasks with relevant examples.
> * Guide users to the next steps or tasks after task completion.

If you don't have a list of rules or template for a particular topic type, find a good example in documentation and reverse engineer it through the AI model. For example, you might say:

```
Analyze the following software documentation text and identify core features
which will allow further documents to imitate the same style, consistency,
and formatting as the document below:

<INSERT DOCUMENTATION SAMPLE>
```

For the documentation sample, pick out a task from good documentation, such as this [Update existing subscriptions task from Stripe](https://stripe.com/docs/tax/subscriptions/update). (Copy only part of the task due to token limits.)

The AI response might be too detailed. Trim it down with a prompt such as the following:

```
Make the list more concise and machine oriented, as it will be fed as instructions
to an AI language model for processing data.
```

Here's what I ended up with following this reverse-engineering approach: 

> Rules for tasks:
> * Headers: Use informative and concise headers for each section.
> * Ordered Steps: Present instructions in a clear, sequential order.
> * Nested Instructions: Include detailed sub-steps within high-level steps.
> * Direct Addressing: Use direct speech, addressing the reader as "you".
> * Definitions: Provide explanations and definitions for key terms.
> * Tabular Data: Use tables for conveying key information.
> * Links: Incorporate cross-references and links to related content.
> * Bold Formatting: Highlight important sections or actions using bold format.
> * Standardized Phrasing: Maintain consistent phrasing for similar steps.
> * Logical Structure: Arrange content in a logical flow from introduction, body to conclusion.

For fun, I also asked ChatGPT to merge the three lists of rules. Here's the outcome: 

> Rules for writing tasks:
> * Single Task Focus: One guide per task.
> * Sequential Steps: Order steps logically with clear actions.
> * Headers and Structure: Use concise headers, organize content logically: introduction, body, conclusion.
> * Definitions and Context: Include key term definitions and task context.
> * Prerequisites: Specify necessary knowledge, tools, and setups concisely.
> * Outcome and Troubleshooting: State expected outcome, provide troubleshooting solutions.
> * Formatting and Cross-References: Highlight important sections, incorporate related links.
> * Unexpected Scenarios: Alert about possible error scenarios.
> * Accuracy and Updates: Ensure and maintain instruction accuracy, update post product changes.
> * Simplicity and Brevity: Keep guides to 8-10 steps, avoid over-documenting, focus on common/recommended methods.

Seems pretty good to me. Note that you don't want to be too wordy with the rules because you have limited tokens to pass. The more tokens the rules occupy, the less text you can process. Also, there's a balance between providing too little or too much information&mdash;both extremes can lead to poorer results.

{% include random_ad3.html %}

### 3. Create a template

The Good Docs Template Suite also has a template that accompanies each topic type (for the how-to, it's `template-how-to.md`). Copy this template into the following prompt to your AI language model:

```
From the following task template, strip this down into a template for
an AI language model to follow as a pattern:

<PASTE IN TASK TEMPLATE>
```

Here's a sample response:

> Task template:
> 
> Title: "{Insert Brief Description of Task}"
> 
> Overview: "This guide explains how to {insert a brief description of the task}."
> 
> Before you start: (Optional) "Before you {insert brief description of task}, ensure: Prerequisite 1, Prerequisite 2, Prerequisite 3."
> 
> Task: "{Task Name}"
> 
> * {Optional description of the task.}
> 
> Steps:
> 
>  * "1. {Write the first step here. Start with a verb.}"
>  * "2. {Write the second step here. Start with a verb.}"
>     * "2.1. {Substep 1}"
>     * "2.2. {Substep 2}"
> 
> Sub-task: (Optional, if the task is big and complex)
> 
> See also: (Optional) "Include references to other related guides or information."

Here's a similar template rendered from the [DITA Task topic](https://www.oxygenxml.com/dita/1.3/specs/archSpec/technicalContent/dita-task-topic.html). (It took a little more massaging to get rid of the angle brackets and technical emphasis.) 

> Task ID: {task_id}
> 
> Task Title: {task_title}
> 
> Task Body:
>
> Context: {context}
>
> Prerequisite: {prerequisite}
>
> Steps:
> - Step 1: {step_1}
> - Step 2: {step_2}
> - Step 3: {step_3}
> - Step 4: {step_4}
>
> Result: {result}
> 
> Example: {example}

Coming up with these rules and templates shouldn't be too hard. The [Good Docs Project](https://thegooddocsproject.dev/), DITA OASIS committees, style guides, and other groups have been meeting for years to come up with the rules and templates for technical writing. Plus, you have all the best practices listed in my API doc course (for example, see the [Conceptual documentation section](docconceptual.html)). Now all this hard work can be used to teach machines how to write documentation.

{% include random_ad4.html %}

### 4. Assemble the instruction for the AI

In this step, you'll pass information into an AI, such as ChatGPT, Bard, Claude, Poe, or another language model. (If you don't want to use ChatGPT or Bard, here's a long list of [alternatives](https://writesonic.com/blog/chatgpt-alternatives/).) 

{: .note}
If you company prohibits you from pasting internal content into third-party AI models like this, you might run into a roadblock here.

With your set of rules and template, apply it to the unstructured content in a prompt like this:

```
INPUT:

You are a technical writer creating documentation, specifically a task.
You follow a list of rules and arrange information into a given template. 
 
Rules: Here are the rules for writing tasks:

<INSERT RULES>

Template: Here is the template for writing tasks:

<INSERT TEMPLATE>
 
Make the following content fit into the task template above:
 
<INSERT UNSTRUCTURED CONTENT>
```

And voila! You should have a draft of documentation ready to review and add to your documentation project. It won't be perfect, but it will probably be 70% there.

## Demo

To demo this process, let's say you're creating documentation about how to make a basic call with the OpenWeatherMap API (an API I've used elsewhere in this course). You gathered the info about making a basic call [here in this Google Doc](https://docs.google.com/document/d/1F8e0U4EUuKoXO2rhjhII5mknnTSVe7_W64dPZJYSsfE/edit). The information is just pasted in randomly without much shape or form.

For this task, I used ChatGPT 4.0. You can [see the response here](https://chat.openai.com/share/2b317b7e-dc67-4906-9144-dcbc0f10d60e). I also pasted it into [Bard](https://bard.google.com/) and received a similar response (but Bard doesn't offer an easy way to share the link to the output).

In looking at the output, I can see that the template might need to be modified in some ways. Also, this how-to task might not be as applicable to API documentation as other types of documentation. That said, the AI language models do a nice job of taking content and fitting into the shape and feel of documentation. Overall, this approach feels like the right way to do AI document engineering. The next steps might be to create rules and templates for all the documentation types listed above, providing them as a ready-made toolkit for writing documentation.

{% include random_ad2.html %}

## Conclusion

For each of the topic types, you can assemble a set of rules and a template that you can easily pass into your AI language model. You could even store your set of prompts in a [prompt manager extension](https://chrome.google.com/webstore/detail/chatgpt-prompt-manager/fpgdhccnlfjokogfeacdpaepkebekmih), though I imagine storing them in a Google doc would be easier to update and maintain. Using this approach, your content will follow a more predictable format and structure. Theoretically, you could write the documentation for your project in half the time. 

Of course, due to the high degree of errors from AI models, you should review all the documentation with subject matter experts. Recognize the language models have an uncanny ability for sounding correct and authoritative when they are lying.

Like I said in my disclaimer above, this is a method I'm still experimenting with. I won't know how well it all works until I've been able to run an actual project through the process. 
