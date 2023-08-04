---
title:  "Using AI for language advice"
permalink: learnapidoc/docapis_ai_language_advice.html
keywords:
course: "Documenting REST APIs"
weight: 14.4
sidebar: docapis
section: docapisai
path1: learnapidoc/ai.html
last-modified: 2023-08-26
---

When I first started using AI tools, I tried to get them to write blog posts or other large pieces of content. These efforts almost always failed. The content sounded flat, unassertive, impersonal, boring, and voiceless. For more on why AI can't approximate real human writing, see Lauren Hartenberger's insightful essay [What AI Teaches Us About Good Writing](https://www.noemamag.com/what-ai-teaches-us-about-good-writing/). Hartenberger says that human writers often purposefully deviate from convention or rules as they engage with topics in authentic ways; this makes their writing connect emotionally with readers. 

But even if we don't use AI tools to write content for us, it doesn't mean we have to abandon the language capabilities of AI tools. AI tools actually work great for language advice. One common task I do as a technical writer, on a near daily basis, is review content that others write. When I put on my editor's hat, I want to make precise, knowledgeable comments that reference grammar or stylistic rules rather than just rewriting sentence so they sound better. In particular, I've found that engineers want to know specifically why their sentences are wrong. They frequently reject comments that say "It sounds better this way." Sounds better to whom? To you?

Even 20 years ago when I was in graduate school, students wanted precise references to grammar rules. In part this is because writing "awkward construction" or something similar didn't help them understand what was wrong. The composition director required all composition instructors to not only circle every grammar and style error but then to reference rule in a grammar handbook. By the end of the year, the pages of my grammar handbook looked so used, the pages resembled a favorite book someone had read countless times. (Trust me, it wasn't my favorite book to read.)

AI tools can do an excellent job at identifying the particular grammar or style rule or reason, and they can provide guidance about why one phrasing is preferable to another. In asserting a preference, AI will often make a convincing argument for one style over another, such as noting that a word could be interpreted in different ways and so is more ambiguous than the other phrasing.

No matter your command of the language, articulating and referencing grammar and style rules can be helpful when you put on your editor's hat. Try this initial prompt for language advice:

``` 
As a technical editor for a documentation group, you are an expert in
grammar and plain language. Provide guidance about the following usage options,
indicating which is better and explaining the rule behind it. Reference grammar
and style rules by name in your reasoning.
```

After using this prompt, you can just paste in multiple similar-sounding sentences and the AI will tell you which is better and why. If you're worried about privacy, note that it's easy to swap in generic terms while preserving the sentence's structure. Here are some examples:

```
You first click the red button, and then you click the blue button. 
You first click the red button and then you click the blue button. 
You first click the red button, then you click the blue button. 
```

```
The system is composed of five modules.
The system is comprised of five modules.
The system is made up of five modules.
```

```
The app displays a screen that says ...
The app shows a screen that says ...
```

```
The user must opt into the terms...
The user must opt in to the terms...
```

```
The widget allows you to try the feature ...
The widget enables you to try the feature ...
The widget lets you try the feature ...
```

```
With the widget, you can do the following:
- Schedule flights
- Manage bookings

With this app, you can:
- Schedule flights
- Manage bookings
```

```
One thing to remember — set the initial parameter.
One thing to remember: set the initial parameter.
```

```
The function accepts two arguments...
The function accepts two parameters...
```

```
Many vehicles drive on this road. For example: trucks and RVs.
Many vehicles drive on this road — for example, trucks and RVs.
```

```
Enter your desired input into the form.
Enter the input you want into the form.
```

```
The API only searches for lakes.
The API searches only for lakes.
```

```
This is the master view...
This is the main view...
```

```
You must be added to the safelist to call the API.
You must be added to the allowlist to call the API.
```

```
Enter the input to the widget, for example: "acme" or "beta."
Enter the input to the widget — for example, acme or beta."
Enter the input to the widget; for example, search for acme or beta."
```

``` 
You can perform various actions (configure the widget, initialize the system,
etc.) as an administrator.

You can perform various actions (such as configure the widget or initialize the
system) as an administrator. 
```

```
You can configure permissions via the app.
You can configure permissions using the app.
You can configure permissions through the app.
```

```
Use the library's methods to make your requests.
Use the library methods to make your requests.
```

```
To make requests, you must have an API key. 
To make requests, you need an API key.
```

```
Over the years, the university provided me with a great education and set me on
the right path - which I want to share with you now.

Over the years, the university provided me with a great education and set me on
the right path, which I want to share with you now.
```

``` 
The widget has various buttons, namely, a power button, an off button, and a
channel button.

The widget has various buttons, namely: a power button, an off button, and a
channel button. 
```

You can see ChatGPT's responses to a lot of these prompts [here](https://chat.openai.com/share/28bbbc43-3fbc-468c-933d-5a5e8af7befd).

As you can see, a lot of sentences have subtle differences in grammar and style, with no clear answers about which is right or wrong. Many instances don't have a clear grammar or style rule that one sentence abides by while another doesn't. No matter, AI generally makes a convincing argument about which sentence is better and why. Or if both are equally acceptable, it lets you know. And if they are equally acceptable, I try not to change text just to align with my own unarticulated preferences.

Notice that I included the following in my prompt: "Reference grammar and style rules by name in your reasoning." As you're making editorial comments, if the content does relate to a rule, you can call it out by name. For example:

```
Click the big blue button in the upper-right corner.
Click the big, blue button in the upper-right corner.
```

Do you remember what grammar rule this comma usage relates to? Rather than just adding a comma there, you can note that in this usage, the adjectives are coordinate adjectives rather than cumulative adjectives. This gives users terminology they can use to better understand the sentence's mechanics.

By the way, once you provide the initial prompt as I indicated above, your future grammar questions can simply provide the pairs of similar sounding sentences. AI will understand your intent from the context. You could even bookmark the thread so that with future questions, you just paste in the two sentences without having to re-establish the question.