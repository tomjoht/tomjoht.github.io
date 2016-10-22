---
title: "Jekyll expand/collapse sidebar menu with 3 levels"
categories:
- jekyll
keywords: 
summary: ""
published: false
---

Now that I work in a space where my documentation is on the web and public, I can point out some of what I'm doing. I mentioned in a previous post about [tools](http://idratherbewriting.com/2016/10/17/my-gravity-towards-tools/) that I was swimming in Jekyll code for the past few days. I finished the sidebar menu I was working on. If you look at this [documentation page](https://developer.amazon.com/public/solutions/devices/fire-tv/docs/getting-started-developing-apps-and-games-for-amazon-fire-tv), there's now a three-level expandable/collapsible menu on the right.

The default platform is a third-party web-based CMS. Theoretically, we could have hacked it to integrate the sidebar into its main navigation, and then we surely would have added it [on the left](https://www.cherryleaf.com/blog/2016/09/have-amazon-dropbox-microsoft-and-google-got-their-information-design-wrong/). However, for a variety of reasons, mainly because this is only an interim solution that we'll probably soon replace, I decided just to hack in the sidebar I needed. 

Prior to this sidebar, there wasn't any good sidebar navigation. As much as I support and value inline links, eliminating the sidebar navigation that lets users navigate all documents in a collection and just relying on inline links alone doesn't work. 

My first sidebar hack had a single level menu (headings and subitems), but one level wasn't enough. I had implemented some creative techniques for switching sidebars based on different doc categories, but this approach was non-standard and cumbersome to configure. Instead of switching sidebars within the same doc set, as I [thought would be the ideal feature](http://idratherbewriting.com/documentation-theme-jekyll/mydoc_release_notes_50.html), it turns out that you don't really need to do this. 

It's better to split out different products into different repos. If the doc set is so massive that it needs different sidebars, then the doc set is simply too large.

This sidebar is generated through Jekyll. A YAML file stores the data, and the theme iterates through the YAML data and pushes it into this formatting. The expand/collapse features are provided through an open source jQuery component called [Navgoco](https://github.com/tefra/navgoco). 

The accordion feature of the sidebar keeps the list of items manageable. Without the accordion effect, very quickly you can expand the folders so quickly that you get buried in options. 

The icons are rendered through [Font Awesome](http://fontawesome.io/icons/). 
 
 Originally I was trying to imitate the AWS docs sidebar, which you can see in this [sample EC2 doc set](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html). There are a few design differences. With the AWS sidebar, clicking the folder titles displays an overview topic. However, too often the folder title links to a generic topic [like this](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-tutorials.html), and there's simply not much to say about it. 
 
 Another design difference is that the AWS sidebar is fixed in place as you scroll down the page. This is how the sidebar ideally should be. However, when you put the sidebar on the right, fixing it in place would result in two scrollbars side by side, which frequently confuses users and reflects design. (I once created a site that had 3 scrollbars on the right, and a UX designer almost had a heart attack.) This is solid argument for keeping the navigation on the left.
 
 The AWS docs also feature breadcrumbs, a sticky footer, and scrollspy (dynamic section highlighting based on where you are in the page). 
 
 As I've been studying the AWS doc site, I've come to see the following features as essential for a documentation site:
 
 * Fixed navigation on the left
 * Accordion menu for items
 * 3 levels of expand/collapse folders
 * A sticky footer (when you scroll up the page, you don't want the footer to scroll past the fixed sidebar)
 * Breadcrumbs (I'm still not sure what the best way to implement these are in Jekyll)
 * Relative links
 * Feedback option on page
 
 One challenge is how to link to topics in other documentation sets. For example, if product A is its own doc set, how do you link to product B except through a hard-coded URL? I've seen systems where shared content is stored in its own repository, and each writer pulls down a copy and includes it in his or her project. The shared content contains the variables that point to the links. Other assets can be shared this way as well, though usually there is little need for frequent linking or content re-use across projects.


