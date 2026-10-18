---
title: Doxygen, a document generator mainly for C++
permalink: learnapidoc/nativelibraryapis_doxygen.html
course: "Documenting REST APIs"
weight: 11.7
sidebar: docapis
section: nativelibraryapis
path1: learnapidoc/nativelibraryapis.html
last-modified: 2026-10-18
---

{% include coffeeshopbook.html %}

An alternative to Javadoc is Doxygen. Doxygen works highly similarly to Javadoc, except that it can process more languages (Java, C++, C#, and more). Doxygen is most commonly used with C++. Additionally, there's a GUI tool called Doxywizard that makes it easy to generate the file.

* TOC
{:toc}

## Download Doxywizard

The Doxygen download also includes Doxywizard. See the [Doxygen downloads page](https://www.doxygen.nl/download.html) for more download links.

Here's the Doxywizard front-end GUI generator:

<figure><img class="docimage large" src="{{site.api_media}}/doxygenfrontendgui.png" alt="Doxygen front-end GUI generator" /><figcaption>Doxygen front-end GUI generator</figcaption></figure>

Here's the Doxygen output:

<figure><img class="docimage large" src="{{site.api_media}}/doxygensample.png" alt="Doxygen Sample" /><figcaption>Doxygen Sample</figcaption></figure>

You don't need to use the wizard. You can also generate Doxygen through a configuration file, which is typically how developers run Doxygen builds from a server.

Doxygen also allows you to incorporate external pages written in Markdown, and it provides a search feature. (Javadoc has since added a search box and Markdown doc comments, but Doxygen is still more flexible about adding extra pages.)

{% include image_ad_right.html %}

Doxygen is mostly maintained by its original developer, and it still gets regular releases (version 1.18.0 was the latest when I checked in October 2026). In my opinion, the default output is dated and somewhat confusing. But C++ developers will be accustomed to it. Some teams feed Doxygen's output into Sphinx using [Breathe](https://breathe.readthedocs.io/) so that the C++ reference docs can live alongside the rest of their documentation.

{% include random_ad2.html %}

## Integrating builds automatically

In a lot of developer shops, document generators are integrated into the software build process automatically. Doxygen allows you to create a configuration file that can be run from the command line (rather than using the frontend GUI). This means when developers build the software, the reference documentation is automatically built and included in the output.

{% include random_ad4.html %}

## Other document generators

You don't need to limit yourself to either Javadoc or Doxygen. There are dozens of different document generators for a variety of languages. For example, Rust uses [rustdoc](https://doc.rust-lang.org/rustdoc/), Swift uses [DocC](https://www.swift.org/documentation/docc/), Kotlin uses [Dokka](https://kotlinlang.org/docs/dokka-introduction.html), and TypeScript projects often use [TypeDoc](https://typedoc.org/). Some newer generators, such as DocC, produce polished output and support tutorials or articles alongside the reference. However, many document generators are written by engineers for other engineers and aren't very flexible.

{% include ads.html %}

Perhaps the biggest frustration of document generators is that you can't integrate the rest of your documentation with them. You're mostly stuck with the reference doc output. You'll also need to generate your how-to guides and other tutorials, and then link to the reference doc output. As such, you won't end up with a single integrated experience of documentation. Additionally, it will be hard to create links inline within topics between the two outputs. Fragmentation of outputs is a topic I explore with more detail in [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html).

{% include random_ad3.html %}
