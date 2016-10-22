---
title: "Jekyll expand/collapse sidebar menu with 3 levels"
categories:
- jekyll
keywords: 
summary: ""
published: false
---

Now that I work in a space where my documentation is on the web and public, I can point out some of what I'm doing. I mentioned in a previous post about [tools]() that I was swimming in Jekyll code for the past few days. I finished the sidebar menu I was working on. If you look at this [documentation page](https://developer.amazon.com/public/solutions/devices/fire-tv/docs/getting-started-developing-apps-and-games-for-amazon-fire-tv), there's now a three-level expandable/collapsible menu on the right.

The default platform is a web-based CMS (called Hippo). Theoretically, we could have hacked Hippo to integrate the sidebar into Hippo's main navigation, and then we surely would have added it [on the left](https://www.cherryleaf.com/blog/2016/09/have-amazon-dropbox-microsoft-and-google-got-their-information-design-wrong/). However, for a variety of reasons, mainly because Hippo is only an interim solution that we'll probably soon replace, I decided just to hack in the sidebar I needed. 

Prior to this sidebar, there wasn't any good sidebar navigation. As much as I support and value inline links, eliminating the sidebar navigation that lets users navigate all documents in a collection and just relying on inline links doesn't work. 

My first sidebar hack had a single level menu (headings and subitems), but one level wasn't enough. I had implemented some creative techniques for switching sidebars based on different doc categories, but this approach was non-standard and cumbersome to configure.

This sidebar is generated through Jekyll. A YAML file stores the data, and the theme iterates through the YAML data and pushes it into this formatting. The expand/collapse features are provided through an open source jQuery component called Navgoco. 

The accordion feature of the sidebar keeps the list of items manageable. Without the accordion effect, very quickly you can expand the folders so quickly that you get buried in options. 


