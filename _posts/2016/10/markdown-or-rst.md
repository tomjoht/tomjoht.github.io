---
title: "Markdown or reStructured Text?"
categories:
- jekyll
keywords: 
summary: ""
thumb: 
published: false
---

http://ericholscher.com/blog/2016/oct/6/authoring-documentation-with-semantic-meaning/
http://ericholscher.com/blog/2016/jul/1/sphinx-and-rtd-for-writers/

Jekyll versus Sphinx

Overall doc goals
	• Maximize time working on content, minimize tool time.
	• Scale by empowering authors outside our groups to contribute and manage their own content.
	• The authoring tool and its html generation is only part (50%) of the doc solution. Collaborating and publishing the content via git and other pipelines is the other 50%.

Origins
	• Sphinx was designed from the start as a documentation platform (for Python). 8yrs old.
	• Jekyll was designed from the start as a blogging platform (integrates with Github pages).  8 yrs old.
	• Both are static site generators, so they are highly similar in most ways. Build from command line, static output.

Documentation platform
	• Sphinx uses Python. More robust, mature framework.
	• Jekyll uses Ruby. Not as popular as Python.
	• Notes: There's more support at Amazon for Python than Ruby. See https://w.amazon.com/index.php/Category:Python.
	• Amazon email lists: ruby hackers (1100), python hackers (1600)

Web Communities
	• Larger web community is similar. python-sphinx tag on Stack Overflow had 10 questions asked this week, 40 this month) jekyll tag had 14 asked this week, 85 this month. 
	• Most Sphinx uses are working with documentation sites, whereas most Jekyll users are working on blog sites. 
	• Readthedocs is a huge community with a lot of momentum right now.
	• With Jekyll, you must be more creative in adapting web development practices to fit tech comm scenarios. With Sphinx, all scenarios are already oriented toward documentation.
	• Internally at Amazon, there are at least 10-20 Sphinx users already, with approval and support for the tooling and workflow from AWS leaders.

Documentation format
	• Sphinx uses reStructured Text (reST). This means more semantic markup, like ".. :note" instead of the {% include note.html %}  and  :ref:`region-selection-choose-endpoint` instead of [Region Selection Endpoint](region-selection-choose-endpoint)
	• Jekyll uses kramdown Markdown, which is easier to learn. You can mix HTML with markdown seamlessly. 
	
Quick Demo
	• Sphinx and Jekyll demo
	• sphinx-quickstart allows you to quickly configure your new project by populating the config file with values
	• sphinx-build -b html source build    /     make html

Links
	• Sphinx is simply better with links -- bookmark links, cross-references to doc pages. Linking to the file automatically pulls in either section title or doc title. 
	• Sphinx solves relative links easily.  No need to incorporate hacks (e.g., permalinks) to get it working like with Jekyll. 
	• Sphinx has link validity checkers. 
	• Sphinx has tools for linking across repos. One strategy: Shared content stores common links. Each writer pulls into his or her project. 
	• Jekyll links: Creative workarounds for managed links. Never pulls in doc title. Easy to break. No validity checkers.
	• Downside to Sphinx links: More complex syntax.

Tables
	• Sphinx allows you to store tables separately as CSV files that you include on a page. You can specify column widths, but you wouldn't use HTML to do it.
	
Sidebar navigation configuration
	• Jekyll stores this in a YAML file
	• Sphinx has items directly on pages. Index page, section overview pages, etc.
	
Glossary
	• Sphinx has better support for glossary items.
	• Glossary items in Jekyll are a hack.
	
Code Samples
	• Sphinx uses pygments for highlighting. (python) Jekyll uses rouge (ruby).
	• Sphinx allows you to specify emphasis within line numbers. Easily pull in code from separate files, even specifying which line numbers you want to pull in.

Translation 
	• Translate HTML output
	• Translate markdown or rST source
	• Sphinx has gettext tools that separate out content into strings. Might be helpful, might not.
	
Build times
	• Not sure what the build times for Sphinx projects are, but it seems faster. No auto-regenerate feature.
	• Jekyll build times get to be 20 seconds when you have around 150 topics.

Search
	• Sphinx has built-in search. We could provide product-specific search as AWS Sphinx does.
	• Another option: Ignore Sphinx search feature, use Dev Portal site's built-in search instead.
	• Another option: Use Google custom search, since this is how everyone searches anyway,  and Google's search surfaces much more accurate and helpful results.
	
Theming options
	• Sphinx uses Jinja, Jekyll uses Liquid. Both are highly similar.
	• AWS Sphinx model is to build site (an AWS site theme/clone) and deploy the built site onto server directly in various subdirectories.
	• Aperture model is to build the site in a vanilla theme, push to staging area; then Aperture scrapes content and merges into existing Dev Portal site.
	• Hippo workflow advantage: Copying and pasting content into page in Hippo allows you to easily publish a single page for your product, without having to run through entire publishing deployment for your documentation. Faster to publish small updates, slower to publish large updates.

Outsourced development
	• Option 1. Read the Docs team does custom development. For example, create Sphinx theme from Dev Portal site. Alternatively, we just use an existing Sphinx theme such as the RTD or Alabaster themes.
	• Option 2. We wait for Aperture to start coding (sometime mid-2017?). They still need to hire UX developer, which is a huge part of the development.
	
Publishing workflow
	• Option 1. Push code into version sets and pipelines to move through deployment process.
	• Option 2. Move content onto a server or S3 bucket to trigger deployment from Aperture scripts.

Internal review
	• Option 1: Push code to alpha environment for review prior to deployment to production server. 
	• Option 2: Move preview site to Corp Drive for review.
	• Notes: Sphinx offers PDF output through Latex, which can be helpful for doc reviews and pre-releases outside the firewall.

Continuous publishing
	• Option 1. Fixing a types takes 1 hour.
	• Option 2. Read the Docs implements this model?

Aperture
	• Option 1. Let them figure out their own way of doing things.
	• Option 2. Tell Aperture to model the publishing process of AWS.


Adopting AWS Sphinx toolset
	• Not really something we can do. So much of their process is tied to publishing on their site, sharing for their content, etc. We can model our practices after theirs, but doesn't make much sense to try to incorporate AWS Sphinx tools.

Long term vision
	• More AWS services are being used with Dev Portal products (e.g., Alexa and Lambda). From an end-user's perspective, having all doc follow a similar pattern is more sensible. It doesn't make sense to have documentation in silos like it currently is. we can expect more integration of products in the future. This should be looked at as a growth mindset. How might a re-org with docs create the need to get on the same page?
	• Scaling: make it easy, you lose out on needed features. too hard, and it becomes difficult for others to contribute to. 
	
Hippo integration

	• Not sure if Sphinx's linking will work when we publish content to Hippo. Every link would need to point to a variable link definition, and we'd need to maintain two versions -- one for internal, one for hippo.
	• Sidebar is generated in a different way with Sphinx, and I'm not sure how to extract/isolate that sidebar code in the existing way with hippo sidebar templates.
	
Repos
	• Sphinx provides tools that allow you to link across repos, which means you can have more individual repos that are interconnected with each other.
	• No need for a single master repo.

Github repos versus Gitfarm repos
	• Github provides a way for internal and external devs to create pull requests, log doc issues, etc.
	• AWS Sphinx: Internal gitfarm repos mirror the external github repos.

Overall Recommendations
	• Switch from Jekyll to Sphinx (esp. while it's still early)
	• Adopt as much of the AWS Sphinx authoring practices as possible, but not their toolset (awssphinx command-line tools and theme) since these are too AWS site and workflow specific.
	• Get comfortable with Sphinx as a tool first, and then slowly ramp up to adopting the publishing workflow.
	• Let Aperture decide whether adopting a similar AWS Sphinx workflow for publishing makes sense with the Dev Portal site.
	• Clone a Dev Portal theme rather than merging Sphinx builds into the Dev Portal site
	• Outsource the creation of the Dev Portal Sphinx theme to Read the Docs
	• Incorporate the Read the Docs framework for continuous publishing.
	
Converting from Jekyll to Sphinx
	• Fairly easy conversion: http://pandoc.org/try/ and https://bfroehle.com/2013/04/26/converting-md-to-rst/ 
	• It's cloning the theme that is going to be arduous.
	• links, alerts, image templates --> this will require reformatting.
	• Ramp up with new toolset.
	
	Things that make me nervous
		• rST is a lot less popular than markdown. Not sure how to migrate navtabs.
		• it might be too much to adopt all the command line workflow that AWS Sphinx has developed.
		• are we making authoring too complicated, especially for those outside of our group? authoring should be light, simple, and easy.
	• I' m not sure if github can render reST.
		• Eron (AWS Sphinx docs guy) spends 1/2 of his time developing and maintaining this toolset and publishing workflow.
		• The way the Developer Portal publishes its site might be totally different from how the AWS site gets published.
		• how do you single out 2-3 pages that you want to publish instead of pushing the entire doc set? we need to adopt a continuous publishing workflow.
		• Aperture has a history of coding something and then leaving it. How do we avoid another Hippo?
		• I'd like to start writing docs in rST, but I'm not sure how to publish them on Hippo now given the absolute URL requirements in Hippo.
		• I want to submit JP content in the format we'll use going forward so that translation memory doesn't see future changes in format as requiring re-translation.
	

https://ffeathers.wordpress.com/2016/09/24/how-to-get-started-with-markdown-and-where-to-try-it-out/

comment by Charles Miller
Much like its sibling wiki markup, though, the more “capable” you try to make the markup by extending it and adding new features, the more you undermine the simplicity that was the whole point of it existing in the first place!

Everyone has their own complexity threshold, but for me, “github flavoured markdown” is the most weight the syntax can bear.

The following are some reasons for using Jekyll instead of Sphinx.






The AWS Sphinx users are actually switching build tools with rST to use some additions to Zonbook to build rST instead of Sphinx.  Sphinx is just the build mechanism.

The number of rST users in AWS is a small minority, and it doesn't look like they're all moving in that direction by any means. 

Markdown is the lingua franca of developers when it comes to writing documentation, in part because this is the format Github uses. 

Many Amazon doc sets are also published on github. Some doc sets like WASK are already in Markdown.

It's mostly the Python dev community that embraces rST.

rST is more complex than Markdown. Here are some points developers make when comparing rST against Markdown:

	"The history of computer science is littered with somebody inventing something technically correct but too complex, and then somebody else inventing something simpler that throws half the assumptions out the window (and everybody mocks it for being "worse"), and then the latter wins because it's simpler, and we realize in hindsight that all those assumptions weren't worth the cost of the complexity." http://zverovich.net/2016/06/16/rst-vs-markdown.html 

Here's another comment:  

	A couple years ago I put together one of the more popular themes for Sphinx. It's the one used by Read The Docs and you've likely seen in countless times when searching for Python libraries.
	
	I prefer Markdown.
	
	It's readable and easy to start writing by non-technical folk. More than that that, it's less flexible and isn't as likely to be destructive. At the end of the day rST is as complicated and as flexible as something like HTML. The biggest problem is its ability to nest markup. Markdown is pretty flat and you're not putting lists within tables within blockquotes. As someone making a theme, it was pretty difficult to style against the level of nesting that people end up using rST for. This is of course me bitching about how people write their rST, but there it is. I think rST by nature leads to inconsistent markup.
	
	Basically what I'm saying is. At that point, I'd rather just write HTML. rST sits in some weird middle world where it can get very verbose, but you end up losing all the simplicity that you wanted in the first place.
	Also want to note that rST doesn't HAVE to be so complicated. Plenty of people write clean, rST docs. However, as someone who spent a good deal of time learning the Sphinx system and the markup quirks of rST, in general I ended up seeing people use it in all sorts of crazy ways which then led to weird styling errors.
	
	When it came time to document my own projects, I just built a simple markdown system with a tree structure and added some syntax highlighting. That's gonna get most projects 95% of the way there. While you can do a lot more with rST and it is really powerful, I really think it's only for those 5% of projects or more than likely, scientific documentation that needs more context
	
	... the flexibility of rST was its biggest problem (and strength). https://news.ycombinator.com/item?id=11922485 

We should aim for the easiest way for 95% of people to get their work done in a simple fashion. 
By keeping things simple and limited, Markdown helps ensure the authoring bar is low enough for developers and others to easily contribute docs.

We don't need search or PDF with our docs, which are two huge reasons for going with Sphinx.

The continuous build publishing mechanism from Read the Docs is not likely something we can introduce inside Amazon's build process, which seems to use package manager, version sets, and build manager in a very specific way.

The close association of Github pages and Markdown provides a lot more advantages down the road.

Although you can write Markdown with Sphinx, when you do so, you miss out on all the features that make Sphinx better (such as native section linking).

We'll never be able to plug into AWS's toolset or workflow because all of this is tightly coupled around their specific site's theme and publishing process.