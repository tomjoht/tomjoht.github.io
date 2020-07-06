---
title: "Connecting micro content with search analytics -- notes on the first MadCap Flare and MadCap Central 2020 Release"
permalink: /blog/connect-micro-content-with-search-analytics/
categories:
- technical-writing
keywords: madcap flare, micro content, madcap central, analytics, search
rebrandly: https://idratherbewriting.site/madcap2020release
description: "MadCap Software's 2020 release for MadCap Flare and MadCap Central include significant enhancements to micro content, code syntax highlighting, privatized output, and more. Through search analytics in MadCap Central, if you identify search phrases, and search phrases that return no results, micro content can be created to address these gaps, making your content much more discoverable for your users."
---

*Note that MadCap Software is one of my site sponsors.*

## Code Syntax Highlighting

A welcome improvement in the [MadCap Flare 2020 release](https://www.madcapsoftware.com/madcap-flare-2020/#content?utm_source=idratherbewriting&utm_medium=banner&utm_campaign=flare2020) is a new code editor with syntax highlighting. If you have a code sample, you can now apply syntax highlighting:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/flarecodesyntaxhighlighting2.png" alt="Code syntax highlighting in MadCap Flare 2020" />

Selecting the language will apply the right color coding for different elements. Additionally, a continuous numbering option will pick up numbering from the previous line number. Here's what continuous numbering looks like:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/madcapcontinuouslinenumbering3.png" alt="Code syntax highlighting with continuous numbering in MadCap Flare 2020" />

Continuous numbering could be especially useful if you have a large code sample that you want to show in entirety at first, and then follow up section by section with narration after every few lines. Users could still retain the larger context by looking at the full code sample to see where their specific line number appears. In short, line numbers can help preserve the context even when you chunk up different lines of code in more narrative explanation.  A "copy" button is included in Flare's Responsive HTML5 output, so a reader can copy the code, right from the docs.

## Micro Content Enhancements

Last year I wrote a post called [Flare adds micro content feature, taking steps toward content management for AI scenarios](/blog/madcap-flare-micro-content-features-support-ai-directions/) — it was the first time I'd written about micro content. Since that MadCap Software release in April 2019, micro content has been a success that MadCap Software is seeking to build upon even more.

What is micro content? In short, micro content is content (text, images, or even animated gifs) that surface directly in the search results rather than requiring you to click into another page. You can see how it works in Flare's help by [searching for a topic such as "conditions"](https://help.madcapsoftware.com/flare2020/Content/Search-Results.htm?q=conditions):

<a href="https://help.madcapsoftware.com/flare2020/Content/Search-Results.htm?q=conditions"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/conditionsflaremicrocontent.png" alt="Micro content conditions demo" />

Rather than clicking one of the search results topics, e.g., [Conditions](https://help.madcapsoftware.com/flare2020/Content/Flare/Conditions/Conditions.htm?Highlight=conditions), you can view content directly in the search results. Typically, micro content shows only a fraction of the content from the full topic. Micro content is like a tweet rather than a full article.

Notice that the definition of conditions in the micro content is the same as in the Conditions topic. Here's the micro content instance:

> A condition is a single-sourcing feature that you can apply to files or to different areas of your content, so that some information displays in some outputs but not in others, or it displays only when viewed on a certain device or screen size.

If you view the entire [Conditions](https://help.madcapsoftware.com/flare2020/Content/Flare/Conditions/Conditions.htm?Highlight=conditions) topic, you'll see the same content instance at the top:

> A condition is a single-sourcing feature that you can apply to files or to different areas of your content, so that some information displays in some outputs but not in others, or it displays only when viewed on a certain device or screen size.

MadCap introduced micro content authoring in the Flare 2019 release, making it easy to create phrases that could be paired to micro content responses that appear as featured search results. Responses to these phrases can be authored directly in the Micro Content Editor, or they can be leveraged from existing topics or snippets for use as a micro content search result. However, with the 2020 release, the Micro Content Editor has been enhanced to allow authors to work with micro content conditions, to enhance single-sourcing even more. You just take your help topic and apply micro content condition tags to determine what surfaces in micro content to allow you to repurpose your source material even more.

For example, suppose you have a topic called "How to Watch Star Wars." First, you would define a tag such as "TopicOnly":

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/starwarstopiconly.png" alt="Micro content conditions in MadCap Flare 2020" />

Then you would tag the content you want to appear in the topic only:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/starwarsfulltopic.png" alt="Applying micro-content conditions in MadCap Flare 2020"/>

Based on rules configured for your micro content (e.g., exclude TopicOnly tags), here's what that condensed version might look like:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/starwarslinkedmicrocontent.png" alt="Preview of micro content conditions in MadCap Flare 2020" />

For many tech writers, search is a black box, and as such it's difficult to map inputs (i.e., search queries) to outputs (i.e., search results). Because of this lack of control, search is often neglected.

But search is an extremely important interaction point that shouldn't be neglected — instead, it should be prioritized. The search field lets you know what users want and whether they're finding the answer in your help.

Based on how you map user inputs to your help topic outputs, you can significantly shape the search experience for users. Micro content can be a game changer for the search experience within your help site. Not only can you individually define which phrases link to what micro content, through enhanced analytics you can see which queries are returning no results. This brings me to the next topic: Analytics enhancements.

## Output Analytics

Besides the collaborative publishing features, in October 2019, [MadCap Central](https://www.madcapsoftware.com/madcap-central-2020/#content?utm_source=idratherbewriting&utm_medium=banner&utm_campaign=centralmay2020) started offering extensive, easy-to-access analytics for your Flare projects. In your Flare project, you can define which provider you want to use for analytics (e.g., MadCap Central), and then you can access the analytics for the Flare output ("target") in MadCap Central. Here's a screenshot showing various targets tracked in MadCap Central. Each target is configured through a key in your Flare project.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/madcapcentrallistofprojects.png" alt="Output analytics in MadCap Central 2020"/>

When you click a target, you see the analytics details. For example, you can see all "Phrases" users search for:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/madcapcentralphrases.png" alt="Phrases users search for in MadCap Central 2020"/>

*More importantly, you can also see "Phrases with No Results":*

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/madcapcentralphrasesnoresults.png" alt="Phrases with No Results in MadCap Central 2020"/>

After identifying  search phrases, you can then go into Flare and create phrases (and alternate phrases), and link these phrases to the micro content you want returned. The more phrases you collect as input, the more you can map the output. Few other systems let you control the input and output experience with so much granular configuration.

Using "Phrases with No Results" can reduce the complexity about what users are searching for and what they're not finding.  This instant data means the documentation can be improved based on user need. If users can find answers here, it can help deflect more expensive support tickets, and can help free up the support team.  You might even consider creating team metrics around reducing phrases with no results numbers.

When you have valid outputs (micro content returned) for every input (search query), haven't you essentially created a makeshift chatbot? I realize that chatbots can build on interactions with a bit more conversation, but my experience with more conversational chatbots hasn't been that stellar. Chatbots mostly supply a link to more information. What's cool about micro content in Flare is that you don't need to export your content to some other system (in a chatbot format) to supply the needed information. Instead, you essentially create an immediate, chatbot-like answer without fragmenting your single source of truth.

Another interesting area surfaced by MadCap Central analytics is context-sensitive help calls. Suppose you have GUIDs integrated into various help links in a user interface, and you want to know which GUIDs are accessed more so that you can identify pain points in the UI. The Context Sensitive Help Calls report can help you identify these trends:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/madcapcentralcshresults.png" alt="Context Sensitive Help in MadCap Central 2020"/>

Based on these pain points, you then could create additional micro content to anticipate and address these friction areas. By connecting micro content with search analytics, you can level up your content's findability.

## Micro Content as Field-Level or Embedded Help

In Flare 2020, context-sensitive help identifiers can now be associated with micro content phrases. Since micro content is intended to be short bits of content, this makes it ideal for field-level or embedded help within apps.

## Other Enhancements

The 2020 release has a number of other enhancements. You can read MadCap Software's site for the full details (see the "New" sections in [MadCap Flare](https://www.madcapsoftware.com/madcap-flare-2020/#content?utm_source=idratherbewriting&utm_medium=banner&utm_campaign=flare2020) and [MadCap Central](https://www.madcapsoftware.com/madcap-central-2020/#content?utm_source=idratherbewriting&utm_medium=banner&utm_campaign=centralmay2020)). Here are some brief summaries:

*   **Find and Replace Elements**. Previously, to find and replace an element, you had to type in the complex regular expression yourself. Now the Flare UI lets you build that regular expression by selecting different patterns from drop-down lists. The Find and Replace Elements feature is especially helpful for making global changes after importing content from another system.
*   **Publish to ServiceNow®**. Flare already lets you publish to Salesforce Knowledge and Zendesk using the MadCap Connect plug-ins. Now you can publish to ServiceNow® as well. This is helpful if you're maintaining source content in Flare and want to distribute this content to a ServiceNow**®** knowledge base You can configure your target with publishing details to automate the upload into this system, eliminating any copy and paste of content
*   **Authentication for Flare Output**. MadCap Central lets you easily publish and host your Flare outputs. With the May 2020 Central release, you  now have the option of making some or all content private and requiring a login. You can even style the login screen with your own template and styles.

## More reading

See the following for more details:

*   [What's New in Flare](https://www.madcapsoftware.com/madcap-flare-2020/#content?utm_source=idratherbewriting&utm_medium=banner&utm_campaign=flare2020)
*   [What's New in Central](https://www.madcapsoftware.com/madcap-central-2020/#content?utm_source=idratherbewriting&utm_medium=banner&utm_campaign=centralmay2020)
*   [Uses for Micro Content](https://help.madcapsoftware.com/flare2020/Content/Flare/Micro-Content/General-Information/Uses-Micro-Content.htm?Highlight=uses%20for%20micro%20content)
*   [Output Analytics with MadCap Central](https://www.madcapsoftware.com/madcap-central-2019/#content)
*   [What the MadCap Doc Team Does](https://help.madcapsoftware.com/flare2020/Content/Flare/Micro-Content/General-Information/What-MadCap-Doc-Team-Does.htm?Highlight=how%20we%20use%20microcontent)

If you're new to MadCap Flare or Central, you can [start a free trial here](https://www.madcapsoftware.com/madcap-flare-2020/#content?utm_source=idratherbewriting&utm_medium=banner&utm_campaign=flare2020).
