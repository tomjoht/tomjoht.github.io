---
title: "1.5 Custom scripts"
permalink: /publishingapidocs1-5/
course: "Publishing API documentation"
weight: 1.5
---

## Solution at Badgeville

When I worked at Badgeville, our solution for publishing API documentation was to use custom scripts that pulled some information from source files and pushed them into templates.

## Use scripts to generate JSON from source code

The source files were stored on Github, and the writers could edit the descriptions of the parameters, fields, etc. Our developers created scripts that would look into the code of the source files and render content into JSON files in a specific structure. 

## Import the JSON into your web CMS

Since we published all help content on a Drupal site, we hired a Drupal development agency that would take information from a JSON file and push the information into a custom-built template. 

After the scripts were integrated into the Drupal site, we would have developers periodically run the build scripts to generate a batch of JSON files. 

The upload scripts checked to ensure the JSON files were valid, and then they were pushed into the templates and published. Each upload would overwrite any existing content with the same file names. 

## Developing custom solutions

If your documentation is published on a web-based CMS, you can probably find a development agency to create a similar script (if you don't have in-house engineers to create them).

A lot of companies have custom solutions for their API documentation. Sometimes this kind of solution just makes sense and allows you to right-size the workflow to fit your specific information.