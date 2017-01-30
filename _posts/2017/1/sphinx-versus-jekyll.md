---
title: Sphinx versus Jekyll
published: false
---

## Origins

*  Sphinx was designed from the start as a documentation platform (for Python). 8yrs old.
*  Jekyll was designed from the start as a blogging platform (integrates with Github pages).  8 yrs old.
*  Both are static site generators, so they are highly similar in most ways. Build from command line, generate static output.
 
## Documentation platform

*  Sphinx uses Python. More robust, mature framework.
*  Jekyll uses Ruby. Not as popular as Python.
 
## Web Communities

*  Larger web community is similar. python-sphinx tag on Stack Overflow had 10 questions asked this week, 40 this month) jekyll tag had 14 asked this week, 85 this month.
*  Most Python uses are working with documentation sites, whereas most Jekyll users are working on blog sites.
*  Readthedocs is a huge community with a lot of momentum right now.
*  With Jekyll, you must be more creative in adapting web development practices to fit tech comm scenarios. With Sphinx, all scenarios are already oriented toward documentation.

## Documentation format

*  Sphinx uses reStructured Text (reST). This means more semantic markup, like `.. :note` instead of the `{% raw %}{% include note.html %}{% endraw %}` and `:ref:`region-selection-choose-endpoint` instead of `[Region Selection Endpoint](region-selection-choose-endpoint)`
*  Jekyll uses kramdown Markdown, which is easier to learn. You can mix HTML with markdown seamlessly.

 
## Links

*  Sphinx is simply better with links -- bookmark links, cross-references to doc pages. Linking to the file automatically pulls in either section title or doc title.
*  Sphinx solves relative links easily.  No need to incorporate hacks (e.g., permalinks) to get it working like with Jekyll.
*  Sphinx has link validity checkers.
*  Sphinx has tools for linking across repos. One strategy: Shared content stores common links. Each writer pulls into his or her project.
*  Jekyll links: Creative workarounds for managed links. Never pulls in doc title. Easy to break. No validity checkers.
*  Downside to Sphinx links: More complex syntax.
 
## Tables

*  Sphinx allows you to store tables separately as CSV files that you include on a page. You can specify column widths, but you wouldn't use HTML to do it.
        
## Sidebar navigation configuration

*  Jekyll stores this in a YAML file
*  Sphinx has items directly on pages. Index page, section overview pages, etc.
        
## Glossary

*  Sphinx has better support for glossary items.
*  Glossary items in Jekyll are a hack.
        
## Code Samples

*  Sphinx uses pygments for highlighting (python). Jekyll uses rouge (ruby).
*  Sphinx allows you to specify emphasis within line numbers. Easily pull in code from separate files, even specifying which line numbers you want to pull in.
 
## Translation

*  Sphinx has gettext tools that separate out content into strings. Might be helpful, might not.
        
## Build times

*  Not sure what the build times for Sphinx projects are. No auto-regenerate feature.
*  Jekyll build times get to be 20 seconds when you have around 150 topics.
 
## Search

*  Sphinx has built-in search. We could provide product-specific search as AWS Sphinx does.
        
## Theming options

*  Sphinx uses Jinja, Jekyll uses Liquid. Both are highly similar.
        
## PDF
Sphinx offers PDF output through Latex, which can be helpful for doc reviews and pre-releases outside the firewall.
 
## Continuous publishing

*  Jekyll uses Github Pages
*  Sphinx has Readthedocs

## Repos

*  Sphinx provides tools that allow you to link across repos, which means you can have more individual repos that are interconnected with each other.
*  No need for a single master repo.

        
## Converting from Jekyll to Sphinx

*  Fairly easy conversion: http://pandoc.org/try/ and https://bfroehle.com/2013/04/26/converting-md-to-rst/
*  It's cloning the theme that is going to be arduous.
*  links, alerts, image templates --> this will require reformatting.
