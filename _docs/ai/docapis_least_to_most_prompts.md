---
title:  "Least-to-most prompting techniques"
permalink: learnapidoc/docapis_least_to_most_prompts.html
keywords:
course: "Documenting REST APIs"
weight: 14.6
sidebar: docapis
section: docapisai
path1: learnapidoc/ai.html
last-modified: 2023-08-15
---

{% include coffeeshopbook.html %}

In the context of AI prompt engineering strategies, least-to-most prompts involve asking for high-level information/outlines first, followed by subsequent prompts that dive into each point for greater detail. I recently used this technique in preparing notes for a book club and, though I haven't yet used it for API documentation, I think it could work well for a number of documentation-related scenarios.

## The basic strategy of least-to-most prompts

In _Prompt Engineering for Generative AI,_ James Phoenix and Mike Taylor describe the least to most prompt technique as follows:

> The Least To Most prompt technique allows you to sequentially create/extract more knowledge in any topic.
> 
> This is often a series of prompt chains, with each prompt input utilizing the generated information from previous prompt outputs.
> 
> This technique can also be applied to code generation, as demonstrated in a Flask Hello World app example.
> 
> ...
> 
> First, we start by asking the AI to outline the basic architecture for a simple Flask Hello World application.
> 
> ...
> 
> Next, we request the AI to provide the code snippet for a simple “Hello World” route in Flask. (See “Chapter 2. Standard Practices for Text Generation”)

In other words, you start by asking for high-level information first; then based on the responses, you zoom into the detail for each response.

In many ways the least-to-most technique is just common sense, but it's worth noting that it mirrors the same strategies technical writers use when breaking down complex information into usable documentation: we start with a high-level to paint the big picture, then break it down into detailed sections and granular steps. This style of documentation helps the user complete the larger, more complex task. 

When you're working with AI tools to help you address a large, complex issue, you can follow the same strategy: start at the high-level to get a general picture, then zoom into each of the general points with a more specific section and details.

Additionally, by splitting the prompts into multiple iterations, you can course-correct the information before the AI goes into directions you don't want. For example, suppose you to ask the AI to write documentation about the topic “Foo,” and it spit out 500 words that were mostly irrelevant. Instead, if you were to begin by asking for a high level outline of Foo, you could then focus on specific outline bullets that are relevant and on target. In other words, you can correct the AI's responses by omitting those details in the follow-up questions, much like agile methodology allows for course-corrections through frequent customer checkins. Least-to-most prompts ensure the AI stays on track toward your information needs and goals.

{% include ads.html %}

## Book club example

I run a book club at work focused on auto and transportation topics (since I work with geo-related APIs for maps in cars). I haven't talked about this book club much on my blog, but it's something that grew out of my [Journey away from smartphones series](https://idratherbewriting.com/smartphones/overview.html). (The TLDR of that series is that by cutting back my smartphone usage, I started reading more books.)

Anyway, every month we read a book and then meet to discuss it. As the book club facilitator, I select the book and prepare notes and discussion for it. Like everyone else, I don't have a lot of time for this preparation. The latest book we read was _Paved Paradise: How Parking Explains the World_, by Henry Grabar. I like to annotate pages as I read because it makes the reading experience more active. I finished the book on Wednesday and had one afternoon to prepare the notes/discussion for the book club meeting on Friday, in addition to doing tech writing work. In just one afternoon, how do you prepare detailed notes and discussion from a 280 page book covering a variety of topics?

Here was my process:

1. Go back through the book and_ voice type _the key passages and ideas into a Google Doc. (I used to type the notes out; then I discovered voice typing by going to Tools > Voice typing in Google Docs, and it sped things up.) This part is the most tedious because I put stars next to far too many passages when I read. However, collecting this material is key to creating the input source for the AI. I don't mind if the voice-typed passages have errors because the AI tools are generally great at correctly interpreting the intent and meaning anyway.
2. Find about 10 book reviews and copy and paste the review content into the same Google Doc. (I sometimes don't even read the reviews.)
3. Ask a high-level question to the AI. I chose to use [Claude.ai](https://claude.ai/) because it accepts a large input, and also because the book club doesn't involve confidential data. (If you haven't tried Claude, it's pretty amazing. The large text input is a game-changer because it allows you to supply more context to the AI, which can prevent the wacky hallucinations and fictitious responses.) The prompt I used was the following: 

   <div class="chat">
   The following content contains quotes from Henry Grabar's book, Paved Paradise:
   How Parking Explains the World. There are also book reviews. From this content,
   pick out the major themes in the book and the high-level arguments.
   </div>

   Here's a screenshot:

   <img class="medium" src="{{site.api_media}}/claudechatparking.png" alt="Claude parking 1" />

4. Zoom into one of the bullet points in the response. Here's my prompt:

   <div class="chat">
   Now I want to zoom in on some of these arguments, starting
   with this one: "Required parking for housing and other buildings has limited the
   creation of affordable housing and driven up costs. Parking can add tens of
   thousands of dollars per unit, pricing out lower income residents." Articulate
   the logic in as crisp of a way as possible. What is the assertion, what are the
   supporting reasons, and what's the premise? Any faulty assumptions in the
   reasoning?
   </div>

   Here's a screenshot:

   <img class="medium" src="{{site.api_media}}/claudechatparking2.png" alt="Claude parking 2" />

Because I'd read the book, I could easily distinguish whether Claude's responses were on target. About 80% of the time or more, it was accurate—in part because I'd primed the AI with accurate input sources. My approach in compiling the discussion notes was to clarify and articulate the author's main arguments, and AI's responses made this easy.

{% include ads.html %}

Could I do this same task myself, without relying on AI? Sure, in the same way I could calculate long-division by hand. It probably would have exercised more critical muscles in my brain to do so, but again, time is the issue.

In my notes, I also included a section called “Tom's thoughts on the book” that did not involve using AI. I knew that AI couldn't write that content for me (because I didn't supply an input source), and I wanted to cast it more in my own language and speech anyway. 

After cleaning up some of Claude's responses (removing redundancies, condensing bullets, removing fluff, etc.), I pasted the content into Bard and asked it to do the following:

<div class="chat">
Make this content sound less formal.
</div>

I feel like Bard has better human-sounding language. Claude and ChatGPT are both a bit stiff, though it might be that I haven't prompted the AI with the right tone and style I want.

{% include random_ad4.html %}

Overall, this process allowed me to quickly arrive at a good summary of the book's main arguments. I added some more discussion questions (not using AI) at the end of each section, and I was ready to go. The book club turned out to be one of the best of the year!

(By the way, if your tech writing domain lends itself to any relevant book club like this, go for it. You won't regret it. We average about 5 people per book club, which turns out to be just the right number of people. This is also the optimum number of people to have for most conversations, either at a book club or at a dinner table.)

## Applications to tech comm

You can use least-to-most prompts in a variety of tech comm scenarios. One classic case could be any scenario for which affinity diagramming is a good fit. Suppose you receive hundreds of responses from users that get filed into endless contact form submissions and bugs. Affinity diagramming is a technique (used by UX professionals) to group the large collection of discrete items into general groups, and then group the groups into larger themes. The goal is to make sense of a lot of little pieces of information. Usually, affinity diagramming is done using Post-it notes on walls, with a handful of people moving the Post-it notes into thematic groupings.

{% include random_ad2.html %}

Affinity diagramming is often done with feedback/brainstorming sessions as well. For example, during one recent project kickoff session I had, about 70 people were split into 7 groups and each group was asked to write down all their concerns about the project into a spreadsheet. After standing around and chatting with our group for 30 minutes, we listed at least 30 solid concerns. Multiply that by 7 groups, and you suddenly have a lot of information to sort and manage.

I'm sure you could think of a lot of scenarios where you have a lot of discrete pieces of information to sort and group. Here are a few:

* You support a dozen projects and need to identify where you should focus your tech writing bandwidth. To identify pain points, you gather up a long list of bugs across all the projects and then have an AI help group and sort the bugs into logical categories with item counts.
* Your documentation lacks organization and involves FAQs that have hundreds of questions and responses. You use AI to migrate the FAQs into various topics and themed groupings.
* You have hundreds of glossary terms that you need to sort into buckets by theme so that you can provide micro-glossaries in each section where the terms are relevant.
* You need to identify tags for documentation pages, which you could then use to label each page and surface parallel topics.
* You need to come up with a document structure that has logical folders for 100+ individual topics. You use AI to help sort and classify the content.

Each of these scenarios involves sorting and grouping lots of little pieces of information. This could be considered the first part of least-to-most prompting. The second stage would involve gathering more detail about the high-level groups. Here's the second part to the previous list of tasks:

* After identifying where to focus your bandwidth, you dive into the first focus area and expand it with more detail to identify specific pain points, error messages, or other gaps.
* After grouping the FAQs into various topics, you then zoom into each topic and organize the content into a coherent story and flow.
* After sorting glossary terms into thematic buckets, you then organize the terms around specific use-case scenarios to give each term more context.
* After identifying tags for documentation pages, you generate descriptions of each tag to give users a better sense of what the tags mean and include.
* After defining the document folder structure, you sort the individual items into a logical arrangement and also identify missing topics.

{% include random_ad3.html %}

## Conclusion

Least-to-most prompts are appropriate in scenarios like those I've described, in which you're moving from general information to more specific detail. If you keep this strategy in mind as you interact with AI, you'll find that working with the tool becomes more intuitive and second-nature.