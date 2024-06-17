---
title: "Using file diffs for better release notes in reference docs"
permalink: ai/prompt-engineering-release-notes-reference-docs.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-05-25
rebrandly: https://idbwrtng.com/prompt-engineering-release-notes
---

You can use AI prompts when creating biweekly release notes for APIs by leveraging file diffs from regenerated reference documentation. The file diffs from version control tools provide a reliable, precise information source about what's changed in the release.

* TOC
{:toc}

## The usefulness of file diffs with reference docs 

One of the most common tasks I do as a technical writer working with API documentation is to prepare biweekly release notes for several APIs. For these frequently releasing APIs, I sometimes create a Google Doc and ask teams to list details for the release notes. However, I also regenerate the reference documentation for the APIs, which leads to a diff that is highly valuable in determining what's changed.

These are different types of APIs I work with &mdash; cloud APIs, Java APIs, and gRPC APIs. It doesn't really matter what type of API it is because for each API, I rebuild the reference documentation (using [various scripts](/ai/prompt-engineering-doc-build-scripts.html), as I explained in another topic). When I rebuild the reference, I stage the content and see the file diff of everything that has changed with the previous release. This is one of the advantages of a docs-as-code environment &mdash; you can see detailed file diffs for each change. (I'm more and more convinced that file diffs are one of the main advantages of docs-as-code systems.)

I look at this file diff and compare it with the release notes listed by product teams. Only about a quarter of the time do the manually gathered release notes from teams match what I'm seeing in the file diff. For example, in a recent release, I noticed that several methods had been deprecated, but they weren't explicitly called out in the Google Doc. Someone had filed a bug about deprecating a few methods a few weeks ago but didn't indicate when it would go live. Another team just indicated that "various classes" were being deprecated. The file diff for the regenerated reference, however, provided more explicit truth about the changes.

However, while the file diff is helpful, if the API has a lot of changes, reading the file diff can be confusing. You have to carefully look at what's been removed versus what's been added, assessing whether the changes are significant. Did someone just update a comment, or did they literally add or remove something? The file diffs are also hard to read. You can't just glance at them and see immediately what's changed. Sorting through the + and - lines and green and red colors requires a lot of comparison and judgment.

By the way, I absolutely love being pulled into the reference material, which is what happens when you start comparing diffs. I find that even among techie tech writers, only a fraction of writers actually get their hands dirty with reference material. Understanding where to make changes in the source to influence the reference output involves a bit of know-how &mdash; even as simple as knowing which directories to search and how to search them. Each time I get this diff, it provides a window of opportunity to dig into the reference source.

I treat the reference as a source of truth for almost everything in the user guide material. If a method, parameter, or field is mentioned in the user guide material, I often link to it as a way of ensuring that it actually exists. A broken link can indicate a change to the code. A close relationship with reference material can be your best friend in tech comm scenarios. Without the reference, you're at the mercy of an engineer's word for information.

{% include ads.html %}

## Prompting scenario

Let's come back to the biweekly release notes scenario. Different build systems will vary here, even among the different languages I mentioned, but most systems have a way of tagging a release build. This might be a snapshot of the code at a certain point in time. When you build the reference from this snapshot, the regenerated documentation provides a diff of what's changed between the current snapshot and the previous one. Even if you don't know what code changes have taken place in the release, it doesn't matter. When you generate the reference docs, the changes present themselves in the diff because changes in the reference doc reflect changes in the code.

With the regenerated documentation, I stage my changes to see the file diff. At this point, I use a command (specific to my company's tools) to get a file diff printed out in my terminal about what's changed in the staged files. If you're using Git, you would use some version of `git diff`, passing in the commit ID and files as desired.

As I already mentioned, the file diff printout in the terminal is hard to parse at a glance. It's too much work to sort through the changes line by line to identify significant ones. Here's where AI comes into play. Rather than try to parse the file diff, you can just have AI do it, providing a readable version that you can copy and paste into release notes if relevant.

## The prompt

Here's the prompt. I've customized it a bit, but you can tweak this to suit your own scenario.

<div class="chat">
<div markdown="1">

You are a technical writer creating release notes for an API.

**TARGET AUDIENCE:**

The audience for the release notes consists of experienced developers who integrate the API into their applications. They rely on detailed documentation, advance notice of upcoming features, and clear information about potential breaking changes. 

**SOURCE CONTENT IS A FILE DIFF:**

You'll be provided with the diff output of all changed files in the release. The diff describes the changes in the reference documentation, which directly reflects how the code has changed. Your task is to analyze the diff and clearly describe the changes. I'll pull from your descriptions to populate the release notes.

**IGNORE GRAMMAR/STYLE CHANGES**

The diff is comprehensive and includes many grammar and style changes to existing definitions. Ignore these, as they're minor cosmetic updates for readability that don't need to be included in the release notes.

**INTERPRETING THE DIFF SYNTAX:**

The diff output uses the following syntax to indicate changes:

* **`+` :** This symbol indicates a line that was **added** in the new version.
* **`-` :** This symbol indicates a line that was **removed** in the new version.
* **`@@ ... @@` :** These lines show the **line numbers** where changes occur in each file. 
    * The first line number refers to the **original file** (before changes).
    * The second line number refers to the **new file** (after changes).
* **`<del>`:** This tag is used to indicate **deprecated** code. It is often used around method or class names in the documentation.

**Example:**

```diff
--- a/file.java
+++ b/file.java
@@ -1,5 +1,6 @@
 
 public class MyClass {
-  private int value = 10;
+  private int value = 20;  // This line was changed
+  public void newValue() { ... } 
 }
```

**Explanation:**

* The line `private int value = 10;` was **removed**. 
* The line `private int value = 20;` was **added** (and is also marked with a comment).
* A new method `public void newValue() { ... }` was **added**. 

**Note:**

* You should **focus on changes that affect functionality or integrations**. Ignore internal implementation details, minor comment updates, or stylistic changes.
* Pay close attention to the `<del>` tag to identify deprecated elements.

**YOUR TASK:**

Analyze the diff and describe the changes that have been made using plain, readable language. Your analysis will mostly be matter of fact, describing the changes. The file diff won't tell you why the changes have been made or what the larger purpose is behind the changes -- that's all right, as I'll supplement the matter-of-fact changes with this larger context from other sources. Your task is mainly to describe the differences in the file diff. Especially not the following:

* **New features:** Describe any added classes, methods, or capabilities. Extrapolate the descriptions and purposes for the elements from the code.
* **Deprecations:** Identify any deprecated classes, methods, or fields.
* **Other changes:** Report significant changes that could affect functionality or integrations. Ignore internal implementation details, minor comment updates, or stylistic changes that don't affect functionality.

**STYLE RULES:**

* Use sentence-case capitalization for headings and descriptions. In other words, only capitalize the first word in headings and subheadings.
* Avoid adjectives. Be plain and clear. This is technical documentation, not marketing material. 
* Be precise with field and class names, using correct capitalization and the full name (for example, `DataProcessor.Builder`, `calculateValue()`).
* Keep the language concise and technical, targeting experienced developers.

**MARKDOWN SYNTAX:**

* Provide the output in markdown formatting.
* For the title, use the header `# Release`.
* Use markdown headers (`##`, `###`, `####`) to structure the subheadings.
* Surround classes, methods, and fields in backticks.
* Speak in second-person voice ("you") directly to developers.

**EXAMPLE RELEASE NOTE SNIPPETS:**

**New feature:**

```markdown
### Improved data processing speed

The `processData()` method now includes a `report_fields` parameter, which lets you specify a report for the list of data you want to process.
```

**Deprecation:**

```markdown
### Data processing deprecations

**`DataProcessor.Builder` class:**

  * **`setOldAlgorithm()`**: This method, used to configure the old processing algorithm, has been deprecated. Use the `setNewAlgorithm()` method instead. The old algorithm will be removed in a future release. 
```

**Removal:**

```markdown
### Report processing deprecations

**`ReportProcessor.Builder` class:**

  * **`setOldReport()`**: This deprecated method, used to configure the old processing algorithm, has been removed from the API. Use the `setNewReport()` method instead.
```

**Documentation update:**

```markdown

### Documentation updates

* The documentation for the `DataProcessor` class has been updated to include a new section on performance optimization. 
```

You can note any other significant changes too.

Here's the diff output for changes in this release:

**[PASTE FILE DIFF command for each file]**

</div>
</div>

## All files at once or file-by-file?

Do you paste in a large diff of all the file changes at once, or do you go file by file? In the command line tools used to get file diffs, you usually can choose both options. If you have a lot of file changes, you'll get better results going file by file. However, this will inevitably be more tedious. Experiment with both approaches. Your decision also depends on how powerful your AI is as well. If you have a million token content, you can throw a lot of information at the AI. But if you're more constrained by token inputs and outputs, consider chunking by file. If you want to increase the AI's analytical precision, go file by file.

I like going file by file because it allows me to evaluate the changes in a slower, more analytical manner. I can look at the changes in each file and read through them, maybe looking at the file diff to evaluate the AI output. Most of my other AI techniques involve going section by section, so going file by file follows the same pattern.

## What the file diff doesn't reveal

As you generate the file diff, note that the AI will only list out the changes, not the significance of the changes. For example, you might see that a method was deprecated, but *why* was it deprecated? Is it being replaced by something new? When? Are there bugs related to that method that are likewise fixed or affected? You need to supplement your release notes with this information.

Also remember that reference documentation is limited to brief definitions, often written by engineers. If you're launching a new feature, you might need supporting conceptual documentation, code samples, and much more. But the release-notes-diff prompt I shared above will at least help you identify the changes and provide a readable form of a file diff. This can be the starting point for your release notes around which you can fill in more conceptual detail.

