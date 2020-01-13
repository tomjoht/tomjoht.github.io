---
layout: page
title: 'Java: Modifiers'
permalink: /java-modifiers/
date: 2015-01-01 20:09:50.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary

* **static** - not instantiated -- belongs to the class not the object; any changes affect every instance.
* **abstract** - can't be instantiated; can be extended only.
* **final** - can't be subclassed or modified. (used with constants)
* **void**- returns nothing
* **[default, concrete]** - can be instantiated

## Eclipse examples

* Eclipse example: static_fields_methods
* Eclipse example: final_fields_methods
* Eclipse example: final_class
* Eclipse example: abstract_classes_methods

See also topic Abstract methods.

See also Access modifiers.

## Static

If your method is static, it cannot use instance variables that aren't also static. Static stuff must all be static. Otherwise, you introduce change where it's marked as non-changing.

Think of "stasis" -- unchanging. No matter if you instantiate a class that has static members, the members don't change.

The static keyword in Java means that the variable or function is shared between all instances of that class as it belongs to the type, not the actual objects themselves. So if you have a variable: private static int i = 0; and you increment it ( i++ ) in one instance, the change will be reflected in all instances.
[What does the 'static' keyword do in a class? Stack Overflow](http://stackoverflow.com/questions/413898/what-does-the-static-keyword-do-in-a-class)

## Abstract

If you mark a class as `abstract`, it can't be instantiated. Only `concrete` classes can be instantiated.

## Final

From [Stackoverflow.com](http://stackoverflow.com/questions/15655012/how-final-keyword-works)

> Final keyword has a numerous way to use:
>
> * A final class cannot be subclassed.
> * A final method cannot be overridden by subclasses
> * A final variable can only be initialized once

## Method overriding

Good resource: [Java Method Overriding Examples and Concepts: Overriding Rules](http://crunchify.com/java-method-overriding-examples-and-concepts-overriding-rules/)