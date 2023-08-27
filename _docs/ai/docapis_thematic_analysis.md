---
title:  "Using AI For thematic analysis"
permalink: learnapidoc/docapis_thematic_analysis.html
keywords:
course: "Documenting REST APIs"
weight: 14.6
sidebar: docapis
section: docapisai
path1: learnapidoc/ai.html
last-modified: 2023-08-15
---

{% include coffeeshopbook.html %}

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

One of the main ways I use AI is with thematic analysis, which involves identifying, analyzing, and reporting patterns (themes) within qualitative data. After you identify major themes, you can use least-to-most prompting techniques to go into more detail.

I recently used this technique in preparing notes for a book club and, though I haven't yet used it for API documentation, I think it could work well for a number of documentation-related scenarios.

## Step 1: Thematic analysis

Let me introduce thematic analysis through an example. I run a book club at work focused on auto and transportation topics (since I work with geo-related APIs for maps in cars). I haven't talked about this book club much on my blog, but it's something that grew out of my [Journey away from smartphones series](https://idratherbewriting.com/smartphones/overview.html).

Every month we read a book and then meet to discuss it. As the book club facilitator, I select the book and prepare notes and discussion for it. Like everyone else, I don't have a lot of time for this preparation, given that I squeeze it in among work tasks. 

The latest book we read was _Paved Paradise: How Parking Explains the World_, by Henry Grabar. I like to annotate pages as I read because it makes the reading experience more active. I usually finish the book a few days before the book club meeting. In a short amount of time, how do you prepare detailed notes and discussion from a 280 page book covering a variety of topics?

Here's my process:

1. Go back through the book and _voice type_ the key passages and ideas into a Google Doc. (I used to type the notes out; then I discovered voice typing by going to Tools > Voice typing in Google Docs, and it sped things up.) This part is the most tedious because I put stars next to far too many passages when I read. However, collecting this material is key to creating the input source for the AI. I don't mind if the voice-typed passages have errors because the AI tools are generally great at correctly interpreting the intent and meaning anyway.
2. Find about 10 book reviews and copy and paste the review content into the same Google Doc.
3. Ask a high-level question to the AI. I chose to use [Claude.ai](https://claude.ai/) because it accepts a large input, and also because the book club doesn't involve confidential data. (If you haven't tried Claude, it's pretty amazing. The large text input allows you to supply more context to the AI, which can prevent the wacky hallucinations and fictitious responses.) Here's the prompt I used:

   <div class="chat">
   The following content contains quotes from Henry Grabar's book, Paved Paradise:
   How Parking Explains the World. There are also book reviews. From this content,
   pick out the major themes in the book and the high-level arguments.
   </div>

   Here's a screenshot:

   <img class="medium" src="{{site.api_media}}/claudechatparking.png" alt="Claude parking 1" />

The result was a list of major themes and high-level arguments in the book. The ability to synthesize general themes from small pieces of data is a technique used in many domains. For example, when researchers make sense of feedback, they often code the feedback with terms and then quantify the instances of the terms. 

{% include image_ad_right.html %}

The following sections list other use cases for thematic analysis, more applicable to tech comm.

### Thematic analysis of job ads

I wrote about this technique in [Looking at job advertisements to extrapolate the evolution of tech comm](https://idratherbewriting.com/2018/10/09/tech-comm-trends-more-collaboration-with-engineers/#jobads). In "The Evolution of Technical Communication: An Analysis of Industry Job Postings" (Nov 2015 Technical Communication Journal), Eva Brumberger and Claire Lauer analyze hundreds of job advertisements, looking for patterns. They want to know what skills employers are looking for so they can prepare their students to be successful in the job market.

After identifying the patterns in the job ads, they quantify them to assess trending patterns. From this research, they arrive at a list of desired skills. The most sought-after professional competencies for technical writers/editors include written communication (75%), Editing (51%), Project planning/mgmt (49%), Visual communication (49%), Subject-matter familiarity (45%), Working with SMEs (41%), and Style guides/standards (40%).

### Thematic analysis of feedback

Affinity diagramming is another common technique used by UX researchers to synthesis user feedback into more actionable groups and themes. An affinity diagramming session starts with writing hundreds of qualitative statements on post-it notes; then a dozen or so people group the post-it notes into thematic groupings. Finally, someone writes a statement that expresses the grouping of items. This technique allows researchers to go from hundreds of points of data (fragmented, ungrouped, and miscellaneous) into actionable insights. 

### Thematic analysis for search analytics

You could also do thematic analysis for search analytics. Previously, I wrote a post called [What's the point of site search?](https://idratherbewriting.com/blog/pointless-to-implement-site-search/) The problem is that you end up with a lot of little pieces of information that are hard to analyze. Specifically, see the section [The actual searches people are making on my blog](https://idratherbewriting.com/blog/pointless-to-implement-site-search/#the-actual-searches-people-are-making-on-my-blog). It's hard to extrapolate themes by looking at the individual keywords. If I wanted to do it scientifically, I could code each search result with a keyword, then group all searches that have the same keyword, then analyze that grouping to identify common themes, and so on. This task is usually too tedious for any technical writer to undertake. 

But if you plug the same long list of keywords into [Claude.ai](https://claude.ai) and use a thematic analysis prompt, you can quickly arrive at thematic analysis:

Prompt: 

<div class="chat">
The following is a list of keywords that people search for using my site search. from this list of keywords, synthesize the predominant themes.
</div>

Response:

<div class="response">
<p>Okay, here is my analysis of the key themes based on the list of keywords you provided:</p>
<ul>
    <li>Technical writing skills - There are many keywords related to core technical writing skills like "technical writing," "simplifying complexity," "readme," "instructions," "troubleshooting," "getting started," "tutorials," "API documentation," etc. This indicates visitors are interested in developing technical writing abilities.</li>
    <li>Tools and technologies - Terms like "AsciiDoc," "DITA," "Markdown," "Jekyll," "Hugo," "CMS," "static site generators," "git," "GitHub," etc point to an audience looking for information on documentation tools and coding/technology skills.</li>
    <li>Career development - Keywords such as "skills," "interview," "salary," "freelance," "laid off," "starting as technical writer," and "jobs" suggest visitors want to develop their tech comm careers, find work, and interview successfully.</li>
    <li>Writing techniques - Queries like "minimalism," "every page is page one," "simple language," "progressive disclosure," and "context-sensitive help" revolve around writing methods and best practices.</li>
    <li>API documentation - Many keywords focus exclusively on API documentation, like "API documentation," " OpenAPI," "API reference," "endpoint documentation," "Swagger," etc. Developing API skills is a priority.</li>
    <li>DITA and structured authoring - There is heavy emphasis on XML, DITA, content types, specialization, etc, pointing to strong interest in structured authoring.</li>
</ul>
</div>

Any time you have a thousand pieces of information that you need to analyze for
patterns, your first-stop shop for analysis should probably be an AI tool.

### Thematic analysis for tags and related pages

Another use case could be tagging pages. Most technical writers work in developer portals with hundreds of pages of content. In many cases, it's a best practice to create a taxonomy describing the content, so that pages with the same taxonomy terms can be surfaced as related pages. As a user, you're probably accustomed to seeing Related pages or Recommended pages. 

To power these related pages, writers would need to index the keywords from each page in their content, and then standardize those index keywords in a structured list of terms (for consistency). From those keywords, a script could surface other pages that have similar tags. 

Again, this sort of task is extremely tedious. There's a reason many of us became technical writers rather than professional indexers. AI tools could speed this up considerably.

### Thematic analysis for FAQs

Another use case for thematic analysis is with FAQs. Some websites have hundreds of FAQs for their sites. When I worked at Amazon, we had a giant FAQ document that people kept adding to over the years. Eventually we divided it into smaller FAQs (see [Index of FAQs](https://developer.amazon.com/docs/app-submission/faq-landing.html)), but even this index page was embarrassing. Generally, it's better to structure the information from FAQs into the topics where the information belongs, plugging the information into the larger body of information rather than cobbling it together in a random list. (See [The problem with Frequently Asked Questions (FAQs) in documentation](https://idratherbewriting.com/2017/06/23/why-tech-writers-hate-faqs/).) 

Using the techniques here, you could use AI tools to group the FAQs into themes. With this approach, you might go from 100 randomly ordered FAQs into half a dozen thematic groupings. But then from those thematic groupings, you could use a prompt like this to match the FAQs with their appropriate pages:

<div class="chat">
The following is a list of FAQs for my site [paste FAQs]. Here also is a site index listing all the web pages of my site [paste index of web pages]. For each FAQ, list the most appropriate web page this information should appear on.
</div>

You get the idea here. There are certain scenarios where we have lots of individual pieces of information. From these pieces, we can use AI tools to synthesize larger groupings and themes. This is one area that AI tools perform much more efficiently than humans. 

### Thematic groupings of glossary items

Another use case for thematic analysis is with glossary items. With glossaries, we have hundreds of small pieces of information. Usually, the glossary items have a searchable filter at the top, and people come in, look up one term, and then continue on in their information journey. 

But what if you want to help users learn a collection of terms for a specific situation. For example, rather than listing hundreds of terms in alphabetical order, you could provide thematic groupings of terms to help people learn specific domains. If you were writing about finance, you might have a "Fixed Income Securities" glossary group that includes _bond_, _yield_, _maturity rating_, _credit rating_, and _coupon rate_. You could create another grouping titled "Investment Fund Types" that includes the terms _mutual fund_, _index fund_, _exchange-traded fund_, _hedge fund_, and _money-market fund_.

By creating specialized glossaries, you draw attention to related terms and can help people differentiate between the terms.

### Thematic analysis of bugs

In looking for scenarios to apply thematic analysis, who can forget bug lists? Suppose you have 150 bugs in your team's ticket management system (e.g., JIRA). You probably want to group them into different sublists so that you can tackle theme more efficiently. You might want to group all the bugs about the "ACME API" in one list, all the bugs about the "Omega API" in another, all the bugs about the "service widget" in another, and so on. Sorting through the bugs is time consuming and tedious.

To leverage AI, you could first use summaries to generate more appropriate titles for each of the bugs. Then you could export the bugs into a long list. Feed that list into an AI to sort them into thematic groupings. Then from those groupings, apply group tags to the bugs. 

But don't stop there. What if you were to analyze the bugs of all the software teams you support? Let's say you support 5 teams, and each team has their bugs in different components. Export the bugs of a component, then feed them into an AI to group and classify the bugs. Prompt the AI to identify common patterns. Using this technique, you could identify problem areas to focus on. In my experience, many engineering bugs could benefit from some documentation updates (clarifying notes, notes about gotchas and bugs, etc.), but engineering teams don't often think of the bugs as documentation-related. Reading through random bugs tends to be more tedious than tech writers can stand.

Taking this one step further, suppose you're an internal documentation team that supports hundreds of engineers. You have limited bandwidth and must identify which projects to support. Where do internal developers feel the most pain? Which projects have the most usage plus the most tickets? 

Here again you could leverage AI for the analysis. You have a list of the most popular pages (based on your analytics). You also have a long list of keyword queries (from search analytics). Then finally, you have a list of hundreds of bugs. Plug that data into an AI and see if you can use its analytical engines to arrive at the most important projects to work on.

### Thematic analysis of documentation pages

Finally, let's explore one more area where thematic analysis might apply: organizing documentation. In every documentation project, you have a long list of individual topics. As part of the organizing task of documentation, you typically group those topics into different folders. The many folders then form the sidebar groupings in our help systems. For this API course, there are about 15 different folders, each with an average of 10 or more topics.

Figuring out the right way to organize topics is not easy task. If you've ever flipped the tables and looked at a help system from the perspective of a user, you know that locating the right topic is anything but intuitive. 

As a technical writer, if you want to get your documentation system's organization right, the best approach is to have a handful of real users do a card sort with your topics. You could print your topics on little pieces of paper and have users arrange them into the groups that make the most sense. (Tools like Treejack do this digitally.) But who has time to actually do this? Most technical writers don't have users at their disposal, nor the time.

In this scenario, you could use AI to do two things:

* You could ask an AI to group your topics into the most logical groupings by theme, based on the topic titles. This would at least give you the benefit of another perspective. You could even prime the AI with a specific persona to induce a different perspective (e.g., AI by saying, "You are a new user...", "You are a business executive rather than a coder...." You are an advanced developer...")
* Then you could analyze the AI groupings against your own groupings to identify areas that might be less intuitive. If the AI tool predicts that a topic about "API errors" would more logically appear under "Support" than under "API reference," a move might be worth considering.

Each of these scenarios involves sorting and grouping lots of little pieces of information. This is a common cognitive task that we perform countless times in our role as technical writers. (Information synthesis is a topic I wrote about in my series on Simplifying Complexity: [Principle 3: Ensure information harmony in the larger landscape](https://idratherbewriting.com/simplifying-complexity/ensuring-information-harmony-in-the-larger-documentation-landscape.html).) We are frequently taking small pieces of information and fitting them into a larger information landscape.

## Step 2: Expansion of detail

Now that we covered thematic analysis in a variety of scenarios, let's explore the logical follow-up to the thematic analysis: detail expansion. Specifically, expanding the detail using a prompting technique known as least-to-most prompts. 

In the context of AI prompt engineering strategies, least-to-most prompts involve asking for high-level information/outlines first, followed by subsequent prompts that dive into each point for greater detail.

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

You already asked for high-level information through the thematic analysis prompts. It's now time to zoom into the details of those high-level themes.

In many ways the least-to-most technique is just common sense, but it's worth noting that it mirrors the same strategies technical writers use when breaking down complex information into usable documentation: we start with a high-level to paint the big picture, then break it down into detailed sections and granular steps. This style of documentation helps the user complete the larger, more complex task. 

When you're working with AI tools to help you address a large, complex issue, you can follow the same strategy: start at the high-level to get a general picture, then zoom into each of the general points with a more specific section and details.

{% include ads.html %}

### Book club

With my book club, after I gathered a list of high-level book themes and arguments, I wanted to provide more detail about each one. So I followed up those thematic analysis prompts with this:

Prompt:
<div class="chat">
Now I want to zoom in on some of these arguments, starting with this one: "Required parking for housing and other buildings has limited the creation of affordable housing and driven up costs. Parking can add tens of thousands of dollars per unit, pricing out lower income residents." Articulate the logic in as crisp of a way as possible. What is the assertion, what are the supporting reasons, and what's the premise? Any faulty assumptions in the reasoning?
</div>

Here's a screenshot:

<img class="medium" src="{{site.api_media}}/claudechatparking2.png" alt="Claude parking 2" />

Because I'd read the book, I could easily distinguish whether Claude's responses were on target. About 80% of the time or more, it was accurate&mdash;in part because I'd primed the AI with accurate input sources. My approach in compiling the discussion notes was to clarify and articulate the author's main arguments, and AI's responses made this easy.

{% include random_ad3.html %}

Could I do this same task myself, without relying on AI? Sure, in the same way I could calculate long-division by hand. It probably would have exercised more critical muscles in my brain to do so, but again, time is the issue.

Overall, this process allowed me to quickly arrive at a good summary of the book's main arguments. I added some more discussion questions (not using AI) at the end of each section, and I was ready to go. The book club turned out to be one of the best of the year!

{% include random_ad4.html %}

### Applying least-to-most prompts to thematic groupings

Following up thematic analysis with least-to-most prompts doesn't always make sense. But for the scenarios I described earlier, here could be some logical next steps to add more detail:

* **Feedback**. From the general feedback themes, AI can provide more extended summaries of the themes, with some detail. It's probably not enough to list general categories of feedback; people will want summaries that describe what each category contains.
* **Search analytics**. Provide descriptions of the analytics trends. It's not enough to say that there are many keywords searches about "Foo." You want to follow this up with a summary paragraph that describes the information patterns around Foo keyword searches and why this topic is important to users.
* **Tags and related pages**. If you have a list of tags for your pages, like I do [here](https://idratherbewriting.com/tags/), it would be more helpful to see descriptions of each tag.
* **FAQs**. You could use AI to synthesize/integrate the FAQ into the relevant topic. For example, ask the AI where the best place to add a detail about, says, service widget limitations would fit into the topic.
* **Glossary items**. You could use AI to expand definitions of any poorly defined terms.
* **Bugs**. You could use AI To describe the general bug trends for each high-level grouping, along with noted patterns for the bugs.

{% include random_ad2.html %}

## Conclusion 

In general, the direction we've followed is like this:

* First we synthesized larger themes from smaller pieces of information. In other words, we develop order from chaos.
* Now that we have larger themes, we can zoom into each theme to provide more detail.

These are flows of information that usually take place unconsciously in our minds as we think through problems. I've simply made them explicit here because AI tends to be good at performing these tasks.