---
layout: page
title: 'Java: Interfaces'
permalink: /java-interfaces/
date: 2015-01-01 20:01:41.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary

Interfaces:

* Interfaces can't be instantiated
* Interfaces have methods with no bodies (no {})
* Subclasses _implement_ interfaces (as many as they want)
* Subclasses must implement _all_ the interface's methods
* Interfaces standardize methods and fields for all subclasses
* All fields are final static
* The default access for an interface is protected
* The default access for an interface's methods is public

Eclipse example: Interfaces

## Detailed description

An interface is a class that has methods with no bodies. It is intended to be implemented by another class that will insert their own values for the methods. It's a way of formalizing a class that will have a lot of subclasses, when you want all the subclasses to standardize on common strings and methods.