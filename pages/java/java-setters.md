---
layout: page
title: 'Java: Setters'
permalink: /java-setters/
date: 2015-01-01 20:23:29.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick Summary 

* setters refers to a technique for encapsulating a value so that users don't set invalid data types or other incorrect data as a field value.

Eclipse example: getter_and_setter_methods

Classes have instance variables, but usually users don't need to know which variables are available in the class. Instead, it's more common to provide methods that allow users to set the value of the instance variables.

In other words, rather than doing something like this to set the value:

```java
myObject.name = "Tom";
```

It's more common to use a setter method as follows:

```java
package setters;

public class SleepTime {

int timev;
int time;

public int setSleepTime(int timev) {
int time = timev;
return time;
}

public int getSleepTime() {
return time;
}

}

and to set and retrieve them as follows:

package setters;

public class App {

public static void main(String[] args) {
SleepTime tomSleepTime = new SleepTime();
System.out.println(tomSleepTime.setSleepTime(11));
System.out.println(tomSleepTime.getSleepTime());

}

}
```

There's a shortcut in Eclipse that makes it very easy to add getters and setters. Right click your class and select **Source > Generate Getters and Setters**. Here's an example of what it produces:

```java
public class Robot {
private int id;

public int getId() {
return id;
}

public void setId(int id) {
this.id = id;
}

}
```

Here I had just entered `private int id`. It automatically set the get and set methods for this value. It's pretty common to set up getters and setters for field values of a class.

Note that the setter method uses `this.id = id;`. That's because you'll create an object from the Robot class like this:

```java
Robot myRobot = new Robot();
```

You would then set the value for the id like this:

```java
myRobot.id = "some value";
```

To make it generic, you use `this` instead. The word `this` refers to whatever the object in scope is.

## Encapsulation

> Encapsulation means that an object holds its contents in such a way that other objects can't see or change those contents (though we have a number of ways to provide access to the contents of a class).
>  Java for Absolute Beginners