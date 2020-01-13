---
layout: page
title: 'Java: Inheritance'
permalink: /java-inheritance/
date: 2015-01-01 19:59:08.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary

* allows you to create a subclass that inherits the properties (fields + methods) of its parent or superclass.
* use the keyword `extends` to declare a subclass. (child extends parent).

The following code demonstrates the principle of inheritance. Here we have a class that has 2 methods: start and stop. In the App.java file, where the main method is, we instantitate the class by creating an object from it, and then we call a couple of methods.

```java
public class Machine {

public void start() {
System.out.println("Machine started.");

}
public void stop() {
System.out.println("Machine stopped.");
}


}
```
If you go to the app.java class, we have this:

```java
public class App {

public static void main(String[] args) {
    Machine mach1 = new Machine();
    mach1.start();
    mach1.stop();
}

}
```
<p>Now suppose we have another class called Car.</p>

```java
public class Car extends Machine {

}
```

Now `Car` inherits all of `Machine`'s properties, including its methods. You can then use this in your main method:

```java
    Car car1 = new Car();
    car1.start();
    car1.stop();
```

You could also add some more methods to `Car` that `Machine` doesn't have. This is the power of inheritance. A lot of times people may have access to use a class, but they won't have the ability to modify that class. In these cases, the user can extend the class by creating a new class that inherits its methods, and then add the methods or other properties that they need.

You can also overwrite methods. If you add a method in your `Car` class that has the same name as the `Machine` class that `Car` is extending, the `Car`'s method will overwrite the machine method that has the same name.

You can also overwrite a method. In Eclipse, right click, select **Source > Override/Implement Methods**.

Then you end up with something like this:

```java
    @Override
    public void start() {
        // TODO Auto-generated method stub
        super.start();
    }
```

The `@Override` note means that the method is being overwritten. The `super.start()` simply is a stub because until you overwrite the method, it's just referencing the parent's method. That's what the `super` is about -- it's the opposite of "sub."

The `@Override` is an annotation. Now this annotation will check that your override is actual a method that exists in the parent class. It enforces some rules there.

As for variables, let's say that you have this in Machine:

```java
    private String name = "Machine Type 1";
```

Now in your subclass, suppose you try to use this variable in your subclass. What happens? Because the variable is marked as private in the parent class, it can't be inherited in the subclass. If you declare something `private`, it's only available within the class.

But if you remove the `private` access specifier, then other classes that are using that package can use the variable. If you change the access specifier to `protected`, it means that you can access it anywhere within the package and within any child class.

In general, don't override variables. Just override methods.