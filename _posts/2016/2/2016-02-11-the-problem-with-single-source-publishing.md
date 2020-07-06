---
title: Three models for single source publishing &mdash; and challenges with each
categories:
- technical-writing
description: "When publishing different versions of content for different audiences, you can choose from among several single source publishing models: individual outputs, rights-based views, and dynamic filtering. Each option has challenges, however, and is not easy to pull off."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/threemodels.png
---

As I try to wrap my mind around the requirements of one of my current projects, I find myself struggling with the fundamental paradigm of single source publishing. 

Consider Project Godzilla, as I'll call it. Project Godzilla involves an API that plugs in requests from a lot of different product lines, thus serving as a kind of master API for dozens of products. The total possible JSON submitted in the request is quite large, since it accommodates so many potential products. But each customer will only use a slice of the JSON. As a result, the delivery engineers want to give customers only that slice of the JSON that they will actually need to make requests.

Here's an analogy. You've got a basket of fruit that you're offering to people, but each person will only eat one piece of fruit from the basket, such as an apple, orange, or banana. You want to give each person only the documentation for the fruit they are consuming, not the documentation for all fruit in the basket.

There seem to be at least three separate models for tackling this kind of single-sourcing scenario.

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/threemodelssinglesourcing-01.svg" | prepend: site.baseurl }}" alt="Three models for single sourcing" />

## Model 1: Separate outputs

A lot of the static site generating tools, from OxygenXML to help authoring tools to Jekyll and others would solve this problem by having you apply various tags to the different fruit, or rather to the different elements of JSON in the request. Then you run a build process that spits out a separate site for each product based on the tags you want to include or exclude.

Sounds good, right? Now you have 10 sites and you give the appropriate links to each person. Each person sees only the information that pertains to the product/fruit he or she is consuming.

But as you version the documentation and translate it as well as provide PDF and e-learning outputs, the number of sites grows, and after a year or so, you find yourself managing upwards of 100 plus independent site outputs. What's wrong with this model?

* You can't really review each output for errors. You most likely check one or two outputs and hope the content looks good in the others as well. 
* Your build and deployment process takes forever.
* No one knows which link to go to to find the right documentation.
* If you publish on the web, users searching for topics on Google will invariably land on the wrong output.
* Overall, the number of tags and conditions leading to separate outputs is hard to manage. There's a high risk for error.

## Model 2: Rights-based login

Enter the rights-based login model. Rather than publishing a ton of different outputs, you apply conditions in your content that filter based on certain viewing rights in a CMS. Users log in to the CMS, and based on the rights associated with their profile, they see what they should see. The group with viewing rights for oranges just sees oranges, and so on.

This model is better because you have just one site rather than 100 separate ones to manage, but it still suffers from problems. Here are some challenges:

* Mapping viewing rights for content to your user roles in your CMS might rely on custom CMS code, which creates nonstandard code and vendor lock-in.
* You have to manage the rights of each user individually, which is usually something that people in customer success or delivery do, not tech writers.
* Search indexes usually aren't sophisticated enough to match the variations of user rights and the related content. Your CMS will likely need a different search index for each set of rights.
* These role-based groups don't allow for the different combinations of rights that users might have. If you have 10 products, you can have hundreds of combinations of those rights. When your roles aren't clear cut, managing rights falls apart.
* You need more robust tools and infrastructure. You might even need a specialist to come in and set the CMS up.

## Model 3: Dynamic filtering

Enter another model: dynamic filtering. In the dynamic filtering model, the user chooses facets that allow him or her to dynamically filter the options and content available. You still have tags, but rather than implementing a rights-based approach that enforces what users can or can't see, you allow users to select those rights and let the content filter automatically. Here are the problems with this approach:

* Faceted filtering requires sophisticated tooling. Not many help authoring tools provide this kind of on-the-fly filtering in easy-to-configure ways.
* Users may not understand how to filter the information unless you put a lot of effort into making a friendly and intuitive UI.
* You risk that users will land on the wrong page and wrong version and not realize it. You may need to implement more granular sign posts on each page that help users know if they're looking at the right content, or if they need to go somewhere else.
* Like the CMS option, you need more robust tooling and coding expertise. Faceted filtering might require you to configure Apache Solr search, for example.

## Conclusion
Which is the right approach?

* Model 1: Individual outputs
* Model 2: Rights-based views
* Model 3: Dynamic filtering

From a documentation perspective, they each come with challenges. However, after living in the first model for the past year and a half, I'm much more inclined to try out one of the other models &mdash; the single site with lots of filtering options, or a single database with rights-based views. 

I'm curious to hear your experience with these various models for single-sourcing content.
