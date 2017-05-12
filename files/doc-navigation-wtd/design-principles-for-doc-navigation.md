---
title: "Building navigation for your documentation site: 5 best practices in design"
categories:
- findability
bitlink: http://bit.ly/
---

<style>
img.vectorStyle {
  border: 1px solid #dedede;
  background-color: ivory;
}
</style>
## Starting points with design

When thinking about strategies for navigation within your documentation, it's helpful to start with some design principles that have already been developed and studied, even if the design principles weren't necessarily formulated in documentation or information scenarios. (This is especially necessary when there isn't ample tech comm research on doc navigation patterns.)

In the book [Universal Principles of Design](https://www.amazon.com/Universal-Principles-Design-Revised-Updated/dp/1592535879/ref=pd_lpo_sbs_14_img_0?_encoding=UTF8&psc=1&refRID=Z3N8PRGT94SFH1Z5765N), the authors explore design principles that they feel are universal and which apply across a wide variety of industries, products, and scenarios. The book provides concise summaries about a range of design topics.

From 125 separate design principles, I selected a handful of principles that I think have particular application to document navigation. The core 5 principles include the following:

* Entry point
* Hierarchy
* Immersion
* Modularity
* Wayfinding

<a href="https://www.amazon.com/Universal-Principles-Design-William-Lidwell/dp/1592530079"><img src="../media/rasters/univprinciplesdesignbook.png" style="max-width: 350px;"/></a>

Applying these principles in the way we design our docs can create a better experience for users, both in their ability to find and navigation information.

## 1. Entry Point

<img src="../media/vectors/wtd_doc_navigation_entrypoint.svg" class="vectorStyle" />

The first principle of design I'd like to start with is the entry point.

<div class="bs-callout bs-callout-primary"><b>Entry point:</b> "A point of physical or attentional entry into a design."</div>

With the entry point, "barriers should not encumber entry points," and they "should allow people to become oriented and clearly survey available options." Additionally, you should use lures "to attract and pull people through the entry point."

Although the entry point for docs might be any doc page (as I explain later in [Modularity](#modularity)), I want to focus on the doc portal homepage, because it's one of formal entry points in documentation.

The doc portal homepage should list out the documentation in a way that makes sense, such as by product and version, or by user role or goal. (This assumes that you have multiple sets of documentation.) The grouping should be helpful for users to see what's available, to orient themselves in the right direction, and to get started.

I like to think of the doc portal homepage as a train station. It should clearly direct users on where to go.

<figure><a href="https://www.flickr.com/photos/nathancongleton/14806700660/"><img src="../media/rasters/trainstation.jpg"/></a><figcaption><small>From Flickr by Nathan Congleton</small></figcaption></figure>

The homepage isn't a destination page in itself with explanatory information. Instead, it directs users to the correct "terminals" for their documentation routes.

Here's an example of an entry point with Microsoft's Azure documentation.

<a href="https://docs.microsoft.com/en-us/"><img src="../media/rasters/azurehomepage.png"/></a>

I like the visual attractiveness of cards on the homepage. These cards draw the eye and invite you to click and explore them. They're a good way to give balance and visual appeal to what would otherwise be a list of links. The card design on the homepage is a common pattern with documentation.

That said, a list of links (such as with [AWS](https://aws.amazon.com/documentation/)) also works if you have a lot of different doc sets. The list format allows users to quickly scan the page and take in the whole at a glance, which is a principle I'll explore more later.

In addition to terminals for documentation, a getting started tutorial or other beginner walk-through task can act as a progressive lure to pull users into the system. It's common to provide a Hello World tutorial that gets users up and running within minutes so they get a sense of how the system works.

Additionally, quick reference guides or other getting started tasks would be appropriate on the homepage. Depending on the size of your help system, you will likely have a doc portal homepage followed by a product documentation homepage. The getting started tutorials and quick reference guide tutorials would be more appropriate on the product documentation homepage.

Overall, users come to the homepage to figure out where to go, to see what's available, and to get oriented. Try to make it as easy as possible for them to do get started.

Users also start forming opinions and biases about the documentation from the entry point. If the entry point is disorganized and doesn't help them get started, the user's confidence is already crippled as they head into the rest of the documentation.

### Desire lines

Another design principle to implement on your entry point is to formalize your desire lines. Desire lines are the natural paths that form based on frequent user preferences.

<div class="bs-callout bs-callout-primary"><b>Desire Line:</b> "Traces of use or wear that indicate preferred methods of interaction with an object or environment."</div>

The most common example of a desire line is a shortcut across a lawn.

<figure><a href="https://www.flickr.com/photos/funfilledgeorgie/14709533824/in/photolist-opQcW9-o1XSDT-6D4itK-6D8tCS-6D4jo8-5kDxUt-iu5rPh-kdTzzp-jNUCQc-ohcVHy-mPnZCz-fwEic8-tigiDu-7227az-oeFabs-7VPJYX-aPGpmt-4zw9ZE-4zwbpf-6ejpUr-d1YnEN-Ey23v-6eozMN-6eozDm-mjAXX-6ejq32-JhS4qN-gSrNtX-m7EepN-9PwMKV-eDuJJq-dugc8b-7HAmf6-exExFL-GgexGw-oWEA5t-6eoxmh-tdND6-6ejqc6-mjB55-juKde-6ejqNv-CSDxUZ-6eoA8d-eaim25-bNYZ2P-jMGAzG-83BhYG-KUmgD-kRUJN/"><img src="../media/rasters/desirepath.jpg"/></a>
 <figcaption><small>From Flickr by George Redgrave</small></figcaption></figure>

A desire line is the natural path a user takes through a system. For example, if you were to design a park, rather than starting out with fixed paths, you could instead let paths form naturally based on where people wanted to walk, and then later cement these dirt paths in.

In your help system, you probably have a list of popular topics that make up the bulk of search results (following the 80/20 rule). Make these topics prominent and easy to click on your entry point, reducing the user's ability to find and view these topics.

Here's an example from Twitter. By putting the most popular topics right at the top, the authors embrace the desire lines to these topics.

<a href="https://support.twitter.com/"><img src="../media/rasters/twitter_sidebar2.png"/>
</a>

On the [Amazon Developer Documentation homepage](https://developer.amazon.com/documentation), we looked at the top 10 most viewed topics in our help and made this content visually prominent in a carousel at the top.

<!-- Hierarchy -->

## 2. Hierarchy

<img src="../media/vectors/wtd_doc_navigation_hierarchy.svg"  class="vectorStyle"/>

Another design principle to consider in your doc navigation is hierarchy.

<div class="bs-callout bs-callout-primary"><b>Hierarchy:</b> "Hierarchical organization is the simplest structure for visualizing and understanding complexity." </div>

When we organize our documentation, we usually create a hierarchical outline of the content to help users both understand and visualize the body of information. We usually have a sidebar navigation feature that lists the topics in the documentation (within a particular product scope). The documents are often grouped in parent-child trees.

A good example of hierarchy in a sidebar is with Google.

<a href="https://developers.google.com/actions/develop/conversation"><img src="../media/rasters/googlevoicedoc.png"/>
</a>

Here you can see that the various topics appear in the left, divided into different groups.

When you create your sidebar menu, right-size the doc navigation so that it's not too massive, nor too small, but rather provides meaningful at-a-glance context at a defined scope. In the Google example, there aren't so many topics that you can't get meaningful information at a glance about the whole.

Here's another example of a sidebar menu from Sentry:

<a href="https://docs.sentry.io/"><img src="../media/rasters/sentry.png"/></a>

I like these examples because you can easily scan them to get a sense of the whole. The nav menu is just two levels, so it's not overwhelming. There aren't a million topics that would make it difficult to grasp the whole. Being able to get a sense of the whole is one of the main purposes of this hierarchy.

### Can you get rid of the sidebar nav?

Although the sidebar navigation is fairly common in docs, it's also somewhat controversial. Some people think the sidebar nav is detritus from another era (e.g., dated tripane help). They argue that it's not something people frequently use, so why bother with it?

In my experience, if you remove the sidebar from your docs, users tend to dislike its absence. In a comment on a post on my site, [Barry Grennon](https://www.linkedin.com/in/barrygrenon/) [explains](http://idratherbewriting.com/2017/05/01/write-the-docs-podcast-episode-5-where-do-we-belong/#comment-3288347593):

> ... We also tried getting rid of TOCs, and people hated it. However, our web analytics show that users almost never interact with the TOC. And if they do, it is usually only with the few proximate pages in the TOC to the page they happen to be on.
>
> From our observations and discussions with users, we feel that the TOC provides a psychological or metaphorically physical sense of space, a sense of a "whole", that consumers of "canonical source" technical content seem to want.

In other words, the sidebar menu grounds users with a sense of the whole, even if they don't always use that whole to navigate. If there isn't a "whole" to grasp, such as is the case with a knowledge base site, the sidebar nav isn't necessary. But when there is a whole, users like having it visible at a glance.

## The necessity of seeing the whole

To better understand why we need this hierarchy sidebar nav, think of this sidebar as a list of parts that make up the whole.

<img src="../media/vectors/wtd_doc_navigation_listofparts.svg" style="border: 1px solid #dedede;"/>

Breaking down a complex system into a list of parts can help simplify the system for users.

<img src="../media/vectors/wtd_doc_navigation_wholevspart.svg" style="border: 1px solid #dedede;"/>

If you think about it, with just about any complex system or object, to understand it, users break down the whole into a list of parts. It's the first step in wrangling complexity &mdash; converting a complex entity into smaller parts to better understand what's going on. Here are some examples:

* To understand a philosophical theorem, you break it down into assumptions, premises, and conclusions.
* To understand a company's organization, you might break it down into different departments, groups,  managers.
* To understand a product to assemble, you check out the list of parts, tools, and tasks.
* To understand a story, you break it down into exposition, rising action, climax, and denouement.
* To understand a conference, you look at the speakers, venue, schedule.
* To understand an API, you look at the authentication mechanism, the base URL, a sample request, a sample response.
* To understand the animal kingdom, you can classify them into various groups: birds, fish, reptiles, amphibians, anthropods, mammals, etc.

Our natural action in understanding any complex system is to break the system down into a list of parts, and then analyze how those parts work together. That's basically what a sidebar navigation menu is, only instead of one long flat list, the list of parts are often organized into parent-child trees (smaller hierarchies) that make sense.

When users have this larger map of the whole system, with each of its parents logically grouped, it can provide meaning to users. According to James Kalbach,

<blockquote>Navigation provides a narrative for people to follow on the web. <small><br/>&mdash; <a href="https://www.amazon.com/Designing-Web-Navigation-Optimizing-Experience/dp/0596528108/ref=sr_1_1?s=books&ie=UTF8&qid=1483721104&sr=1-1&keywords=designing+web+navigation+kalbach">Designing Web Navigation: Optimizing the User Experience</a></small>
</blockquote>

### Avoid deep hierarchies

As you structure your sidebar, try to avoid deep hierarchies. Deep hierarchies are folders that contain folders that contain folders that contain folders, etc. Deep hierarchical nesting prevents users from grasping the whole at a glance. This undercuts the purpose of the sidebar.

<img src="../media/vectors/wtd_doc_navigation_flatdeephierarchies.svg" style="border: 1px solid #dedede;"/>

Some examples of deep hierarchical nesting would be [Wikipedia's category hierarchies](https://en.wikipedia.org/wiki/Portal:Contents/Categories) or [Yahoo's hierarchy directory](https://arstechnica.com/information-technology/2014/09/yahoo-killing-off-yahoo-after-20-years-of-hierarchical-organization/). Beyond 1-2 levels, the deep hierarchies become difficult to process. Our brains aren't wired for it.


<!-- Immersion -->

## 3. Immersion

<img src="../media/vectors/wtd_doc_navigation_dontleavesystem.svg"  class="vectorStyle"/>

Another principle to design for is immersion.

<div class="bs-callout bs-callout-primary"><b>Immersion:</b> "A state of mental focus so intense that awareness of the "real" world is lost, generally resulting a feeling of joy and satisfaction."</div>

Although immersion mostly refers to removing distractions from the outside world so the user can become engrossed within a system, forgetting the outside world, there are ties with documentation here. Users desire to be immersed in the application or system they're using rather than leaving that system to consult a separate, external system for help. Users usually feel like going into the help detracts them from the focus and progress toward their goal.

The first way to cater to immersion, therefore, is to bring the help to the user. Don't require users to go to the help &mdash; through context-sensitive features and other on-screen text, bring the help to users. This assumes there's a user interface for you to push the help. With developer docs, the help might best appear in the form of code comments, error messages, or interactive REST clients like Swagger.

But even when a user goes to your help system, the principle of immersion still applies. Users consuming content prefer to stay within that content page rather than move back and forth with a sidebar nav, which exists somewhat "outside" of the page content.

<img src="../media/vectors/wtd_doc_navigation_usersclickinlinelinks.svg"  style="border: 1px solid #dedede;"/>

Immersed in a topic, users are more apt to click and navigate using the links within the topic itself. As such, you should also provide navigational controls within the content rather than assuming all doc navigation will take place through the sidebar nav.

### Bottom-up navigation

The idea of navigating from within your content is called "bottom-up navigation" (rather than "top-down navigation," where users would drill down into the content through hierarchies). Bottom-up navigation is a principle that Mark Baker emphasizes on his site [Every Page Is Page One](http://everypageispageone.com/2015/02/10/bottom-up-information-architecture-q-and-a-part-1/).

Although Mark describes bottom-up navigation in more articulate, abstract ways in his posts and book, I like the down-to-earth description he gives in a [comment on one of my posts](http://idratherbewriting.com/2017/05/01/write-the-docs-podcast-episode-5-where-do-we-belong/#comment-3286566056):

<blockquote>
<ul>
<li>If you tell me I can do something, link to how to do that something.</li>
<li>If you tell me I can use something, link to a description of that something.</li>
<li>If you mention a concept or an idea, link to a description of that concept or idea.</li>
</ul>
</blockquote>

These principles may seem like commonsense. In general, we link to topics as it makes sense to do so. But bottom-up navigation takes inline linking to a another level. Consider amplifying the number of links by two or three times the amount so that your pages begin to resemble the inline links in Wikipedia.

<img src="../media/rasters/wikipedia.png"/>

Amplifying the number of inline links create some challenges:

* It can be hard to author content when your text is littered with links. (If using Markdown, use the reference style linking.)
* As you rename files, page titles, and headings, the links can easily break or list the wrong page titles.
* Inline links create decision points in your content that force users to decide whether to continue reading or to jump to a new topic. This can result in users jumping around more in your content, which might [reduce readability and increase documentation fatigue](http://idratherbewriting.com/2010/06/19/finally-convinced-about-removing-inline-links-to-increase-readability/).

Even with these challenges, don't neglect or minimize inline links. They're how many users simply navigate content. Why? The web has driven this behavior into our brains.

The web teaches us navigate this way because our searches typically follow this pattern: we google something, land on a page, become disatisfied, jump back to google's results, click to another page, click links within the page, and move to another page as we search for the right information.

Even if we don't *always* operate in this mode, the many times we do operate in this mode condition us to act this way even when we're not on the web. We rarely navigate via the sidebar because we're so used to jumping across different websites (clicking back and forward on different google results) instead of moving within the same system using a logical sidebar.

This kind of hit-and-miss navigation through keyword searches and results pages is jumpy and nauseating in the long run, but because we have internalized the behavior as part of an Internet culture, we can't neglect this design pattern in our help material. Instead, we should build links into our content to help users navigate.

## 4. Modularity {#modularity}

<img src="../media/vectors/wtd_doc_navigation_modularity.svg"  class="vectorStyle"/>

In the previous section, I explained that users often arrive at a page from a search, because that's how the web has conditioned us to act, through hundreds of searches we do on a weekly/monthly basis. This transitions us to the next design principle, modularity.

<div class="bs-callout bs-callout-primary"><b>Modularity:</b> "A method of managing system complexity that involves dividing large systems into multiple, smaller self-contained systems." </div>

Applying modularity to documentation means breaking up content into independent topics that can be viewed, understood, and updated independent of the whole. A topic or chunk should not be so interconnected with the whole that it cannot stand on its own.

Modularity also provides efficiencies for the authors, because it means we can work on an individual part without having to adjust the whole.

### Users read non-sequentially

Modularity in documentation has some of its origins with John Carroll, who argued that users should not be required to read the whole manual but instead be encouraged jump around to the topics they're interested in. Carroll explains:

> You can just read the sections about the tasks you want to do. <br />
&mdash; John Carroll, <a
href="http://faculty.washington.edu/farkas/dfpubs/Farkas-Williams-CarrollsNurnbergFunnel.pdf">The Nurnberg Funnel</a>

Because users skip around and are impatient to act, we have to design our help material to support entry at any point. Help topics that are modular can stand alone and function as independent entities without requiring users to read a lot of before-or-after topics to make sense of the content.

Most of us agree with this modularity in theory, but it's hard to implement in practice, in part due to the information structures we may be following.

### Don't assume building blocks == presentation

For example, you may be writing in a documentation structure that separates content into tasks, concepts, and reference topics. If so, remember that these structures are a way of chunking content so you can re-use it. The re-use reduces your word count, lowers translation costs, avoids duplication, and provides other efficiency benefits.

However, remember that these information chunks are building blocks only. Like legos, you can arrange the blocks into more lengthy displays.

<img src="../media/vectors/usercentered_buildingblocks.svg"  style="border: 1px solid #dedede;"/>

You aren't required to have a two-sentence topic that stands as its own page because it's a concept. You don't need a topic that is just 3 steps and nothing more because it's a "task." Users don't think in terms of topic types but rather goals and problems.

If you fragment your information into a [million little content pieces](http://idratherbewriting.com/2013/04/22/does-dita-encourage-authors-to-fragment-information-into-a-million-little-pieces/), you force users to jump around from topic to topic, like a pinball bouncing off of different walls and targets, looking for the information they need. That design leads to a disjointed, tiring experience. Instead, combine these chunks into more comprehensive "articles," just like rocks can be stacked in different combinations to form more elaborate and purposeful cairns.

<img src="../media/rasters/cairns.png" style="vectorImage"/>

Usually when you create standalone, modular topics, the topics end up being somewhat long. Don't be afraid of long topics. Some Wikipedia articles are so long they could be printed as ebooks.

Not all help information can stand <i>entirely</i> on its own. Frequently one concept or task builds on another topic, or requires knowledge of another topic. But there's usually a logical boundary line between topics. You can decide  how large to draw the boundaries. Just make sure your users aren't bouncing from one topic to another trying to get answers for a single task or goal they're trying to achieve.

Although I shy away from actual word count numbers, I think a good-sized page can range anywhere from 800 to 3,000 words. It mainly depends on whether the topic is complete. Beyond 3,000 words, I usually start chunking the information.


<!-- wayfinding -->

## 5. Wayfinding

<img src="../media/vectors/wtd_doc_navigation_wayfinding.svg" class="vectorStyle"/>

In the previous section, I explored modularity and noted that it usually results in longer topics. As much as you may strive for standalone articles, it's often necessary to break content for the same general procedure or larger task into multiple pages. If so, you can implement wayfinding techniques to help users successfully navigate across the content.

<div class="bs-callout bs-callout-primary"><b>Wayfinding: </b>"The process of using spatial and environmental information to navigate to a destination.""</div>

In documentation, wayfinding techniques might include providing contextual links, workflow maps, next steps, and breadcrumbs to help orient users as to where they are in a larger system.

### Provide context before

At the start of a topic, if you expect the user to have some context or background information, add some links for that context. The links usually go to an overview page or some other conceptual foundation.

If the topic is one among multiple in a larger procedure, you can embed a workflow map at the top of the page to let the user know where he or she is in a larger process.

<a href="http://docs.aws.amazon.com/AmazonS3/latest/gsg/PuttingAnObjectInABucket.html"><img src="../media/rasters/aws.png" style="vectorImage" /></a>

### On-page-TOC

As the user navigates the content, the on-page TOC lets a user see the content at a glance. It lets users click to the section they're interested in, without requiring the user to manually scroll or skim the page for the information.

Here's an example of an on-page TOC from Amazon's documentation:

<a href="https://developer.amazon.com/public/solutions/devices/fire-tv/docs/fire-app-builder-overview"><img src="../media/rasters/fabtoc.png" style="vectorImage" /></a>

When you create the on-page TOC, make sure it's scannable. Avoid including too many levels, as this detail might detract from the user's ability to take in the content at a glance.

Additionally, don't try to stuff the on-page TOC into the navigation sidebar (mixing heading links with links to other pages). Doing so unnecessarily balloons the sidebar with too many options, giving the impression that your documentation contains a *massive* set of pages to navigate and learn. (Users may often feel relief to realize that the sidebar links are actually just sections.)

Users don't usually need all the information up front but can instead view more detail as they drill deeper into the site ("progressive disclosure").

### Provide Next Steps

At the end of the topic, provide a "Next Steps" section that guides users to the logical next steps.

<a href="https://www.firebase.com/docs/web/guide/saving-data.html"><img src="../media/rasters/firebase.png" /></a>

Even if you're not outlining a larger process or sequence, suggest a next move for the user. What else can/should users do at this point?

### Breadcrumbs

Finally, you can add breadcrumbs so that users have a sense of where they are in a larger system. The breadcrumb can be especially helpful when users land on a page in the middle of a help system.

<a href="https://developers.facebook.com/docs/accountkit/countrycodes"><img src="../media/rasters/facebookbreadcrumbs.png"/></a>

The breadcrumb helps users orient their location on a map.

<!-- Summary -->

## Summary of doc navigation principles

Here's a summary of the main design principles we covered:

  * Entry Point
  * Hierarchy
  * Immersion
  * Modularity
  * Wayfinding

There are more principles of design that apply, but these are a good start and probably form the core of what you need to know.

### Avoid non-standard design

In conclusion, I want to caution away from non-standard design (except as an experiment). Users tend to expect sites to have a predictable, standard design to them, and if you implement "creative" navigation (such as by structuring all navigation through breadcrumbs, or making 3D navigation based on hotspots in a picture, etc.), you make it more difficult for people to use your site.

The following is an intersection near my house that has a bike crossing lane that runs kitty-corner, while the pedestrian crossing lanes bisect the street.

<img src="../media/rasters/intersection.jpg"/>

At least a quart of the time when I try to cross this intersection, drivers get confused. Sometimes they drive half way through the intersection and then stop. I often see surprise on their faces as they realize, mid-way through, that they've just screwed up. This design violates what users have come to expect. While the design may have seemed like a neat idea, it doesn't work in practice.

When we follow universal design principles, we conform to the behaviors and patterns that work well with users. Our navigation features won't call attention to themselves but will rather invisibly support the main purpose of the help, allowing users to focus on the content and achieve their goals.

## Questions

 </ul>
