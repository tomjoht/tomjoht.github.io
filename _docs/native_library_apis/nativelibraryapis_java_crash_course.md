---
title: Java crash course
permalink: learnapidoc/nativelibraryapis_java_crash_course.html
course: "Documenting REST APIs"
weight: 11.2
sidebar: docapis
section: nativelibraryapis
path1: learnapidoc/nativelibraryapis.html
last-modified: 2026-10-18
---

{% include coffeeshopbook.html %}

To understand the different components of a Javadoc, first you have to understand a bit about Java. Becoming familiar with the names of the different components of Java will allow you to enter conversations and understand the code at a high level. When you describe various aspects of sample code, knowing when to call something a class, method, parameter, or enum can be critical to your documentation's credibility.

I'll run you through a brief crash course in the basics. Don't worry if this seems like a blur. For more detail about learning Java, see the official [Learn Java](https://dev.java/learn/) tutorials from Oracle, [LinkedIn Learning](https://www.linkedin.com/learning/) (formerly Lynda.com), or the [O'Reilly learning platform](https://www.oreilly.com/) (formerly Safari Books Online). AI coding assistants are also good at explaining Java code line by line. Below I'll focus on some basic concepts in Java that will be important in understanding the [Javadoc tags and elements](nativelibraryapis_javadoc_tags.html).

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## About Java

Java's flexibility and widespread use make it one of the best programming languages to learn for technical writers. Java isn't tied to a specific operating system or hardware platform. Instead, Java code compiles into bytecode. The platform you deploy your code on contains a Java Virtual Machine (JVM) that runs the bytecode. Hence through JVMs, different platforms can interpret and run Java code &mdash; this gives Java more flexibility with different platforms.

## Classes

Classes are templates or blueprints that drive pretty much everything in Java. It's easiest to understand classes through an example. Think of a class like a general blueprint of a "bicycle." There are many different types of bicycles (Trek bikes, Specialized bikes, Giant bikes, Raleigh bikes, etc.). But they're all just different instances of the general class of a bicycle.

In Java, you start by defining classes. By convention, class names begin with a capital letter. Each public class goes in its own file, and the file name matches the class name (for example, `Bicycle.java` for the `Bicycle` class).

{% include ads.html %}

Each class can contain some fields (variables for the class) and methods (subroutines the class can do).

Before the class name, an access modifier indicates where the class (or one of its members) can be accessed from. The access modifiers are as follows:

* `public`: Accessible from anywhere.
* `protected`: Accessible within the same package and from subclasses. (Applies to members, such as fields and methods, not to top-level classes.)
* No modifier ("package-private"): Accessible only within the same package.
* `private`: Accessible only within the same class. (Applies to members, not to top-level classes.)

Other modifiers change how a class or member behaves rather than who can access it. For example, `abstract` means the class can't be instantiated, only subclassed. `final` means a class can't be subclassed (or, for a field, that its value can't change after it's set). `static` means a field or method belongs to the class itself rather than to individual objects.

Here's an example of a class:

```java
public class Bicycle{

//code...

}
```

You mostly need to focus on `public` classes, since these are the classes that will be used by external developers. The `public` classes are the API of the library.

## Methods

Methods are subroutines or actions that the class can do. For example, with a bicycle you can pedal, brake, and turn. A class can have as many methods as it needs.

Methods can take arguments, so there are parentheses `()` after the method name. The arguments are variables that are used within the code for that method. For example:

```java
add(a, b) {
  sum = a + b;
}
```

Methods can return values. When a method finishes, the value can be returned to the caller of the method.

Before the method name, the method indicates what type of data it returns. If the method doesn't return anything, `void` is listed. Other options are `String` or `int`.

Here's an example of some methods for our Bicycle class:

```java
class Bicycle {

	void turn() {
	// code ...
	}
	void pedal(int rotations) {
	   System.out.println("Your speed is " + rotations + " rotations per minute.");
	}

	int brake(int force, int weight) {
  	int torque = force * weight;
  	return torque;
	}
}
```

See how the `brake` method accepts two arguments &mdash; `force` and `weight`. These arguments are integers, so Java expects whole numbers here. (You must specify the data type before the parameters in the method.) The arguments passed into this method are used to calculate the `torque`. The `torque` is then returned to the caller.

{% include random_ad2.html %}

Java has different types of methods. *Instance* methods can only be used from objects instantiated from the class. *Static* methods can be used directly from the class without instantiating an object first. *Abstract* methods can only be used through subclasses.

{% include random_ad4.html %}

Somewhere in your Java application, users will have something called a `main` method that looks like this:

```java
public static void main(String[] args) {
}
```

Inside the `main` method is where you add your code to make your program run. As a result, the code inside the `main` method references other objects (instantiated from classes). The Java Virtual Machine will look inside the `main` method to run the application code.

## Fields

Fields are variables available within the class. A variable is a placeholder that is populated with a different value depending on what the user wants.

Fields declare their data types because Java is "statically typed," meaning the type of every variable is known when the code compiles. Some data types include `byte`, `short`, `int`, `long`, `float`, and `double`. These are whole numbers or decimals of different sizes. Other common types are `char`, `boolean`, and `String` (which is a class, so it starts with a capital letter).

Here's an example of some fields in class:

```java
class Bicycle {
  String brand;
  int size;
}
```

Many times fields are "encapsulated" with getter-setter methods, which means their values are set in a protected way. Users call one method to set the field's value, and another method to get the field's value. This way you can avoid having users set improper values or incorrect data types for the fields.

Fields whose values never change are called constants. Constants are usually declared with the `static final` modifiers and named in all caps (for example, `public static final int MAX_SPEED = 40;`). A related concept is an *enum*, which is a special type that defines a fixed set of named constants, such as `enum Gear { LOW, MEDIUM, HIGH }`.

## Objects

Objects are instances of classes. They are the Treks, Raleighs, Specialized, etc., of the Bicycle class.

If I wanted to use the `Bicycle` class, I would create an instance of the class. The instance of the class is called an object. Here's what it looks like when you "instantiate" the class:

```java
Bicycle myBicycle = new Bicycle();
```

You write the class name followed by the object name for the class. Then assign the object to be a new instance of the class. Now you've got `myBicycle` to work with.

The object inherits all of the fields and methods available to the class.

You can access fields and methods for the object using dot notation, like this:

```java
Bicycle myBicycle = new Bicycle();

myBicycle.brand = "Trek";
myBicycle.pedal(60);
```

You probably won't see many objects in the native library. Instead, the developers who implement the API will create objects. However, if you have a reference implementation or sample code on how to implement the API, you will see a lot of objects.

## Constructors

Constructors are methods used to create new instances (objects) of the class. The default constructor for the class looks like the one above, with `new Bicycle()`.

The constructor uses the same name as the class and is followed by parentheses (because constructors are methods).

Often classes have constructors that initialize the object with specific values passed in to the constructor.

For example, suppose we had a constructor that initialized the object with the brand and size:

```java
public class Bicycle {
  String brand;
  int size;

  public Bicycle(String brand, int size) {
  	this.brand = brand;
  	this.size = size;
  }

}
```

Now you can use this constructor when creating a new `Bicycle` object:

```java
Bicycle myBicycle = new Bicycle ("Trek", 22);
```

If a class doesn't define any constructor, Java automatically provides a default constructor with no arguments.

## Packages

Classes are organized into different packages in Java projects. Packages are like folders or directories where the classes are stored. Putting classes into packages helps avoid naming conflicts.

When you create your class, if it's in a package called `vehicles`, you list this package at the top of the class:

```java
package vehicles;

public class Bicycle {
//
}
```

Packages also set boundaries on access. If a class doesn't say `public`, it's only accessible to other classes in the same package. If a field or method is `protected`, it's accessible to the same package and to subclasses.

When you want to use the class from a file outside the package, you need to import it, like this:

```java
import vehicles.Bicycle;

	public static void main(String[] args) {

	}
```

When packages are contained inside other packages, you access the inner packages with a dot, like this:

```java
import transportation.motorless.vehicles.*;
```

(The `*` imports all the classes in the package.)

Here you would have a transportation package containing a package called motorless containing a package called vehicles. Package naming conventions are like URLs in reverse (com > yoursite > subdomain).

Build tools such as Maven and Gradle manage a project's dependencies, which are the external libraries the project uses. When you build the project, the tool automatically downloads the dependencies it needs.

## Exceptions

To avoid broken code, developers anticipate potential problems through exception handling. Exceptions say, if there's an issue here, flag the error with this exception and then continue through the code.

{% include random_ad3.html %}

Different types of errors throw different exceptions. By identifying the type of exception thrown, you can more easily troubleshoot problems when code breaks because you know the specific error that's happening.

A method declares the exceptions it might throw after the keyword `throws`:

```java
public void ride(int distance) throws IOException {

}
```

When a method declares an exception like this, you document it with the `@throws` Javadoc tag.

## Inheritance

Some classes can extend other classes. Extending a class means a class inherits the properties of another class. When one class extends another class, you'll see a note like this:

```java
public class Bicycle extends Vehicle {

}
```

This code means that `Bicycle` inherits all of the properties of `Vehicle` and then can add to them.

## Interfaces

An interface is like a contract. It lists methods (usually without any code inside them) that other classes agree to provide. A class that implements an interface must supply the code for each of those methods. Interfaces are a way of making many different classes work the same way. (Since Java 8, interfaces can also include "default" methods that contain code.)

## JAR files and WAR files

The file extension for a class is `.java`, but when compiled by the Java Development Kit into the Java program, the file becomes `.class`. The `.class` file contains bytecode, which only computers (in this case, the Java Virtual Machine, or JVM) can read.

Developers often package up java files into a JAR file, which is like a zip file for Java projects. When you distribute your Java files, you'll likely provide a JAR file that the developer audience will add to their Java projects.

Developers add the JAR to their project's class path to make the classes available. In most projects today, they do this by adding the library as a dependency in their Maven or Gradle build file, and the build tool downloads the JAR automatically. In Eclipse, you can also add a JAR manually: right-click the project, select **Properties**, select **Java Build Path**, click the **Libraries** tab, click **Add JARs**, and browse to the JAR.

{% include image_ad_right.html %}

When you deliver a JAR file, developers can use the classes and methods available in the JAR. However, the JAR will not show them the source code, that is, the raw Java files. For this, users will consult the Javadoc.

If you're distributing a reference implementation that consists of a collection of Java source files (so that developers can see how to integrate your product in Java), you'll probably just send them a zip file containing the project.

A WAR file is a web application archive. A WAR is a compiled application that developers deploy on a server to run an application. Whereas the JAR is integrated into a Java project while the developers are actively building the application, the WAR is the deployed program that you run from your server.

That's probably enough Java to understand the different components of a Javadoc.

## Summary

Here's a quick summary of the concepts we talked about:

* **Class**: Blueprints for something
* **Object**: An instance of a class
* **Methods**: What the object/class can do
* **Fields**: Variables in the object/class
* **Constructor**: A method to create an object for a class
* **Package**: A folder that groups classes
* **Access modifier** (e.g., `public`): The scope at which a thing can be accessed
* **Interface**: A contract listing methods that implementing classes must provide
* **Enum**: A data type offering predefined constants
* **Subclass**: A class that inherits the fields + methods of another class
* **JAR file**: A zip-like file containing Java classes
* **WAR file**: A compiled Java web application to be deployed on a server

The point is that now you can use these terms intelligently in documentation and have at least a sense of what's going on.

## Comparing native library APIs to REST

Now that you see the specific programming language and elements in Java, you can probably get a sense of how different native library APIs are from REST APIs. To document a native library API, you need to become familiar with the programming language. In contrast, REST APIs are language agnostic, so they tend to be more accessible to generalists.
