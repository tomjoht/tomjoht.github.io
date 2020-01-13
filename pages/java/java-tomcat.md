---
layout: page
title: 'Java: Tomcat'
permalink: /java-tomcat/
date: 2015-01-01 20:27:26.000000000 -08:00
categories:
- java
jtype: notes_java
---

Tomcat is a web server that allows you to run Java in JSP pages.

# Install Tomcat

* Download JDK (Java Development Kit) and JRE (Java RunTime Environment).
* Download Eclipse IDE for Java EE Developers Eclipse. If you have the regular Java version of Eclipse already installed, you need to add the Java EE perspective.
* Install Tomcat (a web server). Binary distributions, under Core, choose targ.gz or if Windows, 32-bit/64\.

Industrial strength installations use Apache that redirects to Tomcat to redirect to Java Servlets.

## Installing Tomcat

There's a version of Tomcat installed with Eclipse that will create conflicts. Change some of the ports for the Tomcat installation that exists outside of your version of Eclipse.

## Configuring Tomcat within Eclipse

Click **Workbench**, then click **Add New Server**. Browse to your Tomcat installation directory.

Once configured, you should be able to start and stop servers in the Servers tab.

'Ports used by tomcat are already in use.' Go to your tomcat installation, stop it.
