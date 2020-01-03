---
title: "Complexity of XML doc systems is likely unnecessary if all you need is HTML"
categories:
- jekyll
keywords: 
description: ""
thumb:
published: false
---

I recently wrote a brief summary of a recent article in the Technical Communication journal about [lightweight DITA](https://idratherbewriting.com/2016/02/23/lightweight-dita-hdita-model/). The main gist of lightweight DITA is to simplify the authoring process by removing some of the complexity. I'm not sure they really understand the complexity that I'm talking about with DITA, though.

When we refer to DITA as being complex, in my mind it's not the XML structure that is complex. Even with 330 elements, that's not the issue. You use only a small subset of those elements, and at the end of the day it's not so different from tags in HTML. 

The complexity of DITA lies in the whole publishing architecture. If all you want is some HTML pages, using DITA to achieve it is like building a semi-truck to haul a few boxes down the block. Documentation doesn't have to be this complex. Here are a few examples of the complexity:

* **Customization**. Suppose you want to incorporate a navigation tab component in your docs. No DITA structure exists for this, so now you'll have to customize your DITA element to allow for this, and then transform the XML into a particular output. Again, this is more complex than is necessary. Why not just use HTML directly for this? Why does every non-standard HTML component require its own XML structure to validate the syntax, and then more transforms just to get the HTML you want?
* **Build processes**. You want to build your HTML site output. With XML solutions, you've got to validate and transform the XML into the output you want. Why not just write directly in HTML?
* **Integration**. You can output HTML from DITA, but then you usually end up with independent websites. What if you want to integrate this HTML output into a larger website? What if you want to strip away the header and other HTML elements from the pages to contain only the content inside the body element? You now have to edit your transforms.

I'm not persuaded that all of the extra code and systems required to make XML doc solutions like Docbook or DITA work is really worth it. If you're just trying to publish HTML, there's a lot easier way. Using Jekyll, you can easily generate your HTML and either push it into a larger site or generate it as the site itself. 

XML does give you validation of your content, which is nice. And it allows you to push content into PDF. However, the complexity of implementing XML doc systems for these two benefits is hardly worth it, in my opinion.
