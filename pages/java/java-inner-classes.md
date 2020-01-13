---
layout: page
title: 'Java: Inner classes'
permalink: /java-inner-classes/
date: 2015-01-01 20:00:18.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary

* an inner class is a class inside of a class
* inner classes are used for grouping/organization purposes
* inner classes have access to their parent class's properties

At times you may want to group classes inside of classes. A class can only have one public class, but it can have other classes that aren't public. The public class is the only class that must have the same name as the file. The only reason to create inner classes is to facilitate grouping of your logic or other content.

When you have a class inside another class, the inner class has access to the instance variables of the class it's enclosed in.

This is an example of an inner class. We have the class Brain defined inside of the class Robot. The inner classes has access to the enclosing class's instance variables and methods. Likewise, the enclosing class can create a new object using the inner class and then run those methods in the inner class.

```java
public class Robot {
private int id;

public Robot(int id) {
this.id = id;
}

public void start() {
System.out.println("Starting robot " + id);
Brain brain = new Brain();
brain.think();
}

class Brain {
public void think() {
System.out.println("Robot " + id + "is thinking.");

}

}
}
```

Although you could access the inner class in your App through dot notation (such as Robot.Brain), you usually to package things up in a method in the public class. That's why the method `start` calls `brain.think`. That method can instantiate the inner class and calls its methods. The surrounding class then makes this inner class accessible by packaging it up into its own method: `start`.

## Accessing inner classes from the outside

If you want outside objects to access the inner classes, you have to make the inner classes static. You then use dot notation to access the inner classes. Here's an example:

```java
public class Robot {
private int id;

public Robot(int id) {
this.id = id;
}

public void start() {
System.out.println("Starting robot " + id);
Brain brain = new Brain();
brain.think();
}

// here's my inner class
static class Battery {
public void charge(){
System.out.println("Charging ");
}
}
}
```

Here's the App.java file containing the `main` method:

```java
public class App {

public static void main(String[] args) {
Robot myrobot = new Robot(8);
myrobot.start();

// here's the syntax required to access the method
Robot.Battery myBattery = new Robot.Battery();
myBattery.charge();
}

}
```

Notice that in order to access the inner class, we use `Robot.Battery`. However, here's the catch: the inner class's access modifier is `static`, which means it can't be changed. I'm not entirely sure why.

You can even declare inner classes within methods.