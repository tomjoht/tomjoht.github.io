---
layout: page
title: 'Java: Variables'
permalink: /java-variables/
date: 2015-01-01 20:31:13.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary

* Variables are referred to as fields in Javadoc
* Variables include the data type (int, String) before the variable name
* Variables are only valid within the block `{}` in which they appear (their scope)

Eclipse example: variables

There are three parts to declaring a variable: data type, variable name, initial value.

Example:

```java
int newVariable = 10;
```

If you're declaring a primitive, the data type is spelled in all lower-case: int, double, float, boolean, char.

If you're creating an complex object, the data type is uppercase.

example:

```java
Date newDate = new Date();
```

You don't have to initialize the value here, though. You could separate the two activities, just like you do with primitives.

```java
Date newDate;

new Date();
```

The `Date()` part is the constructor for this class. The `new` keyword precedes this constructor.

Some constructors require parameters; others do not. The API documentation specifies.

If you don't initialize it, the variable will have a value of null.

```java
Data newDate;
```

Variables have validity only within the scope they are declared. If you declare the variable inside a code block, the variable will only be valid inside the code block.

If you want variables to be available to multiple methods or functions, you can use a class variable, aka, a field. A variable declared outside a function will belong to the entire class. in that case, it's called a field (aka class variable). The Javadocs refers to this as a field.

But if the variable is just declared within the scope of a method, between the block `{}`, it's a local variable.

If the variable is declared for an object instantiated from a class, it's called an "instance variable."

## Numeric data types

There are a set number of data types for numeric primitives: byte, short, int, long, float, double, BigDecimal.

```java
int i = 10;
float f = 150.5f;
double d= 150.5d;
```

For the float and double, you include f and d at the end of the number's value.

## BigDecimal

The `BicDecimal` class is used when you need precise values. You use strings for the values of Big Decimals.

```java
double d = 1115.27;
String ds =
```

## Variable types

* **fields** - variable that is in scope for the whole class
* **instance variables** - variables available to objects of a class -- they differ based on the instance; the opposite is a class variable
* **class variables** - variables available to the class, not to any objects
* **local variables** - a variable declared inside the body of a method -- unavailable outside the scope of the method

When you have variables within a class, they're referred to as "fields" or "instance variables."

## public static final

Suppose we have the following setter and getter methods:

```java
class Child {
private double childAge;
public void setAge (double newAge) {
childAge = newAge;
}
public double getAge() {
return childAge;
}
}
```

In this example, here's what the following are called:

* childAge: instance variable or object field
* newAge: local variable

"A field is valid (in scope) throughout the whole class/object. A field is in fact a kind of variable, but it applies to the whole class/object."

"A class variable is what you call a static field. That has scope throughout the whole class, and is accessible from any method of that class, static or instance (non-static).

An instance field is not accessible from any static parts of the class."

```java
public class Kettle
{
private int temperature;

public void becomeHotter(int degrees)
{
int heat = temperature + degrees;
temperature = heat;
}

public int getTemperature()
{
return temperature;
}
. . .
}
```

"The variable temperature is declared inside the class and outside the methods; you call it a field. It is accessible and in scope in the two methods shown.
The "variable" degrees is "declared" inside the () for the becomeHotter() method; it is a parameter, and is not a field. Its scope is that method.
The variable heat is declared inside the becomeHotter method. It is a local variable and its scope is from "int heat . . ." to the end of the method. It is not a field."

## Access modifiers

Best practice is to make the fields of a class private and use getter and setter methods for objects to access the field values.

## Best practices with access modifiers for fields

You usually want to avoid using `public` before string names. This protects you from users changing the variable names and screwing up your code.

For example, suppose your class were the following:

```java
public class Hamster {
public int furCount = "2000";
}
```

Then someone theoretically could change it by doing this:

```java
Hamster.furCount = '3000';
```

Therefore, Java requires you to create an object from Hamster first and then set `furCount`, like this:

```java
Hamster hammy = new Hamster();
hammy.furCount = 30;
```

This way I'm only changing the instance variable for `hammy`, not for `Hamster`.

[I'm actually not sure if I got this right -- need to follow up and check.]

* * *

If you do make your variables public, you often use `public static final` to make them public but lock them down in a specific state. This is a constant. The constant is made in uppercase.

```java
public final static in ID = 8;
```

Suppose I have a class called Plant. And in that class, I declare an instance variable called `name`.

```java
public class Plant {

public String name;

}
```

In my main method, I can access that variable through dot notation like this: class.variable:

```java
public class App {

public static void main(String[] args) {
Plant plant = new Plant();
plant.name = "mark";
System.out.println("plant name: " + plant.name);

}

}
```

Now suppose I create a constructor in my class that sets the value of the instance variable. A constructor, remember, is named the same as the class:

```java
public class Plant {

public String name;

public Plant () {
this.name = "Freddy";
}
}
```

Now when I instantiate the class, it will use the value set for the instance variable:

```java
public class App {

public static void main(String[] args) {
Plant plant = new Plant();
plant.name = "mark";
System.out.println("plant name: " + plant.name); //
Mark
}

}
```

With instance variables, you usually want to encapsulate the variables so that people can't directly change their values. Instead, you use methods that control how people can access and use/define the values.

`this` is just a shortcut for the name.