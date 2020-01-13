---
layout: page
title: 'Java: Returns'
permalink: /java-returns/
date: 2015-01-01 20:21:32.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary

* `return` refers to something that a method returns.
* `return` stops a statement from processing.
* if a method is not marked as `void`, you must specify what it returns.

# What return does

It's important to know what a method returns, because this is a common theme in Java documentation. If a method returns a value, then you can call that method and set it equal to a variable. This has to be one of the key things that you investigate when you look at methods: what does it return. This return logic is pretty central to Java syntax.

Here's an example:

```java
public class Person {

String name;
int age;

void speak() {
System.out.println("My name is " + name + ". I'm " + age
+ " years old.");
}

int calculateRetirement() {
int yearsLeft = 65 - age;
return yearsLeft;
}
}
```

Now in `main`, we can set what the calculateRetirement method returns to a variable, like this:

```java
int years = person1.calculateRetirement();
```

## Encapsulating values

It's pretty common to encapsulate (protect) values for your class. You define strict rules about how those values can be set, and then you provide methods for users to get those values.

Here's a way to get the value:

```java
int getAge() {
return age;
}
```

Then in your program, you write something like this:

```java
public static void main(String[] args) {

Person person1 = new Person();

int retirementAge = person1.getAge();
System.out.println(retirementAge);
```

You simply set your variable equal to the value returned by that method.

## More details

> The final branching instruction is the return statement, which has two forms. If a method returns nothing (that is, its return type is void), the return statement has no arguments. If a method returns a value or object (that is, the return type is not void), the return statement takes one argument (the value or object being returned). Return statements stop any further processing within the method and return processing to the code that called the method. Let's consider an example of a method that returns a string (see Listing 5-21).
>
> Listing 5-21\. Using return to stop processing
>
> public String getAuthorForDetective (String detective) {
>  if(detective.equals("Sam Spade")) {
>  return "Dashiell Hammett";
>  }
>  if (detective.equals("Sherlock Holmes")) {
>  return "Sir Arthur Conan Doyle";
>  }
>  if (detective.equals("Charlie Chan")) {
>  return "Earl Derr Biggers";
>  }
>  return "Unknown author";
>  }
>  As you can see in this example, as soon as we find the author that matches the fictional character, we stop looking and return the name of the author. If all else fails, we admit to not knowing the name of the author. We don't need else statements because each if statement has a return statement; at each if statement, we stop processing if we get a match and continue processing if we don't get a match, so else is needless syntax.

Java 7 for Absolute Beginners