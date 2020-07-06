---
title: "11 images issues for tech doc systems &mdash; guest post by Jeanine Shepstone"
categories:
- visual-communication
keywords: images, translation
description: "The following is a guest post by Jeanine Shepstone. In this post, Jeanine talks about some of the issues that images present with tech docs. For example, sorting out references to the images, single sourcing re-used images, converting SVG image formats to ensure browser compatibility, and ensuring the right file size for optimal page loading are some of the challenges that tech writers face when working with images in tech docs."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/legothumb.png 
bio: false
jtype: notes_visualcommunication
---

Images can be a great supplement to technical documentation text. As the fiction writers say: <i>Show, don't tell</i>. However, including images can be a headache for the technical writer. This post explores some of the challenges inherent in handling images in technical documentation. A future post will focus on translating image text.

## 1. Is your system designed for images?

Layout is crucial for some technical documentation. For example, for a fold-out quick start guide, the technical documentation needs to fit in a limited space. 

Sometimes the technical documentation is primarily visual, for example, Lego assembly instructions.
 
<figure><a href="https://idratherbewriting.com"><img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/LEGOturkey2.jpg" | prepend: site.baseurl }}"/></a><figcaption>How to build a turkey from standard LEGO blocks</figcaption></figure>

For some products, the company chooses to brand itself by using top quality visual design in the technical documentation.

In these cases, the technical documentation is typically published from tools whose primary focus is visual. This can be a specialised system (for example, LIC, the Lego Instruction Creator) or more general, for example, InDesign. The good news for the technical writer is that because the system is so focused on visual aspects, many of the image problems listed here are automatically solved by the sytem. The bad news is that when the system's focus is primarily visual, the text handling features can be limited.

## 2. Is your system designed for text?

Sometimes layout isn't that important. For example, software help systems, and "big books." The technical writers concentrate on creating the content, and leave the layout to a style sheet or template.  

This technical documentation is published from tools whose primary focus is on the text, for example, DITA-compliant systems. DITA systems have great features for text reuse and conditional processing. However, the image handling features are limited. 

## 3. The image is not the source

You may be familiar with this story: You're a brave technical writer and have decided to include an image in your documentation. Since you're forward-looking and want the image to be suitable for both current and future output formats, you save it as an SVG and put it in your document.

Six months later, the product changes as a result of the development, and so you have to change the image. If all you've got to work with is your SVG, you can look forward to wasting precious time trying to change the image while your deadline rushes towards you. The only comfort you have is that it would have been worse if you'd saved the image in a bitmap format.

If you're not using an image-oriented system, you need to design a way to store your image source files. You'll want to be able to identify the source files from the text content, then easily find them when images need to be changed. Ideally, you'll store the source file with the image. 

## 4. The reference is not the image

Don't let the WYSIWYG interface fool you: You don't actually insert images in DITA documentation. You just put in a reference to the image. This means that if you don't have a good CMS to help you figure it out, you won't know where the image is used. And that means that it's easy to move or &mdash; gasp! &mdash; delete an image without realising that you'll get errors in your output. Once you've got the errors, troubleshooting can be a nightmare, since all you have to go on is a reference that no longer works.

## 5. The image might not be the output

The output format is not necessarily the same as the image format. For example, using SVG in a browser is relatively new (Internet Explorer 9 onwards). Your publication system will need to convert the SVG images if your content must be compatible with older browsers. 

Whatever image format(s) you choose, the images need to be suitable for output. If they're not, you need to make sure that the images are converted to a suitable format during publication.

## 6. Design for single-sourcing

Several different projects may use the same image. If you want to single-source your images, design your project structure so that all the projects refer to one image, rather than duplicating the image for each project. And of course you want only one image source file stored nearby for easy updates. 

## 7. Problems with single-sourcing

Reusing the same image for several different explanations is tempting. However, problems can arise when the image illustrates the point but isn't a 100% match for every situation. The trouble is that customers glean a lot of information from images. Despite arrows or highlight blocks pointing to what the customer should be looking at, they can see the other parts of the image too. They may ignore the text that clarifies everything, and end up confused.

A solution can be to remove the detail that isn't required to illustrate the point. Customers are more likely to forgive missing irrelevant detail than overlook details that don't match their application.

## 8. Can you turn the clock back?

Version control systems are great with text changes. However, if the image is just a text reference, the source file and the image can be changed without the version control system noticing. You can solve this problem (and create new problems) by making the image and source files part of the version control system. Alternatively, change the image name (and the reference) every time you revise an image. 

## 9. Size matters

The image size is not necessarily the same as the publication size. You can hope that your publication tool takes care of this, or you can check that you're not wasting space with excessive resolution. 300 DPI is recommended for print. If it's less, the image can look grainy. If it's more, you're wasting space. Wasting space might not seem so bad to you at your powerful desktop with an Ethernet connection. However, what about the guy downloading crucial documentation over a satellite link?

You'll also want to think about the image sizes if responsive design is required. In addition, be aware that big images and/or lots of images can make your publication process slow. 

## 10. Dealing with big content 

Unfortunately, the marketing guys coined the term "big content," so they didn't define it specifically for technical writing. What a pity. However, the endless information that we produce is part of big content. And it's certainly expensive enough to produce!

Efficiency doesn't matter that much for small amounts of information. For example, updating ten images won't kill you. On the other hand, updating a thousand images might make you long for death (and especially when you have to do this several times). 

If you're a full-time technical writer, you're probably working with a large body of content. Efficient processes are important with big content, since they can reduce the cost of producing content. A lack of processes or inefficient processes makes content expensive to produce (and may drive you crazy ....).

## 11. Test everything

You can add images and hope for the best. If you have great tools and systems that someone else designed and implemented, maybe it will be okay.

On the other hand, you could discover problems at the eleventh hour. 

For peace of mind, test the system end-to-end. This is especially important when you start using images, or using images in new ways, or using new image formats.

## Over to you

These are some of the issues with images that I've come across. Feel free to add more in the comments 

## About Jeanine Shepstone

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/jeanine.jpg" | prepend: site.baseurl }}" alt="Jeanine" style="float: left; padding-right:10px; padding-top:0px; margin-top:5px;" />Jeanine Shepstone writes user information for generator control systems. There are plenty of images to contend with.

<div style="clear: both;"></div>

