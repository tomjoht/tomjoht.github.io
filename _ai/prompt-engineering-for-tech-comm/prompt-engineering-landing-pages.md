---
title: "Using AI to design landing pages"
permalink: ai/prompt-engineering-landing-pages.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-11-17
rebrandly: https://idbwrtng.com/prompt-engineering-landing-pages
---

We constantly hear that AI will free us up to work on more complex, strategic tasks. One of those tasks is building a landing page for docs. Why is this task difficult? Landing pages require the following:

* Familiarity with the entire doc set, not just one part of it.
* Decisions about message priority and information hierarchy, such as the main features that are most important to call out.
* Identification of the "product story" — something tech writers rarely spend time thinking about.
* Clarity about the resources and information developers need to be successful. 
* Familiarity with visual style guides, including approved colors and styles.
* Access to graphic assets and tools.

In this tutorial, I'll try to break down some strategies and techniques for approaching landing pages. We'll use AI, but not with quick one-and-done prompts.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Techniques — go section by section

In earlier sessions, I emphasized how going section by section results in a much better result. Researchers are  similarly finding that if you can let the AI think through a topic in more of a step-by-step fashion, it's much smarter. 

In the Big Technology Podcast episode [Is Generative AI Plateauing?](https://podcasts.apple.com/us/podcast/is-generative-ai-plateauing-booming-bluesky-apples/id1522960417?i=1000677128050), Alex Katrowitz explains:

> Recently, a new discipline in AI, called "reasoning," has emerged. … This focus on reasoning might be the near future of the field.  Models like OpenAI's "o1" are prompted, and their performance improves with increased "thinking" time.
> 
> According to OpenAI, researchers have developed a reasoning model, "o1," that dedicates more processing time to the training data before generating a response. This means o1e's response quality can improve with additional computing resources, even without modifying the underlying model. Casey Newton from Platformer cited an OpenAI researcher (from a TED AI talk) who stated that allowing the bot 20 seconds of step-by-step "thinking" in a poker hand yielded the same performance boost as increasing the model's size and training time a hundred-thousand-fold. 

For the Casey Newton reference, see [AI companies hit a scaling wall](https://www.platformer.news/openai-google-scaling-laws-anthropic-ai/).

Instead of making a bee-line straight for the answer in your chat sessions, try to slow down and step through the reasoning. This technique has echoes with an earlier article: [Task decomposition and complex diagrams](https://idratherbewriting.com/ai/prompt-engineering-task-decomposition.html). In the context of landing pages, this might mean going section by section, or even more methodical — breaking up the process into smaller steps such as identifying the story, identifying core features, and more before getting to the writing.

The upshot of this approach is to avoid prompts like this:

The wrong way: 

<div class="chat">
<p>Gemini, create a landing page for my product based on all this documentation….</p>
</div>

The result might be so poor that you abandon the entire process. Instead, here's a better way:

The right way: 

<div class="chat">
<p>Let's go through this section by section, step by step. I'll guide you each step of the way. First, based on the product pitch deck, how would define the product's overall story?</p>
</div>

The following sections describe a step-by-step process for approaching landing pages.

## Step 1: Identify the product story

You probably don't need to figure out your product story on your own. Business development and marketing groups already did this in a pitch deck. Any product that's mature enough that you're actually building a landing page for it most likely has slides that someone created to tell the product's story. Find these slides and use the story told as the outline. You can print the slide deck to PDF and feed it into your AI tool. Most tools support PDF uploads now. Because the story is key to a coherent message on the landing page, use a prompt like this:

<div class="chat">
<p>Based on these slides, identify what the product story is. A product story typically solves a business pain point in a unique, compelling way. Help articulate what the story is.</p>
</div>

If your product doesn't have a pitch deck, marketing site, or other assets, consider sitting down with the product manager and interviewing them about it.


## Step 2: Identify a landing page to imitate

Hopefully there won't be a need to reinvent the wheel with the landing pages. In your existing developer portal, is there a decent landing page for another product that you can copy? Chances are you're not the first one to create a landing page for a product. Find a landing page you like and copy the code. 

A prompt like this will work:

<div class="chat">
<p>The following is the source code for a landing page. This landing page is for another product. I want you to use this same syntax to build out the landing page for my product…</p>
</div>

The approach can be as simple as customizing the existing content bit by bit. Many landing pages in docs-as-code system format the code in a YAML file that scripts iterate through to produce an HTML output. This hides the technical complexity &mdash; you just have to study the YAML syntax rules, not write HTML and CSS code.

If you don't have any good landing pages in your developer portal, look at company documentation you admire and take inspiration from landing pages you like. Most landing pages involve multi-column layouts, alternating sections with different background colors, hero banners, card layouts, graphics-heavy layouts, and more. Google, Microsoft, Amazon, and other big tech companies have some good landing pages. Here are a few links for examples:

* [Windows Server documentation](https://learn.microsoft.com/en-us/windows-server/)
* [Microsoft SQL documentation](https://learn.microsoft.com/en-us/sql/?view=sql-server-ver16)
* [Amazon Simple Storage Service Documentation](https://docs.aws.amazon.com/s3/)
* [Amazon Elastic Compute Cloud Documentation](https://docs.aws.amazon.com/ec2) 
* [Developer documentation for Firebase](https://firebase.google.com/docs)
* [Android Developer Documentation/](https://developer.android.com/)
* [Android for Cars overview ](https://developer.android.com/training/cars)
* [Gemini API for developers](https://ai.google.dev/gemini-api/docs)
* [Stripe payments](https://docs.stripe.com/payments)
* [Sendgrid](https://www.twilio.com/docs/sendgrid)
* [Plaid](https://plaid.com/docs/)
* [Shutterstock](https://www.shutterstock.com/developers/documentation)
* [Nylas documentation](https://developer.nylas.com/)

Note that there are different types of landing pages. Some landing pages function as the landing page for dozens of different products. Other landing pages are for one specific product only. Other landing pages are subject-based, such as AI or automotive.

## Step 3: Populate a foundation draft

You have a couple of paths you can take to get an initial foundation. You can try to get an initial draft of the entire landing page at once, just to see how it might turn out. Or you can just go section by section from the beginning.

To experiment with a foundation draft for the entire landing page, feed the pitch deck, product overview, sample YAML syntax, and other high-level assets into your AI tool and ask it to create a first draft of a landing page with the new content. Prioritize the pitch deck for the key points and structure.

The result will probably be poor, but it will give you something to look at. Sometimes having something to see can be more clarifying than looking at a blank page. Assuming you already have the high-level story defined, your prompt can be something like this:

<div class="chat">
<p>Keep in mind the high-level product story. [PASTE IN THE STORY] Considering that product story along with the pitch deck and other overviews, customize the YAML syntax with landing page information for the product.</p>
</div>

Alternatively, if that attempt yields garbage, go section by section. Start with the banner area, then proceed section by section through the entire landing page. Course correct each response to improve the next one. For example, if the AI generates marketingesque, salesy language, tell it to be more matter-of-fact and to avoid adjectives and adverbs.

## Step 4: Make decisions about each section

As I mentioned in the techniques section, the key is to go section by section. With each section, make the needed adjustments. For example:

* **Need more detail?** Feed the AI your documentation for that topic and ask it to improve the specific YAML section with that information. Most AI tools do a nice job summarizing and condensing the information.
* **Need to adjust the column lengths?** Pull those sections out specifically and ask AI to even up the text.
* **Don't like a section?** Remove it and ask AI to populate the section with documentation that you pass in.

{% include ads.html %}

## Step 5: Find graphics

There's no easy way to use AI for graphics. Although you could ask AI to create one-off graphics, using AI to generate icon-like graphics and images that match your visual style guide in cohesive, unifying ways is challenging.

I briefly experimented with the AI generation tool in Adobe Illustrator, which can impressively generate vector graphics. However, I still have a lot to learn before I can use those systems in a controlled way to get consistent results. Perhaps a graphic designer would have an easier time with this &mdash; I'm still figuring this out.

Most likely if you have a visual style guide, you have a collection of approved assets (like a sticker sheet) that you can use. The problem is that these graphics, being general for many different use cases, are probably hopelessly cliché (for example, a magnifying glass, an upward trending arrow, a puzzle piece, two gear cogs, a checkmark, and so on). 

General, multi-purpose graphic assets can be the equivalent of giving a writer a bunch of stock phrases to describe their product and then expecting the result to be engaging. Imagine providing a stock-phrase set for technical writers and requiring them to stick with these phrases in describing their product:

> 1. "Use [API Name] to [Action] and [Action]."
> 2. "The [API Name] provides [Key Feature] for [Specific Use Case]."
> 3. "Leverage the [Key Feature] of [API Name] to [Technical Outcome]."
> 4. "Integrate [API Name] to achieve [Specific Integration Result]."
> 5. "With [API Name], you can [Action] through [Specific Method]."
> 6. "[API Name] offers a [Descriptor] interface for [Technical Task]."
> 7. "Access [Data/Resource] via [API Name] using [Protocol]."
> 8. "[API Name] simplifies [Complex Task] by providing [Specific Functionality]."

If images are the same way, the landing page might look generic and cookie cutter. With this in mind, don't get too fixated on your landing page graphics. Unless you have dedicated resources for creating custom graphic assets, the most you can hope for your graphics is that they don't distract in embarrassing ways. Try to use screenshots from your product if possible — at least they'll be unique. If you can put unique screenshots inside visually interesting frames (like a computer monitor or screen in a car, etc.), it can help offset the generic elements with unique features.

## Step 6: Link all the sections to the documentation

If there's one defining characteristic of a landing page, it's that it serves as a jumping off point for the most important documentation on your site. As such, the landing page should be dripping with links to everything. It functions mostly as a routing page, helping users discover and quickly get to other pages. Given that purpose, it's probably not as important or critical as it might initially seem. It's a page people start out on their way to the real content. Perhaps you can briefly tell the product's story on that page, or perhaps you link out to a more developed narrative.

## Related reading

* [Why designing landing pages is hard](/blog/designing-landing-pages)
