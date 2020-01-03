---
title: "How to avoid broken links when single sourcing"
categories:
- technical-writing
keywords: 
description: "Identifying and preventing broken links in single sourcing scenarios is a challenge with almost every tool and platform in tech comm. It is especially challenging with static site generators. I'm trying to implement some validity checkers with my Jekyll project to make sure I don't end up with dead or orphan links."
---

## Why broken links are challenging for technical writers
One of the challenging aspects of technical writing is avoiding broken links in your output. Consider this example. You have three outputs, with different topics included for different audiences. The topics each have inline cross references pointing to the other topics, but since some of the topics aren't included for each audience, you risk having a broken link for the output that omits that topic.

Additionally, technical writers frequently manage large numbers of topics. As you make updates, you rename titles, remove some topics, combine multiple topics into the same topic, and make other edits. When you're developing content, the pages and titles in your topics and navigation are in flux. You shift things around constantly trying to find the right organization, the right titles, and more. 

During this time, if you have inline links that point to specific pages (which keep changing), how do you avoid broken links in your output? How do you maintain consistency between the titles on your pages and the titles in your links and in your table of contents?

## Approaches to avoiding broken links

Different tools have various approaches to avoiding broken links. 

### MadCap Analyzer
MadCap Flare has an [Analyzer tool](http://www.madcapsoftware.com/products/analyzer/) that checks your project for broken links (among other things) and lists them in a comprehensive report. Additionally, each time you change a file name in Flare, Flare updates all references to that file. Other help authoring tools have similar intelligence built in to help you avoid making errors. 

These kinds of reporting tools and built-in updating are one of the key reasons why technical writers use help authoring tools. If you've decided to go the HAT route, broken links are probably not a huge issue for you. Even so, it's easy to still end up with orphan links in an output when your targets vary a lot.

### DITA relationship tables
DITA uses [relationship tables](https://idratherbewriting.com/relationship_tables/) to avoid breaking links. If you've never heard of relationship tables, it's an entirely unique approach. You basically create a giant grid of links in various columns to define which pages should contain which links pointing to which pages. If the output doesn't include a particular link, the link just doesn't appear on that page. 

The main drawback of relationship tables is that your inline links don't appear in the place where the link is mentioned or is most relevant. (Nor can you tell readers to look in the link section for details since the link may or may not appear there depending upon your output.) The relationship table links ends up being placed in a bibliography style reference section at the end of the topic.

One nice feature with DITA and cross references is that the reference to the link can automatically pull in the title for that page. (This isn't true for static site generators.)

DITA also offers [keyrefs](https://idratherbewriting.com/keyref_links/), which are keys that you define and then reference in your topics. For example, if you define key `a` to be a specific link, then you just refer to `a`  in your text instead of the link. If you need to update the link, you just update what `a` refers to. This approach (called indirect referencing) is most similar to the method I'll later describe using YAML.

### Tags instead of links
Some other strategies for avoiding broken links involve using tags instead of links. With tags, the tag page lists all pages containing the tag. With this approach, you're much less likely to have a broken link. If the topic isn't included in the output, that page just won't appear on the tag page listing the links. 

However, this approach doesn't quite align a specific page to a particular reference point. For example, if you said that users should consult the "Configuration Settings" table to see all possible configuration values, but you just linked "Configuration Settings" to a tag called "configuration," and there were 20 pages in your help tagged "configuration," the user would have a hard time finding the "Configuration Settings" page amid the 19 other configuration pages listed.

### HTML link checkers
There are also built-in link checkers in browsers. For example, you can use the [W3C's link checker](https://validator.w3.org/checklink) to iterate through each page of your (web accessible) site. It will look for broken links. However, this approach requires your content to be accessible on the web. 

You can also use Chrome's [Check My Links extension](https://chrome.google.com/webstore/detail/check-my-links/ojkcdipcgfaekbeaelaapakgnjflfglf?hl=en-GB). This extension will analyze all the links on your current page and highlight any broken links.

These checkers look for valid links only and won't give you any information about page title consistency.

## Link management considerations in Jekyll

With Jekyll, I have links to maintain in two main places: 

* navigation (sidebar and top navigation)
* inline links on pages

Additionally, I need the page titles to be consistent with the page titles listed in the navigation and in the inline links. 

For example, if my sidebar navigation says "Config settings," but the page itself says "Configuration Settings," I want to bring the two titles into alignment. Likewise, inline links that point to the "Configuration Settings" page shouldn't say "System settings" or something.

## How I'm approaching link management in Jekyll

Here's the approach I've come up with. I'm briefly summarizing it here, but there's more detail on the [links page in my Jekyll theme](https://idratherbewriting.com/documentation-theme-jekyll/doc_hyperlinks.html) and in the [Links validation](https://idratherbewriting.com/documentation-theme-jekyll/doc_link_validation.html) topic.

By the way, this approach doesn't entirely solve the problem. Ideally, you want to maintain page titles and page URLs in just one place and have those titles and URLs propagate throughout the entire help system. (I just don't think this is possible in Jekyll without a custom plugin.)

1. First, I use the sidebar and top navigation files as the source of truth about the files in my project. By source of truth, I mean every file in my project should be listed in either the sidebar or the top navigation in some way. If I start creating pages but then fail to list them in my navigation, it's likely that I'll forget about the page.
2. I created a urls.txt file that contains some Liquid logic to iterate through every page listed in my navigation and automatically populate the page title, URL, and a formatted link into a YAML format like this:
	
   ```yaml
	doc_getting_started:
	  title: "Getting started with this theme"
	  url: "doc_getting_started.html"
	  link: "<a href='doc_getting_started.html'>Getting started with this theme</a>"
   ```
	
3. After building my site, I copy the content from urls.txt in the output to a file called urls.yml stored in my project's \_data directory.
4. To link to a page, I use this syntax:
	
   ```liquid
	{% raw %}{{site.data.urls.doc_getting_started.link}}{% endraw %}
   ```

	To link to a page in the context of a sentence, I use this syntax:
	
   ```liquid
	Follow these tips for {% raw %}[getting started with your project]({{site.data.urls.doc_getting_started.url}}).{% endraw %}
   ```
	
I realize this process may seem really different from how linking works in most help systems (what other help systems even use YAML?), but I think it will help me avoid broken links in a few ways. The URLs and titles of each of my pages are drawn from the navigation directly. There's no chance that the inline link and the navigation link will be at odds with each other.

The only hassle is copying the content from urls.txt into urls.yml in the project. This is due to limitations with dynamically populating a data file using Liquid in Jekyll. Data files can only contain data, not templating logic. Fortunately, I only need to make this content transfer after creating a new page. 

## Validating title consistency
I also created a title-checker.html page in my theme. This title checker iterates through every page listed in the navigation files and compares the page title against the navigation title. If there are inconsistencies, the problems get listed on the title checker page in the site's output.

The only limitation with the title checker is that the URLs in the sidebar have to match up with the page URLs; otherwise there's no way to compare the navigation titles against the page titles. If the URLs is off, the title checker won't catch the possibly incorrect title.

## Checking via PDF

I've also found that, contrary to my general disdain for PDF, generating a PDF is a great way to spot broken links. If the PDF has a cross reference that says "page 0" or "see .", then I know there's a broken link somewhere. 

However, getting Prince XML (which is [how I generate PDFs](https://idratherbewriting.com/documentation-theme-jekyll/doc_generating_pdfs.html)) to render cross references only for links pointing to other topics in the help (and not to external websites, navigation tabs, file downloads, or collapsible sections &mdash; all of which incorporate anchor tags) is tricky, and I'm still fine tuning my style sheets.

## Designing a beautiful 404 page

If you're going to have a broken link, you can at least expend some effort into designing a [beautiful 404 page](http://www.illuminz.com/blog/404-page-designs/), because the clever design and phrasing can provide at least some consolation to the person who discovers the resource they hoped to find is missing.
