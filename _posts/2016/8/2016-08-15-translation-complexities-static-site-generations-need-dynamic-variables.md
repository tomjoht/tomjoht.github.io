---
title: "The complexities of translation and the need for dynamic variables in the build process"
categories:
- api-doc
- podcasts
- jekyll
description: "Translation is a complex undertaking that usually requires you to take advantage of dynamic variables and other parameters in your source format in order to generate out different languages. Although most people think of static site generators as containing static content only, it's actually only static output. During the build process, you can take advantage of these more dynamic characteristics to handle rules for outputting to different languages. In this post, I explain some of the details you have to account for (includes, links, images, re-used content, etc.) when managing a translation project using a static site generator such as Jekyll."
date: 2016-08-15
tags:
- translation
- technical writing
- static site generators
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/ssgtranslationcomplexity.mp3
podcast_file_size: 11.9 MB
podcast_duration: "14:05"
podcast_length: 11948010
bitlink: http://bit.ly/ssgtranslationcomplexities
---

{% include audio.html %}

I mentioned in previous posts that I was tackling translation with static site generators, and that I would circle back around on this topic to provide more detail (see [Will the docs-as-code approach scale?](https://idratherbewriting.com/2016/08/01/responding-to-feedback-on-modern-tech-writing-review/)).

Translation is a complex undertaking. In Andrew Etter's [*Modern Technical Writing*](https://www.amazon.com/Modern-Technical-Writing-Introduction-Documentation-ebook/dp/B01A2QL9SS?tag=viglink124746-20#nav-subnav), he says translation projects are time-consuming and costly. To quote:

> Internationalization, the process of translating documentation to other languages, is a nightmare. If you ever *think* you need to do it, interface with management and perform a careful cost-benefit analysis, because the process is expensive, time-consuming, error-prone, and tedious. Once you've arrive at what you believe is an accurate estimate for company costs, triple it. Now you have a realistic estimate.

Etter briefly describes his translation workflow using a static site generator, Sphinx. The worklow involves using [`gettext`](https://www.gnu.org/software/gettext/) scripts to convert the content into POT (Portable Object Template) files, which he sends to a translation company. The translation company converts them to PO (Portable Object) files (these file formats basically facilitate separating the text into strings that translators can manage) and after finishing the translation, sends the files back. He commits them to a repo, converts the PO files to MO (Machine Object) files, and builds them again in his Sphinx project.

There are quite a few different tools, formats, workflows, and approaches for doing translation. For example, here's how one group handles [translation with Middleman](https://www.discovermeteor.com/blog/community-translations-with-github-middleman-codeship-heroku/), another static site generator. Their process is quite different. They set environment variables in their configuration files that the provide information to the server about which language to build. Their process involves Codeship, Heroku, submodules in Git repositories, webhooks, custom Rack apps, and more.

My scenario is a lot simpler. For some projects, we send out files to translation agencies. One translation agency requires the content to either be HTML or Microsoft Word, while another translation agency accepts Markdown, HTML, or Word. I'm not sure what the agency does with the files (I assume they convert them to another format to ingest them in their computer-assisted translation systems), but we get the files back in the same format that we sent.



Since my content is in kramdown Markdown, translating the Markdown source format would be ideal, but translating HTML isn't a deal-breaker either. However, here I should note that just saying Markdown is the source format hardly scratches the surface. If Markdown is your only source format (and you just have a collection of static files as your source), it would be very  difficult to handle translation. You need a more robust tool to handle dynamic content, which is where a static site generator like Jekyll becomes essential.

Notice I used the word "dynamic" in the last sentence. There's somewhat of a misnomer about static site generators. In your source content, you aren't working just with static content, because if you were, translation would be extremely difficult. In Discover Meteor, the authors explain that static is really more dynamic than we typically credit it as being. They note,

> A classic Ruby or PHP app can be said to be dynamic because it can react to various parameters on each request (for example, variables passed through the URL).
>
> True, static HTML files can’t do that. But your static site generator can still take into account parameters during the build process. In other words, static sites are only static after they have been generated. (See [Three More Ways To Make Your Static Sites Smarter](https://www.discovermeteor.com/blog/three-more-ways-to-make-your-static-sites-smarter/))

The ability to use variables and parameters in your source is essential when setting up translation to multiple languages. It's the ability to use these parameters, variables, and other dynamic techniques during the build process -- before the files become static -- that allow you to account for more sophisticated scenarios like translation even though you're using a static site generator.  

My overall strategy is to translate *the [dynamic] source* as much as possible, so that I can easily roll in future updates and then regenerate the site as needed. I don't want to just work with the static HTML output. If I have an update that adds a new link in the navigation, or if I add a new file and want to reference it on multiple pages, I want to be able to re-build my site with the latest updates.

To accomplish this, in my project I have multiple directories (for example, _pages_english, _pages_german, etc.) for the documentation pages -- one directory for each language. I also have separate configuration files for each language (for example, configenglish.yml, configgerman.yml, etc.). Each configuration file specifies which page directories should be included in the build.

When I build a Jekyll site, Jekyll processes the build based on information in the configuration file. By making changes to the configuration file (such as specifying the project language or directories to be included), I can control the output.

For my sidebar navigation, I want to generate the navigation from the same YAML file rather than splitting my navigation into multiple  files for each language, which I would then need to keep in sync. To accomplish this, in my sidebar data file, I have different instances of the title, but each entry uses the same URL and other properties. For example, a sidebar data entry might look like this:

```
    - title: Sample
      titleja: ガイドスタート
      titlede: Frschun Rontzahnfüllungen
      titlesp: Ejemplo
      url: /sample.html
      ref: sample
```

When Jekyll builds my site, there's logic in my sidebar scripts (enforced by the language specified in the configuration file) that check whether the navigation entry contains `title`, `titleja`, `titlede`, or `titlesp` and if so, the entry gets included in the navigation using the appropriate language title.

See what I mean by static site generators not really being static? Their output is static, but they can build in dynamic ways that leverage variables, parameters, and other programming logic.

Links on the site are relative, so I can just publish the built site into a sub-directory (such as /ja/) from the base url, and the links should all work. Making links relative is actually a huge advantage when it comes to configuring your static site generator output. I don't think you could easily push out translated sites with absolute links, since the links wouldn't point to the language subdirectories.

For images, instead of using standard Markdown image tags, I have an image template (an include) that automatically appends a suffix on the image file name (such as "-german" or "-spanish") based on the language specified in the configuration file. If a `lang` property is specified in my include template, then the template appends the language suffix onto the file name. If no `lang` property is specified, no suffix gets appended.

Further, if some screenshots aren't translated, I can use conditional logic like this to filter them out of the translated outputs:

```
{% raw %}{% if site.language == "english" %}
{% include image.html file="myimagefile.png" %}
{% endif %}{% endraw %}
```

I access values from my configuration file through the `site` namespace. So my configuration file just has a property that says this:

```
language: english
```

BTW, I realize that unless you're already familiar with Jekyll, you will probably just glaze over these technical details. I explain them here only to reinforce the fact that you need more than just static Markdown in your source to handle a translation project.

There are some strings that are re-used in notes (tips, cautions, warnings, etc.) and in the interface (a "Submit Feedback" button, for example). I store these strings in the configuration file and then reference them with tags such as {% raw %}{{site.note}}{% endraw %}. In the configuration file, that note might look like this:

```
alerts:
  note: Hinweis
  tip: Spitze
  warning: Warnung
  important: Wichtig
```

The note then uses a note include template (referenced just like the image template, except with `{% raw %}{% include note.html content="..."%}{% endraw %}`). The template for the include contains content that looks something like this:

```html
{% raw %}<div class="mynote">{{site.alerts.note}}: {{include.content}}</div>{% endraw %}
```

The `{% raw %}{{site.alerts.note}}{% endraw %}` references the value in the configuration file -- in this case, since the configuration file is for the German build, the value is `Hinweis`. If you had other strings that you wanted to isolate like this, you could separate them out into either your configuration file or into other data files (stored in your _data folder) and reference them as variables in your code.

(BTW, these sample translations are just filler text -- I haven't actually translated them yet.)

So far, so good. But now comes the tricky part. Let's say I have an include to re-use the same paragraph of content, and the translator accepts *only HTML*. My Markdown source for the re-used component looks like this:

```
{% raw %}{% include_relative myfile.md %} {% endraw %}
```

In the HTML output, the contents of myfile.md will automatically be included wherever I've included this note (which I wouldn't know until I searched for all instances of this tag in my content). Won't this result in the translator translating the same passage multiple times, which would increase the cost?

No, it shouldn't. The idea of translation memory (standard in most translation tools) is that the translator gets prompted when a previously translated segment appears again in the text. If the translator isn't using a computer-assisted translation tool (CAT) that provides translation memory, you probably shouldn't be using the translator. Without translation memory, though, this would be a problem.

So the HTML files go out to the translators, they plug them into their CAT tools, translate the files, and regenerate them back into HTML or Markdown and return them to me. Now I take the translated content and insert it into my source Markdown files (not my site output), using either Markdown or HTML (Markdown file formats can process either). I can now generate my site from the source into multiple formats.

*Theoretically* this should work, though I say theoretically because I haven't pushed my approach through the whole workflow yet.

Also, the scenario that I've outlined at a very high level here is just the best-case scenario. In real life, there are additional complications and quirks that I have to account for.

While static site generators are flexible and allow me to implement hacks to get around quirks or oddities in non-standard systems, at some point I have to take a stance against absolute flexibility and lay down some rules, such as not allowing authors to mix relative and absolute links in the sidebar navigation, or not allowing custom include templates that don't implement translation variables.

I spent the last few days working through my translation scenario, and I hope I've accounted for all the details, but I won't know for another few months until I've gone through this process multiple times. I'm taking Andrew's initial advice to triple my estimates.

I will readily admit that the more languages and formats you output to (for example, suppose I was outputting to 10 languages in both HTML and PDF), the scenario I've used here will get more cumbersome. At some point, it might make sense to plug into tools like Paligo that have been designed from the ground up to support robust translation workflows.

Then again, I'm betting that each system has a learning curve along with some strengths and weaknesses, and given the variety of scenarios and requirements, push button solutions might not be advantageous over more flexible and custom setups using processes like I described here.

If you've managed translation projects and want to share your insights, please do so in the comments below. One reason I write posts about topics or techniques that I'm still developing is to learn from others ahead of time and hopefully avoid mistakes that I might otherwise make without this input.

{{site.data.alerts.ad}}To create great content for your user manuals, you need good, efficient <a rel="nofollow" href="https://clickhelp.com/">online help tools</a>. ClickHelp is a modern help writing tool &mdash; hosted and browser-based, <a rel="nofollow" href="https://clickhelp.co/">ClickHelp</a> provides powerful single-sourcing features while remaining easy to use.{{site.data.alerts.end}}
