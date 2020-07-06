---
title: Version 3.0 of my Documentation theme for Jekyll released
keywords: jekyll theme, documentation theme, technical writers, single sourcing theme
redirect_from: "/2015/08/13/version-3-jekyll-documentation-theme-released.md./"
categories:
- innovation
- jekyll
- web-design
description: "Version 3.0 of my Documentation theme for Jekyll is now available. This theme has a ton of features, such as tags, series, collections, search, PDF generation, and more. Additionally, I've written up detailed documentation for using the theme. Overall, the theme shows how to do single sourcing (including both web and print output) as well as conditional filtering of content based on different attributes. "
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/jekylltheme.png
---

## Version 3.0 released

Version 3.0 of my Documentation theme for Jekyll is now available. You can download the source code from the [theme's Github repo](https://github.com/tomjoht/documentation-theme-jekyll).

Here's an example output: [https://idratherbewriting.com/documentation-theme-jekyll/](https://idratherbewriting.com/documentation-theme-jekyll/).

The theme is built for single sourcing, so the default theme has a couple of outputs: Designers and Writers. The Designers output has detailed instructions for working with the theme.

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/jekyllthemescreenshot.png" | prepend: site.baseurl }}" alt="Documentation theme screenshot" style="border: 1px solid gray;" />

The Writers output is a slightly scaled back version of the same content (eliminating some explanations of how the theme works), with another theme applied.

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/jekyllthemewriters.png" | prepend: site.baseurl }}" alt="Documentation theme screenshot" style="border: 1px solid gray;" />

The [Getting started page](https://idratherbewriting.com/documentation-theme-jekyll/doc_getting_started.html) in the theme explains how to build the two outputs.

## Prominent theme features

Some of the more prominent features of the theme include the following:

* Bootstrap framework
* Sidebar with page hierarchy
* PDF generation (with Prince XML utility)
* Notes, tips, and warning information notes
* Tags
* Single sourced outputs
* Emphasis on pages, not posts
* Relative (rather than absolute) link structure
* Responsive design
* Help API and UI tooltips
* Extensive documentation and tutorials

For a more detailed list of supported features, see [Supported features](https://s3.us-west-1.wasabisys.com/idbwmedia.com/documentation-theme-jekyll/doc_designers/doc_supported_features.html).

## Getting started

To get started using the theme, see [Getting started with this theme](https://idratherbewriting.com/documentation-theme-jekyll/doc_getting_started.html).

Then see [Setting configuration options](https://idratherbewriting.com/documentation-theme-jekyll/doc_configuration_settings.html) and [Customizing the theme](https://idratherbewriting.com/documentation-theme-jekyll/doc_customizing_the_theme.html).

## Comparing this Jekyll theme to HATs and DITA

Jeyll is amazingly flexible. You can build pretty much whatever you want, if you're clever enough and have good web development skills. I'm not a professional web developer, but I was able to leverage some existing frameworks like Bootstrap and some jQuery plugins like Navgoco to build this theme.

I think the theme does most everything that a help authoring tool or a DITA-authoring tool can do, within reason. I've been using this theme for some months now on documentation projects at my work.

The thing with Jekyll is that you have to build the functionality you want. It's not enough to say "Can Jekyll do this or that?" It's more like, "Is there a Jekyll theme that contains the functionality that does this or that?"

The theme is open source and freely available for you to use. If you have feedback, suggestions, or other comments, please let me know.

## Theme roadmap

What's next for the theme? In the next version, I want to add the following:

* More robust search, including a search results page that highlights keywords matches from the user's query.
* Better link management so that you maintain link names in just one place.
* Better instructions for Windows users
* More WebStorm tip and tricks
* Theme validation to ensure there aren't any broken links or other issues
* CSS cleanup with more organized, consolidated styles
* Sass-based rules with CSS to enable easier theming
