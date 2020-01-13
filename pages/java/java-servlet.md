---
layout: page
title: 'Java: Servlet'
permalink: /java-servlet/
date: 2015-01-01 20:22:33.000000000 -08:00
categories:
- java
jtype: notes_java
---

A servlet is a Java class that serves up HTML to a browser.

When a user goes to a URL containing the servlet, the `doGet` method will get the logic ...

The request is what the browser sends to the servlet. The response is what the servlet sends back to the browser.

The servlet has a URL that corresponds to it.

You normally don't write HTML to the servlet. You put your HTML into a java servlet page (jsp).

You put your web content inside the Web Content directory.

The JSP page is actually compiled into a servlet before the server runs it.
