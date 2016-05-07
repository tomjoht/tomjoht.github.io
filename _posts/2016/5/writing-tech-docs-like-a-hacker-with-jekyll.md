---
title: "Writing tech docs like a hacker with Jekyll"
categories:
- jekyll
keywords: 
summary: ""
thumb: 
---

## Intro

My name is Tom Johnson, and I'm a technical writer at Amazon. Previously I worked at a different company called Experian, which is where I spent a lot of time implementing a Jekyll solution for technical docs. In this presentation, I'll share some of the reasons why we moved to Jekyll, the challenges we faced, and how we attempted to overcome the challenges.

## Reasons for discontent with tech writer tools

First I'd like to get into some of the reasons for moving to Jekyll. Tech writers typically don't use static site generators. There's a whole class of tools called "help authoring tools," and they include things like Madcap Flare, Adobe Robohelp, Oxygen XML, and more. They work a bit similar to static site generators, in that they output a self-contained static HTML site. But they're almost all proprietary tools designed for a specific tech writer industry.

I had a growing discontent with a lot of the tech writer tools. Here are a few of the reasons I was not satisfied using the traditional help authoring tools (HAT):

* **No HATs for Mac**. Almost no HATs work on Macs, but if you're working in developer doc, using a Mac is 
* **CMSs cost $$$$**. Component content management systems cost thousands of hundreds of thousands of dollars, require an extensive implementation time, and almost invariably require DITA.
* **DITA too restrictive**. DITA is an XML architecture for creating tech docs that's somewhat popular, but the information patterns it enforces are too restrictive and can be frustrating. You end up with a completely XML stack with your toolchain.
* **Tired of WYSIWYG interfaces for content**. Some editors put all content behind a WYSIWYG editor, like Confluence. These kinds of interfaces can be especially frustrating when you're trying to create and edit your content.
* **Infrastructure for WordPress too cumbersome**. Solutions involving WordPress, Drupal, or other web-based content management systems require Linux, Apache, MySQL, and PHP. It can be hard to get both approval in corporations for PHP solutions, and it's more hassle to install all of this. More problematic is that these solutions don't work well with tech docs, since their model is one site for all content. Tech docs usually has a number of separate sites for content.
* **Tech writer world too distanced from engineering**. Engineering uses its set of tools, and tech writers use their. The different worlds contribute to more distance and misunderstanding between the two groups.
* **Tech pubs lags behind web innovation**. All the innovative things seem to be happening with web technologies. These innovations slowly trickle into tech doc tools a decade later. It's frustrating not to be able to simply plug into the latest web technologies.

## Story behind Jekyll: "Blogging like a hacker" 

Given this context, it's no surprise that foundation story behind Jekyll caught my attention. Tom Preston-Werner describes a frustration with the web CMSs that led to his exploration of another approach.

<img src="{{ "/images/jekyllhacker/file.png" | prepend: site.baseurl }}"/>

<a href="http://tom.preston-werner.com/2008/11/17/blogging-like-a-hacker.html"><img src="{{ "http://idratherbewriting.com/files/jekyllwritetechdocslikehacker/images/jekyllbirth.png" | prepend: site.baseurl }}"/></a>

<blockquote>
On Sunday, October 19th, I sat down in my San Francisco apartment with a glass of apple cider and a clear mind. After a period of reflection, I had an idea. While I'm not specifically trained as an author of prose, I am trained as an author of code. What would happen if I approached blogging from a software development perspective? What would that look like?"</blockquote>
&mdash; Tom Preston-Werner, co-founder Github

## What if ...
What would happen if we approached technical writing from a software development perspective?



## Writing tech docs like a hacker


| File format | Text files |
| Authoring| Text editor| 
| Advanced logic| Liquid| 
| Collaboration| Git| 
| Versioning| Git| 
| Building| Jekyll| 

## Using Jekyll for tech writing: My journey
<img src="{{ "/images/jekyllhacker/jekyll_journey.png" | prepend: site.baseurl }}"/>

## Designing the site

<img src="{{ "/images/jekyllhacker/jekyll_design.png" | prepend: site.baseurl }}"/>

Turns out theming is easy
Easy to clone any existing site
Use Bootstrap for framework

### Solution: Bootstrap

{% if site.audience="administrators" %}
show this to administrators
{% elsif site.audience="analysts" %}
show this to analysts
{% endif %}

## Conditional filtering

<img src="{{ "/images/jekyllhacker/jekyll_conditional_filtering.png" | prepend: site.baseurl }}"/>

### Liquid

Separate config files for each variant
Each config file has various properties 
(audience, platform, product, version)
Create scripts that compile build commands

## Multiple outputs?

<img src="{{ "/images/jekyllhacker/jekyll_multiple_outputs.png" | prepend: site.baseurl }}"/>

### Solution: Multiple config files

No permalinks
All markdown files stored in root directory
No need to configure url or baseurl properties

## Environment workflows

<img src="{{ "/images/jekyllhacker/jekyll_environments.png" | prepend: site.baseurl }}"/>

### Solution: Relative URLs

No permalinks
All markdown files stored in root directory
No need to configure url or baseurl properties

## Multi-level navigation menu

<img src="{{ "/images/jekyllhacker/jekyll_nav_menu.png" | prepend: site.baseurl }}"/>

### Solution: YAML + Navgoco

Store menu items in YAML file
"for" loop in HTML layout parses through YAML
Navgoco component handles other aspects (expand/collapse, cookie, accordion)

## Alerts: Notes, tips, cautions?

<img src="{{ "/images/jekyllhacker/jekyll_notes_tips_alerts.png" | prepend: site.baseurl }}"/>

### Solution: Includes with parameters

Store note code as include
Pass parameters with include code

// create the note.html include:

<div><b>Note:</b> {{include.content}}</div>

//use it like this:

{% include note.html content="My note content goes here ..." %}

## Avoiding boken links?

<img src="{{ "/images/jekyllhacker/jekyll_links.png" | prepend: site.baseurl }}"/>

### Solution: YAML-based links

Iterate through TOC to create YAML file to get link names
Store urls.yml in _data folder
Reference links like this: {{site.data.urls.myfile.link}}

## PDF output?

<img src="{{ "/images/jekyllhacker/jekyll_pdf.png" | prepend: site.baseurl }}"/>

### Solution: Prince XML

Iterate through sidebar menu to get list of links
Feed the list of links to Prince XML
Store command in shell script

## Re-use across projects?

<img src="{{ "/images/jekyllhacker/jekyll_cross_projects.png" | prepend: site.baseurl }}"/>

### Solution: Single project for writers

All writers work in same project
Each project stored in its own subfolder
Still use relative links (redirect index.html in root to project home)
Put common content in non-excluded directory
Exclude other directories in each project's config file

## Version control workflows?

<img src="{{ "/images/jekyllhacker/jekyll_git.svg.png" | prepend: site.baseurl }}"/>

### Solution: Learn the needed workflow

Focus only on necessary Git commands
Coordinate more among team members
Avoid simultaneously editing the same page
Look regularly at commit logs

## Simplicity?

<img src="{{ "/images/jekyllhacker/jekyll_simplicity.png" | prepend: site.baseurl }}"/>

### Solution: Stick with core Jekyll

Avoid plugins or overly complicated code
Have all writers work in same project
Stop changing processes/code each month
Establish standards and provide training

## Search?

<img src="{{ "/images/jekyllhacker/jekyll_search.png" | prepend: site.baseurl }}"/>

## Solution: Swifttype or Algolia
Implementation requires UX skills
More difficult if content isn't public
Never got around to implementing

## Translation?

<img src="{{ "/images/jekyllhacker/jekyll_translation.png" | prepend: site.baseurl }}"/>

### Solution: Separate projects
Separate out UI strings into data file
Send out Markdown files for translation
Create new project with translated files

## Authentication?

<img src="{{ "/images/jekyllhacker/jekyll_authentication.svg.png" | prepend: site.baseurl }}"/>

### Solution: Involve engineering

Recognize that IAM is an entire discipline
Simple implementations like onelogin.com aren't cheap
Push back on impossible requirements
Dynamically pull from AWS S3
Last resort: Salesforce site.com solution

## Story of first telephone

<figure><img src="http://idratherbewriting.com/files/jekyllwritetechdocslikehacker/images/themesnapshot.png"/><figcaption>Bell and an early model of the telephone</figcaption></figure>


## Documentation theme for Jekyll

<img src="http://idratherbewriting.com/files/jekyllwritetechdocslikehacker/images/themesnapshot.png"/>

Newer theme: Single output, multiple sidebars (Github repo)
Older theme: Multiple outputs, one sidebar (Github repo)
