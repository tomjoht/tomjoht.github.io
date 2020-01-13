---
layout: page
title: 'Java: Polymorphism'
permalink: /java-polymorphism/
date: 2015-01-01 20:16:16.000000000 -08:00
categories:
- java
jtype: notes_java
---

* Polymorphism is subclassing a class -- the same parent has different children that all inherit properties from the parent but override them.

Eclipse example: subclasses

> **Polymorphism**
>  Polymorphism, from the Greek poly, for many, and morph, for form, means that the same thing can have different forms. It's a technical term in many fields, including chemistry, biology, and (of course) computer science. Each field defines it in terms relevant to that field of study, but it all boils down to having multiple forms.
>
> In object-oriented computer languages, one kind of polymorphism is the ability of different classes to respond appropriately to the same input. So, our Mammal class might define a speak method. The Cat class would implement the speak method as a meow, the dog as a bark, and the mouse as a squeak. They all implement the same method, but they each do it in their own appropriate way. These methods are said to be overridden. The methods in the child class replace the behavior of the parent class with their own behavior—that is, they override the parent's method.
>
> Another kind of polymorphism (called overloading) is having the same behavior mean something different depending on the object passed to the behavior (or method). For example, our Cat object might have two methods called chase, and an instance of Cat would exhibit different behavior for the chase(Tail) method and the chase(Mouse) method. That is, we have methods of the same name, but they have different signatures (one takes a Tail object as its argument and one takes a Mouse object). That's a classic example of method overloading.
>
> Java 7 for Absolute Beginners