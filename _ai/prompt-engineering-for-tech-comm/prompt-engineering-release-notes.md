---
title: "Using file diffs for better release notes in reference docs"
permalink: ai/prompt-engineering-release-notes-reference-docs.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2025-02-12
rebrandly: https://idbwrtng.com/prompt-engineering-release-notes
---

Like most technical writers, I regularly write release notes for the APIs I support&mdash;weekly and biweekly release notes throughout the year. I actually submitted more than 100 changelists that included release notes last year.

For most of my career, writing release notes has meant tracking down engineers to understand upcoming changes. It can be a hassle to ask engineers what's changed and then try to get more details about poorly explained, over-generalized responses. One day, I realized that I could skip much of that work and find most changes myself by analyzing file diffs with AI tools.

The file diffs from version control tools provide a reliable, precise information source about what’s changed in the release. I’ll share my method in a series of steps below. Overall, relying on file diffs for release notes information has also led to several conceptual insights, such as that engineers generally don’t tell tech writers about many of the changes they’re making. Also, as tech writers build release notes from file diffs, the value of our role increases in the release process.

The techniques I’ll share here have been among my most successful uses of AI in writing documentation.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}


## Step 1: Regenerate your reference content

The first step is to regenerate the API reference documentation. When you regenerate the API reference documentation (perhaps using [various scripts](/ai/prompt-engineering-doc-build-scripts.html), you take possession of this highly valuable file diff. (You could also track down the CL for the rebuilt documentation that someone else submitted.)

Even if you work with different types of APIs&mdash;cloud APIs, Java APIs, and gRPC APIs&mdash;it doesn’t matter. The reference documentation is generated as HTML (or Markdown) for each API. When you regenerate that reference documentation, you get access to file diffs of everything that has changed with the previous release.

Note that I’m specifically referring to the *documentation* changelist, not the source code CLs. For example, you don’t need to access changelists related to Java files or proto files. Reason being, all the changes to the source code almost always end up impacting the generated documentation. An engineer can rarely change some aspect of the source and not have that change ripple through to the reference documentation.

Analyzing source code changelists could also be valuable, but it might send you in too many directions that aren't relevant for externally facing developers.


## Step 2: Get file diffs for each file changed in the release

Now that you’ve regenerated the reference documentation and have the changelist (or pull request) for this, it’s time to get file diffs for all the changes. Run a file diff command that's some variation of `git show <commit hash> <filename>`.

I usually run the file diff commands on each file individually rather than on the changelist as a whole, since I’m trying to see the changes at a more granular level. If you have a lot of file changes, you’ll get better results going file by file. Skip files with marginal or trivial changes that you can easily interpret in your version control system's UI.


## Step 3: Get human readable summaries of the file diffs

Now that you’ve got many file diffs, let AI go to work. While manually interpreting the file diff can be confusing, even in a browser interface that visualizes the changes with colors, AI is great at making a human readable version of any file diff. It’s a syntax that AI seems to read natively and can easily translate what’s going on.

Copy the file diff and paste it into your favorite AI tool. Your prompt can be as basic as something like this:

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

One caveat here. As you generate the file diff, AI will only describe the changes, not the reason for the changes. For example, you might see that a method was deprecated, but you won’t see the *reason why* it was deprecated. You can supplement your release notes with this rationale, often gathered from engineers.

Also, remember that reference documentation is usually limited to brief definitions, often written by engineers. If you’re launching a new feature, you might need supporting conceptual documentation, code samples, and much more to accompany your release notes. The AI-generated information can be the starting point for your release notes, which you can fill in with more conceptual detail with other doc updates.


## Step 4: Consolidate, organize, and edit the file diff summaries

After you have many human-readable file diffs, move to the next step: Organize, consolidate, edit, and generally shape the information. You might find redundant explanations, descriptions that should be consolidated, content that needs to be deleted because it's not significant, and so on. You could paste all your summaries into AI as well and request help with this, but I prefer to maintain more control here and do this manually.

In general, do the following:


* Group related information together
* Remove content that doesn’t need to be noted in release notes
* Organize updates by API and by release (for example, Preview, Experiment, Release)
* Add an intro paragraph highlighting the main new feature of the release
* Move the most important features higher up in the release notes


## Step 5: Link all the code elements

To avoid hallucination scenarios, link all the code elements to their corresponding reference pages. In my workflow, I have another file that contains all the reference documentation consolidated in a single file, allowing me to use Ctrl+F and easily find the links. (Additionally, if the token limit allows it, more powerful AI models can do this in a more automated way. See [Automate links in your release notes using AI](/ai/automating-linking.html).)

Linking the code elements can be tedious, but it’s the setup for the next step, which will involve confirming the changes and avoiding hallucinations.


## Step 6: Check the changes by comparing preview and release states

Now, it's time for a QA step. So far, you’ve gathered a lot of release notes that make assertions about updates that have been made. You want to make sure the AI correctly interpreted all the changes from the file diffs. Don't simply trust it&mdash;in this step, you’ll verify/confirm those changes.

Stage the changes to your release notes and reference documentation in one window. In another window, open the current release. For every assertion made in the release notes, check it by comparing the preview against the current release.

For example, if your release notes say that a new method was added to a class, click that new method (it should be linked if you did the previous step) and verify that it exists in the preview. Then switch to the current release view and verify that the new method doesn’t exist. Now you’ve just confirmed that yes, a new method was in fact added to the release notes. Do this to verify each of the changes.

{% include ads.html %}

## Step 7: Gather up other information about the release and supplement/corroborate your existing release notes draft

Releases usually have other associated information, such as launch entries, engineering bugs, release team bugs, and more. You might have also written some docs requested by engineers in preparation for the release. Gather this information to corroborate and supplement the information you’ve generated from the file diffs.

For example, suppose the release has an associated launch entry page (required as part of the release process) for Feature X. Make sure you identified Feature X in your release notes. Most of the time, the feature should have been identified through the file diffs, but now you have a sense of the feature’s importance. If the feature was significant enough to require a launch entry page, perhaps the release notes should trumpet it more.

After gathering all the information about the release through bugs, launch entries, roadmaps, or other sources, update your release notes to consider all of these additional details. Typically this information will result in some head nodding as you confirm that yes, such and such feature does appear in the release. Or you might catch information that shouldn’t be in the release or which is missing from the release. You'll be surprised by how many discrepancies you might find.


## Step 8: Send the release notes to engineers to review

Finally, send the release notes to engineers and product managers to review. It helps if you can generate the draft early and give people about a week to review the changelist. The more time you give people and the more reviewers you can include, the more likely it is that more people will review the content. With more reviews, the accuracy and completeness of the release notes increase.

I have a calendar event for the days when I should write and share release notes (usually one day after the release is cut) and another for when the release notes should be published. I have four different calendars—one for each API. If I stick to this schedule, I end up sharing the release notes with ample days to spare, reducing stress all around.


## Realizations upon following this process

As I've prepared release notes using this file diff and AI method, I've realized a few things.


### Realization #1: Engineers don't always know what's being released

Surprisingly, engineers and product managers don’t often have a firm grasp of what’s in each release. I find myself trusting engineers less and relying more on the file diffs to confirm whether the features they say should be in the release are in the actual release. As I said, I frequently catch discrepancies.

For example, in the past few months I caught the following discrepancies:

* Methods that should have been deprecated aren’t deprecated in the release.
* Methods that are planned for the next release are partially available in the current release.
* The method names for the same actions are inconsistent from one class to another.
* Changes to element descriptions and behavior are being done but not noted.
* Other changes are taking place to less common elements, like constructor and builder methods.

Just because you find a launch entry page noting Features X is going out in the release, don’t assume the launch entry is accurate, especially if it contradicts the file diffs. Engineers know less about a release than you might think they do.


### Realization #2: Engineers generally aren’t telling tech writers about many of the changes they’re making

Tech writers have known this for years, of course, but it’s really true. All kinds of changes constantly slip by, and when engineers do take the time to let tech writers know about the updates, their descriptions lack the specific details that are needed. This leads to continual documentation drift.

Consider how this drift easily adds up if documentation drifts just 1% with each release. For a product released biweekly, the drift would be about 25% over a year. Ouch! Writing release notes based on file diffs puts a stop on that drift.

If you want to go the extra mile, with each round of release notes, add in the following check: How do the changes in the release impact the rest of the documentation? Are any code samples affected? Where else should documentation be updated as a result of these changes? For example, if a method was deprecated, search your entire documentation corpus for mentions of that method. If you tackle that task, the release notes can also be a starting point for digging into other parts of the documentation.


### Realization #3: Tech writers can play a high-value role in the release process

When you fully understand every change going out in a release, your importance in the release process increases. Teams need someone who scrutinizes the diff of everything that's changed in the latest release. When you itemize the changes in the release notes, in minute detail, partners and stakeholders sense an increased value in the release notes. And by extension, you take on more value as a technical writer. Program managers and other tech leads look to the release notes to evaluate whether to approve the release.

<hr/>

{% if site.format == "web" %}

## More resources

Here's a video of an earlier version of this content: 

## Video

<iframe width="560" height="315" src="https://www.youtube.com/embed/FO2GAzeV_lg" title="Using file diffs for better release notes in reference docs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
{% endif %}
