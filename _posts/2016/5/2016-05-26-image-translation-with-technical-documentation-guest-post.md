---
title: "8 image translation issues for tech doc &mdash; guest post by Jeanine Shepstone"
categories:
- visual-communication
keywords: 
description: "The following is a guest post by Jeanine Shepstone. In this post, Jeanine talks about some of the issues technical writers face when translating images in technical documentation. She outlines the workflows for both text translation and image translation, and the challenges of extracting, translating, and merging text back into images. Image translation is certainly one of the most difficult aspects of tech comm, and for this reason many people avoid it and stick with text only."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/jeaninethumb.png
bio: false
jtype: notes_visualcommunication
---

Including images can be a headache for the technical writer. Thanks to the challenges of translation, your headache can morph into a long-term migrane when the images include text.

## 1. Just eliminate the text!

The “industry standard" solution is to avoid text in images. At first, this sounds like a wonderful idea. "Don't write, just draw." It could almost be a song. And it works well for some products (think Ikea furniture assembly instructions).

If words are inescapable, you can often get away with replacing these with numbers. Customers are used to this: it's a well-established practise to make them match part numbers to a table of names.

The problem is that some image types are meaningless when the text is removed. Think of graphs without labelled axes, or, even worse, flowcharts with just numbers in all the boxes.

<figure><a href="https://idratherbewriting.com"><img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/gensetsequence.svg" | prepend: site.baseurl }}"/></a><figcaption>Flowchart with numbers for a genset start sequence</figcaption></figure>

## 2. Text in the image?

My previous post ([11 images issues for tech doc systems](https://idratherbewriting.com/2016/05/26/image-handling-strategies-guest-post/)) explored some of the challenges inherent in handling images in technical documentation. 

Unless you're writing very image-intense documentation, you're probably using a system that does not include all the image information.

For example, for a DITA system, the image itself is not part of a DITA file (it's just a reference). The image's source file is not formally related to the DITA file at all. This means that the text in the image can be two steps away from the DITA file.

## 3. Text translation work flow

For text without images that need translation, a modern translation workflow can look something like this:

1.  **Create the content**
    
    * Preferably in an XML-based format.
    * Due to the complexity of the translation workflow, it's better if the content is finalised and frozen before starting translation.
    
2.  **Extract the text fragments**
    
    * A translation tool should strip out content that does not have to be translated, leaving only the text fragments.
    * If you're using XML, this will be easier.
    
3.  **Translate the text fragments**
    
4.  **Merge the translated text fragments into the content**
    
    * A translation tool can do this for you.
    * This is where the decision to use XML really pays off. 
    
5.  **Publish the translation**
    
    If possible, use automatic formatting during publication. 
    The style sheet should be designed so that it has flexibility to accommodate different text lengths.
    
<figure><a href="https://idratherbewriting.com"><img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/translationworkflowimages.svg" | prepend: site.baseurl }}"/></a><figcaption>Text translation workflow</figcaption></figure>
    
For simplicity, I've left out the quality control loops. For example, depending on the method/tool that you use, you may need to check that the fragments are put back in the right places. Native speakers should also check the translated publication. They can see errors that you didn't even know could arise. For example, Chinese has rules about the minimum number of characters on a line.

It takes time and effort to set up a translation system, train translators to use it, get quality control in place, and get it to run smoothly. And that's without the complexity introduced by images with text that needs to be translated ….

## 4. Image translation workflow

If there are images that need translation, in addition to the above, a person or tool has to:

1.  **Identify the images with text**
    
    * Here's hoping that you designed a system that makes it easy to find the source file if you have the image reference.
    
2.  **Extract the text from the images** 
    
    * Here's hoping that you created the images so that the text is easy to extract, for example, in a separate text layer. 
    * This step might require buying an extra licence for your expensive image creation software for the translation coordinator.
    
3.  **Translate the text fragments**
    
4.  **Merge the translated text into the translated images, and then save in the required image format**
    
    * Use the expensive image creation software (again). 
    
5.  **Link to the translated images in the translated publication**
    
    * The image links are not normally sent for translation. That means that for the translated content, until you do something, the image links still refer to the original images in the master language. 
    * You'll want to design the image storage and naming so that you either don't have to update these links, or at least can do it easily.

<figure><a href="https://idratherbewriting.com"><img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/imagetranslationworkflow.svg" | prepend: site.baseurl }}"/></a><figcaption> Image translation workflow</figcaption></figure>

For simplicity, I've left out quality control loops again, even though they are important. And someone has to combine and coordinate this workflow with the text translation workflow. 

## 5. Maintenance

If your system is intelligent and well-designed, the image translation workflow only has to be repeated when there are revisions to the images. If your system is unsophisticated or badly designed, you may have to manually check whether the images have been translated each time there is a new translation. In addition, you may have to update the links to previously translated images every time there is a new translation.

## 6. Solve it with software

If you use a software system that allows you to include the image text with the writing, you can avoid the problem of a separate translation process for images. 

The DITA 1.3 specification includes "SVG integrations." I haven't tested whether this means that you can include the content of an SVG with a text layer. If it does, this can solve the translation headache (that is, once your vendor has implemented the SVG integration support, and if you get your translation package to extract the SVG text). Note however that if your image needs to be a photo with text overlay, SVG can't help you.

MadCap Flare allows an image map with hyperlinks. You could potentially use this to include translatable text, although I haven't tried it. The downside is that with MadCap Flare you have vendor lock-in. And the more you use of image maps for translatable text, the more locked-in you get ...

## 7. Does the text still fit?

English is more compact than most other languages. On average, Russian words are a bit longer than English ones, while German words can be sustaintially longer. But that's on average, and you might not be lucky. 

For example, you might have labelled a part of an image "Governor/AVR" (12 characters) and left a bit of extra space for the translation. In my industry, "AVR" is a very well-known English abbreviation for automatic voltage regulator, and it would be inappropriate not to use the abbreviation. The problem is that the impressive German "Drehzahlregler/Spannungsregler" (no abbreviation available, and 30 characters) is unlikely to fit.

## In summary

Image translation can't always be avoided. It may require manual processes, and/or complex automatic processes. If you've got a lot of images to translate, it may be worthwhile investing in tools and processes to make this more efficient.

What's your experience with images and translation in technical documentation? Write a comment ....

## About Jeanine Shepstone

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/jeanine.jpg" | prepend: site.baseurl }}" alt="Jeanine" style="float: left; padding-right:10px; padding-top:0px; margin-top:5px;" />Jeanine Shepstone writes user information for generator control systems. There are plenty of images to contend with.

<div style="clear: both;"></div>
