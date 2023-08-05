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

{% include coffeeshopbook.html %}

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

<div class="chat">
<p>The following is a list of guidelines for writing tasks. These guidelines
provide tips and best practices to follow. Condense this information into
a brief, concise set of rules that an AI prompt can follow. Make the statement
of the rules machine friendly and oriented.</p>
<p>&lt;PASTE IN TASK GUIDELINES FROM ABOUT-HOW-TO.MD&gt;</p>
</div>

The result might look like this:

<div class="response">
<p>Rules for tasks:</p>
<ul>
<li>Single Task Focus: One guide equals one task.</li>
<li>Advanced Users: Guides cater to advanced users, not beginners.</li>
<li>No Concept Teaching: Guides should not explain concepts.</li>
<li>Clear Step Sequences: Provide ordered, straightforward steps.</li>
<li>Unexpected Scenarios Alert: Inform about possible error scenarios.</li>
<li>Avoid Over-Documentation: Document the most common or recommended task completion method only.</li>
<li>Ensure Accuracy: Test and confirm the technical accuracy of instructions.</li>
<li>Simplicity and Brevity: Limit each guide to 8-10 steps.</li>
<li>Prerequisites: Specify required knowledge, tools, and setups.</li>
<li>Regular Updates: Re-test instructions post product updates for continued accuracy.</li>
</ul>
</div>

You could also do more or less the same thing from the [DITA Task topic](https://www.oxygenxml.com/dita/1.3/specs/archSpec/technicalContent/dita-task-topic.html). For example, following a similar process as above, here's how the AI language model rendered these rules:

<div class="response">
    <p>Rules for tasks:</p>
    <ul>
        <li>Ensure document type compliance with the latest standards.</li>
        <li>Answer "How do I?" with clear step-by-step instructions.</li>
        <li>Use distinct sections for prerequisites, context, steps, results, troubleshooting,</li>
        <li>examples, and follow-up tasks.</li>
        <li>Keep prerequisites succinct and clear.</li>
        <li>Provide brief but helpful context for the task.</li>
        <li>Make steps sequential, logical, and easy to follow.</li>
        <li>Detail specific actions for each step and optionally include additional information.</li>
        <li>Clearly state the expected outcome in the results section.</li>
        <li>Provide solutions in the troubleshooting section when expected results may not be met.</li>
        <li>Support tasks with relevant examples.</li>
        <li>Guide users to the next steps or tasks after task completion.</li>
    </ul>
</div>


If you don't have a list of rules or template for a particular topic type, find a good example in documentation and reverse engineer it through the AI model. For example, you might say:

<div class="chat">
<p>Analyze the following software documentation text and identify core features
which will allow further documents to imitate the same style, consistency,
and formatting as the document below:</p>
<p>&lt;INSERT DOCUMENTATION SAMPLE&gt;</p>
</div>

For the documentation sample, pick out a task from good documentation, such as this [Update existing subscriptions task from Stripe](https://stripe.com/docs/tax/subscriptions/update). (Copy only part of the task due to token limits.)

The AI response might be too detailed. Trim it down with a prompt such as the following:

<div class="chat">
<p>Make the list more concise and machine oriented, as it will be fed as instructions
to an AI language model for processing data.</p>
</div>

Here's what I ended up with following this reverse-engineering approach: 

<div class="response">
<p>Rules for tasks:</p>
<ul>
<li>Headers: Use informative and concise headers for each section.</li>
<li>Ordered Steps: Present instructions in a clear, sequential order.</li>
<li>Nested Instructions: Include detailed sub-steps within high-level steps.</li>
<li>Direct Addressing: Use direct speech, addressing the reader as "you".</li>
<li>Definitions: Provide explanations and definitions for key terms.</li>
<li>Tabular Data: Use tables for conveying key information.</li>
<li>Links: Incorporate cross-references and links to related content.</li>
<li>Bold Formatting: Highlight important sections or actions using bold format.</li>
<li>Standardized Phrasing: Maintain consistent phrasing for similar steps.</li>
<li>Logical Structure: Arrange content in a logical flow from introduction, body to conclusion.</li>
</ul>
</div>

For fun, I also asked ChatGPT to merge the three lists of rules. Here's the outcome: 

<div class="response">
<p>Rules for writing tasks:</p>
<ul>
<li>Single Task Focus: One guide per task.</li>
<li>Sequential Steps: Order steps logically with clear actions.</li>
<li>Headers and Structure: Use concise headers, organize content logically: introduction, body, conclusion.</li>
<li>Definitions and Context: Include key term definitions and task context.</li>
<li>Prerequisites: Specify necessary knowledge, tools, and setups concisely.</li>
<li>Outcome and Troubleshooting: State expected outcome, provide troubleshooting solutions.</li>
<li>Formatting and Cross-References: Highlight important sections, incorporate related links.</li>
<li>Unexpected Scenarios: Alert about possible error scenarios.</li>
<li>Accuracy and Updates: Ensure and maintain instruction accuracy, update post product changes.</li>
<li>Simplicity and Brevity: Keep guides to 8-10 steps, avoid over-documenting, focus on common/recommended methods.</li>
</ul>
</div>

Seems pretty good to me. Note that you don't want to be too wordy with the rules because you have limited tokens to pass. The more tokens the rules occupy, the less text you can process. Also, there's a balance between providing too little or too much information&mdash;both extremes can lead to poorer results.

{% include random_ad3.html %}

### 3. Create a template

The Good Docs Template Suite also has a template that accompanies each topic type (for the how-to, it's `template-how-to.md`). Copy this template into the following prompt to your AI language model:

<div class="chat">
<p>From the following task template, strip this down into a template for
an AI language model to follow as a pattern:</p>
<p>&lt;PASTE IN TASK TEMPLATE&gt;</p>
</div>

Here's a sample response:

<div class="response">
    <p>Task template:</p>
    <p>Title: "{Insert Brief Description of Task}"</p>
    <p>Overview: "This guide explains how to {insert a brief description of the task}."</p>
    <p>Before you start: (Optional) "Before you {insert brief description of task}, ensure: Prerequisite 1, Prerequisite 2, Prerequisite 3."</p>
    <p>Task: "{Task Name}"</p>
    <p>* {Optional description of the task.}</p>
    <p>Steps:</p>
    <ol>
        <li>{Write the first step here. Start with a verb.}</li>
        <li>{Write the second step here. Start with a verb.}
            <ol>
                <li>{Substep 1}</li>
                <li>{Substep 2}</li>
            </ol>
        </li>
    </ol>
    <p>Sub-task: (Optional, if the task is big and complex)</p>
    <p>See also: (Optional) {Include references to other related guides or information.}</p>
</div>

Here's a similar template rendered from the [DITA Task topic](https://www.oxygenxml.com/dita/1.3/specs/archSpec/technicalContent/dita-task-topic.html). (It took a little more massaging to get rid of the angle brackets and technical emphasis.) 

<div class="response">
    <p>Task ID: {task_id}</p>
    <p>Task Title: {task_title}</p>
    <p>Task Body:</p>
    <p>Context: {context}</p>
    <p>Prerequisite: {prerequisite}</p>
    <p>Steps:</p>
    <ul>
        <li>Step 1: {step_1}</li>
        <li>Step 2: {step_2}</li>
        <li>Step 3: {step_3}</li>
        <li>Step 4: {step_4}</li>
    </ul> <!-- Corrected closing tag -->
    <p>Result: {result}</p>
    <p>Example: {example}</p>
</div>


Coming up with these rules and templates shouldn't be too hard. The [Good Docs Project](https://thegooddocsproject.dev), DITA OASIS committees, style guides, and other groups have been meeting for years to come up with the rules and templates for technical writing. Plus, you have all the best practices listed in my API doc course (for example, see the [Conceptual documentation section](docconceptual.html)). Now all this hard work can be used to teach machines how to write documentation.

{% include random_ad4.html %}

### 4. Assemble the instruction for the AI

In this step, you'll pass information into an AI, such as ChatGPT, Bard, Claude, Poe, or another language model. (If you don't want to use ChatGPT or Bard, here's a long list of [alternatives](https://writesonic.com/blog/chatgpt-alternatives/).) 

{: .note}
If you company prohibits you from pasting internal content into third-party AI models like this, you might run into a roadblock here.

With your set of rules and template, apply it to the unstructured content in a prompt like this:

<div class="chat">
<p>INPUT:</p>
<p>You are a technical writer creating documentation, specifically a task.
You follow a list of rules and arrange information into a given template.</p>
<p>Rules: Here are the rules for writing tasks:</p>
<p>&lt;INSERT RULES&gt;</p>
<p>Template: Here is the template for writing tasks:</p>
<p>&lt;INSERT TEMPLATE&gt;</p>
<p>Make the following content fit into the task template above:</p>
<p>&lt;INSERT UNSTRUCTURED CONTENT&gt;</p>
</div>

And voila! You should have a draft of documentation ready to review and add to your documentation project. It won't be perfect, but it will probably be 70% there.

{% include image_ad_right.html %}

## Demo

To demo this process, let's say you're creating documentation about how to make a basic call with the OpenWeatherMap API (an API I've used elsewhere in this course). You gathered the info about making a basic call [here in this Google Doc](https://docs.google.com/document/d/1F8e0U4EUuKoXO2rhjhII5mknnTSVe7_W64dPZJYSsfE/edit). The information is just pasted in randomly without much shape or form.

For this task, I used ChatGPT 4.0. You can [see the response here](https://chat.openai.com/share/2b317b7e-dc67-4906-9144-dcbc0f10d60e). I also pasted it into [Bard](https://bard.google.com/) and received a similar response (but Bard doesn't offer an easy way to share the link to the output).

In looking at the output, I can see that the template might need to be modified in some ways. Also, this how-to task might not be as applicable to API documentation as other types of documentation. That said, the AI language models do a nice job of taking content and fitting into the shape and feel of documentation. Overall, this approach feels like the right way to do AI document engineering. The next steps might be to create rules and templates for all the documentation types listed above, providing them as a ready-made toolkit for writing documentation.

{% include random_ad2.html %}

## Conclusion

For each of the topic types, you can assemble a set of rules and a template that you can easily pass into your AI language model. You could even store your set of prompts in a [prompt manager extension](https://chrome.google.com/webstore/detail/chatgpt-prompt-manager/fpgdhccnlfjokogfeacdpaepkebekmih), though I imagine storing them in a Google doc would be easier to update and maintain. Using this approach, your content will follow a more predictable format and structure. Theoretically, you could write the documentation for your project in half the time. 

Of course, due to the high degree of errors from AI models, you should review all the documentation with subject matter experts. Recognize the language models have an uncanny ability for sounding correct and authoritative when they are lying.

Like I said in my disclaimer above, this is a method I'm still experimenting with. I won't know how well it all works until I've been able to run an actual project through the process. 
