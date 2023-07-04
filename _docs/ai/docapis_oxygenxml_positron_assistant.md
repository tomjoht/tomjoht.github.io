---
title:  "First look at the Oxygen XML AI Positron Assistant"
permalink: learnapidoc/docapis_oxygenxml_positron_assistant.html
keywords:
course: "Documenting REST APIs"
weight: 14.1
sidebar: docapis
section: docapisai
path1: learnapidoc/ai.html
last-modified: 2023-07-04
---

The Oxygen XML Positron Assistant lets you use AI tools inside Oxygen XML to help with a variety of writing tasks, such as writing short description elements, correcting grammar, improving readability, adding index terms, and more. Positron hooks into an AI provider (currently ChatGPT 3.5) to pass your topic content to the AI with a specific instruction. It then returns the content and allows you to preview the diff, seeing what has changed and inserting the modified text in place. By integrating directly with your project, Positron helps you use AI when and where you need it, without switching contexts or resorting to external tools.

In this post, I'll explain what Positron can do, how it works, and include my thoughts and analysis along the way. This is a sponsored post, but I'll still include my own perspective about the uses of Positron and, more generally, AI. For Positron documentation, see [Oxygen AI Positron Assistant Add-on](https://blog.oxygenxml.com/topics/ai_positron.html).

* TOC
{:toc}

## Level-setting expectations

When ChatGPT first launched, many thought roles like technical writer would soon be extinct because ChatGPT could simply write the documentation. What strengthened this perception was the lack of sources for ChatGPT responses. It seemed like ChatGPT was an uber-intelligent machine that had learned all human knowledge and could render it in an infinite variety of ways.

The enthusiasm around AI-generated content has cooled off as some realizations have settled in. If ChatGPT doesn't have good sources, its responses are poor. For websites that have trained AI on pages within their site only, if those sites lack strong content, the bots routinely come up empty handed. AI tools don't invent content from thin air. If you try to use ChatGPT to write your documentation for you, without feeding it informative, accurate content, you end up with made-up, cliche, pseudo-explanatory content.

The more I work with AI, the more I think that raw content generation isn't the best use of these tools. Instead, AI tools work better when you feed it some content and ask it to perform a specific task, such as correcting grammar, extracting index terms, or structuring the content into a specific pattern/format. For example, instead of generating entire sections from scratch, ask AI to rewrite a few confusing sentences.

Positron gives you tools for this more surgical approach to content development. While Positron is already built with the most common prompts for ChatGPT, you can also extend it with your own. What I like best about Positron is that it provides a diff of the response, letting you see what ChatGPT changed. You can accept the response entirely or pick and choose what you want to accept. The diff tool is actually my favorite feature in Positron!

## Get started

To get started with Positron, see the "[Manual Installation](https://blog.oxygenxml.com/topics/ai_positron.html#ai_positron__section_kgh_fzg_rsb)" section in the Positron documentation. After activating the extension, an AI menu appears at the top. From the AI menu, select **Show Positron Assistant**.

<figure><img style="border: 1px solid #dedede"  src="{{site.api_media}}/positronpanelsb.png" alt="The AI menu appears after you activate the AI Positron Assistant" /><figcaption>The AI menu appears after you activate the AI Positron Assistant</figcaption></figure>

An "AI Positron Assistant" pane appears on the left with buttons for quick actions. On the right, an "AI Positron Chat" pane shows ChatGPT's responses.

## Sample workflow

The general workflow with Positron involves selecting text, then clicking an action button in the AI Positron Assistant pane. For example, suppose you're trying to explain a confusing concept. In this scenario, pretend you're a tech writer for OpenAI explaining the concept of "embeddings." You asked engineers what an embedding is, but their response was confusing. They wrote,

> An embedding is a vector representation of a piece of data (e.g. some text) that is meant to preserve aspects of its content and/or its meaning. Chunks of data that are similar in some way will tend to have embeddings that are closer together than unrelated data. OpenAI offers text embedding models that take as input a text string and produce as output an embedding vectn, classification, and more.

(Note: I just pulled this paragraph randomly from the OpenAI documentation [here](https://platform.openai.com/docs/introduction/key-concepts).)

Dissatisfied with the definition's clarity, you select the text and click **Improve Readability** in the AI Positron Assistant pane**:**

<figure><img style="border: 1px solid #dedede"  src="{{site.api_media}}/positronreadabilityb.png" alt="The general workflow with Positron" /><figcaption>The general workflow with Positron is to select text, then choose an action in the left AI Positron Assistant pane</figcaption></figure>

The AI-generated response appears in the right pane. In this example, there don't seem to be many changes. To see a diff of what changed, click the **Preview** link below the modified text. This launches the diff editor, showing the changes:

<figure><img style="border: 1px solid #dedede"  src="{{site.api_media}}/positrondiffeditorb.png" alt="The diff editor" /><figcaption>The diff editor lets you preview what changed in the text Positron modified</figcaption></figure>

The diff shows all the language changes. You can see the AI adjusted more text than it initially seemed. I LOVE the diff preview! 

But this AI modified text isn't that helpful. You still don't have a clear sense of what an "embedding" is. The problem wasn't with poor wording but rather inadequate explanation. You could go back to the engineers for more details, but you don't want to look slow.

You decide to further refine the AI prompt. In the right pane, you add this instruction: "provide a couple of concrete examples to clarify the concept." 

<figure><img style="border: 1px solid #dedede"  src="{{site.api_media}}/positronrefiningtheexampleb.png" alt="Refining the AI prompt" /><figcaption>Refining the AI prompt</figcaption></figure>

In fact, you like this "provide examples" trick so much that you want to save it for future prompts. You click the blue-outlined star icon below this panel and add this modification to your favorites. Now you can easily insert this refinement without retyping it.

<figure><img style="max-width: 600px; border: 1px solid #dedede" src="{{site.api_media}}/positronaddtofavorites.png" alt="Adding custom prompts to favorites" /><figcaption>You can add your own prompts to a list of favorites</figcaption></figure>

After adding and saving your favorite, click **Send**.

<figure><img style="border: 1px solid #dedede"  src="{{site.api_media}}/positronexamplesb.png" alt="Adding custom prompts to your Favorites" /><figcaption>Adding custom prompts to your Favorites</figcaption></figure>

The examples offer more clarity! As a tech writer, you know that providing examples is a secret to clarifying complex concepts, and you've been using this technique for years. Now you know how to tease clarity out of AI as well. _That's why you're a technical writer._

If you like the response, you can click **Replace** to insert the response in place of text you initially highlighted. In this case, because you're expanding on the concept with examples (not replacing the original), click **Copy** and manually insert it in the Text view (because the response already has DITA tags already).

This scenario provides you an idea of the workflow for using Positron. You haven't left your documentation project context, and you surgically selected parts of your existing documentation to improve. Of course, you'll want to review the AI-generated additions with the engineers, but even if they adjust the examples, you've already improved the document.

## Available action buttons

"Improving Readability" is just one action button. The Positron Assistant offers many more actions:

<figure><img style="border: 1px solid #dedede"  src="{{site.api_media}}/positronbuttonsb.png" alt="Positron quick actions buttons" /><figcaption>Positron includes more than a dozen quick actions</figcaption></figure>

Each button indicates its function when sending the prompt. For convenience, I copied the button prompts below and also included my own thoughts about their usefulness. Keep in mind, I've only briefly explored these buttons. They might be more useful for different scenarios.

### Content Generation buttons

<table>
  <tr>
   <th>
    <strong>Action</strong>
   </th>
   <th>
    <strong>Description</strong>
   </th>
   <th>
    <strong>Tom's thoughts on usefulness</strong>
   </th>
  </tr>
  <tr>
   <td><strong>New DITA Topic</strong>
   </td>
   <td>Generate a new DITA XML topic based on a text description entered in the popup dialog box.
   </td>
   <td>Very useful. Suppose you're pasting content from Google Docs into your project. This prompt automatically structures the content with the right DITA XML tags.
   </td>
  </tr>
  <tr>
   <td><strong>Continue Writing</strong>
   </td>
   <td>Generate additional text based on the content preceding the text cursor position.
   </td>
   <td>Not useful for me. This prompt puts the AI into content creation mode, so it will only predict what might come next. I haven't found a way to use this productively. ChatGPT isn't a fortune teller. Expect hallucination and creativity here. Might be useful if you have writer's block or something.
   </td>
  </tr>
  <tr>
   <td><strong>Short Description</strong>
   </td>
   <td>Generate a DITA XML &lt;shortdesc> element based on a summary of the selected text or on the entire document content and insert it in the document.
   </td>
   <td>Moderately useful. By providing the existing context, the AI is less likely to fabricate. If a request exceeds the 4k token limit, Positron automatically switches to a model that supports 16k tokens. (100 tokens is about 75 words. Keep in mind that the token limit includes both the input and response.)
   </td>
  </tr>
  <tr>
   <td><strong>Index Terms</strong>
   </td>
   <td>Generate a DITA XML &lt;keywords> element that contains index terms based on the selected text or on the entire document content and insert it in a &lt;prolog> element.
   </td>
   <td>Moderately useful. Indexing is one of those mundane publishing tasks no one likes to do, but we all know good search depends on index terms. 
   </td>
  </tr>
</table>

### Rewrite buttons

<table>
  <tr>
   <th>
    <strong>Action</strong>
   </th>
   <th>
    <strong>Description</strong>
   </th>
   <th>
    <strong>Tom's thoughts on usefulness</strong>
   </th>
  </tr>
  <tr>
   <td><strong>Correct Grammar</strong>
   </td>
   <td>Correct the grammar and spelling of the selected content.
   </td>
   <td>Very useful. We all want to avoid grammar mistakes and typos, right? This tool can potentially replace other grammar checkers. Especially when combined with the diff tool, you can see exactly what grammar changes Positron suggests. Again, the diff tool is worth its weight in gold. Otherwise, you have to compare the AI responses line by line or by copying/pasting the original and modified versions into external diff tools.
   </td>
  </tr>
  <tr>
   <td><strong>Improve Readability</strong>
   </td>
   <td>Generate additional text based on the content preceding the text cursor position.
   </td>
   <td>Moderately useful. Beyond the default responses, I improve readability by asking for clarifying examples and requesting an explanation that a second grader can understand.
   </td>
  </tr>
  <tr>
   <td><strong>Use Active Voice</strong>
   </td>
   <td>Convert the selected text into active voice.
   </td>
   <td>Moderately useful. I'm not sure why this grammar principle is singled out from Correct Grammar, but tech docs are easier to understand when there's a clear actor performing an action (active voice). Passive voice obfuscates meaning.
   </td>
  </tr>
  <tr>
   <td><strong>Itemize</strong>
   </td>
   <td>Convert the selected content into a summary and a list of items.
   </td>
   <td>Not useful for me. This command reformats a paragraph into a list, which makes it more scannable. I'm not sure how much I need AI for this. It might be more useful for SMEs writing documentation (who are often unfamiliar with list conventions in technical writing style).
   </td>
  </tr>
  <tr>
   <td><strong>Join Items</strong>
   </td>
   <td>Convert the selected list of items into a paragraph.
   </td>
   <td>Not useful for me. This converts a list into a paragraph (the opposite of the previous command). Perhaps if you write by making an outline first, this command could speed up the narrativization of content. It's often easier to create a bulleted list instead of fully formed sentences. So this prompt might help you move from an outline to a first draft.
   </td>
  </tr>
</table>

### Overview buttons

<table>
  <tr>
   <th>
    <strong>Action</strong>
   </th>
   <th>
    <strong>Description</strong>
   </th>
   <th>
    <strong>Tom's thoughts on usefulness</strong>
   </th>
  </tr>
  <tr>
   <td><strong>Readability</strong>
   </td>
   <td>Generate suggestions for changing the selected content or the entire document to improve its readability.
   </td>
   <td>Could be useful. Rather than providing suggestions for improving readability, the AI response often just rewrites the text, making this somewhat redundant with Improve Readability. (I think the point of this action is to teach you to recognize readability patterns in your content.)
   </td>
  </tr>
  <tr>
   <td><strong>Summarize</strong>
   </td>
   <td>Generate a summary of the selected content or of the entire document.
   </td>
   <td>Useful. AI tools excel at summarizing content. AI's default explanatory style fits well with the style of short description elements.
   </td>
  </tr>
  <tr>
   <td><strong>Generate Questions</strong>
   </td>
   <td>Generate questions that are answered by reading the selected text or the entire document content.
   </td>
   <td>Not useful for me. If you want to see what questions your content answers, great. I can't imagine actually using this. I'm too lazy to test how my content might appear in chat or search engines. I'm more focused on making sure the content is accurate and complete. Then again, suppose you want to restructure your content into a Q&A format because that format might surface better in AI chat responses. This prompt can help you do that.
   </td>
  </tr>
  <tr>
   <td><strong>Answer Questions</strong>
   </td>
   <td>Generate answers to questions you ask based on the selected text or on the entire document content.
   </td>
   <td>Moderately useful. This turns Positron into a wise person whom you can ask questions. You can use this prompt to get a better understanding about different parts of your documentation (e.g., what is this code doing, why would someone use X, what is an embedding). Given that we often struggle to understand deeply technical content, having an AI assistant help explain the confusing parts, even if sometimes wrong, is a welcome tool.
   </td>
  </tr>
</table>

### Translation buttons

<table>
  <tr>
   <th>
    <strong>Action</strong>
   </th>
   <th>
    <strong>Description</strong>
   </th>
   <th>
    <strong>Tom's thoughts on usefulness</strong>
   </th>
  </tr>
  <tr>
   <td><strong>English</strong>
   </td>
   <td>Translate the selected content to English while preserving its original DITA XML markup.
   </td>
   <td>Not useful for me. These buttons aren't intended to push your content through translation workflows. Instead, they're more useful for a non English-native writer (or for content received from a SME who does not know English well) to quickly get a correct version as close as possible to the original.
   </td>
  </tr>
  <tr>
   <td><strong>French</strong>
   </td>
   <td>Translate the selected content to French while preserving its original DITA XML markup.
   </td>
   <td>(same as above)
   </td>
  </tr>
  <tr>
   <td><strong>German</strong>
   </td>
   <td>Translate the selected content to German while preserving its original DITA XML markup.
   </td>
   <td>(same as above)
   </td>
  </tr>
  <tr>
   <td><strong>Japanese</strong>
   </td>
   <td>Translate the selected content to Japanese while preserving its original DITA XML markup.
   </td>
   <td>(same as above)
   </td>
  </tr>
</table>

Keep in mind that Positron only reveals summaries to the authors, not the full prompts that it sends to ChatGPT. A significant part of mastering AI interaction lies in the art of prompt engineering. If you're skilled at eliciting the desired response from an AI bot, a practice akin to magical incantations, your answers will far surpass those of others. In fact, you can actually purchase prompts for a variety of scenarios, so I can see why Oxygen XML keeps their full prompts hidden. The skill of creating the perfect prompt for each tech comm situation is the pivotal factor in a high-quality AI integration.

## Error correction

Positron is also integrated into the Results pane to perform error correction. If you have an error with the DITA code, underlined in yellow, you can right click the error message and select **AI Positron Fix**. This will prompt Positron to send the error to ChatGPT to suggest a fix for the error. This will result in speedier fixing and debugging of issues.

## Button prompts

You can also configure Oxygen XML to include buttons in areas where elements are missing content. For example, if the `shortdesc` element is missing or empty in a topic, you can configure Oxygen XML to show a button that will prompt Positron to send a query to ChatGPT to populate that missing content.

<figure><img style="border: 1px solid #dedede"  src="{{site.api_media}}/positronshortdescbutton.png" alt="Shortdesc button in Oxygen XML" /><figcaption>You can configure Oxygen XML with buttons to generate AI content in places that are missing content</figcaption></figure>

To configure this, first you define a custom action using an XSL rule. These rules use XPath, an expression language used for Schematron, XQuery, and more. You would configure the rule to look for a root element and `shortdesc `element; if empty, then invoke an action that sends a query to Positron. Here's a sample configuration of the custom action. 

<figure><img style="border: 1px solid #dedede"  src="{{site.api_media}}/positronxslrule.png" alt="Configuring XSL rules" /><figcaption>Configuring custom actions based on XSL rules</figcaption></figure>

After creating the action, you create a style rule in `action.css` to add a button for an empty `shortdesc` element. This button will invoke the `shortdesc` action. Here's a sample configuration:

<figure><img style="border: 1px solid #dedede"  src="{{site.api_media}}/positroncssrule.png" alt="Configuring CSS actions" /><figcaption>Sample configuration of css action</figcaption></figure>

## Limitations

Now that we've covered Positron's functionality, I'll comment on a few limitations. 

### ChatGPT 3.5 instead of 4.0

Positron connects with ChatGPT 3.5 instead of 4.0. For simple tasks, there might not be a huge difference, but I prefer 4.0 quite a bit and think it's several levels better. That said, I don't think APIs can interact with 4.0 yet except by waitlist. Also, 4.0 is literally 30x more expensive per query. Additionally, with 4.0, the response time is slower, you're limited to fewer requests per minute, and 4.0 doesn't provide the 16k token limit model (as with 3.5). For all those reasons, 4.0 is problematic. However, Oxygen XML plans to allow for more flexibility in choosing models in the future. If someone wants to pay for a ChatGPT 4.0 upgrade, it will probably become an option.

### Choosing other language models

Another limitation is extensibility. Right now, you can connect only to ChatGPT. Future releases will give you options to connect to other AI providers. (This seems to be the most frequent request in the comments on the [Positron documentation](https://blog.oxygenxml.com/topics/ai_positron.html).) Imagine if your company has its own internal AI models. If so, you'd definitely want to connect to them.

### Token limits

In playing around with Positron for an afternoon, I used 62 of the 250 requests. (You can check usage by clicking the drop-down menu for your email under the "AI Positron Assistant" pane.) My guess is that a professional technical writer working on documentation for 4 hours a day will exhaust the monthly request limit within a week. This is because a lot of the tasks require greater amounts of context passed in. When you want to create a `shortdesc` of a topic, you pass in your entire document. If it's 1,000 words, that's about 750 tokens right there. Do that for 20 topics in your documentation, and you start using a lot of requests.  

Note that in the first release, Oxygen XML measures usage in "requests," but future releases will switch to tokens. 

Keep in mind that the Positron Assistant is a free extension. Most other API integrations charge a high amount and cap the usage at a certain number of queries. (For comparison, the [Madbot plugin](https://www.improvementsoft.com/Content/Plugins/plugins-madbot.htm) costs $129/month.)

### Confidential data

Using Positron means sending your content through APIs to OpenAI services to be parsed, transformed, and returned. If your company doesn't allow its content to be sent to third-party servers due to the confidentiality of the data, this extension may be off-limits to you. You can't connect Positron to a language model that runs from your local computer only.

For more details about how your content passed into Positron might be used, see OpenAI's [Terms of Use](https://openai.com/policies/terms-of-use), specifically section 3c, "Use of Content to Improve Services." This section says OpenAI won't use the content you send through the API to train their model, but they might scrape your public website to train its model.

The confidentiality of data is  what's slowing down big tech companies from using tools like ChatGPT, Bard, or others. Many companies are afraid of their confidential code and information suddenly appearing in publicly available language models.

## Conclusion

Oxygen's AI Positron assistant provides a practical approach to using AI when writing documentation. The integrated experience allows you to stay focused on your documentation in Oxygen XML, and the pre-made prompt actions help you quickly achieve the desired results.

One detail I haven't yet addressed is the name: Positron. The name was inspired by Isaac Asimov's "positronic brain," which is a fictional device that provides robots with a sense of consciousness, reasoning, and simulated emotion. The character Data on Star Trek is an example of a robot with a positronic brain.)

In Oxygen XML, the Positron Assistant isn't conscious, nor is it about to start simulating emotions. But you can think of the Positron integration as having a character like Data on your bridge, available to ask it questions, improve language, suggest fixes, and more. Who wouldn't want that?

Also, keep in mind that this is the first round of AI integration. We're at the beginning of what will no doubt be many more iterations and enhancements with AI integration. We're getting better at prompt engineering, understanding strategic ways to integrate AI, and reducing hallucination by passing in documentation context. It's an exciting time to be a tech writer. Explore and experiment with these new AI tools and see what works for you. Then share your experiences with the larger community.

{% include ads.html %}