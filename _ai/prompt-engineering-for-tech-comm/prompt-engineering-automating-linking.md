---
title:  "Automating the linking of code elements in documentation"
permalink: ai/automating-linking.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-06-16
rebrandly: https://idbwrtng.com/automating-linking
---
{% comment %}
{% include coffeeshopbook.html %}
{% endcomment %}


The previous post's focus was on creating release notes. See [Using file diffs for better release notes in reference docs](/ai/prompt-engineering-release-notes-reference-docs.html). In this article, I'll explain how to use AI to link all the code elements, often referenced in release notes and other documentation, to their appropriate reference documentation.

## Why link code elements in release notes?

First, let's provide a few reasons why links to reference material are a good idea in both release notes and other content. Linking code elements achieves the following:

* **Provides a check against hallucination.** You can click each link to verify the information. You can toggle between preview/staging sites and production to see if the release notes are accurate.
* **Links prompt accuracy with code element names.** By going to the code, you can ensure that the link names in the release notes match up with the link names in the docs.
* **Provides more credibility to the information.** Release notes with links simply look more authoritative. It's like providing citations for the assertions in documentation.
* **Broken links can indicate change.** Broken links at a later date can give an indication that something has changed. Yes, broken links are annoying. But they're kind of a nice way of surfacing notifications that some undetected change may have occurred.
* **Links are helpful to users.** Reference information can be hard to navigate as you strive to find the right information. Users can easily click a link for more information, without having to navigate the reference.
* **Reduces the likelihood of information duplication.** By pointing users to the reference source, you can get comfortable with referring to field definitions in the reference instead of duplicating the same definitions on conceptual pages.

## Gathering up the HTML source

For AI to find the links, you need to gather up all the HTML references pages relevant for the AI to search through. Collecting this HTML can be tedious for reference documentation that has a lot of pages. If you have an RPC output, the reference is much more consolidated. But if it's a Javadoc, you might have 50-100 pages, which is impractical to collect manually.

You could write a script (using a language like Python) to gather up all pages within a directory and combine them into a single consolidated file, including the paths and names for each file as well as their URLs. However, scripts can also lead to over-collecting information, which can balloon the token count unnecessarily and potentially include a lot of noise for the AI to sift through.

However, you approach the collection of your reference content, you simply need to do it. Otherwise, the AI won't have a source for finding the links. (Just pointing AI to some web links for the information usually doesn't work.)

## Prompt

Here's a prompt you can use to automate markdown links in your content.

<div class="chat">
<div markdown="1">
You're a technical editor formatting release notes to be published on a website. Your task is to link all of the code elements to their correct link in the HTML reference.

All code elements appear within backticks or code tags. If an element name appears in backticks or code tags, convert it to a markdown link. Here's an example:

```
Before: `someElementName` 

After: [`someElementName`](/documentation/site/product/someElementName.html)
```

Use markdown link syntax and root relative paths, starting with `/documentation/site/product/`.

Some links might not have direct paths for links. For these types of links, there is likely an ID tag in the table row. Use that ID tag for the link. For example: 

```
<tr id="some.long.id.tag.for.this.element">
<td><code>acme_element</code></td>
<td>
    <p>string</p>
    <p>Description of the element</p>
</td>
</tr>
```

The link to `acme_element` would be as follows:

```
[`acme_element`](/path/to/page#some.long.id.tag.for.this.element)
```

If a code element has been deprecated, renamed, or removed from the API, there's no need to find a link to that now outdated element. For example, suppose the release note looks like this:

```
- The `tweedleDee` element has been renamed to the `tweedleDum` element.
- The `Chesire` element has been deprecated. Use the `Cat` element instead.
- The `Alice` element has been removed from the API.
```

In these cases, the output should look as follows:

```
- The `tweedleDee` element has been renamed to the [`tweedleDum`](/path/to/tweedleDum) element.
- The `Chesire` element has been deprecated. Use the [`Cat`](/path/to/Cat) element instead.
- The `Alice` element has been removed from the API.
```

Here's the content with the code elements I want you to link:

[PASTE IN THE CONTENT]

Now here's the HTML you'll need to find the corresponding links to the elements above:

[PASTE IN THE HTML]

</div>
</div>

As you can see with this prompt, I've provided examples clarifying the syntax requirements I want the AI to follow. This level of clear instruction followed by examples tends to work well with prompts. 
