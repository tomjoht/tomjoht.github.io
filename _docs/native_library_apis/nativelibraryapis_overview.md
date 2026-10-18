---
title: "Overview of native library APIs"
permalink: learnapidoc/nativelibraryapis_overview.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 11.01
section: nativelibraryapis
path1: learnapidoc/nativelibraryapis.html
last-modified: 2026-10-18
---

{% include coffeeshopbook.html %}

In most of this course, we focused on [REST APIs](docapis_what_is_a_rest_api.html). In this section, we'll explore native library APIs, which are more common when building native apps that you install on devices (such as Android or iOS devices). Understanding native library APIs will also help clarify what makes REST APIs so different.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Characteristics of native library APIs

{% include image_ad_right.html %}

{% include random_ad3.html %}

Native library APIs (also called library-based APIs, class-based APIs, or just APIs) are notably different in the following ways:

* **Installed locally**. Native library APIs are installed locally, compiled into the programmer's code as an additional library. The programmer can then use the classes, methods, or other functions available in the library. (The API part refers to the *public* classes the developers use to access the functions in the library. There are probably lots of helper and utility classes in the Java library that aren't public, but users will only interact with the public classes.)
* **No requests and responses**. The classes in native library APIs don't use HTTP protocol, nor are there requests and responses sent across the web. Native library APIs consist of a collection of classes or functions that enhance your existing project with more capabilities. The APIs are entirely local, with no web communication.
* **Language specific**. Native library APIs are language specific. There are as many different types of APIs as there are programming languages, more or less. You can have a Java API, Python API, C++ API, C# or .NET API, JavaScript API, and so on.
* **Requires some programming knowledge to document**. To understand how the API works, you need to have a general understanding of the programming language of the API. You don't need to be a programmer, but you should be familiar with the nuts and bolts of the programming language, the correct terms, how the different parts fit together, and how developers will use the API.

We will focus this section on Java APIs because they're probably one of the most common. However, many of the concepts and code conventions mentioned here will apply to the other languages, with minor differences.

{% include ads.html %}

## Do you have to be a programmer to document native library APIs?

Because native library APIs are so dependent on a specific programming language, the documentation is usually written or driven by engineers rather than generalist technical writers. Native library APIs are one area where it helps to be a former software engineer when writing documentation.

Even so, you don't need to be a programmer. You just need a minimal understanding of the language. Technical writers can contribute a lot here concerning style, consistency, clarity, tagging, and overall professionalism.

{% include random_ad2.html %}

## My approach to teaching native library API doc

There are many books and online resources you can consult to learn a specific programming language. This section of the course will not try to [teach you Java](nativelibraryapis_java_crash_course.html) in any comprehensive way. However, to understand a bit about Java API documentation (which uses a document generator called [Javadoc](https://docs.oracle.com/en/java/javase/25/docs/specs/man/javadoc.html)), you will need some understanding of Java.

To keep the focus on API documentation, we'll take a documentation-centric approach as we explore Java. You'll learn the various parts of Java by looking at a specific Javadoc file and sorting through the main components.

## What you need to install {#installation_reqs}

For this part of the course, you need to install the [Java Development Kit (JDK)](#jdk) and the [Eclipse IDE for Java Developers](#eclipse).

### Java Development Kit (JDK) {#jdk}

To check whether you have the Java Development Kit installed, open Terminal (Mac) or Command Prompt (Windows) and type `java -version`.

If it's installed, you should see a message somewhat like this:

```
openjdk version "25.0.4.1" 2026-08-18 LTS
OpenJDK Runtime Environment Temurin-25.0.4.1+1 (build 25.0.4.1+1-LTS)
OpenJDK 64-Bit Server VM Temurin-25.0.4.1+1 (build 25.0.4.1+1-LTS, mixed mode, sharing)
```

If it's not installed, or if your version is old, install a current long-term support (LTS) release, such as Java 25 (released in September 2025). You can download it from [Oracle](https://www.oracle.com/java/technologies/downloads/) or get a free OpenJDK build such as [Eclipse Temurin](https://adoptium.net/). Select the download for your operating system and processor. (On a Mac, check whether you have an Apple silicon or Intel processor.)

{% include random_ad4.html %}

### Eclipse IDE for Java Developers {#eclipse}

Download and install the [Eclipse IDE for Java Developers](https://www.eclipse.org/downloads/packages/).

<figure><a target="_blank" class="noExtIcon" href="https://eclipse.org/downloads/"><img class="docimage small border" src="{{site.api_media}}/eclipseforjavadevs.png" alt="Eclipse installer" /></a><figcaption>Eclipse installer</figcaption></figure>

Start Eclipse. When prompted to select a workspace, select the default location and click **Launch**. Close the welcome tab.

To make sure Eclipse is configured to use the JDK you installed, go to **Eclipse > Settings** (on Windows, **Window > Preferences**) and then **Java > Installed JREs**.

<figure><img class="docimage medium" src="{{site.api_media}}/installed-jre-eclipse.png" alt="Installed JRE settings" /><figcaption>Installed JRE settings</figcaption></figure>

If your JDK isn't listed or selected, click **Add** or **Search** and browse to your install directory. (On a Mac, JDKs are usually installed in `/Library/Java/JavaVirtualMachines/`, in a folder such as `temurin-25.jdk/Contents/Home`.)

(Since we'll just be using Java within the context of Eclipse, you don't need to add Java to your system path. But if you want to compile Java from the command line, you might need to do this. Many installers, including the Temurin installer, can set it up for you.)
