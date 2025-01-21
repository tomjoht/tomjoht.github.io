---
title: "Using file diffs for better release notes in reference docs"
permalink: ai/prompt-engineering-release-notes-reference-docs.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-07-28
rebrandly: https://idbwrtng.com/prompt-engineering-release-notes
---

As a technical writer supporting multiple APIs under active development, I'm regularly writing release notes &mdash; weekly and biweekly throughout the year. In fact, last year I submitted more than 100 changelists that included release notes.

For most of my career, writing release notes meant tracking down engineers to understand upcoming changes. One day I realized that I could skip much of that work and find most changes myself by **analyzing file diffs with AI tools**. 

The file diffs from version control tools provide a reliable, precise information source about what's changed in the release. I'll share my method in a series of steps below. Relying on file diffs for release notes information has led to several conceptual insights as well, which I will also explore in this article:

* **Engineers aren't telling technical writers half of the changes they're making.** This contributes to documentation drift and outdated content.
* **Analyzing file diffs expands my influence within the release process.** I now possess a broader view of the release than the product's technical leads, increasing my value in the release process.
* **AI tools are good at translating file diffs into clear information.** This makes file diffs a valuable resource, not just for release notes, but also for documenting any changes engineers make.

The techniques I'll share here are ones that has been one of my most successful uses of AI in writing documentation. 

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## My process for generating release notes using file diffs and AI

### Step 1: Regenerate your reference content

The first step is to regenerate the reference documentation for the API (or else to get your hands on the changelists that include the reference doc regeneration). When you regenerate the reference documentation for the APIs, you take possession of this highly valuable file diff.

Even if you work with different types of APIs &mdash; cloud APIs, Java APIs, and gRPC APIs &mdash; it doesn't matter. For each API, the reference documentation is generated as HTML (or Markdown). When you regenerate that reference documentation (perhaps using [various scripts](/ai/prompt-engineering-doc-build-scripts.html), as I explained in another topic), you get access to file diffs of everything that has changed with the previous release.

Note that I'm specifically referring to the *documentation* changelist, not the source code CLs. For example, you don't need to access changelists related to Java files or proto files. Reason being, all the changes to the source code almost always end up impacting the generated documentation. It's rare that an engineer can change some aspect of the source and not have that change ripple through to the reference documentation. 

Analyzing source code changelists could also be valuable, but it might send you in too many different directions unrelated to relevant changes for externally facing developers.

### Step 2: Get file diffs for each file changed in the release

Now that you've regenerated the reference documentation and have the changelist (or pull request) for this, it's time to get file diffs for all the changes. In this changelist, run file diff commands on each file to get a list of what's changed. 

The exact commands depend on the system you're using &mdash; for example, at my workplace, there's a Git-based version control system with various commands and parameters to see file diffs. Figure out what your syntax is &mdash; most likely it will be some variation of `git diff <CHANGELIST_NUMBER> <FILENAME>`.

I usually run the file diff commands on each file individually rather than on the changelist as a whole, since I'm trying to see the changes at a specific, granular level. If you have a lot of file changes, you'll get better results going file by file. However, this will inevitably be more tedious. 

Experiment with both approaches (all file diffs for the changelist as a whole versus file diffs for each file in the changelist). Your decision also depends on how powerful your AI is as well. If you have a million token content, you can throw a lot of information at the AI. But if you're more constrained by token inputs and outputs, consider chunking by file. Also, if you want to increase the AI's analytical precision, go file by file.

I like going file by file because it allows me to evaluate the changes in a slower, more analytical manner. I can look at the changes in each file and read through them, maybe looking at the file diff to evaluate the AI output. Most of my other AI techniques involve going section by section, so going file by file follows the same pattern.

### Step 3: Get human readable summaries of the file diffs

Now you've got a lot of file diffs. But reading the file diff can be confusing, even in a browser interface that visualizes the changes with colors. You have to carefully look at what's been removed versus what's been added, assessing whether the changes are significant. Did someone just update a comment or move something around, or did they literally add or remove something? It's not always easy to tell. Sorting through the plus (+) and minus (-) lines, the green (added) and red (removed) highlights, requires a lot of comparison and judgment.

Fortunately, this is where AI comes in! AI is great at making a human readable version of any file diff. It's a syntax that AI seems to read natively and can easily translate what's going on.

Simply copy the file diff and paste it into your favorite AI tool. Your prompt can be as easy as something like this:

<div class="chat">
<div markdown="1">
The following is a file diff from regenerated reference documentation for an API. Provide a human readable summary of the file diff, noting in granular detail everything that has changed.
</div>
</div>

You can also try to get more fancy and specific, with a more detailed prompt like this:

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

Honestly, the simple, minimalist prompt works pretty well. I just include the longer prompt in case you want to experiment with different approaches.

#### What the file diff doesn't reveal

As you generate the file diff, note that the AI will only list out the changes, not the significance of the changes. For example, you might see that a method was deprecated, but you won't see the *reason why* it was deprecated. Is it being replaced by something new? Are there bugs related to that method that are likewise fixed or affected? You need to supplement your release notes with this information, often gathered from engineers.

Also remember that reference documentation is limited to brief definitions, often written by engineers. If you're launching a new feature, you might need supporting conceptual documentation, code samples, and much more to go along with your release notes. But the readable file diffs will at least help you identify the changes. This can be the starting point for your release notes around which you can fill in more conceptual detail with other doc updates.

### Step 4: Consolidate, organize, edit, etc. the readable file diffs

Now that you have a lot of human readable file diffs, let's move to the next step: Organize, consolidate, edit, and generally shape the information. You might find redundant explanations, explanations that should be consolidated, content that needs to deleted due to various reasons, and so on. You could paste in all your summaries into AI as well and request this, but I prefer to maintain more control here and do this manually.

In general, do the following:

- Group related information together
- Remove content that doesn't need to be noted in release notes
- Organize updates by API and by release (Preview, Experiment, Release)
- Add an intro paragraph highlighting the main new feature of the release, and move that most important feature higher up in the release notes

### Step 5: Link all the code elements

To avoid hallucination scenarios, I like to link all the code elements mentioned. I have another file that contains all the reference documentation consolidated in a single file, allowing me to use Ctrl+F and easily find the links.

If supported by your AI tools, you could also pass in your release notes and a file containing all your documentation and simply ask AI to link the code elements. Whether you can do this or not depends on how many tokens your AI model supports on input, and other details. See [Using long-token contexts to quality check an entire API doc set](/ai/prompt-engineering-entire-doc-set-prompts.html). 

For prompt ideas related to linking, see [Automate links in your release notes using AI](/ai/automating-linking.html) for details here.

Linking the code elements can be tedious, but it's really the setup for the next step, which will involve confirming the changes and avoiding hallucination. 

### Step 6: Check the changes by comparing preview and release states

This is a QA step. So far you've gathered a lot of release notes that make assertions about updates that have been made. You want to make sure the AI correctly interpreted all the changes from the file diffs. Don't simply trust it &mdash; in this step, you'll verify/confirm those changes.

Usually most documentation systems have a preview mode where you stage changes. Stage the changes to your release notes and reference documentation in one window. In another window, open the current release. For every assertion made in the release notes, check it by comparing the preview against the current release. 

For example, if your release notes say that a new method was added to a class, click that new method (it should be linked if you did the previous step) and verify that it exists in the preview. Then switch to the current release view and verify that the new method doesn't exist. Now you've just confirmed that yes, a new method was in fact added to the release notes. Do this to verify each of the changes.

### Step 7: Gather up other information about the release and supplement/corroborate your existing release notes draft

Releases usually have other information associated with them, such as launch entries, engineering bugs (hopefully tagged with the release), release team bugs, and more. You might have also written some docs requested by engineers in preparation for the release. Gather up this information and use it to corroborate and supplement the information you've generated from the file diff.

For example, suppose that the release has an associated launch entry page (required as part of the release process) for Feature X. Make sure that you identified Feature X in your release notes. Most of the time, the feature should have been identified through the file diffs, but now you have a sense of the feature's importance. If the feature was significant enough to require a launch entry page, perhaps the release notes should trumpet the feature a bit more.

After gathering all the information about the release through bugs, launch entries, roadmaps, or other sources, update your release notes to take all of this into account. Hopefully this information will mostly result in some head nodding as you confirm that yes, such and such feature does appear in the release. Or you might catch information that shouldn't be in the release, or that might be missing from the release.

By the way, this step will lead toward an idea I alluded to earlier: engineers and product managers don't often have a firm grasp of what's in each release. I find myself trusting engineers less and relying more on the file diffs to confirm whether the features they say should be in the release are in the actual release. I've found that I frequently catch discprepancies. 

For example, in the past few months I caught the following discrepancies:

* Methods that should have been deprecated aren't deprecated in the release
* Methods that are planned for the next release are partially available in the current release
* The method names are inconsistent from one class to another
* Changes to element descriptions and behavior are commonly done but not reported
* Other changes are taking place to less common elements, like constructor and builder methods

At any rate, just because you find a launch entry page noting Features X, Y, and Z in a release, don't assume that the launch entry is accurate, especially if it contradicts the file diffs.

### Step 8: Send the release notes to engineers to review

Finally, send the release notes to engineers and PMs to review. It helps if you can generate the release notes draft early and give people about a week to review the changelist. If you're instead pinging people at the last minute, they resent the need to reprioritize their tasks for a rushed review. The more time you give people, and the more reviewers you can include, the more likely it is that more people will review the content. With more reviews, the accuracy and completeness of the release notes increases.

I actually have a calendar event for the days when I should write and share release notes (usually one day after the release is cut)&mdash;recurs biweekly for the biweekly released APIs. I have another event for when the release notes should be published. I have four different calendars, actually, one for each API. If I stick to this schedule, I end up sharing the release notes with ample days to spare. This reduces the stress all around. Trust me, with multiple APIs releases each month, I can't afford to be in stress mode all the time&mdash;I'd burn out.

{% include ads.html %}

## The larger story: engineers aren't telling tech writers half of the changes they're making

After following this practice for six months or more, I've come to the conclusion that engineers generally aren't telling tech writers half of the changes they're making. Tech writers have known this for years, of course, but really, it's true. There are all kinds of changes constantly slipping by, and when engineers do take the time to let tech writers know about the updates, their descriptions lack the specific details that are needed. This leads to continual documentation drift.

If documentation drifts just 1% with each release, consider how this drift easily adds up over time, such that for a product released biweekly, the drift would be about 25% over the course of a year. Ouch! Writing release notes based on file diffs puts a stop on that drift. 

If you want to go the extra mile, with each round of release notes, add in the following check: how do the changes in the release impact the existing documentation? Are any code samples affected? Where else should documentation be updated as a result of these changes? If you tackle that task, the release notes can be a starting point for digging into other parts of the documentation as well. 


{% if site.format == "web" %}

Here's a video version of this content: 

## Video

<iframe width="560" height="315" src="https://www.youtube.com/embed/FO2GAzeV_lg" title="Using file diffs for better release notes in reference docs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
{% endif %}