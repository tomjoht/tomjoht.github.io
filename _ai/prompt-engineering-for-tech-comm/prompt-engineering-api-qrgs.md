---
title:  "API quick reference guides"
permalink: ai/prompt-eng-api-qrgs.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2025-06-01
rebrandly: https://idbwrtng.com/api-qrg-challenges-of-long-content
---

{% comment %}
{% include coffeeshopbook.html %}
{% endcomment %}

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Introduction

A couple of years ago, we had a problem we were trying to solve with our reference docs. Product teams would meet with users and talk to them about various geo attributes available through our APIs, but the users only had a Javadoc (or similar reference) to navigate. There wasn't an easy list of attributes to browse, and consequently some users couldn't find the info they needed and were frustrated.

After some trial and error with different approaches, we came up with a solution: comprehensive tree diagrams. Listing hundreds of different elements, the tree diagrams allowed product teams to easily communicate the attributes delivered by the various APIs. Users could go directly to the reference doc source by clicking element links. This solved the findability problem from a usability perspective.

However, the diagrams were a pain to maintain, since the APIs kept changing and evolving. Because the diagrams were so popular (both internally and externally), we kept them updated. They became a source of truth for many other documentation questions, even internal questions that we had as technical writers. One engineer even said she used the diagrams to understand one of our more complex API objects (one so complicated, it almost defies human comprehension).

As AI tools became more capable, I realized that generating these diagrams wasn't so hard. AI tools are actually great at creating them, which reduces the effort around both authoring and maintenance. I now have quick reference diagrams for every one of the APIs I support. These QRGs don't just provide documentation usability; they augment AI chat sessions in helpful ways, especially when you're constrained by how many tokens you can add into your AI session context.

In this article, I'll walk through the process of using AI to create a quick reference diagram. I'll share my thought processes behind the approach, how AI tools are used, and other decision-making. I'll also show how to provide instruction to an agent to build everything in a single instruction.

Overall, the QRG as a comprehensive tree diagram provides a number of benefits:

* **Enhances API usability for developers.** Developers love quick reference guides, and this gives them an easy way to Ctrl+F to find any element and go directly to it. 
* **Serves as a concise summary for AI.** The QRG offers a compact representation of the API, useful for priming AI tools or navigating large documentation sets within token limits.

## Visual shape to an API

The diagram provides a visual shape to your API, allowing developers to quickly see the primary methods and fields provided. This overcomes the problem of most reference documentation that only communicates information in a series of flat stacked tables.

<figure><img style="max-width: 500px" src="{{site.media}}/tablesinrefdocsnousability.png" alt="Screenshot showing typical API reference documentation with flat tables, illustrating the difficulty in visualizing object hierarchy." /><figcaption>In typical reference documentation, objects are deeply nested, but the docs describe the objects in separate tables, without hierarchy. It's hard to visualize the structure and get a clear mental model of the API.</figcaption></figure>

Quick reference diagrams represent the hierarchy of your API, with each element linked to its documentation.

<figure><img style="max-width: 700px" src="{{site.media}}/sampletreediagramjabberwocky.png" alt="Example of an API quick reference tree diagram showing hierarchical relationships between API elements." /><figcaption>This sample tree diagram visually represents the hierarchical structure of an API, making it easier for developers to understand relationships between objects, methods, and fields at a glance.</figcaption></figure>

## Example doc scenario: Build an API quick reference

These QRGs are just tree diagrams showing all the elements of the API, with links to each element. However, depending on the size of the API, this could be a formidable task. You might have several hundred elements to show, with a detailed position hierarchy that needs to be accurate. You also need to gather up hundreds of links as well, and somehow test them. 

There's a reason this deliverable isn't usually provided by tech writers: it's a massive effort to produce and maintain manually &mdash; but not so much for AI tools.

## The first step: Achieve clarity of thought

The first step in any complex AI-assisted task involves trying to get clarity of thought. Complexity by definition makes it more challenging to have clear paths and thoughts (as there tend to be a lot of unknowns), but it's important to have a general strategy for tackling complex tasks.

Here's my general strategy: start simple and layer in the complexity. As an analogy, imagine trying to build a skyscraper. You wouldn't start by building the entire edifice floor by floor, finishing everything as you go. Instead, you would approach it in stages: starting with preparing the foundation, laying the frame and scaffolding, then doing the interior framing, the plumbing, the electrical, the exterior, the windows, and so on. 

You can approach complex documentation projects in a similar way: proceed in stages through a series of layers, adding in more complexity each time. To do this layered approach, you have to organize the project clearly in your mind first, often with a general outline.

Just like writing long-form content, though, the outline might not be the actual path you take through the essay, story, or project. The outline might only provide the starting point, allowing an appropriate jumping off point. You might not know the full complexity from the start. Maybe only the first few steps are visible, and you only have a vague idea of what the future steps might entail. That's okay. Just keep in mind that AI tools aren't magic buttons. To avoid unintended outputs, you need to provide clarity about the tasks you want them to accomplish.

## The outline of steps

Following this emphasis on clarity of thought, let's break down the building of our API QRG into an outline of steps. (Since I've created about 10 of these tree diagrams already and have been working with them for a while, I already have a good idea of the steps. More realistically, for a complex project we might not have this clear of an idea about the steps.)

1. **We need a sample tree diagram that can serve as a pattern for the AI to follow.** Tree diagrams could be interpreted in many different ways. The example will make clear to the AI what we mean and want. Fortunately, I already have an example of one of these trees that I can copy. This post, [Task decomposition and complex tree diagrams](/ai/prompt-engineering-task-decomposition.html), has a good example (albeit with fake content).

2. **Decide on the diagram conventions and notations.** The conventions and notation depend on the language of the API, whether REST, Java, gRPC, or other. Consistency is important, but before the AI starts cranking out hundreds of lines of code, we need to be explicit about how, for example, a method is denoted. How is an object or array represented? Then we need to clarify those conventions below the tree diagram. We can use AI to produce an explicit description of these diagram conventions from an existing tree diagram we like. Then we can use this description for the new AI session to use (essentially reverse engineering the prompt).

3. **Decide on how to feed the API source into the AI tool.** Will it be better to use the API reference documentation as the source, or the code source files (e.g., proto files, java files) themselves? Many elements in the code source might not be marked as visible in the output (due to various tags or filters that exclude elements from a production build). Additionally, using the code source will probably result in the casing the AI tool uses for each element (`dataSource` or `data_source`). 

 As a result, my preference is to use the generated REST HTML reference documentation, as this will better align with how the same elements are represented in the published documentation. The QRG is meant to reflect the reference documentation, and it's unclear if the source has structures and conventions that aren't obvious but which result in a different expression in the generated reference material.

4. **Gather up the source.** How will we gather up the source files? This somewhat depends on the tool we're using and the size of the API:

    1. *Does the API exceed 1 million tokens?* If so, [Gemini Code Assist](https://codeassist.google/) and the [Gemini web app](https://gemini.google.com/app) might not be candidates. Only [Google AI Studio](https://aistudio.google.com) provides the 2 million token context, but (at the time of this writing) only for the Gemini 1.5 Pro model, which isn't as good as the Gemini 2.5 Pro model. (For more info about models, see [Gemini models](https://ai.google.dev/gemini-api/docs/models).)
    2. *If the API is less than 1 million tokens, how much less?* We have to leave room for the output tokens as well. If so, we can use the Gemini web app or Gemini Code Assist. Both offer the 2.5 Pro model. 
    3. *Should we consolidate all the API files into a single file so that we can easily load it into the AI?* Or is it better to drag over a folder structure, as presumably this folder structure could communicate some metadata about the hierarchy of the content. A script that consolidates the files into a single file could also print the folder hierarchy for each file, providing similar metadata. 
    4. *In deciding between the Gemini web app and Gemini Code Assist, which is preferable?* I like the more visual nature of the canvas on the Gemini web app, but Gemini Code Assist makes it easier to load project content. Additionally, the IDE space offers agent workflows, whereas the Gemini app just provides chat.

5. **Generate a first draft of the diagram output.** Feed the prompt, example, diagram conventions, and reference files into the AI and generate the output.

6. **Verify the accuracy.** After the AI creates an initial tree diagram, we need to verify that it's accurate. This will likely involve spot checking the diagram in places. We could also pass the diagram into another AI session and ask the AI to verify its accuracy. We should look at whether the diagram implements the conventions we told it to as well.

7. **Set up variables.** Because HTML is unwieldy in text diagrams (line breaks would ruin the display), we'll need to convert each element in the diagram into a variable. Another file will provide the variable definitions that include the HTML link. Each diagram element should be unique, since the same subelement might appear in multiple contexts in an API (for example, `id`). Adopting a variable-naming strategy such as <code>&lbrace;&lbrace;Element_subelement&rbrace;&rbrace;</code> might be best, albeit more confusing.

8. **Create the variable definitions file.** In my doc system, we can use Jinja conventions and create a variable definitions file, scoped under a namespace to prevent collisions. We'll keep the namespace short to avoid adding too many tokens to the diagram.

9. **Embed the diagram.** We'll need to embed the tree onto a web page that also includes the variable definitions.

10. **Check the accuracy.** We need to check the accuracy of the links. There could be hundreds of links to click, and the content is access controlled. I have no great strategy for this with ACL'd links other than to do spot checking.

{% include ads.html %}

## Sample prompt

The previous section helped clarify our approach. Now let's translate these steps into a sample prompt for an AI agent. (If you don't have access to an AI agent, just break this prompt up into multiple mini-prompts.)

While you might need to make some adjustments and iterate on fixes, an agent can typically complete this task in minutes. Even if you have to break up the prompt into multiple steps and sub-prompts, using AI is still about 100x faster than constructing it all by hand.

Here's a prompt that you can pass into an AI agent capable of performing complex tasks. You need to customize the parts in brackets with more specifics about file names, directories, samples, etc. If you're using an agent, you could break up the various steps into discrete commands.

<div class="chat">
<div markdown="1">

I want you to create an API Quick Reference Guide (QRG) for <span class="pVar">[INSERT API NAME]</span>. The QRG will be a hierarchical tree diagram with each element as a variable, intended to be linked to its corresponding section in the API reference documentation.

This QRG will provide a browsable, tree-like structure of the <span class="pVar">[INSERT API NAME]</span>, improving developer usability.

Here's an example tree diagram pattern -- follow this same pattern and structure. This is for the <span class="pVar">Jabberwocky API</span> (a fictitious API), so it isn't the same API you'll be working with. This is just an example.

```
base.jabberwocky.v1
   ├─ WonderWhizzleSnacker
   │   └─ FluffPrep []
   │       └─ PufTwiz
   │           ├─ WhipFlavor
   │           │   ├─ getWhipFlavorById({flavorId}) -> WhipFlavorResponse
   │           │   ├─ FlimEssence (string)
   │           │   ├─ SpinRefine (number)
   │           │   └─ SnigDust (boolean)
   │           └─ GlimPolish
   │               ├─ polishItem({itemId}) -> PolishStatus
   │               ├─ PixieShine (number)
   │               └─ FrumBuff (string)
   ├─ RootGet []
   │   ├─ getAllRootItems() -> RootItemList
   │   ├─ BumpExped
   │   │   ├─ GinProv []
   │   │   │   ├─ 987 (number)
   │   │   │   └─ FlibBrew (string)
   │   │   └─ SnorgNav
   │   │       ├─ FlutRefuel (number)
   │   │       └─ HobEcho (boolean)
   │   ├─ RootSort (string)
   │   └─ FabPick
   │       ├─ WhifOrch
   │       │   ├─ BanLull []
   │       │   │   ├─ 111 (number)
   │       │   │   └─ FluffTease (string)
   │       │   └─ FlufUntang (boolean)
   │       └─ TwitGrove
   │           └─ GrifDistract (number)
   ├─  WhizgigBuild
   │   ├─ buildNewWhizgig({config}) -> Whizgig
   │   ├─ FidFrame []
   │   │   ├─ SnurdJig
   │   │   │     ├─ FizWrang (string)
   │   │   │     └─ KlopAppease (boolean)
   │   │   └─ QuigWeld
   │   │        └─ SnizRust (number)
   │   ├─ SpinSprock
   │   │   ├─ WhipTight (string)
   │   │   └─ WigCal (number)
   │   └─ FizPow
   │       ├─ Sparkle (boolean)
   │       ├─ FizzMon
   │       │   └─ BlipTrack (string)
   │       └─ DingPrevent
   └─ OpWozzle
       ├─ performOpWozzleAction({actionParams}) -> OpWozzleResult
       ├─ KnobTune
       │   └─ SnarfCalc (number)
       ├─ PlinkStart []
       │   └─ GurgleInit
       └─ FrobMon
           └─ WhipAssure
               └─ HogEquil
```

Diagram conventions and notation (follow these rules):

* Tree structure: The diagram uses a tree format to show the API structure. It starts with the top-level API endpoint, followed by the resource path, its methods (HTTP verbs and paths), and the parameters or response bodies used by those methods.

* Methods: Show as get({parameters}) -> ResponseType. The -> indicates a method returns something.

* Messages and fields: Under each method or complex object, list fields as field_name: DataType. List query or path parameters under respective sections.

* Nested structures: If a field's DataType is another complex object (message), show its own fields indented below it, often under a "Fields" label.

* Enum values: Omit enum values to keep the diagram concise.

* Deprecated values: Do not show deprecated elements.

* oneof fields: A line like oneof field_name: means only one of the fields nested directly below it can be set.

I've put the reference documentation for the <span class="pVar">[INSERT API NAME]</span> in context. Look through those files to build the tree diagram.

Insert the tree diagram into a file called <span class="pVar">[INSERT FILE NAME AND DIRECTORY]</span>

Next, convert all the element names into variables. Here's a sample from another diagram showing how the elements have been converted to variables:

```
{% raw %}
{{base__jabberwocky__v1}}
   ├─ {{WonderWhizzleSnacker}}
   │   └─ {{FluffPrep}} []
   │       └─ {{PufTwiz}}
   │           ├─ {{WhipFlavor}}
   │           │   ├─ {{getWhipFlavorById}}({{flavorId}}) -> {{WhipFlavorResponse}}
   │           │   ├─ {{FlimEssence}} (string)
   │           │   ├─ {{SpinRefine}} (number)
   │           │   └─ {{SnigDust}} (boolean)
   │           └─ {{GlimPolish}}
   │               ├─ {{polishItem}}({{itemId}}) -> {{PolishStatus}}
   │               ├─ {{PixieShine}} (number)
   │               └─ {{FrumBuff}} (string)
   ├─ {{RootGet}} []
   │   ├─ {{getAllRootItems}}() -> {{RootItemList}}
   │   ├─ {{BumpExped}}
   │   │   ├─ {{GinProv}} []
   │   │   │   ├─ {{PogBake}} (number)  // PogBake
   │   │   │   └─ {{FlibBrew}} (string)
   │   │   └─ {{SnorgNav}}
   │   │       ├─ {{FlutRefuel}} (number)
   │   │       └─ {{HobEcho}} (boolean)
   │   ├─ {{RootSort}} (string)
   │   └─ {{FabPick}}
   │       ├─ {{WhifOrch}}
   │       │   ├─ {{BanLull}} []
   │       │   │   ├─ {{HumpHarm}} (number) // HumpHarm
   │       │   │   └─ {{FluffTease}} (string)
   │       │   └─ {{FlufUntang}} (boolean)
   │       └─ {{TwitGrove}}
   │           └─ {{GrifDistract}} (number)
   ├─  {{WhizgigBuild}}
   │   ├─ {{buildNewWhizgig}}({{config}}) -> {{Whizgig}}
   │   ├─ {{FidFrame}} []
   │   │   ├─ {{SnurdJig}}
   │   │   │     ├─ {{FizWrang}} (string)
   │   │   │     └─ {{KlopAppease}} (boolean)
   │   │   └─ {{QuigWeld}}
   │   │        └─ {{SnizRust}} (number)
   │   ├─ {{SpinSprock}}
   │   │   ├─ {{WhipTight}} (string)
   │   │   └─ {{WigCal}} (number)
   │   └─ {{FizPow}}
   │       ├─ {{Sparkle}} (boolean)
   │       ├─ {{FizzMon}}
   │       │   └─ {{BlipTrack}} (string)
   │       └─ {{DingPrevent}}
   └─ {{OpWozzle}}
       ├─ {{performOpWozzleAction}}({{actionParams}}) -> {{OpWozzleResult}}
       ├─ {{KnobTune}}
       │   └─ {{SnarfCalc}} (number)
       ├─ {{PlinkStart}} []
       │   └─ {{GurgleInit}}
       └─ {{FrobMon}}
           └─ {{WhipAssure}}
               └─ {{HogEquil}}
{% endraw %}
```

Replace the diagram in <span class="pVar">[INSERT FILENAME]</span> with this one that uses variables.

Next, create a variable definitions file. This is what the variable definitions file looked like for the <span class="pVar">Jabberwocky API</span>. Follow that same pattern.

```
{% raw %}
{%-
  set J = {
    "base__jabberwocky__v1": '<a href="someurl.com/base.jabberwocky.v1"><code>base.jabberwocky.v1</code></a>',
    "WonderWhizzleSnacker": '<a href="someurl.com/WonderWhizzleSnacker"><code>WonderWhizzleSnacker</code></a>',
    "FluffPrep": '<a href="someurl.com/FluffPrep"><code>FluffPrep</code></a>',
    "PufTwiz": '<a href="someurl.com/PufTwiz"><code>PufTwiz</code></a>',
    "WhipFlavor": '<a href="someurl.com/WhipFlavor"><code>WhipFlavor</code></a>',
    "FlimEssence": '<a href="someurl.com/FlimEssence"><code>FlimEssence</code></a>',
    "SpinRefine": '<a href="someurl.com/SpinRefine"><code>SpinRefine</code></a>',
    "SnigDust": '<a href="someurl.com/SnigDust"><code>SnigDust</code></a>',
    "GlimPolish": '<a href="someurl.com/GlimPolish"><code>GlimPolish</code></a>',
    "PixieShine": '<a href="someurl.com/PixieShine"><code>PixieShine</code></a>',
    "FrumBuff": '<a href="someurl.com/FrumBuff"><code>FrumBuff</code></a>',
    "RootGet": '<a href="someurl.com/RootGet"><code>RootGet</code></a>',
    "BumpExped": '<a href="someurl.com/BumpExped"><code>BumpExped</code></a>',
    "GinProv": '<a href="someurl.com/GinProv"><code>GinProv</code></a>',
    "PogBake": '<a href="someurl.com/PogBake"><code>PogBake</code></a>',
    "FlibBrew": '<a href="someurl.com/FlibBrew"><code>FlibBrew</code></a>'
    // ... and so on for all other elements ...
  }
-%}
{% endraw %}
```

Put this variable definitions file into <span class="pVar">[INSERT FILENAME AND DIRECTORY]</span>.

Finally, embed these files into a <span class="pVar">[INSERT FILENAME AND DIRECTORY]</span> by using the following include syntax: 

```
{% raw %}
# Quick reference diagram

{% include '[INSERT FILENAME AND PATH]' %}

This diagram shows the structure of elements of this API.... Each
element links to its reference documentation.

<pre class="text treeDiagrams">
{% include  "<span class="pVar">[INSERT FILE NAME]</span>" %}
</pre>

{% endraw %}
```

Lastly, describe the diagram conventions here as a brief list of bullet points.

You're done.

</div>
</div>

You might be thinking, geez, that's a lot of instruction crammed into a single prompt. Welcome to agentic prompts!

## Using this asset to create other assets

Beyond providing a quick reference for developers, the quick reference diagrams can be helpful in other scenarios too:

* **Compare two highly similar APIs.** For example, how does API 1 differ from API 2? The QRGs provide a way to compare APIs against each other in a pretty quick and easy way. This could be helpful for disambiguating APIs in a developer portal.

* **Get links to elements.** Tech writers often need links to code elements for release notes. With the API QRG, I can copy the diagram's HTML source and pass this in as context. The AI can then quickly find links to any elements mentioned in the release notes.

* **Build other deliverables.** You can use the QRGs to build other deliverables. For example, I'm also working on some tables that list elements in various attribute groups. The QRGs allow me to provide info about the elements in a quick and easy way.

## Provides a summary version of your API

Having a summary version of your API can come in handy for all types of documentation tasks. It's not usually feasible to feed your entire API reference documentation as context into an AI session. Reason being, loading this many tokens into an API session slows it down. With each turn in the conversation, the AI has to parse through the previous tokens in the thread as well, which slows down responses. 

Additionally, there's a point at which AI conversations start to degrade as the token size gets too large. It's common for AI interfaces to warn users when your conversation starts to get too large. It's also unclear how many AI interfaces handle large conversations. When you max out the two million token context, does the AI perform a sliding window, forgetting the earlier content? Does it summarize the earlier content to provide some context for the sliding window?

I'm not sure what happens at these token-exceeding threshold points, but it's not good to keep the same conversation thread too long. Eventually the accuracy starts to go downhill, and the AI tool will get confused (loading the wrong canvas version, for example), or it might stop following your instructions, and start hallucinating more, etc. It's like the massive token size overloads the AI's brain and it starts to go a bit haywire. This is an area of dangerous unknowns. 

In general, you want to keep your conversations somewhat short and start new threads often. At the same time, you don't want to constantly be repasting your entire API reference documentation into each new thread. This not only uses a lot of processing power, it makes your conversations slow and tedious. If the AI has to cycle through a million tokens with each response, you might find yourself multitasking between each AI response while you wait for several minutes for it to finish. Before long, you'll be drawn into some other task.

The API QRG gets around these long-context problems by providing a summary version of your API. You can supplement the QRG with selections of the documentation you're focusing on. For example, let's say you want the ACME features of your API, but you also want the AI to have a cursory awareness of your larger API. You would paste in the API QRG along with the specific content pages that address ACME features.