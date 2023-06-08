---
title: "The impact of technical diversity on documentation -- epiphanies on a trip to IKEA"
permalink: /trends/impact-of-technical-diversity-on-docs.html
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.com/trendsdiversity-impact-on-docs
series: "Trends to follow or forget"
sidebar: sidebar_fizzled_trends
description: "This post is <a href='/trends/trends-to-follow-or-forget-intro.html'>part of a series</a> that explores tech comm trends that I've either followed or forgotten, and why. The overall goal is to better understand the reasons that drive trend adoption or abandonment in my personal career. This post focuses on the <i>impact of diversity/pluralism/fragmentation on documentation</i>."
---

* TOC
{:toc}

## Casualties of specialization: The loss of big-picture writing

In the [previous post](/trends/embracing-diversity-pluralism-fragmentation.html), I argued that technical diversity is one of the trajectories of technology, but I didn't delve into the specific impact on documentation. That's what I'll tackle in this post.

(By the way, a note about the term "diversity." To disambiguate this term from the more common connotation of racial and cultural diversity, I've been using either "technical diversity" or "diversity/pluralism/fragmentation" to better represent Kevin Kelly's usage of the term in *What Technology Wants*.)

What's the impact of diversity/pluralism/fragmentation on documentation? When you have a large developer portal with content contributed by many different siloed and niche engineering teams, here's what happens: *the developer portal loses the big picture.* This is because each niche team sees and understands only their sliver of the solution.

For example, a team producing a "Gizmo API" has specialists who understand and convey the details, nuances, and sample code for the Gizmo API. But how does the Gizmo API fit into the larger product solution? How does it interact with other APIs? In what ways is the Gizmo API part of a larger number of complementary products and services that developers must use to achieve their end goals? The Gizmo API team probably won't be able to tell you this. They can only share the Javadocs for the Gizmo API with you to publish.

Multiply this mentality by 20 different teams contributing to a developer portal, and pretty soon the absence of this larger picture tying everything together with a coherent arc and unity becomes apparent. The developer portal resembles a series of wikipedia pages, with many independent, modular pages that stand alone but seem to lack more informative overviews and other connecting orientations. Where's the larger picture of what's going on with the product? That perspective is missing because the contributors are so specialized, they don't have that larger picture. And if tech writers merely get information from these specialized engineers, they will also lack that picture. Pretty soon the docs seem like tech notes contributed by many individual teams that contain a lot of "how" questions but no "why" questions. For example, here's how you install the Gizmo API on Ubuntu. Not what's the purpose of the Gizmo API and what kind of product scenarios would be common.

In software organizations producing large products (for example, Fire TV at Amazon, Google Maps at Google, and so on), the products have so many hundreds of people working on them, each focusing on a different aspect, it's the equivalent of Smith's 10 different specialized groups operating on different aspects of the pin, none of which understand how all of these tasks come together as a whole. It's a miracle that products have coherence at all, given that few people understand how everything fits together or how the parts interact across components owned by different teams spread across the organization.

The big-picture knowledge probably resides in the heads of a handful of engineering directors and high-level product managers, but it's missing across the swaths of independent engineering teams so steeped in specialized knowledge of their stewardship that they know and understand their role only, with a vague idea of how their output fits into the larger picture. These massive products almost take on a life and momentum of their own.

In no possible way could you have one software engineer responsible for the entire product, at least not at this point in the product's size and complexity. Instead, there are specialists all along the way handling every aspect of the solution. And one of those specialists is the technical writer, responsible for documentation about the product's implementation. Here's where I think there's an opportunity that's missed. In this role of ever-increasing specialization of product roles and stewardships, who understands the big picture? Who can look at an article that an engineering team wants to contribute to a developer portal and see how the information fits or conflicts with 10,000 other pages on the developer portal? Who can understand how the Gizmo API gets implemented in five different customer scenarios, and what other dependencies and APIs developers are also using? The opportunity to "specialize" in big picture understanding is a role ripe for technical writers to exploit.

When technical writers understand the big picture, they can shape the information architecture of developer portals with a coherent arc that makes the information more than just a collection of independent wikipedia articles. The arc can model the information along the developer's journey, from start to finish. It goes without saying that structuring information within the trajectory of the developer's journey requires tech writers to understand that journey in the first place. This understanding is not, however, very common among tech writers.

## Learning from IKEA's showrooms

As evidence for how compelling the big picture can be, you need only walk through IKEA, the Swedish furniture store. What makes IKEA so unique? It's not the wordless instruction manuals (which are a wonder by themselves), or how the store uses untranslated Swedish product names for everything (e.g., "Hemnes" for TV stand, "Khallax" for bookshelf), or the fact that prices are cheap because you have to assemble everything yourself (for hours on end with basic tools). What's truly magical about IKEA is the furnished showrooms that demonstrate the full context of products.

Yesterday my daughter asked me to take her to IKEA to get a new dresser that would fit into her closet, and we spent the first hour at IKEA marveling through all of these furnished showrooms.

<style>
#ikeaPics img {
  max-width="500px"
}
</style>
<div id="ikeaPics">
<img src="{{site.media}}images/ikeafrontroom1.jpg" alt="IKEA front room" />

<img src="{{site.media}}images/ikeakitchen1.jpg" alt="IKEA demo kitchen" />

<img src="{{site.media}}images/ikeakitchenstudio1.jpg" alt="IKEA studio" />

<img src="{{site.media}}images/ikealivingroom1.jpg" alt="IKEA living room" />

<img src="{{site.media}}images/ikeapatio1.jpg" alt="IKEA patio" />

<img src="{{site.media}}images/ikeastudio1.jpg" alt="IKEA living area" />

<img src="{{site.media}}images/ikeastudy1.jpg" alt="IKEA study" />

</div>

These rooms are fascinating. It's so much more interesting to see the products working together like this rather than sorted by category along aisles of shelves. My daughter says IKEA inspired her to want to become an architect, and she's already spent half of her youth designing house after house in Roblox and Minecraft.

In some cases, to demonstrate a room, IKEA designers have built pseudo staircases, or added lighted picturescapes outside fake windows, or integrated many products they don't actually sell (guitars, shoes, tools) to simulate the scene.

You can also see how much all products in a sample room cost. Granted, it's not as if anyone chooses an entire living room set, but it's still cool to see the total cost of these collective items.

<img style="max-width: 300px" src="{{site.media}}images/ikeacompletelivingroom.jpg" alt="Complete living room set price" />

What's interesting is to see the vision of how everything normally sold as a separate item fits together into one larger story.

IKEA also gives you arrows to follow through their store, like a user on a journey, giving you the sense that you're making your way through the store along a logical path.

<img style="max-width: 400px" src="{{site.media}}images/ikeaarrow.jpg" alt="IKEA arrow" />

In the same way, documentation should structure content along user journeys and show furnished rooms rather than merely shelves of API endpoints.

## Challenges to creating "showroom" documentation

Creating full-picture documentation (*showroom documentation*?) isn't necessarily easy. I've written about this in the past with some previous posts:

* [Narrative Workflow Topics: Helping Users Connect the Dots Among Topics](/2013/09/12/narrative-workflow-topics-helping-users-connect-the-dots-among-topics/)
* [Where Topic-Based Authoring Fails: End-to-End Scenarios](/2011/05/25/where-topic-based-authoring-fails/)

For example, in an effort to teach users how to use Illustrator, some tutorials take you through the making of a cat's face, which involves using many different tools and techniques:

<a href="/2011/05/25/where-topic-based-authoring-fails/"><img src="{{site.media}}images/blackcatutorial.png" alt="Black cat tutorial"/></a>

The problem with this approach is that it might come across as irrelevant for anyone not wanting to draw a black cat. For example, maybe I just want to create the white reflection in the eye pupils. Must I watch an entire video tutorial spanning 10+ techniques to get to the part I need? This bursting of long, sequential material into individual, modular topics was heralded as one of the advancements of tech comm. This modularity allowed users to jump to the exact task or topic they wanted to learn about.

In the same way, if you go into IKEA and you want to buy some cubby bins, the store's layout and showroom-driven workflow make this task too arduous to be practical. After spending two hours in IKEA wandering among the showrooms, we finally picked out a dresser and retrieved it via aisle and part number in the towering warehouse section of the store, and we were in the checkout line when we realized we had forgotten to get some extra cubby bins for another family member. But the thought of retracing our steps in the store, backtracking against the natural store's flow (seemingly one way), was too much to bear, and our energy had been exhausted. We left without the cubby bins.

{% include ads.html %}

In much the same way, there's a sense of dread at having to watch a 20-minute tutorial on how to draw a cat just to get to the 30 seconds of relevant information about how to draw the white reflection in the pupils.

In the [Narrative Workflow Topics](2013/09/12/narrative-workflow-topics-helping-users-connect-the-dots-among-topics/) post, I took the approach of narrating a short story that described the users tasks in sequence, and then linked each of the tasks to the supporting documentation. It was my attempt to balance modularity with more of an end-to-end picture. Granted, each of these links probably distracted users and ruined any sense of reading flow.

I wrote these posts a decade ago and haven't done much with the ideas since then. Part of the abandonment probably occurred with my shift into API documentation. In API docs, one treats the various endpoints as ingredients in a kitchen that can be used for myriad baking purposes. Hence the idea of a single user journey makes less sense. You can use the APIs in so many different combinations and workflows, it's undesirable to to restrict the creativity and flexibility of how users would implement the API.

However, I *have* continued writing [Getting Started tutorials](/learnapidoc/docapis_doc_getting_started_section.html), which are an end-to-end tutorial that helps users get started with an API. And there are usually some [sample apps](/learnapidoc/docapis_sample_apps.html) that might provide implementations for the most common scenarios (in a language-specific way). But it's really hard to provide the equivalent of a black cat tutorial in developer docs. The scenarios are much more complex, and product teams are hesitant to crank out sample apps that have robust-enough code for production use cases. It's not easy to create apps for so many different scenarios. [Twilio's Quickstart docs](https://www.twilio.com/docs/quickstart) provide probably the best example in the genre, and these tutorials do not look easy to produce. The quickstarts often show the same steps using multiple languages!

Is there a space for big picture information that doesn't involve the more technical sample app or scenario-driven quickstart that relies on specialized technical knowledge and code?

## Tracing paths through a developer portal

Developer groups often realize that their API houses a large collection of independently documented APIs, products, and services. These APIs are intended to act as a unified and complete ecosystem for end-to-end needs, but there's no clear path through all of their products, since the contributing teams are more or less siloed.

In fact, when I was exploring different teams at Google, one of the roles was for a writer to trace solution paths through the many services in Google Cloud. It was a daunting task that would require me not only to be familiar with a wide number of technologies (both programming languages and cloud infrastructure technologies) but also be familiar with the products and how they all interacted together into harmonious solutions. Who possessed such knowledge in an organization? Although appealing, it didn't seem like a great fit for someone just joining an organization. I didn't want to bite off more than I could chew.

However, I continue to be interested in big picture thinking. Last year, I expanded the sections in my API doc course with [Reasons why product overviews are often minimal or nonexistent](/learnapidoc/docapis_doc_overview.html#reasons_for_failure) and [Reasons why getting started tutorials fail or don't exist](/learnapidoc/docapis_doc_getting_started_section.html#reasons_for_failure). I also [gave a presentation](https://idratherbewriting.com/learnapidoc/docapis_doc_overview.html#presentation-on-product-overviews) on these topics. Admittedly, I probably focused on the big picture and how to get started because of my own discomfort in these areas &mdash; the products I work with are complex and often vague. I wanted to get a better understanding of them and to make them work, even if only in minimal way.

## Organizations don't naturally push writers to document the big picture

Getting this big picture understanding isn't something that comes easy. To understand the big picture, the forest instead of the trees, tech writers will need to sacrifice their focus on the small details of documentation. They might instead try to push this work onto the contributing engineering teams to work out so the tech writers can focus on how those details fit into the larger scope of the developer portal, where along the developer's journey the information fits, and whether the information has an interaction with the larger story and journey.

When you're focused on the micro-level and concerned about whether parameters have proper descriptions, or which file needs to be edited to make the product work properly, it's easy to lose track of the larger story. As soon as you're responsible for drawing the veins on leaves, you forget the shape of the forest.

Additionally, there's no organizational push in this direction. What themes do you observe among support tickets? Doc-related tickets usually involve questions about smaller technical details. Rarely does someone file a bug saying that a product's purpose or description is unclear. Have you ever read some documentation in your company, felt confused about what the product does, and filed a bug to say you don't understand what the product is for? No, because no one wants to look dumb.

Product teams, too, often don't ask tech writers to write extensive product overviews. They're usually too blind to this information need, since they've been immersed in the product for many months. And if they're working with users to develop the solution, those users are kind of like co-developers in the product's features and requirements, and so these users also don't need extensive overviews. It seems the only one who needs the overview and larger connecting picture is the tech writer. But tech writers often second-guess this need due to their unfamiliarity with the business and technical domains.

## Next post

Continue to the next post in this series: [Systems thinking and developer portals](/trends/systems-thinking-and-developer-portals.html).