---
title:  "Use cases for AI: Create glossary definitions"
permalink: learnapidoc/docapis_ai_glossary_definitions.html
keywords:
course: "Documenting REST APIs"
weight: 14.91
sidebar: docapis
section: docapisai
path1: learnapidoc/ai.html
last-modified: 2023-09-04
---


{% include coffeeshopbook.html %}

In this series on [AI tools and APIs](ai.html), the question I keep asking is this: how can we use AI for practical tasks with API documentation? Specifically, how can we leverage generative AI tools to do API documentation work faster, easier, and better? My goal is to assemble about a dozen solid ways that we can use AI with API docs. In this topic, I'll explore potentially using AI for glossary definitions.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Background on glossaries

In the Conceptual docs section of this course, I wrote about [glossaries](docapis_glossary_section.html), which provide a list of key terms and definitions. Glossaries are often an overlooked aspect of API docs, a feature that tech writers omit because no one has time to put together a glossary. All the while, unfamiliar terms continue to creep into the tech docs until the language becomes jargon-filled and impenetrable to everyone except the product team.

I find that my interest in glossaries comes and goes, but it's especially strong when I'm new to a domain and am seeing unfamiliar terms. When I'm in my glossary champion mode, I'll add new terms to glossaries with each new document I write. Most releases seem to introduce at least one or two new terms that require definitions, and those definitions should exist in a glossary (and potentially a style guide).

Glossaries become increasingly important when you have competing terms for the same concepts. When one term refers to a feature as an _API_, another calls it an _endpoint_, another calls it a _method_, and so on, this is a recipe for user confusion in tech docs. API documentation has a variety of competing terms used for the same ideas, making it a wild west type of knowledge domain.

In addition to helping users, a glossary can also help align writers with consistent terms. In these cases, the glossary is often called a "Terms list" (part of a style guide) and is light on definitions. Term lists make it easier to write. For example, when you no longer have to decide between "widget" or "component" when composing a sentence, it's easier to write.

{% include random_ad3.html %}

## Using AIs for glossary work

Given that compiling and maintaining glossaries can be time consuming, can we use AI to help us with glossaries? Maybe. Just as AIs are good at creating summaries, providing definitions might be one of AI's strengths. A definition is just a short summary of a concept. 

AI tools are also good at identifying potentially unfamiliar, jargon-filled terms and then listing concise definitions for them. The AI can identify terms that we've grown blind to because we've used them for so long. However, in my experiments, AI tools fell short in a number of places that might still frustrate writers. AI tools are still helpful, but they're not a push-button solution.

## Previous posts with AI definitions

I've already written a couple of posts about using AI tools like ChatGPT to define terms. In a [book review I wrote about Jeff Krinnock and Matt Hoff's May I ask a technical question?](https://idratherbewriting.com/blog/review-krinock-hoff-may-i-ask-a-technical-question/), I provided a list of terms introduced by the book, such as _sousveillance_, _solutionism_, _lateral surveillance_, and more. I uploaded a PDF of the book (which I had available to me) and asked ChatGPT to provide definitions of these terms. The definitions were actually clearer and easier to follow than some of the chapters. (I did this in the early days of ChatGPT, before the context windows shrunk to much smaller token limits.) The author liked these summaries as well.

AI tools seem to excel at definitions because a definition fits the explanatory style these tools provide. Definitions aren't creative blog posts that need a balance of voice, personal experience, and unique argument. Definitions read better as plain, matter-of-fact explanations. 

I also wrote a post titled [Using AI tools to look up words and provide mini-poems to help remember their meaning](https://idratherbewriting.com/2023/04/16/using-ai-tools-for-vocabulary-lookup/#tip-for-constructing-the-prompt). That post included rhyming poems to try to help me remember definitions of more common words. Again, AI tools were great with this. These tools saved me a ton of look-up time, and the poems (as bad as they were) made learning fun. By providing the pattern I wanted it to follow&mdash;a technique I described in [AI document engineering with pattern-based prompts](docapis_pattern_prompts.html)&mdash;ChatGPT populated all new terms into that same pattern and format. In this case, though, all the terms were commonly found in dictionaries. When writing API documentation, however, many of the terms are often specialized and company-specific.

{% include random_ad2.html %}

## Experimenting with larger glossaries

To experiment with a larger glossary effort, I decided to work with the glossary in my API course. My API doc course also already has an [API glossary](glossary.html) with about 70 terms. I compiled the glossary in the early days of this course but haven't added to it since then, in part because I almost never see feedback about it. In this experiment, I wanted to refresh, expand, and integrate the glossary better.

For this experiment, I mostly used [Claude.ai](https://claude.ai) since it allows for much better context windows. You can upload PDFs (less than 10 MB in size) to Claude, and the chat sessions maintain a context window (total word count for the chat session) up to 100k tokens. This allowed me to upload several PDFs per Claude chat session before maxing out the tokens. I also used ChatGPT in places because I felt that for shorter content, its outputs were better.

## Splitting up the PDF

To work within the constraints of the context windows, I first split my API course into chapter PDFs using [PDFtk for server](https://www.pdflabs.com/tools/pdftk-server/). This is something I'd been meaning to do anyway because the comprehensive PDF is 900+ pages and many people find it overwhelming. I generated the single long PDF using [Prince](https://www.princexml.com/), then applied some [PDFtk scripts](https://github.com/tomjoht/tomjoht.github.io/blob/main/pdf_build_docapis_all.sh) to divide it by chapter (based on manually configured chapter page spans). This approach preserved the cross references across chapters. 

I also split up the Publishing Tools chapter into two separate chapters because that chapter's PDF length exceeded the 10MB limit. Now all chapters in my long PDF are each under 10MB and can be uploaded into Claude. I'm really fond of the idea of uploading chapters to Claude and asking it to perform some analysis and interaction. I'll explore that more in the articles to come.

With each PDF, I asked Claude the following:

<div class="chat">
[UPLOAD CHAPTER PDF] From the PDF here, identify all the words that would be good to add to a glossary for a course on API documentation. Provide definitions of each of the terms as well.
</div>

Claude looked through the content and provided a list of definitions. The definitions looked all right—fairly representative of the chapter content. Some of my chapters cover a lot of different topics, making it difficult to select a coherent set of terms.

Note that because I'm not on a paid Claude plan (paid plans haven't been released yet), the number of queries is limited. When you exceed the allowed query limit (which seemed to be about 10 glossary-related queries for me), you have to wait several hours to use Claude again. So uploading the PDFs and getting vocab lists took a day of making queries at different times. 

Also, each chat session could only provide terms for 3 chapters before the chat session's context window maxed out and I had to create a new chat session. Even so, the ability to work with much longer input sources in an AI tool is immensely appealing.

{% include ads.html %}

## De-duplicating terms

After gathering the glossary lists for each chapter from Claude's responses, I needed to deduplicate the terms. Claude often pulled out the same terms multiple times from the chapters, especially across chat sessions—for a total of about 300 terms. I pasted all of Claude's terms into a single Google Sheet. I then included my previous glossary terms (70 terms) in the same sheet, and sorted by title.

After sorting, I read through the duplicate terms and picked the best definitions. Sometimes Claude's definitions were highly similar. Since the definitions were made in the context of my content, I could see where Claude's definitions were inspired by my content, whereas in other places the definitions seemed to pull from the web's general knowledge. After selecting the best definitions, I deleted the duplicates. After the deduplication, the list of terms shrunk from about 300 to 160 terms.

{% include image_ad_right.html %}

## Formatting the definitions

With this list of definitions, I needed to format the content in YAML syntax. I already had a YAML syntax defined for the terms that looks like this: 

```yaml
clone:
  term: clone
  def: "The command used to copy a repository in a way that keeps it linked to the original…"
```

My prompt to Claude looked as follows:

<div class="chat">
Structure this list of glossary definitions with the following YAML syntax. [PASTE SYNTAX ABOVE]
</div>

Claude did an excellent job at the YAML formatting, as has been my experience with other AI tools. Time and again, AI tools do exceedingly well at pattern matching. However, copying and pasting from Claude dropped the spacing syntax, so I ended up using ChatGPT for this. Claude doesn't offer code view styling for its content, unlike ChatGPT and Bard. 

After formatting the content in YAML, I replaced my [existing glossary YAML](https://github.com/tomjoht/tomjoht.github.io/blob/main/_data/glossary.yml). 

I already had Liquid code that generates a glossary list from the YAML: [glossary_full.html](https://github.com/tomjoht/tomjoht.github.io/blob/main/_includes/glossary_full.html). I wrote about my technique using this Liquid code to pull from the YAML source previously in my [API glossary topic](docapis_glossary_section.html), including how to pull the terms into Bootstrap tooltips and popups if desired. You can see the newly generated glossary list here: [Glossary](glossary.html).

{% include random_ad4.html %}

## Glossary groups

There was one more step I wanted to make. Few people consult a long glossary except to look up a word here and there, so the alphabetical list of terms isn't that helpful. What if instead I could create specific vocabulary groups of related terms? These groups might help users learn the essential terms for a domain. 

Because I already had a list of terms, I just needed to make one more query to Claude: arrange the terms into logical sub-groups based on themes. Sounds like it would be easy to sort this list of 160 terms into about a dozen groups, right? Here was my prompt:

Prompt:

<div class="chat">
I want you to identify a subgroup of vocabulary terms that would be good to include in a mini-list for each chapter. The following is a list of all vocabulary terms: And here is a PDF of chapter 1. For chapter 1, identify the most relevant vocabulary terms to include in this mini-list. Limit the number of terms to no more than 15 terms. Include only the keys for each term (e.g., agile_testing for agile). Make the list comma-separated.
</div>

Claude's response was mediocre. Some of the terms didn't group well. I tried the same with ChatGPT:

<div class="chat">
The following vocab list is in alphabetical order, but it's not very helpful. It would be more helpful to group the terms into different subgroups based on similar themes. do that for these terms. don't make more than 15 subgroups. In each subgroup, include only a list of comma-separated keys, where the key is the term that introduces the "term" and "def", like <code>agile_testing</code> or <code>daily_standup</code>.
</div>

The responses were mediocre as well.

I tried a number of similar queries to each tool, trying to get it to sort the terms more logically.

<div class="chat">
Looking through this list of glossary terms, identify the most relevant terms used in this chapter. 
</div>

Again, the results weren't great. This task might have been difficult because the terminology is a mixed bag that doesn't sort well. Maybe there aren't salient groupings that allow for easy categorization. I ended up using one of the responses from ChatGPT as a starting point and then did my own custom sorting and grouping for the next hour.

In looking at the groups of terms, I realized that the terms are a bit dated. The core content in my API doc course needs to be refreshed and updated, but making these updates is a huge undertaking. Admittedly, I'm much better at writing new content than updating existing content. It's the blogger in me.

## Fixing errors

I also noticed that the AI's proposed term lists (which included a miscellaneous category) omitted some of the terms. Even when I asked if any terms had been omitted, the AI tools said none had, even though that wasn't true. Because of these drops, checking the outputs and fixing the errors ended up involving more manual input than I planned. 

Also, note that AI tools are extremely convincing in their apologies and fixes (for example, saying, "You're right. I made an error in the list but have corrected it below. I apologize for the oversight …"), but you have to remember that apology is often a hallucination as well, and the fixes aren't fixes. There's a natural inclination to trust the outputs of these tools, but they frequently make errors or do other unintended things, like make up new terms along the way or change the reference keys to the terms.

## Includes for the glossary groups

After I finished sorting, I needed to get the glossary groups on a page. I modified my [glossary_limited.html include](https://github.com/tomjoht/tomjoht.github.io/blob/main/_includes/glossary_limited.html) into a new include called [glossary_group.html](https://github.com/tomjoht/tomjoht.github.io/blob/main/_includes/glossary_group.html). Because I'm lazy, I asked ChatGPT for help on including Bootstrap v.3 expandable buttons along with a counter to make these simple modifications to the glossary_limited.html include. I also had ChatGPT render the syntax for the include on the page based on an existing pattern (see [glossary.html source](https://github.com/tomjoht/tomjoht.github.io/blob/main/_docs/glossary/glossary_groups.md)). The output is here: [Glossary groups](glossary_groups.html).

## Expanding the glossary groups

Looking over my glossary groups, I wasn't satisfied with the number of terms, as they seemed incomplete and dated. Because AI tools are good at pattern matching and connections, I figured they could do a good job at predicting what other terms would match the existing pattern of terms. So I asked ChatGPT to expand them: 

<div class="chat"> \
The following is a group of specialized glossary terms for http methods in REST APIs. Expand the number of terms with a more comprehensive list of terms related to http methods. [PASTE IN TERMS FOR A GLOSSARY GROUP]

</div>

AI tools are good at pattern-matching and connections, and the responses didn't disappoint here. I added about 25 more terms to the overall list, filling in gaps and other missing terms. Inserting these terms was somewhat manual because I'd already alphabetized and formatted the list, and I didn't want to bother with exports, reimports, additional sorting, etc.

## Conclusion

In conclusion, did AI help me put together an amazing glossary with little effort? Not really. But the AI's assistance is still an incredible tool to use in the process. In general, it probably allowed me to reach my goal 50% faster. Plus, the definitions provided by AI for general concepts were both acceptable and easy to produce. When the AI produced errors (like omitting some terms in its grouping of the vocab items, then denying that any terms were omitted), it made me double-check its work and proceed more cautiously. But overall, using AI tools in this scenario was definitely a good decision that saved me a lot of time.

Overall, I'm still convinced that pattern-matching is where these tools excel, so I'll try to formulate my queries to be more pattern-based. More and more I see that it's really the case that AI tools will assist us in our work rather than replace us. There's no way the AI tool could just create a glossary for a 900 page course in one prompt. Instead we break up complex tasks into small sub-tasks and leverage AI along the way, particularly with tasks that involve pattern-matching and formatting.