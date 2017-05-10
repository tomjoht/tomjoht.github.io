---
title: "Building navigation for your documentation site: 5 best practices in design"
categories:
- findability
bitlink: http://bit.ly/
---

## Observations in Usability Labs

<figure><img src="../media/rasters/usability_lab.jpg"/>
<figcaption>It could take years of observation to arrive at design principles that are already known.</figcaption></figure>

If you've ever had the opportunity to observe actual users in a usability lab interact with your help material, it can be opening. Watching users struggle to click or to try to locate an obvious topic can be nerve-wracking.

In some usability tests I participated in, we made some easy observations about user behavior -- for example, novices tend to prefer video (one person even watched the same video three times), while more tech savvy users avoid video and quickly skim text for answers.

But while direct user observation is always enlightening, few of us have the time to do it. And even if we did, our sample sizes might too small, the sessions too specific to one industry, and the scenarios too forced or fictitious to generalize larger, more universal principles of documentation design.

Despite these limitations, we can still build on the usability research that's been done and extrapolate it toward documentation. There are universal principles of design that have been tried and tested. The book *Universal Principles of Design* provides concise summaries about a range of design topics.

I'm going to draw on several principles of design to inform what I think are the foundational principles for navigation in documentation.

## Universal Principles of Design

<a href="https://www.amazon.com/Universal-Principles-Design-William-Lidwell/dp/1592530079"><img src="../media/rasters/univprinciplesdesignbook.png"/></a><figcaption>Tested principles of design that work with humans.</figcaption>
 </figure>

## 1. Entry Point
The first principle of design I'd like to start with is the entry point.

<div class="bs-callout bs-callout-default"><b>Entry point:</b> Design the entry point to your system to orient users and allow them to easily get started.</div>

<img src="../media/vectors/wtd_doc_navigation_entrypoint.svg"/>

Granted, right off the bat I'm assuming that users are entering in a doc portal of some kind. This is rarely the case. I'll explain later (when I talk about [Modularity](#modularity)) how topics need to provide context for users and allow them to go directly to any topic.

But most help systems need some kind of homepage that lists all the sets of documentation. The doc portal entry point should list out documentation in a way that makes sense, such as by product and version, or by user role or goal. This assumes that you have multiple sets of documentation that is segmented in different ways.

### Think of homepage as a train depot
<figure><a href="https://www.flickr.com/photos/nathancongleton/14806700660/"><img src="../media/rasters/trainstation.jpg"/></a><figcaption><small>From Flickr by Nathan Congleton</small></figcaption></figure>

I like to think of the documentation entry point as a train depot like Grand Central, with various terminals for departure. Almost no one wants to go to Grand Central for itself but rather uses it as an intermediary pathfinding page to determine which doc set to jump into.

Theoretically users could just search for the product and version on Google. But even if users could find all content via Google, users would be limited by their own lack of knowledge and may not realize the different product versions or resources available.

For example, the entry point might contain tutorials or quick reference guides that would help the user get started, but if the user never sees these resources, he or she might never view them.

Overall, users come to the homepage to figure out where to go, to see what's available, and to get oriented. Try to make it as easy as possible for them to do get started.

### Example: Azure

Here's an example of an entry point with Microsoft's Azure documentation.

<a href="https://docs.microsoft.com/en-us/"><img src="../media/rasters/azurehomepage.png"/></a>

I like the visual attractiveness of cards on the homepage. These cards draw the eye and invite you to click and explore them. They're a good way to give balance and visual appeal to what would otherwise be a list of links. I see this design pattern &mdash; cards on the homepage &mdash; frequently and think it's a good model.

That said, a list of links also works if you have a lot of different doc sets. The list format allows users to quickly scan the page and take in the whole at a glance, which is a principle I'll explore more later.

### Layer information at different levels

The doc homepage entry point should list the documentation buckets or titles but not the details. You wouldn't want to list *all* potential topics on this first level, but rather make those topics visible only at the secondary or tertiary levels.

This layering of information is actually another design principle called progressive disclosure. Progressive disclosure serves a clear purpose: prevent the user from experiencing too many options and consequently feeling paralyzed by too much information.

<img src="../media/vectors/wtd_doc_navigation_progressivedisclosure.svg"/>

As the user drills into these more specific doc sets, you present additional information.

### Example: Harvest

Depending on how much information you have, you can layer the information on multiple levels. Here's an example of progressive with Harvest's documentation. For this single product, there are various squares on the homepage representing different groups.

<a href="http://help.getharvest.com/harvest/"><img src="../media/rasters/harvest2.png"></a>

Presumably what's shown here are the most viewed topics. If you want more details, you click a category and will see all topics in that category.

The approach of showing basic information first followed by more advanced information aligns with advice from usability gurus. According to Jakob Nielsen:

> Progressive disclosure is the best tool so far: show people the basics first, and once they understand that, allow them to get to the expert features. But don't show everything all at once or you will only confuse people and they will waste endless time messing with features that they don't need yet.</blockquote>
&mdash; <a href="https://www.interaction-design.org/encyclopedia/progressive_disclosure.html">Interaction Design</a>

### Formalize the "desire lines"

Finally, your homepage should formalize the desire lines through your help. Desire lines are the natural paths that form based on frequently taken shortcuts users take.

For example, if you want to design a park, rather than starting out with fixed paths, you could instead let paths form naturally based on where people wanted to walk, and then later cement these dirt paths in. (This is how they did the paths in Central Park.)

<figure><a href="https://www.flickr.com/photos/funfilledgeorgie/14709533824/in/photolist-opQcW9-o1XSDT-6D4itK-6D8tCS-6D4jo8-5kDxUt-iu5rPh-kdTzzp-jNUCQc-ohcVHy-mPnZCz-fwEic8-tigiDu-7227az-oeFabs-7VPJYX-aPGpmt-4zw9ZE-4zwbpf-6ejpUr-d1YnEN-Ey23v-6eozMN-6eozDm-mjAXX-6ejq32-JhS4qN-gSrNtX-m7EepN-9PwMKV-eDuJJq-dugc8b-7HAmf6-exExFL-GgexGw-oWEA5t-6eoxmh-tdND6-6ejqc6-mjB55-juKde-6ejqNv-CSDxUZ-6eoA8d-eaim25-bNYZ2P-jMGAzG-83BhYG-KUmgD-kRUJN/"><img src="../media/rasters/desirepath.jpg"/></a>
 <figcaption><small>From Flickr by George Redgrave</small></figcaption></figure>

 In your help system, you likely have a list of popular topics that make up the bulk of search results, following the 80/20 rule. Make these topics prominent and easy to click on your entry point, reducing the user's ability to find and view these topics.

### Desire lines example: Twitter

Here's an example from Twitter where you can see desire lines that have been formalized. You can see these most popular topics (e.g., retrieving your password) right at the top.

<a href="https://support.twitter.com/"><img src="../media/rasters/twitter_sidebar2.png"/>
</a>

Twitter also provides a great example of breaking up the docs into subgroups, with different information at different levels.

On the [Amazon Developer Documentation homepage](https://developer.amazon.com/documentation), we also highlighted the most visited documents and made them more visible.

<!-- Hierarchy -->

## 2. Hierarchy

The second design principle to consider in your doc navigation is hierarchy.

<img src="../media/vectors/wtd_doc_navigation_hierarchy.svg"/>

<div class="bs-callout bs-callout-default"><b>Hierarchy:</b> Create a hierarchical outline of the content to help users both understand and visualize the body of information. </div>

Within the context of documentation, hierarchy usually refers to a sidebar navigation feature that lists the topics in the documentation (within a particular product scope). The documents are often grouped in parent-child trees.

### Hierarchy example: Google

A good example of hierarchy in a sidebar is with Google.

<a href="https://developers.google.com/actions/develop/conversation"><img src="../media/rasters/googlevoicedoc.png"/>
</a>

Here you can see that the various topics appear in the left, divided into different groups.

## Right-sizing the sidebar navigation

When you create your sidebar menu, right-size the doc navigation so that it's not too massive, nor too small, but rather provides meaningful at-a-glance context at a defined scope. In the Google example, there aren't so many topics that you can't get meaningful information at a glance about the whole.

Here's another example of a sidebar menu from Sentry:

<a href="https://docs.sentry.io/"><img src="../media/rasters/sentry.png"/></a>

I like these examples because you can easily scan them to get a sense of the whole. The nav menu is just two levels, so it's not overwhelming. There aren't a million topics that would make it difficult to grasp the whole. Being able to get a sense of the whole is a main purpose of the sidebar navigation.

### A hierarchy is a list of parts

Although the sidebar navigation is fairly common in docs, it also somewhat controversial. Some people think the sidebar nav is detritus from another era. They argue that it's not something people use, so why bother with it?

Actually, it turns out that if you remove the sidebar from your docs, users tend to dislike its absence. For example, [Barry Grennon](https://www.linkedin.com/in/barrygrenon/) [explains in a comment discussing the relevance of the sidebar](http://idratherbewriting.com/2017/05/01/write-the-docs-podcast-episode-5-where-do-we-belong/#comment-3288347593):

> ... We also tried getting rid of TOCs, and people hated it. However, our web analytics show that users almost never interact with the TOC. And if they do, it is usually only with the few proximate pages in the TOC to the page they happen to be on.
>
> From our observations and discussions with users, we feel that the TOC provides a psychological or metaphorically physical sense of space, a sense of a "whole", that consumers of "canonical source" technical content seem to want.

Unfortunately there isn't much definitely research about doc navigation; it's mostly anecdotal. And there are invariably different ways people (even the same people) use help system. But in general, the sidebar menu grounds users with a sense of the whole, even if they don't always use it to navigate.

If there isn't a whole to grasp, such as with a knowledge base repository, the sidebar nav isn't necessary. But when there is a whole, users like having it visible at a glance.

### A list of parts

To deepen the discussion about the importance of the sidebar, I like to think of a sidebar as a list of parts. This list of parts lets users know what's contained in the whole.

<img src="../media/vectors/wtd_doc_navigation_listofparts.svg"/>

A table of contents that communicates the whole at a glance can help users understand a complex system.

<img src="../media/vectors/wtd_doc_navigation_wholevspart.svg"/>

If you think about it, with just about any complex system or object, to understand it, users break down the whole into a list of parts. It's the first step in wrangling complexity -- converting the complex entity into smaller parts to better understand what's going on. Think about some analogies here:

* With a philosophical theorem, you break it down into assumptions, premises, and conclusions.
* With a company's organization, you might break it down into different departments, groups,  managers.
* With a product to assemble, you check out the list of parts, tools, and tasks.
* With a story, you break it down into exposition, rising action, climax, and denouement.
* When you go to a conference, you look at the speakers, venue, schedule.
* With an API, you look at the authentication mechanism, the base URL, a sample request, a sample response.
* With a zoo, you can divide it into various groups such as reptiles, amphibians, fish, birds, African mammals, Artic mammals, and so on.

Our natural action in understanding any complex system is to break the system down into a list of parts. That's basically what a sidebar navigation menu is -- only instead of one long flat list, the list of parts are often organized into parent-child groupings (smaller hierarchies) that make sense.

When users have this larger map of the whole system, with each of its parents logically grouped, it can provide meaning to users. According to James Kalbach,

<blockquote>Navigation provides a narrative for people to follow on the web. <small><br/>&mdash; <a href="https://www.amazon.com/Designing-Web-Navigation-Optimizing-Experience/dp/0596528108/ref=sr_1_1?s=books&ie=UTF8&qid=1483721104&sr=1-1&keywords=designing+web+navigation+kalbach">Designing Web Navigation: Optimizing the User Experience</a></small>
</blockquote>

### Hierarchies show what's in the neighborhood

Another reason why hierarchies are important is because they show users what's in the neighborhood, so to speak.

<img src="../media/vectors/wtd_doc_navigation_neighborhood.svg"/>

The content in your sidebar can help users users answer the question, what else is there to know about this topic? This gets us into how users penetrate the [unknown unknown](https://en.wikipedia.org/wiki/There_are_known_knowns). How do you learn what you don't even realize you didn't know?

Users may have landed on a topic about changing a tire. If the sidebar also shows topics about how to true your rim, install tire liners, and tread types for different terrains, these topics might help expand a user's sense of what's possible.

### Avoid deep hierarchies

As you structure your sidebar, it's important to avoid deep hierarchies. Deep hierarchies are folders that contain folders that contain folders that contain folders, etc.. Why avoid deep hierarchies. Deep hierarchical nesting prevents users from grasping the whole at a glance, which is a primary function of the sidebar navigation.

<img src="../media/vectors/wtd_doc_navigation_flatdeephierarchies.svg"/>

Some examples of deep hierarchical nesting would be [Wikipedia's category hierarchies](https://en.wikipedia.org/wiki/Portal:Contents/Categories) or [Yahoo's hierarchy directory](https://arstechnica.com/information-technology/2014/09/yahoo-killing-off-yahoo-after-20-years-of-hierarchical-organization/). Beyond 1-2 levels, the deep hierarchies become difficult to process. Our brains aren't wired for it.


<!-- Immersion -->

## 3. Immersion

Now that we've covered entry points and hierarchies, let's consider the principle of immersion.

<div class="bs-callout bs-callout-default">Users desire to be immersed in the application or system they're using rather than leaving that system to consult a separate, external system for help.</div>

<img src="../media/vectors/wtd_doc_navigation_dontleavesystem.svg"/>

Ostensibly, when you consider immersion, the immediate conclusion is to bring help into the app (if a GUI exists) or to otherwise bring it to the user instead of requiring the user to go to the help. While context-sensitive help is usually a good move, its treatment extends beyond the scope of my focus here, which is on navigation within your docs.

### Even in help, users prefer to stay inline

But even when a user goes to your help system, the principle of immersion still applies. Users consuming content prefer to stay within that content rather than move back and forth interacting with a sidebar nav, which exists outside of the content.

<img src="../media/vectors/wtd_doc_navigation_usersclickinlinelinks.svg"/>

Immersed in a topic, users are more apt to click and navigate using the links within the topic itself. As such, you have to build in your navigation within the content itself instead of thinking the user will always navigate using the [external] sidebar nav.

### Bottom-up navigation

The idea of navigating from within your content is called "bottom-up navigation" (rather than "top-down navigation"). This is a principle that Mark Baker stresses on his site [Every Page Is Page One](http://everypageispageone.com/2015/02/10/bottom-up-information-architecture-q-and-a-part-1/).

Although Mark describes bottom-up navigation in more articulate, abstract ways in his posts and book, I like this down-to-earth description in a [comment on one of my posts](http://idratherbewriting.com/2017/05/01/write-the-docs-podcast-episode-5-where-do-we-belong/#comment-3286566056):

<blockquote>
<ul>
<li>If you tell me I can do something, link to how to do that something.</li>
<li>If you tell me I can use something, link to a description of that something.</li>
<li>If you mention a concept or an idea, link to a description of that concept or idea.</li>
</ul>
</blockquote>

These principles may seem like common sense (unless you've adopted a [policy against inline links for readability](http://idratherbewriting.com/2010/06/19/finally-convinced-about-removing-inline-links-to-increase-readability/)). In general, we link to topics as it makes sense to do so.

But bottom-up navigation takes inline linking to a whole new level. Consider amplifying the number of links by two or three times.

### Bottom-up navigation example: Wikipedia

A classic example of bottom-up navigation is Wikipedia:

<img src="../media/rasters/wikipedia.png"/>

Managing internal links can pose challenges, because each links that points to another page or section on that page has the potential to break as you rename files, page titles, and headings. Additionally, inline links create decision points in your content that force users to decide whether to continue reading or to jump to a new topic.

But even with these challenges, don't neglect or minimize inline links. They're how many users simply navigate content. The web has taught us to navigate this way because our searches typically follow this pattern: we google something, land on a page, and then jump back to google's results, click to another page, click links within the page, and move to another page as we search for the right information. We rarely navigate via the sidebar because we're jumping across different systems instead of moving within the same system.

Yes, this kind of hit-and-miss navigation through keyword searches and results pages is jumpy and nauseating in the long run, and can't be sustained for more than a half hour, but since it's learned behavior that we've internalized as part of an Internet culture, we can't neglect the pattern in our help material. Instead, build links into your content to help users navigate.

## 4. Modularity {#modularity}

In the previous section, I explained that users often arrive at a page from a search, because that's how the web has conditioned us to act, through hundreds of searches we do on a weekly/monthly basis. This leads us to the next design principle: Modularity.

<div class="bs-callout bs-callout-default"><b>Modularity: </b> Break up content into independent topics that can be viewed, understood, and updated independent of the whole. </div>

<img src="../media/vectors/wtd_doc_navigation_modularity.svg"/>

In other words, a topic or chunk should not be so interconnected with the whole that it cannot stand on its own. This principle of design also provides efficiencies for the authors, because it means they can work on an individual part without having to adjust the whole.

### Users read non-sequentially

Modularity in documentation has some of its origins with John Carroll, who argued that users should not be required to read the whole manual but instead be able to jump around to the topics they're interested in. Carroll explains:

> You can just read the sections about the tasks you want to do. <br />
&mdash; John Carroll, <a
href="http://faculty.washington.edu/farkas/dfpubs/Farkas-Williams-CarrollsNurnbergFunnel.pdf">The Nurnberg Funnel</a>

Because users skip around and are impatient to act, we have to design our help material to be modular. Help material that is modular can stand alone and function as an independent entity without requiring the user to read a lot of other (before and after) to make sense of the content.

Most of us agree with this principle in theory, but it's harder to actually implement, in part due to the information structures some writers follow.

### Don't assume building blocks == presentation

You may be writing in a documentation structure that separates content into tasks, concepts, and reference topics (e.g. DITA). If so, remember that these enforced structures are a way of chunking content so you can re-use it, reducing your word count, translation costs, and so on. You can't re-use giant blocks of text so well.

However, remember that these information chunks are building blocks only. You can sometimes arrange the blocks into more lengthy displays. You don't have to have a two sentence topic that stands on its own because it's just a short concept.

<img src="../media/vectors/usercentered_buildingblocks.svg"/>

In general, avoid fragmenting your information in a way that forces users to jump around from topic to topic, like a pinball bouncing off of different walls and targets, looking for the information they need. That design leads to a fragmented, tiring experience. Instead, combine these chunks into more comprehensive, modular topics.

### Create longer, self-contained "articles"

Usually when you create standalone topics, they end up being somewhat long, because you don't rely on a navigation mechanism or pagination to break up the pages. Don't be afraid of long topics. Some Wikipedia articles are so long they could be printed as ebooks. I like to think of these topics more like "articles," because the term article communicates the idea of content standing alone and being a bit longer.

### On-page-TOC

When you have long page, you need additional controls within the page to help users navigate. A good navigation mechanism is the on-page table of contents (TOC), which is usually embedded near the top of the page and provides a list of h2 and h3 headings on the page.

Here's an example from Amazon's Fire App Builder documentation:

<a href="https://developer.amazon.com/public/solutions/devices/fire-tv/docs/fire-app-builder-overview"><img src="../media/rasters/fabtoc.png"/></a>

The on-page TOC lets a user see the content at a glance. It lets the user click to the section he or she is interested in, without requiring the user to manually scroll or skim the page for the information.

When you create the on-page TOC, make sure it's scannable and usable. Avoid including too many levels, as it might detract from the user's ability to take in the content at a glance (the same principle as with the navigation sidebar).

Additionally, don't try to stuff the on-page TOC into the navigation sidebar. Doing so unnecessarily balloons the sidebar with too many options, giving the appearance of having a *massive* set of pages to navigate. (Users may often feel relief to realize that the sidebar links are actually just sections!) Remember that principle of progressive disclosure &mdash; users don't usually need all the information up front but can instead view more detail as they drill deeper into the site.

## When a page gets too long

While modularity sounds great, sometimes pages get so long the information becomes unwieldy and hard to navigate or browse. Although I shy away from actual word count numbers, a good-sized page can range anywhere from 800 to 3,000 words. Beyond 3,000 words, I usually start chunking the information.

To support content that spans multiple pages, you can implement some additional controls that I group under "wayfinding" techniques.

<!-- wayfinding -->

## 5. Wayfinding

In the previous section, we explored modularity as a way to design your documentation navigation. Modularity results in longer topics, but as much as you may strive for modularity, it's often necessary to break content for the same general procedure or larger task into multiple pages. If so, you can implement wayfinding techniques to help users successfully navigate across the content.

<div class="bs-callout bs-callout-default"><b>Wayfinding: </b> Provide navigational signposts &mdash; such as contextual links, workflow maps, and breadcrumbs &mdash; to help orient users as to where they are in a larger system. </div>

<img src="../media/vectors/wtd_doc_navigation_wayfinding.svg"/>

### Provide context before

At the start of a topic, if you expect the user to have some context, add some links. The links usually go to an overview page or some other conceptual foundation.

### Provide Next Steps

At the end of the topic, provide a "Next Steps" section that guides the user to the logical next steps.

<a href="https://www.firebase.com/docs/web/guide/saving-data.html"><img src="../media/rasters/firebase.png" /></a>

## Provide workflow maps

Documentation that includes larger procedures should also provide workflow maps or other guides that show the recommended path through the content. Here's an example of a workflow map for a sequence involving 6 steps.

<a href="http://docs.aws.amazon.com/AmazonS3/latest/gsg/PuttingAnObjectInABucket.html"><img src="../media/rasters/aws.png" /></a>

You could also create [narrative workflow topics](http://idratherbewriting.com/2013/09/12/narrative-workflow-topics-helping-users-connect-the-dots-among-topics/) that are more narrative but also detailed in the workflow.

### Breadcrumbs

Finally, you can add breadcrumbs so that users don't get too lost. The breadcrumb can remind them where they're at in a larger system:

<a href="https://developers.facebook.com/docs/accountkit/countrycodes"><img src="../media/rasters/facebookbreadcrumbs.png"/></a>

<!-- Summary -->

## Summary of doc navigation principles

Here's a summary of the design principles we covered:

  * Entry Point
  * Hierarchy
  * Immersion
  * Modularity
  * Wayfinding

There are more principles of design that apply, but these are a good start and probably form the core of what you need to know.

### Avoid non-standard design

Finally, as a general principle, try to avoid non-standard design when it comes to documentation. Users tend to expect sites to have a predictable, standard design to them, and if you create really "creative" (such as by structuring all navigation through breadcrumbs, or even by deciding to put your navigation sidebar on the right instead of the left), you make it more difficult for people to use your site.

<img src="../media/rasters/intersection.jpg"/>


## Questions

<li class="fragment">Assuming the content exists, do think there are other reasons why users can't find what they're looking for you in your docs?
<li class="fragment">What techniques do you do to ensure links are valid in your output?
<li class="fragment">In your experience using help systems, do you use the sidebar navigation or just inline links?
<li class="fragment">When would you consider the number of links in the sidebar to be too long/massive in one set?
<li class="fragment">How do you link across repos in an automated way? cx 2 X

 </ul>
