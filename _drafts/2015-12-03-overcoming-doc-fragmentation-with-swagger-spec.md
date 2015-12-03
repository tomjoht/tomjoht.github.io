---
title: Single sourcing the Swagger spec and main documentation using Jekyll
categories:
- api-doc
- jekyll
keywords: 
summary: ""
---

One of the problems with using Swagger is that the output duplicates a lot of the descriptions that already appear in your main documentation. 

In your Swagger spec, you list your resources and endpoints, with descriptions, code samples, and other content. Most likely all of this content already exists in your main documentation. As a result, you may end up either copying and pasting the same descriptions from your main doc into your Swagger spec file. Or you end up trying to generate Markdown from the Swagger spec file that you can then include in your documentation.

Here's the approach I'm trying out to eliminate this copy-and-paste duplication.



