---
title: My pros and cons of using Jekyll for documentation
categories:
- jekyll
keywords: 
description: "As with any help system, there are some pros and cons with using Jekyll for documentation sites. Since I usually emphasize the pros of Jekyll in my posts, I wanted to balance out the perspective a bit by listing 10 cons and 10 pros."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/thumbsupdown_hands.png
---

<img class="alignright" src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/thumbsupdown_hands.png" | prepend: site.baseurl }}" alt="Pros and cons of Jekyll" />
We had a lively turnout at the [last STC meeting](http://www.stc-siliconvalley.org/2015/11/15/version-control-workflows-for-help-content/). By lively, I think we had about 30+ people in attendance, and good all-around discussion. 

I had the chance to meet several new people, and one person mentioned that he reads my blog; as a bonus, he had positive things to say. We got to talking, and the conversation turned to DITA (in part because of Sarah OKeefe's [recent post](http://www.scriptorium.com/2015/11/sturm-und-dita-drang-at-tekom/) about the controversy in Germany), and my new friend said, "I know you're a bit of a naysayer with DITA..."

This caught my attention because I realized how easy it is to brand yourself with a blog. Write a few blog posts about a topic, and watch out. 

Of course, few things are as polarizing as DITA in the tech comm community (and apparently in the international community as well). But I don't want to come across as DITA enemy #1, as Neal Kaplan [once described his experience](http://customersandcontent.com/2014/05/13/hey-i-actually-liked-a-conference/) after writing a post that was less than favorable toward DITA.

To balance out perceptions, in this post I want to note the pros *and cons* with Jekyll. I usually champion the underdog and want to see developing systems move forward into mainstream usage. But at the risk of coming across as a "Jekyll-ite," I'm going to offer up 10 shortcomings of using Jekyll for documentation (not too unlike my [10 shortcomings with DITA post](https://idratherbewriting.com/2015/01/28/10-reasons-for-moving-away-from-dita/)).

Lest I get ostracized by the Jekyll community, though, I'll follow up these items with 10 pros of using Jekyll for documentation.

## Cons of using Jekyll for documentation

### 1. All files are included by default in the output

If you have 10 outputs that you're pushing out from the same Jekyll project, by default each output will include all the files in the project. DITA includes only the files you list in the DITA map, but Jekyll includes all files by default and excludes only the files that you specifically tell it to exclude.

This is probably only a nuisance for the small percentage of Jekyll users who are doing single sourcing. I've been able to workaround this by organizing files into folders and prefixing file names according to how I want the files excluded. Still, it's kind of annoying to make a list of excludes. Each time I add a new project, I have to update the list of excludes in each of my configuration files.

### 2. Can't use variables in titles or YAML

Let's say you have a topic called "Deploying Widget X" that you're pushing out to two audiences. For audience A, the term should be "Gizmo X," but for audience B, the term should be "Widget X." 

Unfortunately, with the title in Jekyll, because it's set in the page's frontmatter, which uses YAML, you can't use variables (like {% raw %}`{{site.component}}`{% endraw %}. You can use variables anywhere else in your pages and project &mdash; just not in YAML.

### 3. Search is weak

Jekyll doesn't have a search feature. Most approaches for search have you create a JSON file that compiles the content from your pages at build time, but there's no way to weight the different fields in the JSON file. As a result, when users search for a keyword, the search returns the first result listed in the JSON entries.

This is problematic. For example, here's a sample scenario. You have the word "reference implementation" in your page title. You'd think searching for "reference implementation" would return this page first in the search results. 

But it might not. Maybe you have 10 other topics that mention the word "reference implementation." Due to the way your JSON file gets constructed (iterating through all pages), the "Reference Implementation Overview" topic might appear *after* these 10 other topics mentioning "reference implementation" in the body. 

When someone searches for "reference implementation," the other 10 topics would then appear *before* the "Reference Implementation Overview" topic because the keyword search simply returns instances of the keyword in any field (any field listed in your JSON search file that is). There's no weighting or ranking based on any search algorithm.

You can implement third-party search features, though, and if you're publishing on the web, it's a no-brainer to use Google. [Swiftype](https://swiftype.com/) works quite well. 

But if you're behind a firewall, choices for functional search engines are much smaller. You can use Swiftype behind a firewall, but you have to submit your index via an API or allow Swiftype access behind your firewall, and the service is costly if you have a lot of different outputs. I still haven't found a good solution for search behind the firewall.

### 4. Plugins and themes are few in number

In the WordPress community, you can choose from about [40,000 plugins](https://wordpress.org/plugins/) and probably the same number of [themes](https://wordpress.org/themes/). You have so many possibilities for awesome looking sites with just the functionality you want.

You can get up and running and do practically anything in a weekend, with little or no coding. WordPress truly empowers the masses to publish and maintain their content. 

With Jekyll, there aren't really that many useful plugins or themes. There are maybe 0.1% the number of [plugins](http://jekyllrb.com/docs/plugins/) and [themes](http://jekyllthemes.org/). With the plugins, when I try to incorporate a plugin, I've found that the dependencies with Ruby gems and different Jekyll versions is tricky. It's easy for things to be incompatible and simply not work. 
 
If you're using Github Pages to build your site, the only plugins you can use are a [small handful of Github-safe plugins](https://help.github.com/articles/using-jekyll-plugins-with-github-pages/). 

With Jekyll, the idea is that if you need additional features, you can integrate the services that you need (see [The ultimate list of services for static websites](http://cloudcannon.com/tips/2014/12/12/the-ultimate-list-of-services-for-static-websites.html)). But not all services are free, and this approach can be somewhat costly.

### 5. Authentication solutions are tough

Let's say you want to authenticate a group of users with a username and password. You're going to have to rely on an external service, such as [onelogin.com](https://www.onelogin.com/), to handle the authentication. As a static site, Jekyll doesn't provide any authentication features. 

There is an authentication plugin ([jekyll-auth](https://github.com/benbalter/jekyll-auth)), but you have to host your content on Heroku for it to work. (One of these days I'm going to sort through the [extended instructions](http://fabian-kostadinov.github.io/2014/11/13/installation-of-jekyll-auth/) to get this working...)

If your content is openly visible and published on the web, authentication probably isn't a concern. But if you're publishing behind a firewall in a commercial setting where you want to control access to paying customers, figuring out authentication is a challenge.

### 6. Merge conflicts can be frustrating

This isn't specific to Jekyll, but if you're using a static site generator, you're probably also using Git or Mercurial or some other version control software. 

If you're working in a team environment, with everyone contributing to the same project, get ready to troubleshoot error messages like this:

```
abort: untracked files in working directory differ from files in requested revision
```

Learning the ins and outs of revision control in an interactive team environment where everyone works on the same project requires some study and practice. 

I'm still getting it right. Today I ran into the above message about half a dozen times before figuring out how to make Mercurial shut up and merge the pulled updates. 

There's a cartoon that appropriately describes the situation:

<a href="http://xkcd.com/1597/"><img src="http://imgs.xkcd.com/comics/git.png" alt="version control" /></a>

### 7. Community seems limited to the UX elite

Jekyll has been around a while, and static site generators are surely picking up steam, but they are tools of the UX elite. For the masses, Jekyll is far too complicated. Most people don't touch the command line &mdash; *ever*. 

With Jekyll, you're working on the command line, writing in a text editor, using YAML syntax, Markdown, Liquid, and more to push updates to repositories.

Even if community momentum picks up, that community will be engineers, UX designers, and other techies. Jekyll isn't a tool that your mom or dad will suddenly start using for their family blog. 

In a way this is good, because Jekyll's flexibility and openness allows you to do a lot more with it (as long as you know how). Advanced platforms allow you to do advanced things. 

But it's also bad because Jekyll will probably always remain an elite tool used by developers, unlike WordPress which gained so much traction because of its low barrier to entry. I've set up plenty of WordPress sites for people who have no understanding of even HTML.

### 8. No place for my large binary files

Version control systems work great for text files, but when you have binary files like images, audio files, video files, PDFs, or other non-text files, version control doesn't work so well. 

For my blog hosting, which uses Github Pages, I still have my Bluehost account to store all my podcast files and other large files that don't work well in version control. I keep meaning to figure out how to make it all fit into the same project (maybe transfer it to [Netlify](https://www.netlify.com/)?), but I like using [Github Pages](https://pages.github.com/) to publish my content.

### 9. No validity checking for broken links

It can be difficult to make sure you don't have any broken links in your output or table of contents. Changing a file name doesn't prompt you to change all links pointing to that file. 

It's also easy for your the titles in your table of contents to get out of sync with their corresponding page titles, and so on. 

I have some custom validity checkers that I've put in place to look for broken links and inconsistent titles, but errors still seem to creep past me in subtle ways. I wish there were better tools to ferret out broken links, broken formatting, inconsistent titles, or other problem areas with the output.

### 10. Not sure if Jekyll scales for large writing teams

I'm not really sure if Jekyll would scale for a large writing team. It seems to be working fine for our small team of 3 writers, but would it also work for 30 writers? If everyone contributes to the same project, committing files and making pull requests multiple times an hour, would it be a hell of merge conflicts, or would it actually work? I'm not sure.

The way I've architected the Jekyll theme, you can have an unlimited number of projects in the same Jekyll theme. But I'm not sure if there's a breaking point where things become unmanageable. It would be nice to plug into a content management system of some kind to manage all the Jekyll files. 

Jekyll is kind of anti-CMS, since most CMSs involve databases and introduce more complexity than Jekyll users want, but it would be helpful to have a larger system where I could manage all of the Jekyll content in a more seamless, locked-down, rights-restricted way.

All right, now here are 10 pros of using Jekyll for documentation.

## Pros of using Jekyll for docs

### 1. You get on the same wavelength as developers

A while ago I decided to steer my career more toward developer documentation. To work successfully in developer environments, it helps to use developer tools and workflows. Working in text file formats, using the command line, collaborating through repositories and version control &mdash; this is how developer's work. 

As Richard Mateosian pointed out in his [STC-SV presentation on version control workflows for writers](http://www.stc-siliconvalley.org/2015/11/15/version-control-workflows-for-help-content/), you need to be on the same team as the engineers. If your tooling puts you on another planet, you're always going to be an outsider. 

In contrast, when you know how to use version control and text editors like Intellij or Sublime, you can interact with the same content devs are interacting with. You will better understand how they work and can more easily interact with them. Using Jekyll has certainly helped me make this transition.

### 2. You can make beautiful sites, teaming up with UX

If you want to team up with UX pros and create a beautiful site, you can do it with Jekyll. Jekyll allows UX pros to leverage all their favorite tools, plugging directly into the rich web environment. 

You can have a UX person build your doc site (or a web savvy member of your docs team), and then you simply work with it to populate it with content. You can't really do this with a help authoring tool. UX people will rarely work with you to customize your Flare output or Framemaker PDFs. Help authoring tools will probably always have that dated look to them, and be hard to customize. (Lately things are getting better in the HAT world, though.)

Even without the help of UX, Jekyll theming is relatively simple to figure out. I was able to create a decent looking theme using Bootstrap after dabbling around with Jekyll for just a few weeks. (Admittedly, I was used to building WordPress themes, but still, I'm not a UX engineer.)

I love being able to take advantage of any JS or CSS framework on the web, and to tap into the rapid development of web tools and platforms. Jekyll makes it easy to integrate these other libraries, services, and utilities into your project.

### 3. Work with text file formats, writing in Markdown

I love working in text file formats. While not specific to Jekyll, this is really the heart of the authoring experience with a static site generator. I write in Markdown, and it's readable in plain text and easy to work with. 

There are a few limitations here and there, and at times I slip into HTML for more sophisticated formatting, but it's rarely the case. Writing in Markdown is 90% joy.
 
 Although I primarily write the documentation myself, at some point I can see myself collaborating more with engineers and publishing engineering-written content. At that time, using Markdown is going to be key, because developers are allergic to XML, as [Anne Gentle](http://justwriteclick.com/) (an XML guru who works extensively with engineers at Rackspace) once said.

### 4. Jekyll doesn't try to be a Swiss-Army knife

This is actually a good thing. WordPress gives you the Swiss-Army knife experience, and some of the features, like Search, simply suck. (WordPress' search seems fine at first, until you start actually trying to find something, and then you realize how dismal it is.) 

With WordPress, each plugin you add slows down the system more and more until your site takes 5 seconds to load as it does all kinds of dynamic rendering. 

Jekyll [does few things but does them extremely well](https://www.youtube.com/watch?v=OKFbB_kqpDI). We live in an era of web services. You can add the other services to your site that you need, like comments (Disqus) and forms (Wufoo) and search (Google). Jekyll focuses its attention on making the core functionality fast and powerful.

### 5. Jekyll's simple, lightweight architecture is deployable anywhere

The LAMP stack architecture of WordPress (Linux, Apache, MySQL, and PHP) makes it a bear to deploy. Granted, if you're publishing on the web, it's relatively easy to buy hosting from a company that provides these services in a well-oiled, functional way. 

But when you remove that hosting layer and just get a Linux instance behind a firewall set up by your company's IT department (who probably specializes in AWS or Oracle environments, not LAMP stacks), good luck configuring all of those services. You won't have cPanel or any rich GUI. In fact, you'll probably only have SSH access into the server. 

I love how lightweight and easy Jekyll is to deploy. It's all static, so you just push it anywhere and it works. There's no database to protect, no PHP on the server to configure &mdash; you just have HTML. You can deploy it anywhere using SCP commands on your terminal.

### 6. No security holes or worries
 
If you're not closely connected to the WordPress world, you might not realize how frequently WordPress sites get hacked. They really do get hacked a lot, in part because people don't always keep the code up to date with the latest release. 

Not having to worry about security vulnerabilities is a huge relief. There aren't any security checks I have to pass with a Security group, no hardening or special tricks to mask database names or deny brute force attacks. There aren't any login screens or databases that might get compromised.

### 7. Works on a Mac

If you've ever shopped around for authoring tools that work on a Mac, you'll realize that there aren't many. You can use OxygenXML, or you can use a cloud-based tool that works in the browser. 

But for any other help authoring tool, you'd need to use a Windows virtual machine and run it that way. As robust as Flare is, running my Mac as a Windows virtual machine would be like trading in my slick Trek 7.3 FX bike for a Huffy at Wal-Mart that has been returned and discarded in the trash bins out back.

### 8. You can implement JavaScript directly on the page

I'm not a JS ninja, but I know enough to do some cool things. I created a little form that takes some inputs and creates an HMAC signature directly on the page. It's freaking awesome in the docs &mdash; even the QA guys use it.

Lots of other help authoring tools would either not allow the JS or would choke on it. I love how open and flexible Jekyll is &mdash; it accommodates any JS or HTML or CSS that I want to include. I don't have to worry about following a particular information type or model. It just has to be valid in the browser.

### 9. Jekyll allows me to use distributed version control instead of a CCMS

If you want to scale your doc projects so that you're sharing content from one project to another with writers spread across your organization, you might think you need a CCMS (component content management system) to do it. CCMS systems costs between $50k to $200k per year and are not trivial to implement. 

In the text file world, you can use a distributed version control system (DVCS) instead. Distributed version control systems include Git, Mercurial, and their online site counterparts, Github and BitBucket. This is how many software teams interact and share content. Why can't tech writers do the same if they're also using text files?

Jekyll and any other doc tool that uses text files (including DITA-based projects) can probably plug into a version control system without too much trouble. Not having to depend on a CCMS is not only inexpensive, it's liberating.

### 10. Jekyll is simple to understand

This final point about simplicity is probably something that will be received in different ways. *As a tool for creating websites, Jekyll is simple to understand.* This is [one of the reasons why many people love Jekyll so much](http://cloudcannon.com/jekyll/2015/03/04/5-reasons-you-should-use-jekyll.html). 

By simple, I mean you don't have a black box of files to figure out behind the scenes. With WordPress and other doc systems, you have many different folders filled with files, and it's unclear what they all do (in WordPress, you pretty much leave the wp-admin folder and its contents alone). These files are rarely documented, because you're never meant to screw with them. 

In contrast, Jekyll projects are open and relatively easy to understand. This allows you to more easily customize what's going on with your theme and output. It allows you to tinker and to fork projects and splice in your own functionality. You can get in there, figure things out, build your own layouts, integrate the code you need, and make it work.

## Conclusion

In conclusion, there are certainly challenges to using Jekyll for documentation, but there also tremendous benefits. Here's my general advice:

* If you're working in a developer environment creating developer documentation, including API docs, there's a strong argument for using Jekyll or some other static site generator. 
* If you're creating GUI docs intended for mainstream users, the cons may persuade you against Jekyll. In this case, you may prefer something easier to work with, like Flare. 

I like the static-site-generator direction I've moved to, and I'm curious to see where it ultimately leads.