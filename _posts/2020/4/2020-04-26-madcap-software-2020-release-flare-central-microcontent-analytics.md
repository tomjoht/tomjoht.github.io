---
title: "Connecting micro content with search analytics -- notes on the MadCap Flare and Central 2020 release"
permalink: /blog/connect-micro-content-with-search-analytics/
categories:
- technical-writing
keywords: madcap flare, micro content, madcap central, analytics, search
rebrandly: https://idratherbewriting.site/madcap2020release
description: "MadCap Software's 2020 release for Flare and  Central includes significant enhancements for micro content, analytics, code syntax highlighting, and more. Through search analytics in MadCap Central, if you identify phrases that return no results and then create micro content to address these gaps, you can make your content much more discoverable for your users."
published: false
---

*Note that MadCap Software is one of my site sponsors.*

## Microcontent Conditions

Last year I wrote a post called [Flare adds micro content feature, taking steps toward content management for AI scenarios](https://idratherbewriting.com/blog/madcap-flare-micro-content-features-support-ai-directions/) &mdash; it was the first time I'd written about micro content. Since that MadCap release, micro content has been a success that MadCap is seeking to build upon even more.

What is micro content? In short, micro content is content (text, images, or even animated gifs) that surfaces directly in the search results rather than requiring you to click into another page. You can see how it works in Flare's help by [searching for a topic such as "conditions"](https://help.madcapsoftware.com/flare2019r2/Content/Search-Results.htm?q=conditions):

<a href="https://help.madcapsoftware.com/flare2020/Content/Search-Results.htm?q=conditions"><img src="https://idratherbewritingmedia.com/images/conditionsflaremicrocontent.png"/>

Rather than clicking one of the search results topics, e.g., [Conditions](https://help.madcapsoftware.com/flare2019r2/Content/Flare/Conditions/Conditions.htm?Highlight=conditions), you can  view content directly in the search results. Typically, micro content shows only a fraction of the content from the full topic. Micro content is like a tweet rather than a full article.

Notice that the definition of conditions in the micro content is the same as in the Conditions topic. Here's the micro content instance:

>  A condition is a single-sourcing feature that you can apply to files or to different areas of your content, so that some information displays in some outputs but not in others, or it displays only when viewed on a certain device or screen size.

If you view the entire [Conditions](https://help.madcapsoftware.com/flare2019r2/Content/Flare/Conditions/Conditions.htm?Highlight=conditions) topic, you'll see the same content instance at the top:

> A condition is a single-sourcing feature that you can apply to files or to different areas of your content, so that some information displays in some outputs but not in others, or it displays only when viewed on a certain device or screen size.

Previously, Flare required you to create *separate* files for micro content. With the 2020 release, you can now apply micro content conditions to your existing help topics, and then link search queries directly to the help topics. The help topics that surface in the micro content results will apply the micro content conditions you specified.

This means you can use the same source content for both micro content and regular help topics. You simply take your help topic and apply micro content condition tags to determine what surfaces in micro content.

For example, suppose you have a topic called "How to Watch Star Wars." First, you would define a tag such as "TopicOnly":

<img src="https://idratherbewritingmedia.com/images/starwarstopiconly.png"/>

Then you would tag the content you want to appear in the topic only:

<img src="https://idratherbewritingmedia.com/images/starwarsfulltopic.png"/>

Then, based on rules configured for your micro content (e.g., exclude TopicOnly tags), here's what that condensed version might look like:

<img src="https://idratherbewritingmedia.com/images/starwarslinkedmicrocontent.png"/>

For many tech writers, search is a black box, and as such it's difficult to map inputs (i.e., search queries) to outputs (i.e., search results). Because of this lack of control, search is often neglected.

But search is an extremely important interaction point that shouldn't be neglected &mdash; instead, it should be prioritized. The search field lets you know what users want and whether they're finding the answer in your help.

Based on how you map user inputs to your help topic outputs, you can significantly shape the search experience for users. As such, micro content can be a game changer for the search experience within your help site. Not only can you individually define which phrases link to which micro content, through the enhanced analytics you can see which queries are returning no results. This brings me to the next topic: Analytics enhancements.

## Analytics enhancements

Besides the collaborative publishing features, MadCap Central also provides extensive, easy-to-access analytics for your Flare projects. In your Flare project, you can define which provider you want to use for analytics (e.g., MadCap Central), and then you can access the analytics for the Flare output ("target") in MadCap Central. Here's a screenshot showing various targets tracked in MadCap Central. Each target is configured through a key in your Flare project.

<img src="https://idratherbewritingmedia.com/images/madcapcentrallistofprojects.png" alt="Output analytics in MadCap Central 2020"/>

When you click a target, you see the analytics details. For example, you can see all "Phrases" users search for:

<img src="https://idratherbewritingmedia.com/images/madcapcentralphrases.png" alt="Phrases users search for in MadCap Central 2020"/>

*More importantly, you can also see "Phrases with No Results":*

<img src="https://idratherbewritingmedia.com/images/madcapcentralphrasesnoresults.png" alt="Phrases with No Results in MadCap Central 2020"/>

After identifying phrases with no results, you can then go into Flare and link these phrases to the micro content you want returned. The more phrases you collect as input, the more you can map the output. Few other systems let you control the input and output experience with so much granular configuration. (You might even consider creating team metrics around reducing phrases with no results numbers.)

Now here's a thought. When you have valid outputs (micro content returned) for every input (search query), haven't you essentially created a makeshift chatbot? I realize that chatbots can build on interactions with a bit more conversation, but my experience with more conversational chatbots hasn't been that stellar. Chatbots mostly supply a link to more information. What's cool about micro content in Flare is that you don't need to export your content to some other system (in a chatbot format) to supply the needed information. Instead, you essentially create an immediate, chatbot-like answer without fragmenting your single source of truth.

Another interesting area surfaced by MadCap Central analytics is context-sensitive help calls. Suppose you have GUIDs integrated into various help links in a user interface, and you want to know which GUIDs are accessed more so that you can identify pain points in the UI. The Context Sensitive Help Calls report can help you identify these trends:

<img src="https://idratherbewritingmedia.com/images/madcapcentralcshresults.png" alt="Context Sensitive Help in MadCap Central 2020"/>

Based on these pain points, you can create more micro content to anticipate and address these friction areas. Again, by connecting micro content with search analytics, you can level up your content's findability.

## Code syntax highlighting

Another improvement in the MadCap 2020 release is code syntax highlighting. If you have a code sample, you can now apply syntax highlighting:

<img src="https://idratherbewritingmedia.com/images/flarecodesyntaxhighlighting2.png"/>

Selecting the language will apply the right color coding for different elements. Additionally, a continuous numbering option will pick up numbering from the previous line number. Here's what continuous numbering looks like:

<img src="https://idratherbewritingmedia.com/images/madcapcontinuouslinenumbering3.png"/>

Continuous numbering could be especially useful if you have a large code sample that you want to show in entirety at first, and then follow up section by section with narration after ever few lines. Users could still retain the larger context by looking at the full code sample to see where their specific line number appears. In short, line numbers can help preserve the context even when you chunk up different lines of code in more narrative explanation.

## Other enhancements

The 2020 release has a number of other enhancements. You can read MadCap's release notes for the full details. Here are some brief summaries:

* **Find and Replace Elements**. Previously, to find and replace an element, you had to type in the complex regular expression yourself. Now the Flare UI lets you build that regular expression by selecting different patterns from drop-down lists. The Find and Replace Elements feature is especially helpful for making global changes after importing content from another system.
* **Publish to ServiceNow**. Flare already lets you publish to Salesforce Knowledge and ZenDesk. Now you can publish to ServiceNow as well. This is helpful if you're maintaining KB articles in Flare and want to distribute them to another system. You can configure your target with FTP details to automate the upload into the other system.
* **Task boards now sync with JIRA**. In MadCap Central, you can have task boards for your Kanban flow. Previously, this task board was a standalone system. Now, each task can sync with JIRA so that other teams who aren't using MadCap Central to track tasks (e.g., your engineers) can be assigned tasks directly from the MadCap Central UI. For example, you might want to assign an engineer to review a doc.
* **Authentication for private docs**. MadCap Central lets you easily publish your Flare projects. Now when you publish content through MadCap Central, you have the option of making some or all docs private and requiring login. You can even style the login screen with your own template and CSS.

## More reading

See the following for more details:

* [What's New](https://help.madcapsoftware.com/flare2019r2/Content/Flare/Introduction/Whats-New/Whats-New.htm)
* [Uses for Micro Content](https://help.madcapsoftware.com/flare2019r2/Content/Flare/Micro-Content/Other-Information/Uses-Micro-Content.htm)
* [What the MadCap Doc Team Does](https://help.madcapsoftware.com/flare2019r2/Content/Flare/Micro-Content/Other-Information/What-MadCap-Doc-Team-Does.htm)

If you're new to MadCap Flare, you can [start a free trial here](https://www.madcapsoftware.com/madcap-flare-2019/#content?utm_source=idratherbewriting&utm_medium=banner&utm_campaign=flare2019r2).
