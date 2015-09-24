---
title: "Overview to Platform APIs "
permalink: /platformapis_overview/
course: "Documenting REST APIs"
type: notes_docapis
weight:
---

## Course overview

In previous parts of the course, we focused exclusively on REST APIs. Platform APIs (also called native APIs or library APIs) are notably different in the following ways:

* Platform APIs are installed locally, compiled into the programmer's code as a library. The programmer can then use the classes, methods, or other functions available in the library.
* None of the calls in the platform API use HTTP protocol, nor are there request and responses. The platform API is simply a library of functions that enhances the existing code with more capabilities. It's entirely on-premises. 
* Platform APIs are language specific. There are as many different types of APIs as there are programming languages, more or less. You can have a Java API, C++ API, C# or .NET API, JavaScript API, and so on. 
* To understand how the API works, you need to have a general understanding of the programming language the API is written for. You don't need to be a programmer, but you should be familiar with the nuts and bolts of the programming language, the correct terms, how the different parts fit together, and how developers will use the API.

{{note}} We will focus this section on Java APIs, since they're probably one of the most common. However, many of the concepts and code conventions mentioned here will apply to the other platforms and languages, with minor differences.{{end}}

## The approach

There are many books and online resources you can consult to learn a specific programming language. This section of the course will not try to teach you Java. However, to understand a bit about Java API documentation, you will need some understanding of Java.

To keep the focus on API documentation, we'll take a documentation-centric approach to understanding Java. You'll learn the various parts of Java by looking at a specific Javadoc file and sorting through the main components. 

## What to install
For this part of the course, you need to install the following:

* Java Development Kit (JDK). You can [download the JDK here](http://www.oracle.com/technetwork/java/javase/downloads/index.html). Click the Java button on the left (not Netbeans) and then select the appropriate download for your machine.
* Eclipse IDE for Java Developers. Use the [Eclipse Installer to download Eclipse](https://eclipse.org/downloads/).

To make sure you have Java installed, you can do the following:

* On Mac: Open Terminal and type `java -version`.
* On Windows: Open a Command Prompt and type `where java`.

Also, start Eclipse and make sure it doesn't complain that you don't have the JDK.
