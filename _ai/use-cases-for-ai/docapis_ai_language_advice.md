---
title:  "Use cases for AI: Seek advice on grammar and style"
permalink: ai/docapis_ai_language_advice.html
linkedin: https://www.linkedin.com/posts/tomjoht_using-ai-for-language-advice-activity-7095404320443039744-IEyF
keywords:
course: "AI-powered API documentation"
weight: 14.6
sidebar: sidebar_ai
section: docapisai
path1: ai/index.html
last-modified: 2023-08-04
redirect_from:
- /learnapidoc/docapis_ai_language_advice.html
---

{% comment %}
{% include coffeeshopbook.html %}
{% endcomment %}

Technical writers frequently act as editors, whether reviewing content written by other technical writers, engineers, or product team members. For help with language decisions, AI tools can provide a helpful tool for identifying specific grammar and style rules. Although they might not produce emotionally resonant content ideally, AI tools are adept at providing reasoned language advice.

## Leveraging AI to help with language 

When I first started using AI tools, I tried to get them to write blog posts or other large pieces of content. These efforts almost always failed. The content sounded flat, unassertive, impersonal, boring, and voiceless. For more on why AI can't approximate real human writing, see Lauren Hartenberger's insightful essay [What AI Teaches Us About Good Writing](https://www.noemamag.com/what-ai-teaches-us-about-good-writing/). Hartenberger says that human writers often purposefully deviate from convention or rules as they engage with topics in authentic ways; this makes their writing connect emotionally with readers. 

But even if we don't use AI tools to write content for us, it doesn't mean we have to abandon the language capabilities of AI tools. AI tools actually work great for language advice. One common task I do as a technical writer, on a near daily basis, is review content that others write. When I put on my editor's hat, I want to make precise, knowledgeable comments that reference grammar or stylistic rules rather than just rewriting sentence so they sound better. In particular, I've found that engineers want to know specifically why their sentences are wrong. They frequently reject comments that say "It sounds better this way." Sounds better to whom? To you?

Even 20 years ago, when I was in graduate school teaching first-year composition classes, students wanted precise references to grammar rules. In part this is because writing "awkward construction" or something similar didn't help them understand what was wrong. The composition director required all composition instructors to not only circle every grammar and style error but also to reference rule in a grammar handbook. By the end of the year, the pages of my grammar handbook looked so used, the book resembled someone's favorite novel. (Trust me, it wasn't my favorite book to read.)

AI tools can do an excellent job at identifying the particular grammar or style rule or reason, and they can provide guidance about why one phrasing is preferable to another. In asserting a preference, AI will often make a convincing argument for one style over another, such as noting that a word could be interpreted in different ways and so is more ambiguous than the other phrasing.

{% include ads.html %}

No matter your command of the language, articulating and referencing grammar and style rules can be helpful when you put on your editor's hat. Try this initial prompt for language advice:

<div class="chat">
As a technical editor for a documentation group, you are an expert in
grammar and plain language. Provide guidance about the following usage options,
indicating which is better and explaining the rule behind it. Reference grammar
and style rules by name in your reasoning.
</div>

After using this prompt, you can just paste in multiple similar-sounding sentences and the AI will tell you which is better and why. If you're worried about privacy, note that it's easy to swap in generic terms while preserving the sentence's structure. Here are some examples:

<div class="chat">
<p>You first click the red button, and then you click the blue button.</p>

<p>You first click the red button and then you click the blue button.</p>
 
<p>You first click the red button, then you click the blue button.</p>
</div>

<div class="chat">
<p>The system is composed of five modules.</p>

<p>The system is comprised of five modules.</p>

<p>The system is made up of five modules.</p>
</div>

<div class="chat">
<p>The app displays a screen that says...</p>

<p>The app shows a screen that says...</p>
</div>

<div class="chat">
<p>The user must opt into the terms...</p>

<p>The user must opt in to the terms...</p>
</div>

<div class="chat">
<p>The widget allows you to try the feature...</p>

<p>The widget enables you to try the feature...</p>

<p>The widget lets you try the feature...</p>
</div>

<div class="chat">
<p>With the widget, you can do the following:
- Schedule flights
- Manage bookings</p>

<p>With this app, you can:
- Schedule flights
- Manage bookings</p>
</div>

<div class="chat">
<p>One thing to remember — set the initial parameter.</p>

<p>One thing to remember: set the initial parameter.</p>
</div>

<div class="chat">
<p>The function accepts two arguments...</p>

<p>The function accepts two parameters...</p>
</div>

<div class="chat">
<p>Many vehicles drive on this road. For example: trucks and RVs.</p>

<p>Many vehicles drive on this road — for example, trucks and RVs.</p>
</div>

<div class="chat">
<p>Enter your desired input into the form.</p>

<p>Enter the input you want into the form.</p>
</div>

<div class="chat">
<p>The API only searches for lakes.</p>

<p>The API searches only for lakes.</p>
</div>

<div class="chat">
<p>This is the master view...</p>

<p>This is the main view...</p>
</div>

<div class="chat">
<p>You must be added to the safelist to call the API.</p>

<p>You must be added to the allowlist to call the API.</p>
</div>

<div class="chat">
<p>Enter the input to the widget, for example: "acme" or "beta."</p>

<p>Enter the input to the widget — for example, acme or beta."</p>

<p>Enter the input to the widget; for example, search for acme or beta."</p>
</div>

<div class="chat">
<p>
    You can perform various actions (configure the widget, initialize the system,
    etc.) as an administrator.
</p>

<p>
    You can perform various actions (such as configure the widget or initialize the
    system) as an administrator.
</p>
</div>

<div class="chat">
<p>You can configure permissions via the app.</p>

<p>You can configure permissions using the app.</p>

<p>You can configure permissions through the app.</p>
</div>

<div class="chat">
<p>Use the library's methods to make your requests.</p>

<p>Use the library methods to make your requests.</p>
</div>

<div class="chat">
<p>To make requests, you must have an API key.</p>

<p>To make requests, you need an API key.</p>
</div>

<div class="chat">
<p>
    Over the years, the university provided me with a great education and set me on
    the right path - which I want to share with you now.
</p>

<p>
    Over the years, the university provided me with a great education and set me on
    the right path, which I want to share with you now.
</p>
</div>

<div class="chat">
<p>
    The widget has various buttons, namely, a power button, an off button, and a
    channel button.
</p>

<p>
    The widget has various buttons, namely: a power button, an off button, and a
    channel button.
</p>
</div>

You can see ChatGPT's responses to a lot of these prompts [here](https://chat.openai.com/share/28bbbc43-3fbc-468c-933d-5a5e8af7befd).

As you can see, a lot of sentences have subtle differences in grammar and style, with no clear answers about which is right or wrong. Many instances don't have a clear grammar or style rule that one sentence abides by while another doesn't. No matter, AI generally makes a convincing argument about which sentence is better and why. Or if both are equally acceptable, it lets you know. If they are equally acceptable, I try not to change text just to align with my own preferences.

Notice that I included the following in my prompt: "Reference grammar and style rules by name in your reasoning." As you're making editorial comments, if the content does relate to a rule, you can call it out by name. For example:

<div class="chat">
<p>Click the big blue button in the upper-right corner.</p>
<p>Click the big, blue button in the upper-right corner.</p>
</div>

Do you remember what grammar rule this comma usage relates to? Rather than just adding a comma there, you can note that in this usage, the adjectives are coordinate adjectives rather than cumulative adjectives. This gives users terms they can use to better understand the sentence's mechanics.

{% include image_ad_right.html %}

By the way, once you provide the initial prompt as I indicated above, your future grammar questions can simply provide the pairs of similar sounding sentences. AI will understand your intent from the context. You could even bookmark the thread so that with future questions, you just paste in the two sentences without having to re-establish the question.

Update: Since I wrote this post, there's now a [grammar check](https://indianexpress.com/article/technology/artificial-intelligence/google-search-grammar-check-ai-feature-8882140/) feature soon to be added into Google Search. The Grammar Check is in Bard now. For any problematic sentence, try typing "grammar check" and then paste the sentence into [Bard](https://bard.google.com). The response explains any grammar issues, related rules, and suggested changes for the sentence. It's pretty nifty.