---
title: "Explore the Javadoc output"
permalink: learnapidoc/nativelibraryapis_exploring_javadoc_output.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 11.5
section: nativelibraryapis
path1: learnapidoc/nativelibraryapis.html
last-modified: 2026-10-18
---

{% include coffeeshopbook.html %}

The Javadoc output has changed only gradually over the years, so in some sense, it's predictable and familiar to Java developers. Newer versions of the JDK have added some welcome features, such as a search box (since JDK 9) and a table of contents on each class page, and they dropped the old three-frame layout (in JDK 11). However, Javadoc still has limited options for adding pages or changing the layout. In this topic, we'll explore how the Javadoc is organized.

{: .note}
The screenshots on this page come from an older Javadoc version (JDK 8). The output you generate with a current JDK looks different but has the same main parts. Compare them with the [sample output generated with JDK 25](https://idratherbewriting.com/assets/files/javadoc/index.html).

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Class summary

{% include random_ad3.html %}

Open the index.html file in the Javadoc folder you generated in [Activity: Generate a Javadoc from a sample project](nativelibraryapis_create_javadoc.html).

The class summary page shows a short version of each of the classes. The description you write for each class (up to the period) appears here. It's kind of like a quick reference guide for the API.

<figure><img class="docimage large" src="{{site.api_media}}/classsummary.png" alt="Class summary" /><figcaption>Class summary</figcaption></figure>

You click a class name (in this case, `ACMESmartphone` or `Dynamite`) to dive into the details.

## Class details

{% include random_ad4.html %}

When you view a class page, you're presented with a summary of the fields, constructors, and methods for the class. Again, this is just an overview. When you scroll down, you can see the full details about each of these elements.

<figure><a target="_blank" class="noExtIcon" href="https://docs.oracle.com/en/java/javase/25/docs/api/index.html"><img class="docimage large" src="{{site.api_media}}/fulldetails.png" alt="Full class details" /></a><figcaption>Full class details</figcaption></figure>

{% include random_ad2.html %}

## Other navigation

If you click **Package** at the top, you can browse the classes by package. You can also browse everything by clicking the **Index** link, see the class hierarchy by clicking **Tree**, or type a class or method name into the search box. (In older Javadoc output, like the screenshot below, a left column listed all the classes.)

<figure><img class="docimage large" src="{{site.api_media}}/allclassesjavadoc.png" alt="All the ways to browse the classes" /><figcaption>All the ways to browse the classes</figcaption></figure>

{% include ads.html %}

For more information about how the Javadoc is organized, click the **Help** button in the Javadoc top navigation bar.

{% include image_ad_left.html %}
