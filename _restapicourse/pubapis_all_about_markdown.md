---
title: "More about Markdown"
permalink: /pubapis_markdown/
course: "Documenting REST APIs"
type: notes_docapis
weight: 5.0
---

{% include notes.html %}

## Markdown overview

Markdown is a shorthand syntax for HTML. Instead of using `ul` and `li` tags, for example, you just use asterisks (`*`). Instead of using `h2` tags, you use hashes (`##`). There's a Markdown tag for most of the common HTML elements.

However, Markdown is meant to be kept simple, so there isn't a comprehensive Markdown tag for each HTML tag. For example, if you need `figure` elements and `figcaption` elements, you'll need to use HTML. What's nice about Markdown is that if the Markdown syntax doesn't provide the tag you need, you can just use HTML.

If a system accepts Markdown, it converts the Markdown into HTML so the browser can read it.

## Development by popular demand versus by committee
John Grubber, a blogger, first created Markdown (see his [Markdown documentation here](http://daringfireball.net/projects/markdown/)). Others adopted it, and many made modifications to include the syntax they needed. As a result, there are various "flavors" of Markdown, such as [Github-flavored Markdown](https://help.github.com/articles/github-flavored-markdown/), [Multimarkdown](http://fletcherpenney.net/multimarkdown/), and more.

In contrast, DITA is a committee-based XML architecture derived from a committee. There aren't lots of different flavors and spinoffs of DITA based on how people's customizations. There's an official DITA spec that is agreed-upon by the DITA OASIS committee. Markdown doesn't have that kind of committee, so it evolves on its own as people choose to implement it.

## Why developers love Markdown

In many development tools you use for publishing documentation, many of them will use Markdown. For example, Github uses Markdown. If you upload files containing Markdown and use an md file extension, Github will render the Markdown into HTML. 

Markdown has appeal especially by developers for a number of reasons:

* You can work in text-file format using your favorite code editor. 
* You can treat the Markdown files with the same workflow and routing as code.
* Markdown is easy to learn.

### You can work in text-file format using your favorite code editor. 

Although you can also work with DITA in a text editor, it's a lot harder to read the code with all the XML tag syntax. For example, look at the tags required by DITA for a simple instruction about printing a page:

{% highlight xml %}<task id="task_mhs_zjk_pp">
    <title>Printing a page</title>
    <taskbody>
<steps>
        <stepsection>To print a page:</stepsection>
    <step>
        <cmd>Go to <menucascade>
            <uicontrol>File</uicontrol><uicontrol>Print</uicontrol>
        </menucascade></cmd>
    </step>
    <step>
        <cmd>Click the <uicontrol>Print</uicontrol> button.</cmd>
    </step>
</steps>
    </taskbody>
</task>
{% endhighlight %}

Now compare the same syntax with Markdown: 

{% highlight bash %}
## Print a page
1. Go to **File > Print**.
2. Click the **Print** button.
{% endhighlight %}

Although you can read the XML and get used to it, most people who write in XML use specialized XML editors (like OxygenXML) that make the raw text more readable. Or simply by working in XML all day, you get used to working with all the tags. 

But if you send a developer an XML file, they probably won't be familiar with all the tags, nor the nesting schema of the tags. For whatever reason, developers tend to be allergic to XML.

In contrast, Markdown allows you to easily read it and work with it in a text editor. 

{{tip}}Most text editors (for example, Sublime Text or Webstorm or Atom) have Markdown plugins/extensions that will create syntax highlighting based on Markdown tags.{{end}}

### You can treat the Markdown files with the same workflow and routing as code.

Another great thing about Markdown is that you can package up the Markdown files and run them through the same workflow as code. You can run diffs to see what changed, you can insert comments, and exert the same control as you do with regular code files. Working with Markdown files comes naturally to developers.

### Markdown is easy to learn.

Finally, developers usually don't want to expend energy learning an XML documentation format. Most developers don't want to spend a lot of time in documentation, so when they do review content, the simpler the format, the better. Markdown allows developers to quickly format content in HTML without investing hardly any time in learning a tool or XML schema or other formatting.

## Drawbacks of Markdown

Markdown has a few drawbacks:

* **Limited to HTML tags**: You're pretty much limited to HTML tags. XML advocates like to emhasize how XML offers semantic tagging (and avoids the div soup that HTML can become). However, by and large HTML5 offers many semantic tags, and even for those times in which there aren't any unique HTML elements, all XML structures that transform into HTML become bound by the limits of HTML anyway.

* **Non-standard**: Because Markdown is non-standard, it can be a bit of guessing game as to what is supported by the Markdown processor you may be using. By and large, the Github flavor of Markdown is the most commonly used, as it allows you to add syntax classes to code samples and use tables.

* **White space sensitivity**: Markdown is white space sensitive, which can be frustrating at times. If you have spaces where there shouldn't be, it can cause formatting issues. For example, if you don't indent blank spaces in a list, it will restart the list. As a result, with Markdown formatting, it's easy to make errors. Documents still render as valid even if the Markdown conversion to HTML is problematic. It can be difficult to catch all the errors.

## Using Markdown

Whatever system you adopt, if it uses Markdown, make sure you understand what type of Markdown it supports. There are two components to Markdown. First is the processor that converts the Markdown into HTML. Some processors include Red Carpet, [Kramdown](http://kramdown.gettalong.org/), Pandoc, Discount, and more. 

Beyond the processor, you need to know which type of Markdown the processor supports. Some examples include basic Markdown, Github-flavored Markdown, Multimarkdown, and others.

## Markdown and complexity

If you need more complexity than Markdown offers, a lot of tools will leverage other templating languages, such as [Liquid](https://docs.shopify.com/themes/liquid-documentation/basics) or [Coffeescript](http://coffeescript.org/). Many times these other processing languages will fill in the gaps for Markdown and provide you with the ability to create includes, conditional attributes, conditional text, and more.