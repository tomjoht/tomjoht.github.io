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

First I'd like to get into some of the reasons for moving to Jekyll. Tech writers typically don't use static site generators. There's a whole class of tools called "help authoring tools," and they include things like Madcap Flare, Adobe Robohelp, Oxygen XML, and more. They work a bit similar to static site generators, in that they output a self-contained static HTML site. But they're almost all proprietary tools designed for a specific tech writer industry.

Within the field of tech comm, there's a growing interest and movement toward developer documentation. As user interfaces get more intuitive and end-users more tech savvy, there's not as strong of a need for end-user instructions. Instead, where the field of tech comm is really hot is with developer docs.

When it comes to writing developer documentation, the traditional tech comm tools tend to fall short. Engineers won't use them, so if you're collaborating with engineers, you'll run into issues. The tools aren't very flexible, they don't run on Macs, they aren't ideal for displaying lots of code samples, the outputs are a pain to customize, and more.

## Reasons for discontent with tech writer tools

It was this kind of discontent with the tech writer toolset that caused me to look elsewhere.

No HATs for Mac
CMSs cost $$$$
DITA too restrictive
Tired of WYSIWYG interfaces for content
Infrastructure for WordPress too cumbersome
Tech writer world too distanced from engineering
Tech pubs lags behind web innovation


## Story behind Jekyll

<img src="{{ "/images/jekyllhacker/file.png" | prepend: site.baseurl }}"/>

## "Blogging like a hacker" 

<a href="http://tom.preston-werner.com/2008/11/17/blogging-like-a-hacker.html"><img src="{{ "http://idratherbewriting.com/files/jekyllwritetechdocslikehacker/images/jekyllbirth.png" | prepend: site.baseurl }}"/></a>

On Sunday, October 19th, I sat down in my San Francisco apartment with a glass of apple cider and a clear mind. After a period of reflection, I had an idea. While I'm not specifically trained as an author of prose, I am trained as an author of code. What would happen if I approached blogging from a software development perspective? What would that look like?"
Tom Preston-Werner, co-founder Github

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
