---
layout: page
title: 'Java: Getters and setters'
permalink: /java-getters-and-setters/
date: 2015-01-01 19:50:57.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary

* best practice technique for allowing users to set field values
* set method has user pass an argument; `this` keyword sets the argument as the value
* get method retrieves the value of the argument set by the set method
* this technique helps protect code from users setting invalid values

Eclipse example: getter_and_setter_methods

* * *

When you create an instance variable in a class, highlight the variable, right-click, and select **Source > Generate Getter and Setter methods**. This will insert something like the following:

```java
public class Keyboard {
private String functionKeys;

public String getFunctionKeys() {
return functionKeys;
}

public void setFunctionKeys(String functionKeys) {
this.functionKeys = functionKeys;
}

}
```

This allows you to easily change the String functionKeys as you need it. You've encapsulated it from users changing it, screwing it up, etc.

Now the user can set the value of `functionKeys` through the setter method, and then get that value. Here's an example:

```java
public class App {

public static void main(String[] args) {
Keyboard myKeyboard = new Keyboard();
myKeyboard.setFunctionKeys("f11, f10, f9");
myKeyboard.getFunctionKeys();
}

}
```

Here I've instantiated the class with an object called `myKeyboard`. I then set the value by passing an argument to `setFunctionKeys` method. The class then sets `functionKeys` as that value. I then get the value by using the getter method: `getFunctionKeys()`. Using this technique, I have encapsulated the variable against change by the user. If I wanted, I could entirely modify the meaning of the functionKeys string and users wouldn't have to change anything about my code.

It's pretty common with APIs to provide getter and setter methods to users. You don't want to expose the inner workings of your classes. You just want to provide users with controls in order to use it.