---
layout: page
title: 'Java: Override'
permalink: /java-override/
date: 2015-01-01 20:13:28.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Override

You see this keyword when you implement an interface or extend an abstract class. In both cases, you have to implement the parent class's methods.

Eclipse: override

> package com.apress.java7forabsolutebeginners.examples.animalKingdom;
>
>     class Cat extends Mammal implements Predator, Carnivore {
>
>       private static int numberOfCats;
>
>       Cat() {
>         numberOfCats++;
>       }
>
>       public static final int getNumberOfCats() {
>         return numberOfCats;
>       }
>
>       @Override
>       protected void sayWhatIAm() {
>         System.out.println("I am a cat");
>         super.sayWhatIAm();
>       }
>
>       // implement the super class's abstract methods
>       @Override
>       void speak() {
>         System.out.println("The cat says, \"meow.\"");
>       }
>
>       // here's our example of overloading
>       void chase(Mouse mouse) {
>         // chase a mouse
>       }
>       public void chase (Object tail) {
>         // chase one's tail
>       }
>
>       // methods for the Predator interface
>       @Override
>       public void hunt() {
>         // go hunting
>       }
>
>       // methods for the Carnivore interface
>       @Override
>       public void eat (Object freshMeat) {
>         // eat fresh meat
>       }
>     }
>     Java 7 for Absolute Beginners