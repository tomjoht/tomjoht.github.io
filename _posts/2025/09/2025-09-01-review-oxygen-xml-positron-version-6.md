---
title: "Review of Oxygen XML's AI Positron Assistant 6.0"
permalink: /blog/review-oxygen-xml-positron-version-6
date: 2024-09-01
categories:
- ai
keywords: oxygen xml, syncro soft, AI editors, windsurf, cursor
rebrandly: https://idbwrtng.com/review-oxygen-xml-positron-version-6
description: "Two years ago, I wrote a review of Oxygen XML's AI Positron Assistant, which had just recently launched at the time (see <a href='/blog/first-look-at-oxygen-xml-positron-assistant'>First look at the OxygenXML's AI Positron Assistant</a>). In 2023, generative AI was just coming onto the scene and companies were trying to integrate AI features into their products. I've always been impressed at the speed in which the Oxygen XML's engineering teams enhance their editors with new features, including AI. The other week the team reached out to see if I would write another review based on the many updates to the AI Positron Assistant since that initial version. I agreed, interested to see how the tool had evolved, especially given how much my own AI-assisted writing workflows have changed over the past two years."
# image: 
---

* TOC
{:toc}

## Introduction

Before we jump into the review, let me note a couple of details. First, this is a sponsored post. Second, I don't use DITA or XML in my current tech writing role. At my workplace, we have a homegrown IDE that's a heavily customized version of VS Code, with fantastic Gemini integration, including both chat and agent mode options. The format we write in is Markdown, and when we need more complex syntax, HTML. The docs-as-code system supports Jinja for scripting and is based on a Python web framework underneath. Outside of writing tech docs at work, for my blog I've been experimenting with Cursor AI and Windsurf — two AI-enabled editors.

With all the improvements in AI, I've come to rely on it extensively for writing tech docs — so much that I now see myself, at least at work, as more of an editor, director, and content strategist than a writer. I've also realized that getting the UX right for AI workflows is hard. I wondered whether the Oxygen XML team had managed to incorporate a useful, friendly AI experience into the authoring workflow. What's the workflow like in Oxygen XML for asking questions and incorporating AI-written improvements into content? I think most UX designers are still trying to figure out the ideal AI workflows for content creation and how best to support them.

The Oxygen XML team gave me a demo showcasing some key features and workflows, and then I downloaded the latest publicly available version of Oxygen XML and played around with AI Positron Assistant a bit, mostly editing files in the sample DITA project. It's worth noting that the team demoed a pre-release version with some features that weren't in the public version I downloaded, so my experiences don't entirely align with everything I was shown. Nevertheless, here are my initial impressions.

{:.tip}
If you want to watch a short video introducing the AI Positron Assistant, see this [5-minute video from Oxygen XML here](https://www.oxygenxml.com/ai_positron_assistant.html).

## Initial setup

Let's start with some of my reactions based on the initial setup. 

### Look and feel

First, although this is superficial, I admit the gray theme of Oxygen XML's UI reminds me of an older Windows application. I'm used to working in dark themes, but this is just a visual preference. It seems most editors now resemble VS Code (in fact, both Windsurf and Cursor AI are forks of VS Code), and I've grown used to the layout and IDE. It took me a while to get used to Oxygen XML's appearance and layout again.

### Finding the Positron Assistant pane

Additionally, I was confused why I didn't immediately see the AI Positron Assistant. It's not installed by default. Instead, you install it as an add-on (through Help > Install new add-on). You can choose either the regular assistant or the enterprise assistant. The standard version connects through Oxygen's servers and is limited to OpenAI models only, up through GPT 5.

The enterprise version is key for corporate environments as it offers more control, letting you choose different services (OpenAI, Claude, Gemini, and more) as well as select the specific models. You're also required to configure your own API keys. I chose the enterprise assistant version and configured a Gemini API key, as I thought using Gemini would allow me a more even-handed comparison given that I use Gemini as my AI model in other tools.

### Retrieving and configuring API keys

I then had to figure out how and where to retrieve a Gemini API key. Getting an API key can be a challenge and a barrier to adoption for many users. I initially grabbed one from Google AI Studio, which only gave me access to the Flash models. I then switched to a Google Cloud project to get a key for the 1.5 Pro model, a process I was familiar with from setting up Windsurf. The fact that Oxygen's non-enterprise version includes models that don't require an API key is a smart move, as it significantly lowers the barrier to entry for new users.

### Adjusting layouts and views

I also spent some time figuring out the right layout and panes I wanted. Oxygen XML's interface is highly customizable, with numerous panes and toolbars you can arrange. I'm used to positioning the project files in the left pane, and the AI editor on the right pane (with content in the middle). However, Oxygen XML's default layout puts the AI Positron Assistant in the same pane as the Project files, with a bottom subtab to toggle between them. I didn't find this default layout ideal because, in my experience, context is key when working with AI. Providing the right context is the most important strategy for successful AI sessions, so I'm constantly dragging project files into my AI editor pane at work.

With a bit of wrangling, I managed to position the panes how I wanted them, and I closed all the other panes I didn't need. I realized that many of these extra panes, like the Elements and Attributes views, are specific to DITA authoring. As a non-DITA author, this level of structural detail adds complexity I'm glad to avoid in my daily work.

## Workflows with AI

With the Oxygen XML editor now set up and configured with the AI Positron Assistant, I experimented with different workflows. Here are some brief notes on a few experiments.

### Scenario 1: Address my bracketed comments

Although it might not be standard, my preferred way of rapidly iterating with AI models is to directly add notes in brackets in the text itself (as shown in the following screenshot). Then I ask the AI model to address the comments in a new revision. This workflow is increasingly my go-to mode with AI. It shifts me from raw-text author to high-powered editor.

<figure><img class="oxygenScreenshot" src="{{site.media}}/addednotestoaddressoxygen.png" alt="Adding notes in brackets for the AI to process" /><figcaption>Adding notes in brackets for the AI to process.</figcaption></figure>

To test this workflow, I added a few notes in the flowers topic (from the sample DITA project), then added that document as context to the AI Positron Assistant and said, "I added some notes in the text in brackets. Can you address them with a revision?" I then manually copied the revision, shown in text format, back into the document.

The workflow worked well, and what's more notable, Positron used valid DITA syntax in the formatting in its output. In looking at the output, it formatted bullet summaries as `<uicontrol>` elements. I'm not sure that's semantically correct for the context, but I was excited to see valid DITA syntax in the output nonetheless. This is where Oxygen's deep understanding of DITA gives it an edge over general-purpose AI code editors.

<figure><img class="oxygenScreenshot" style="max-width: 300px" src="{{site.media}}/oxygenvalidsyntax.png" alt="The AI's response correctly uses DITA syntax" /><figcaption>The AI's response correctly uses DITA syntax.</figcaption></figure>

### Scenario 2: Incorporate comments from others

Another common workflow for me is to incorporate comments from a review. Let's say your doc has lots of comments from other SMEs through some doc reviews. You can right-click a comment and select **AI Resolve Comment**, which generates a proposed change in the Positron pane. From there, clicking the Preview button opens a Merge dialog box, where you can review the changes before clicking Apply.

<figure><img class="oxygenScreenshot" src="{{site.media}}/commenting_workflow.png" alt="The workflow for resolving comments using the AI Positron Assistant" /><figcaption>The workflow for resolving comments using the AI Positron Assistant.</figcaption></figure>

Overall, this workflow works pretty well. However, there aren't many options to customize the AI-generated response before applying it. The AI-generated content in the Positron pane is read-only, and it's also read-only in the Merge dialog box. I might be missing something, but it would be nice to optionally customize the display before implementing it. As is, I think you'd need to implement it on your page and then make adjustments.

<figure><img style="max-width: 600px" class="oxygenScreenshot" src="{{site.media}}/oxygenfilediffdialog.png" alt="The Merge dialog box shows the proposed changes from the AI" /><figcaption>The Merge dialog box shows the proposed changes from the AI.</figcaption></figure>

### Scenario 3: Drag multiple files into context and check for grammar errors

Another common workflow I use is to drag multiple files into the Positron Assistant and have it check for grammar errors. I made some obvious spelling errors in several flowers topics, and then dragged the three flowers topics into the Positron pane. (Note: When I added the files as context, I was surprised to see that Positron displayed their full text paths in the chat area rather than simple icons. An upcoming version will show them as icons.)

<figure><img class="oxygenScreenshot" src="{{site.media}}/oxygen_dragging_files.png" alt="Dragging multiple files into the Positron pane to add them as context" /><figcaption>Dragging multiple files into the Positron pane to add them as context.</figcaption></figure>

The context worked and Positron listed all the grammar errors in the files in the chat pane. But then I couldn't figure out how to apply the updates back to the multiple files. I tried typing “Apply the updates to the files” as a prompt but got an error when Positron tried writing to the files. Also, the diff button didn't seem smart enough to apply different updates to different parts of the files.

I think I'd need to selectively copy and paste from the chat pane back into the editor as I saw fit. This is fine, but it doesn't showcase the more automated agent workflow. A helpful doc agent can perform multiple actions across multiple files.

In looking more closely at Positron's option, I realized that the intended workflow for this multi-file operation is designed a bit differently. I should select multiple files, right-click, and then choose **Refactoring > AI Positron Refactoring**. 

<figure><img class="oxygenScreenshot" src="{{site.media}}/oxygenxmlrefactoring.png" alt="Refactoring multiple Oxygen XML files" /><figcaption>Refactoring multiple Oxygen XML files.</figcaption></figure>

From there you can select from a list of quick actions like inserting short descriptions, correcting grammar, improving readability, and more.

<figure><img class="oxygenScreenshot" style="max-width:400px" src="{{site.media}}/refactoringdialogboxoxygen.png" alt="Refactoring dialog box" /><figcaption>Options in the refactoring dialog box</figcaption></figure>

This workflow then applies the file updates to the correct files, without the need to manually copy them in. This example reinforces the idea that it simply takes time to become familiar with the intended workflows, available right-click menus, and other AI features available in an editor. This is something I would quickly pick up if using Oxygen XML on a daily basis for writing docs.

### Scenario 4: Ask AI to update the selected content

In this workflow, I highlighted some content and added the selected content as context into the Positron chat by using the down arrow button and choosing **The selected content**, which added `${selection}` into the chat pane. I asked Positron to improve the grammar, and it did. I then clicked the Preview response button, looked at the Merge dialog and clicked **Apply**.

<figure><img class="oxygenScreenshot" src="{{site.media}}/oxygenbasicworkflow.png" alt="The basic workflow of selecting text and asking the AI to make improvements" /><figcaption>The basic workflow of selecting text and asking the AI to make improvements.</figcaption></figure>

This workflow seemed to work well. I like the Merge editor to preview the changes. It seems to have a lot of knobs and controls that would allow me to pick and choose different changes. But I didn't take the time to fully learn all the different options and functions here. 

I prompted the AI with some new changes and clicked Preview again, though this time it seemed to use Markdown syntax in the editor.

<figure><img class="oxygenScreenshot" src="{{site.media}}/filediffdialogboxoxygen.png" alt="The Merge editor allows for a detailed preview of the changes" /><figcaption>The Merge editor allows for a detailed preview of the changes.</figcaption></figure>

### Model selection

There's one other feature I found missing: the ability to select models on the fly. In my initial configuration, I used the Gemini Flash model for speed. But when I wanted more thoughtful refactoring, I went into the settings and switched to the Pro model, which increased the response time. There was no way to toggle which model I wanted to use with each interaction.

For example, for grammar checks, I'd prefer Gemini's Flash model, but for more complex refactoring, I'd want the Pro model. The demo I was shown did include the ability to switch between "Ask" (read-only) and "Agent" (read-write) modes, so I assume I was working with a slightly different version than the one demonstrated. This mode-switching is an important feature for controlling the AI's interaction with content. Perhaps a future enhancement will allow users to easily select different model versions as well.

### MCP integration

One powerful feature in an upcoming version of Oxygen XML is the Model Context Protocol (MCP) integration. MCP lets you connect your AI to additional repositories in ways that both make your AI smarter and more capable to perform actions. MCP wasn't yet available in the version I was playing with, only in the demo. AI Positron's preferences will allow you to connect to an MCP server, such as the [DITA-OT](https://www.google.com/search?q=https://deepwiki.com/dita-ot) MCP on [deepwiki.com](https://deepwiki.com). (Deep Wiki is a repository of different doc sets that you can connect to using MCP.)

In this case, the DITA-OT MCP seems to have the whole DITA spec and documentation available. By connecting the Positron AI to this DITA-OT MCP, it will make Positron much smarter and more capable in performing DITA-specific actions. In the demo, the presenter typed "read the wiki for DITA-OT and tell me how to install it." The response was then specifically drew from the DITA-OT information:

<figure><img class="oxygenScreenshot" src="{{site.media}}/mcpintegrationoxygen.png" alt="MCP integration" /><figcaption>MCP integration allows the AI responses to be more informed and capable.</figcaption></figure>

I wondered if other editors like Cursor AI would become DITA-smart by connecting to the same DITA-OT MCP. At any rate, now you can ask Positron more DITA-specific questions, and the agent can both provide more accurate responses and actions.

Note that the MCP server integration is client-side only. Oxygen XML doesn't yet have an MCP output option, such as for scenarios where you want to package up your documentation and send it to deepwiki.org for other users to integrate as an MCP server into their authoring IDEs.

## Conclusions

Based on my brief experimentations with Oxygen XML's AI workflows, the UI appears to be under constant development to keep pace with evolving user needs and experiences with AI. Seeing this active development in response to the changing landscape left a positive impression on me -- too often, tech comm tools lag behind more modern code authoring tools. 

Even so, it's clear that the fundamental UX workflows can be challenging to implement. The reason I tested out such basic workflows was because I'd experienced similar challenges using my workplace tools. In my experience across tools, advertised agentic functionality rarely works flawlessly, and there are frequent challenges in supporting the diverse approaches to how authors want to use AI.

Tool vendors are still figuring out how to incorporate AI into authoring tools. Plain chat outputs are easy enough, but how do you (1) let the user select what model they want to use (2) show the user what changes have been made to the original content, (3) allow the user to pick and choose which changes they want, (4) let the user make additional customizations, and then (5) incorporate those changes seamlessly back into the original files? That workflow is something that all toolmakers are trying to figure out right now.

I've played around with Cursor AI and Windsurf, and see similar challenges and limitations. However, I do think we're converging on similar UX patterns and workflows. In the same way that smartphones converged, and AI chat interfaces have converged, we'll also see more convergence with the AI features within authoring tools. That will make the experience more familiar and predictable.

Oxygen XML's challenge is that its XML-centric editor creates many unique challenges and requirements that aren't faced by other syntaxes and schemas. This can work to Oxygen XML's advantage because if the syntax and feature requirements are unique, there's more of a need for an editor that perfectly aligns with the unique syntax and features as well.

{% include ads.html %}

<style>
    img.oxygenScreenshot {border: 1px solid #dedede;}
</style>