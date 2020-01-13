---
layout: page
title: 'Java: Objects'
permalink: /java-objects/
date: 2015-01-01 20:12:47.000000000 -08:00
categories:
- java
jtype: notes_java
---


* An object is an instance of a class. You rarely work directly with the class; instead, you work with objects of the class.

Eclipse example: object_example, object_and_properties

Almost everything is an object. When you instantiate a class, you create an object from a class. That object inherits some properties of all objects.

You can see these inherited properties by creating a new object and then typing a dot -- Eclipse will show you all the methods available to your object by virtue of the fact that it's an object and as such it inherits the methods that objects have. One of these methods is `toString`.

> So what's an object? In technical terms, an object is an instance of a class (or the class itself if it's static or a singleton—that is, a class of which there can be only one instance). So what exactly is an instance? Think of it this way: A class definition is the definition for an instance, and a particular item defined by that class is an instance. Suppose we have a class that defines documents (title, author, and so on). Then an object that describes a particular document is an instance.
>
> Java 7 for Absolute Beginners
