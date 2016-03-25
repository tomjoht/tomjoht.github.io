---
title: "Xeditor, a CMS editor for XML content (product review)"
categories:
- dita
keywords: CMS editor, CCMS editor, editor interfaces for content management systems, easy XML viewers, XML editors
summary: "The following article is a sponsored article I wrote on behalf of Xeditor, which is one of the companies I advertise on my site. Xeditor provides an easy-to-use, Word-like interface for writing XML (either DITA or your own custom schema). You configure Xeditor to work with your CMS or CCMS, allowing authors across your company to contribute, edit, and review content."
thumb: xeditorthumb.png
---

## Xeditor overview

If you're managing your content in a content management system (CMS), you can often choose the interface you use to edit content. Through the editor interface, you create, update, and manage the topics in your CMS.

Since CMSs (or CCMSs, component content management systems) are costly and extensive to implement, usually a large number of authors and contributors interact with the CMS. You want as much of your content in the CMS as possible so you can leverage the content for re-use, translation, versioning, workflows, and other benefits. 

However, here's the problem. Almost all CMSs require the content to be structured in XML, usually in DITA or a custom XML schema. But writing XML in a text editor limits the number of authors who can easily get going with the CMS. If everyone is just coding the tags by hand, you limit your authors to either the tech elite or to hardy technical writers who have become inured to the tags after years of use.

[Xeditor](http://www.xeditor.com/) provides an easy-to-use editor interface that looks similar to Microsoft Word. It removes the techy code elements of XML and allows tech writers, SMEs, marketers, and other people throughout your company to contribute content into the system just as if they were writing content in their familiar Microsoft Word document tools. 

Here's a sample of the Xeditor interface:

<figure><a href="http://www.xeditor.com/portal/en/technical-documentation-1771"><img src="{{ "/images/xeditorinterface.png" | prepend: site.baseurl }}"/></a><figcaption>Xeditor's interface makes XML authoring simple, like working in Microsoft Word.</figcaption></figure>

## Exploring the demo

You can play around with Xeditor immediately, without having to sit through a salesperson's demo or other preliminary consultation. Just go to the [Live Demo](http://www.xeditor.com/portal/en/livedemo-58), choose one of the options (such as DITA), enter your email address to get a key, click **Send**, and within seconds you get an email with a link that takes you directly to an interface you can play around with.

In my explorations with Xeditor, I found the interface responsive and easy to work with. It functions with as much speed from button to button, screen to screen, as if you were working your local computer instead of the browser.

Xeditor removes the code view, but you can still get to the code if you want to by expanding the XML pane.

<figure><img src="{{ "/images/xeditorcodeview.png" | prepend: site.baseurl }}" alt="The Xeditor code view" /><figcaption>You can expand the XML pane to see the XML code. The code is formatted nicely and syncs to your position on the page.</figcaption></figure>

Additionally, an expandable Attributes pane provides a view of the attributes for the element you're working with. In DITA, attributes are properties of elements, such as the platform, product, or audience tags that determine how the element gets processed.

<figure><img src="{{ "/images/xeditor_attributes.png" | prepend: site.baseurl }}" alt="Xeditor Attributes pane" /></a><figcaption>When you click an element, the Attributes pane shows the attributes or properties for those elements.</figcaption></figure>

Another handy feature of Xeditor is the comment and review functionality. To comment on any text, just highlight the word and click the Comment button. Add your comment in the Comments pane. Reviewers can accept or reject the changes, and you can even turn on a Track Changes mode. 

<figure><img src="{{ "/images/xeditor_comments.png" | prepend: site.baseurl }}" alt="Xeditor comments" /></a><figcaption>Here I've added a comment to the word "anywhere."</figcaption></figure>

## Common questions 

Here are a few questions you might have while working with Xeditor demo:

**Where do the images get uploaded to and the documents get saved to?**
Remember this is just a demo. Xeditor doesn't manage content itself. You use Xeditor with your CMS, so the images and documents would get saved to your CMS.

**What kinds of XML schemas are available?**
Xeditor supports DITA out of the box, including DITA maps and any customizations. You can also configure Xeditor with your custom XML schemas as well. 

**What if I want to add custom element buttons to the ribbon?**
You can extend and configure Xeditor's ribbon with additional buttons. For example, if you regularly use the same element, you can add a button for that element on the ribbon. Adding additional buttons requires just a few lines of JavaScript that even a novice can pick up.

**How does Xeditor differ from OxygenXML?**
Here are several distinguishing characteristics of Xeditor:
* Xeditor provides more of a Word-like interface to authoring your XML content. The goal of Xeditor is to hide complex XML structures for every author with an intuitive usable interface.
* Xeditor has a built-in review system that allows you to easily add comments and even turn on track changes. 
* Although Xeditor is a web-based editor, it also works offline.  You can load your content or write new content without any internet connection. When you are online again, Xeditor syncs the content with your CMS.
* Xeditor supports extremely large documents (larger than 50MB and thousands of pages). 

**How do you know what elements are valid to insert at each point?**
Xeditor has a integrated real-time validation based on the configuration of your XSD/DTD. The editor monitors your cursor and allows you to insert only valid elements at a specific position. 

## Intuitive authoring interfaces

Although sometimes I like to work in strictly text-based interfaces (such as Sublime Text or Webstorm) and work directly with code, there are many limitations to the text-editor approach. Mainly, the text editor setup reduces both the number and type of people who can use the system. 

Xeditor's intuitive interface opens the doors for the whole company -- sales, marketing, support, tech pubs, engineering, product management, and other groups -- to author content within the CMS, with almost no ramp-up time. 

The built-in commenting system and workflows make Xeditor ideal for handling doc reviews, getting sign-off from senior leaders for content, and generally improving the accuracy of your content by facilitating conversation threads around your content. 

Finally, you don't have to worry about which browsers you can use. Xeditor is built entirely on client-side technologies and is compatible with any modern web browser. 

## Conclusion

XML-based documentation is often cumbersome to author and edit because it requires yet another layer of technological expertise. Review cycles are often time consuming and take place in 1:1 scenarios over email. As a result, the process of managing, maintaining, and publishing technical documentation can be inefficient and expensive. 
 
Xeditor allows you to create structured content intuitively and efficiently (without any XML knowledge). The user-friendly interface leads you through a defined document structure with real-time validation and simple collaboration. 

You can integrate Xeditor's framework with almost any CMS. Once you do, and once authors start writing topics, your content will be ready for use, re-use, and be published in any format.


