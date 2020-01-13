---
layout: page
title: 'Java: Subclasses'
permalink: /java-subclasses/
date: 2015-01-01 19:45:07.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary

* use `extends` keyword
* subclasses inherits members of superclass
* unlike with interfaces, you're not required to use all the fields and methods of the superclass

Eclipse example: subclasses

## Detailed description

You can extend a class. When you do this, you basically create a subclass that inherits the parent classes' members.

public class Apple extends Fruit

Now Apple can use all of Fruit's members (fields and methods). However, unlike interfaces, when you extend a class, you are not required to use all of the fields and methods of the parent class.

> ... extends, lets us know the class's parent class. A class's parent (more properly, a super) class is the class from which the current class gets the bases of its definition. In particular, a class can use all public and protected methods in its parent class just as though they had been defined in the class at hand.
>
> -- Java 7 for Absolute Beginners
>
> Inheritance defines relationships between the classes (and so between the objects) within an object-oriented system. All classes in Java have some other object as a parent. Java developers say that one object extends another. If you think about it for a minute, you shortly realize that there must be some object that starts it all. That special object (the only one that has no parent) is a class called Object. All other Java objects are descendants (sometimes through many levels) of Object.
>
> > -- Java 7 for Absolute Beginners

Java can only inherit from one parent class. You cannot have multiple parents. However, you can have a class extend multiple interfaces.