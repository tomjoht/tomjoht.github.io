---
layout: page
title: 'Java: Access modifiers'
permalink: /java-access-modifiers/
date: 2015-01-01 19:31:30.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary

* private - accessible to the class only.
* [default] - accessible to the class and package
* protected - accessible to class, package, and subclasses
* public - accessible to everything

Private classes aren't included in Javadoc, so don't focus on them.

Eclipse example: access_modifiers

## Public, Private, Protected, Package-Private

Here's what these four access modifiers mean:

> * `private` means that only the other members (that is, fields and methods) within a class can see and (for fields) modify the method or field at hand. Private classes and interfaces appear only within classes, never as stand-alone constructs.
> * `package-private` (often just called package) means that other members of the same package have access to the item. package-private is the default access modifier and does not have a keyword, because package is used to specify the package for a class or interface. To declare package access for something, use no access modifier.
> * `protected` indicates that only descendants of the class can access the item. Classes can be protected, but protected classes generally appear only within other classes (an idiom called an inner class). Similarly, interfaces can be protected (provided they are within a class), but it's rare (I've never seen one). protected is most often used on fields and methods within classes.
> * `public` indicates that any object has access to the item. public is often used (and probably overused quite a bit). It pays to get into the habit of asking whether anything should be public.
>      -- Java 7 for Absolute Beginners

## Don't concern yourself with private methods

Usually an API has a bunch of private methods. When you generate the API docs, the private methods aren't included in the generated doc because the user can't do anything with them. It's a best practice for programmers to keep the instance variables within a class private. What programmers do is use getter and setter methods for users to access these variables.