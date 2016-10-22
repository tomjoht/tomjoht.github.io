---
title: "Jekyll expand/collapse sidebar menu with 3 levels"
categories:
- jekyll
keywords: 
summary: "I hacked together a sidebar menu for a doc site that's hosted on a somewhat inflexible platform. I use Jekyll to generate the sidebar. I also list out some key characteristics that documentation sites need."
published: false
---

Now that I work in a space where my documentation is on the web and public, I can point out some of what I'm doing. I mentioned in a previous post about [tools](http://idratherbewriting.com/2016/10/17/my-gravity-towards-tools/) that I was swimming in Jekyll code for the past few days. I finished the sidebar menu I was working on. If you look at this [documentation page](https://developer.amazon.com/public/solutions/devices/fire-tv/docs/getting-started-developing-apps-and-games-for-amazon-fire-tv), there's now a three-level expandable/collapsible menu on the right. Let me tell you a little about that sidebar, which is generated through Jekyll...

First, the default platform is a third-party web-based CMS (called Hippo, which almost no one has ever hear of or used, but it's based on Java). Theoretically, we could have hacked Hippo to integrate the sidebar into its main navigation on the left, and if so, we surely would have added it [on the left](https://www.cherryleaf.com/blog/2016/09/have-amazon-dropbox-microsoft-and-google-got-their-information-design-wrong/). However, for a variety of reasons, mainly because this is only an interim solution that we'll probably soon replace, I decided just to hack in the sidebar I needed. 

This sidebar is generated through Jekyll. A YAML file stores the data, and the theme iterates through the YAML data and pushes the data items into this formatting. The expand/collapse and accordion features are provided through an open source jQuery component called [Navgoco](https://github.com/tefra/navgoco). 

The accordion feature of the sidebar keeps the list of items manageable. Without the accordion effect, very quickly you can expand the folders so quickly that you get buried in options. 

The icons are rendered through [Font Awesome](http://fontawesome.io/icons/). 

Originally I was trying to imitate the AWS docs sidebar, which you can see in this [sample EC2 doc set](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html). However, there are a few design differences. With the AWS sidebar, clicking the folder titles displays an overview topic. With my sidebar, clicking the folder titles expands items below it. (All too often, when folder titles link to topics, the topics are general and don't say much, [like this](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-tutorials.html).) 

Another design difference is that the AWS sidebar is fixed in place as you scroll down the page. This is how the Jekyll sidebar ideally should be. However, when you put the sidebar on the right, fixing it in place would result in *two* scrollbars side by side, which can be confusing to users and reflects poor design. (I once created a site that had 3 scrollbars on the right, and a UX designer almost had a heart attack.) By the way, this is solid argument for keeping the navigation on the left.

The AWS docs also feature breadcrumbs, a sticky footer, and scrollspy (dynamic section highlighting based on where you are in the page). These are all important features for a doc site that I hope to incorporate into our eventual solution.

As I've been studying the AWS doc site, I've come to see the following features as essential:

* **Fixed navigation on the left**. By "fixed," it stays visible even when you scroll down the page.
* **Accordion menu for items**. This reduces the scope of the items so that readers don't get overwhelmed.
* **3 levels of expand/collapse folders**. One is too few, four is too many.
* **A sticky footer**. When you scroll up the page, you don't want the footer to scroll past the fixed sidebar -- otherwise it looks weird and z-index problems start cropping up.
* **Breadcrumbs. I'm still not sure what the best way to implement these are in Jekyll.
* **Relative links**. Relative links are essential for translation and for moving your site from a staging or review area prior to production.
* **Feedback option on page**. Let readers let you know when something is incorrect.

One challenge is how to link to topics in other documentation sets. For example, if product A is its own doc set, how do you link to product B except through a hard-coded URL? I've seen systems where shared content (such as link variables) is stored in its own repository, and each writer pulls down a copy and includes it in his or her project. The shared content contains the variables that point to the links. Other assets can be shared this way as well, though usually there is little need for frequent linking or content re-use across projects.

By the way, prior to this sidebar, there wasn't any good sidebar navigation. As much as I support and value inline links, eliminating the sidebar navigation that lets users navigate all documents in a collection and just relying on inline links alone doesn't work. 



