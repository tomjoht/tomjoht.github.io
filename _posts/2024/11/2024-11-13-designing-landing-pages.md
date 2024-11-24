---
title: "Why designing landing pages is hard"
permalink: /blog/designing-landing-pages
date: 2024-11-13
categories:
- ai
- technical-writing
keywords: 
rebrandly: https://idbwrtng.com/designing-landing-pages
description: "We frequently hear about AI freeing up bandwidth so we can focus on more complex, strategic tasks. For me, one of those tasks has been to work on a landing page for one of our products. It's something I've been meaning to get to for months. I'm not sure why I don't naturally gravitate toward designing landing pages. If you already have comprehensive documentation, creating the landing page should be simple: gather section overviews and arrange them logically in an appealing layout. Still, landing pages can be challenging, not just in designing the content and flow, but in tackling the visual and graphical elements of the page. This post includes my rambling thoughts on landing pages and why they're challenging for technical writers."
---

* TOC
{:toc}


## About landing pages

A landing page usually has some graphic elements, even if they're only decorative. The layout is often more sophisticated, switching from right to left sides in a graphics-heavy format, and also including sections with multi-column layouts and cards. If you have to build the layout yourself with CSS and HTML, it will require web design skills. But even if you already have a pre-built template to populate, the color, graphics, and layout choices require you to think in different ways than most of the text-heavy documentation pages.

For some examples of landing pages, see this [Develop for Android](https://developer.android.com/develop) landing page, or the [Android Health & Fitness](https://developer.android.com/health-and-fitness) landing page, or the [Gemini API](https://ai.google.dev/gemini-api/docs) landing page. I don't work in those areas, but they provide good examples of the types of landing pages I'm referring to.

## Content decisions

Where do you start with the content for a landing page? One helpful strategy is to find a slide deck for your product, and then use it as a general structure and content source for the landing page. In my group, business development people commonly use product pitch decks for partners. These pitch decks can be a gold mine for landing page content, even providing some visual assets. They call out the most important features of the product and structure the story in a way that's somewhat easy to imitate on a landing page.

{% include ads.html %}

## Color

Although most developer portals prefer a clean minimal look, landing pages are often a bit colorful. For example, some landing pages have alternating sections with different background colors. 

In choosing colors, you're most likely subject to a prescribed color palette, following a visual style guide. Even with a limited set of color choices, mixing and matching section background colors requires some aesthetic design skills. I'm not used to exercising these aesthetic design muscles. Clearly, contrasting colors is a good pattern — but should you start with lighter colors first, or darker colors? Which colors go well together, etc.? My strategy is usually to copy an existing landing page that I like. :)


## Graphics

Beyond colors, you'll probably have to look around for some (often disappointing) graphics. At some point during a web redesign effort, a graphic designer might have created a set of images and icons following a consistent style, providing ready-made assets for content creators. However, chances are the images and icons are general (and cliché) and don't entirely fit your product and needs. But unless you have the skills to create your own graphics in the style of the approved assets, you'll need to make do.

You could spend days adding your own graphics, or incorporating them from different approved sources. But if the graphics don't look like they fit together, the landing page will resemble a patchwork of different graphic styles. As a result, you'll probably have to choose among the cliché images — a magnifying glass, an upward trending arrow, a checkmark, a code bracket, gear cogs, puzzle pieces, a pencil, and so on. 

I thought about potentially using the image generation features in Adobe Illustrator to create some vector images, which I could then tweak to fit our visual style guide. I tried this but found the generated images too different from our existing visual style. Licensing of images is also a gray area here. I ended up abandoning this AI effort.


## Layout

There's also a question of layout. Most documentation pages are left-aligned and contained within the same section. But landing pages can look like a magazine layout, with different sections alternating between left and right columns of text. Other sections might include multiple columns of text stacked next to each other. Images of varying sizes usually decorate each column heading and section. Cards have the unique advantage of looking visual without actual containing graphics.

Because these layouts require you to be precise with your word count, you can't have one column that's noticeably longer than another column, or one description for a card that's longer than other card descriptions. This kind of symmetry will surface constantly in your editorial and content choices.


## Start by copying an existing landing page

As I mentioned earlier, my approach is to find a landing page I like (within our existing developer portal), copy the content, and then just start changing it little by little with my own product's content. Here, AI can be helpful. For example, you could go section by section. Paste in abundant documentation related to a specific section and ask AI to extract a condensed, summarized version to fit into the landing page's layout space. 

This approach works for giving you an early, rough draft, but AI will likely struggle to tackle the whole landing page at once. There's too much content, too many decisions about what to call out, how to structure the flow, the images to choose, etc. AI can't hit a home run here, but it can help speed through the textual needs of the page as well as help with syntax and format. Watch out for off-putting marketing language, though. You don't want to lose the authentic, matter-of-fact tone so characteristic of good documentation.

You can also use AI in another way — as a guide for the syntax. For example, our landing pages use a YAML file as a source (as is common in docs-as-code publishing systems). There's great documentation that describes the available fields and structure of the YAML, but I didn't have patience to read it. However, I wanted the images larger in a certain section. So I gathered up the documentation about the landing pages, along with my existing YAML, and described my problem. AI told me the answer in seconds (it was simple — swap one YAML field for another). At any rate, the idea that AI could read the documentation and figure out the YAML syntax for me was a bit of a relief. This allowed me to focus on content strategy instead of getting bogged down in YAML syntax.


## Conclusion

I spent two days finishing the landing page, so it took a good chunk of time. The landing page does provide a nice map for the content, and I'm generally pleased with the outcome. (Sorry that I can't share it — it's behind a firewall.) I generally interpret the landing page as a routing page, a place where users go on their way to the real content. As such, I provide an abundance of links and help people get to the most popular pages in the documentation. But there is value in these landing pages that I never realized before: they tell your product's story from a high level, allowing users to get a sense of your product's main features and documentation. Seeing that story emerge can be satisfying, especially if you've been working on individual pages of documentation for years.

## Related reading

* [Using AI to design pages](/ai/prompt-engineering-landing-pages.html)