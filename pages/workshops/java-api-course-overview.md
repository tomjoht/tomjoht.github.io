---
title: Java API Workshop
permalink: /java-api-course-overview/
categories:
- api-doc
keywords:
---

<h2>Workshop description</h2>

Whereas the [Documenting REST APIs](https://idratherbewriting.com/documenting-rest-apis-course-overview) and [Publishing REST API Documentation](https://idratherbewriting.com/publishing-rest-apis-course-overview) workshops focused specifically on REST APIs, this workshop focuses on Java APIs.

Java APIs belong to a cateogory of APIs that are sometimes referred to as platform APIs. (Others might call them library APIs, class APIs, or native APIs.) The basic difference is that rather than using HTTP protocol to make and receive requests (as you do with REST APIs), you add a library of classes or functions to your code and then call the classes or functions in your code. There is no exchange of information across HTTP protocols.

To document a Java API, you need some understanding of Java. Although you don't have to be a programmer, you need to know enough about Java to understand various terms and lingo. Some of the terms that are important to know include the following:

* Class: similar to a blueprint or template
* Object: an instance of a class
* Methods: what the object/class can do
* Fields: variables in the object/class
* Constructor: a method to create an object for a class
* Package: a folder that groups classes
* Access modifier (e.g, public): the scope at which a thing can be accessed
* Interface: a skeleton class with empty methods (used for standardizing)
* Enum: a data type offering predefined constants
* Subclass: a class that inherits the fields + methods of another class
* JAR file: a zip-like file containing Java classes
* WAR file: a compiled Java web application to be deployed on a server
* Doclet: what parses the Javadoc tags and produces the Javadoc output

You don't need to know Java before you take this workshop. However, if you're new to Java, the workshop will probably introduce a lot of new terms and concepts that you can later study to understand more fully.

One difference with platform API documentation is that the *reference documentation* (but the other parts of the documentation) is usually created in the same files as the source code. Before each class or method, you add a "doc block" that describes the class or method.

The doc blocks follow a specific syntax that is highly structured. For example, you describe a parameter by using the `@param` tag followed by your description.

Java APIs are similar to C++ and C# APIs, but the syntax and tools differ somewhat. Some of the superficial differences with the C++ and C# platform APIs are noted in this workshop, but not in extensive detail.

For example, you will learn how to use Doxygen instead of Javadoc to generate API documentation. You will also see the difference in the doc block syntax and some terminology, but other differences will not be explored.



<h2>Required software</h2>

* **[Eclipse IDE for Java Developers](http://www.eclipse.org/downloads/packages/eclipse-ide-java-developers/keplersr1)**. The IDE is a text editor for working with Java programs.
* **[Java JDK](http://www.oracle.com/technetwork/java/javase/downloads/index.html)**. The JDK allows your computer to build and compile Java programs. The Java Developers Kit includes the JRE.
* **[Git](https://git-scm.com/)**. See [Set Up Git](https://help.github.com/articles/set-up-git/) for more details.

Note that your computer needs to be able to connect to a wifi network.

<h2>Duration</h2>

The workshop lasts 3 hours.
