---
title: Version 4.0 released for the Jekyll Documentation Theme 
categories:
- jekyll
keywords: jekyll, documentation, creating documentation with jekyll, static site generators for technical writing
description: "Version 4.0 of the Jekyll Documentation Theme now supports multiple projects inside the same theme. This allows you to use the theme for any number of documentation projects with any number of authors."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/jekylltheme40thumb.png
---

I recently made some updates to my Jekyll Documentation Theme. 

<a href="https://idratherbewriting.com/documentation-theme-jekyll/"><img style="border:1px solid #dedede;" src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/jekylltheme40.png" | prepend: site.baseurl }}" alt="Jekyll documentation theme" /></a>

Here's what's new in version 4.0.

## Multiprojects in the same theme

I needed to share content with other technical writers working on separate projects. Previously, each writer had his or her own version of the theme that contained the project files they were working on. We worked independently.

In order to share content across projects, we had to combine all of the doc projects into one project. With this version of the Jekyll Documentation Theme, you can now author multiple projects within the same Jekyll project/theme. Files for each of the projects live in subfolders in the theme. 

Because the theme uses relative links, this folder organization presented some challenges. All files for your project must exist within a particular subfolder (rather than living in the root directory). The file paths to the CSS, JS, sidebar links, topnav links, inline links, search, tags, and other areas had to be updated to support this new structure.

Also, because the index.html page lives in the project's root, I added a redirect on index.html to point to a file called "home.html" in the appropriate project subfolder. For example, when you go to https://idratherbewriting.com/documentation-theme-jekyll/index.html, it forwards to https://idratherbewriting.com/documentation-theme-jekyll. 

This restructuring was necessary because all pages must have the same path pointing to the CSS and JS files (since the theme depends on relative paths). If you have some pages in the root directory and other pages in a subfolder, the links to the CSS and JS would break. (If your project uses absolute linking, you don't run into this problem, but then you have other issues &mdash; your site can only be valid at the URL specified in your configuration. Since tech docs need to easily be moved around from one directory to another, relative linking is a must.)

Ideally, it would be nice if Jekyll automatically moved pages from subfolders into the root when the site gets published (like with posts), but that's not how it works, and even if it did work like that, it would complicate exclusion by subfolders. Jekyll includes all files by default and excludes only the files or directories you specify in your configuration. As a result, if all pages moved to the root directory when the site gets rendered, it means your outputs would contain files from all your projects. Hence the current architecture.

Note also that now in your sidebar, you need to reference the subfolder paths where the files are stored in addition to the filename (for example, /mydocs/samplepage.html instead of just /samplepage.html). See the source code for the sample projects for an example.

Having a theme that everyone works off of brings a lot of efficiency gains. Now a central techy team member can control the styles and outputs for all projects on the team. When you have a new team member, you don't have to try to work on their files to get them set up. You can just set up their new project, and they can download it. 

When you want to share content across projects, store the content in the \_includes directory. Put any images you're sharing in the common_images folder. Other projects can simply get the content using the include and referencing any images in the common_images folder.

Converting the Jekyll theme into a multi-author solution is a huge paradigm shift and one that makes authoring a lot more interactive and team-oriented. You'll need to be savvy with Git or some other version control to make this model work without getting merge conflicts, but this is the model that software developers have been following for years. Here I've just applied it to tech docs.

## URL generator

There's a URL generator file that makes it easier to create and maintain links to other files. In the generator output, the urls_mydoc.txt file contains code that iterates over the links in the sidebar and top nav, and puts the link formatting into a YAML file. Here's the [result](https://idratherbewriting.com/documentation-theme-jekyll/urls_mydoc.txt). 

Just copy the output from this file into a data file internally in your \_data folder. (I wish I could avoid this step and just generate the YAML directly inside the theme, but I haven't figure out how to do that yet...)

To link to a page, you just reference a YAML value in a data file. You can either reference the full link with the page title, or just the link. See the [Hyperlinks](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_hyperlinks) topic for details. 

## Title checker

To make sure the titles in the sidebar correspond with page names, there's a title checker in the root directory. In the output, browse to the title-checker.html page in your browser. Here's [an example](https://idratherbewriting.com/documentation-theme-jekyll/title-checker.html). 

If a page name conflicts with the sidebar name in the title, the checker tells you there's an inconsistency. It will say something like this:

>Problem: The sidebar item title "Sidebar navigation" does not match the page title "Sidebar Navigation".

There are some limitations with the title checker. If the filename or path itself is incorrect in the sidebar, the title checker won't be able to find the file to check the title against. Even with this limitation, though, the title checker goes a long way to helping identify errors and inconsistencies in projects.

## Build scripts

The build scripts are more fleshed out and automated. There are 5 build scripts &mdash; the fifth one will execute the first four. The build scripts automate the generating of PDFs and website outputs, including the transfer of files to a server.

Once you configure the scripts, you can run them all by just executing mydoc_all.sh. In other words, the build scripts make publishing and deployment an entire operation that you can execute from one terminal command.See [10. Configure the build scripts](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_build_scripts) for more details. 

## Links with subheadings

Now each subheading has a permalink to the URL when you mouse over it. This is simply the [AnchorJS library](https://github.com/bryanbraun/anchorjs) at work.

## Pop-out links

Links to external sites have a pop-out icon next to them. This is just a simple CSS addition with a Font Awesome icon.

## More detailed getting started section

The instructions for getting started are updated. See the [Getting started](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_getting_started) section.

## Syntax highlighting preserved in PDF output

Bootstrap makes every element `#000` (black) in the print output. This negates any syntax highlighting with code samples. I simply commented out this part of the Bootstrap style sheet so that code samples in the PDF would retain their syntax highlighting.

## Search looks only at titles, summaries, and keywords

I adjusted the search to look only at the titles, summaries, and keywords &mdash; not the body element. Reason being, the way JSON search works, keying off of hits in the body might make it so pages with the keyword in the titles or summaries get pushed down too far in the search results. 

There's no weighting mechanism with JSON search. By focusing only on the titles, summaries, and keywords, I hope to increase the accuracy of the search.

## Jekyll 3.0 compatibility

This theme is entirely compatible with the latest version of Jekyll. The only Rubygems used are redcarpet, pygments, and jekyll. I tried using Bundler and a Gemfile to make it easier for people to get any of these gem dependencies, but users kept getting errors with the Gemfile, so I just removed it. 

I'm trying to keep everything simple and focused to the core so that the theme doesn't rely on plugins or other third-party code that could easily go out of date or break as Jekyll evolves.

There are other little updates here and there that I've probably made, but nothing noteworthy. I haven't changed the visual design.

Again, this theme is really intended for technical writers creating documentation. It's not a theme designed for blogging. I welcome feedback and recommendations for improvement.