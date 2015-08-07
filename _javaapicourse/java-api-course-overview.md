---
title: Java API Workshop Overview
permalink: /java-api-course-overview/
categories:
- api-doc
keywords: 
---

<h2>Workshop description</h2>

Whereas the [Documenting REST APIs](http://idratherbewriting.com/documenting-rest-apis-course-overview) and [Publishing REST API Documentation](http://idratherbewriting.com/publishing-rest-apis-course-overview) workshops focused specifically on REST APIs, this workshop focuses on Java APIs. 

Java APIs belong to a cateogory of APIs that are sometimes referred to as platform APIs. (Others might call them library APIs, class APIs, or native APIs.) The basic difference is that rather than using HTTP protocol to make and receive requests (as you do with REST APIs), you add a library of classes or functions to your code and then call the classes or functions in your code. There is no exchange of information across HTTP protocols.

Java APIs require some knowledge of Java to document. Although you don't have to be a programmer, you need to know enough about Java to understand various terms and lingo. Some of the terms that are important to know include the following:

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

Another difference with platform API documentation is that the reference documentation is usually created in the same files as the source code. Before each class or method, you add a "doc block" that describes the class or method. 

The doc blocks follow a specific syntax that is highly structured. For example, you describe a parameter by using the `@param` tag followed by your description.

Java APIs are similar to C++ and C# APIs, but the syntax does differ slightly. Still, to understand platform APIs, this workshop focuses on one particular language (Java). Some of the superficial differences with the C++ and C# platform APIs are noted but not in extensive detail.