---
title: My YAML tutorial in the context of Jekyll
categories:
- jekyll
keywords: 
description: "YAML is a format that is becoming a common way to store properties for configuring systems. I created a new tutorial on YAML that shows how mappings and lists work, and how you can use Jekyll and Liquid to parse through the YAML content."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/yamltutorial.png
---

Not many technical writers use YAML in their authoring tools. However, in the Jekyll environment, YAML is commonly used as an approach for creating a table of contents and other lists of content.  
 
Most commonly, you store each item in your table of contents in a YAML file. You then iterate through that YAML file using Liquid syntax in order to push each item into a more complex HTML structure.

When I first learned that this is the approach to creating a table of contents in Jekyll, it struck me as odd. But as I have used it for a while now, I've found this is the best way to maintain a table of contents in Jekyll.
 
Just as JSON has become more popular than XML when it comes to formats for content, YAML (which is a superset of  JSON) is also becoming a lot more popular than JSON as a configuration format. For example, a lot of times you configure an API service by passing it a YAML file that has a lot of settings.
 
YAML is more readable than JSON because it doesn't have any tags. It just uses white space, and if you been reading Mark Baker's recent post [Why does XML suck?](http://everypageispageone.com/2016/01/28/why-does-xml-suck/), you know that using whitespace as a way to format content can make things more readable. (By the way, that post from Mark is definitely one you'll want to check out.)
 
I created a new tutorial on YAML and added it to my other tutorials that are in my Jekyll project. You can view  my YAML tutorial here: **[YAML tutorial in the context of Jekyll](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_yaml_tutorial/)**
 
In my tutorial, I show a lot of examples of YAML and how to access the YAML data using Liquid and Jekyll.
  
Even if you aren't using a static site generator, YAML could still be something that is useful to you in some way. Maybe you have a collection of items that you want to store, or maybe you want to hack in a table of contents into a system that doesn't provide one, or maybe you have lists of related links. Learning how the YAML syntax works and how you can parse it to pull out items can be useful no matter what authoring tool you're using.