---
title: "Using long-token contexts to quality check an entire API doc set"
permalink: ai/prompt-engineering-entire-doc-set-prompts.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-07-28
rebrandly: https://idbwrtng.com/prompt-engineering-entire-doc-set-prompts
---

{% comment %}
{% include coffeeshopbook.html %}
{% endcomment %}

One of the advantages of recent Gen AI updates is the massive token input context. When you can pass in an entire set of documentation as an input, you have a much stronger possibility for powerful prompts. In this tutorial, I share some quality-control prompts you can use that deal with entire doc sets as inputs, as well as explain some of the challenges in passing in an entire doc set.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

{% if site.format == "web" %}

Here's a video version of this content: 

# Video

<iframe width="560" height="315" src="https://www.youtube.com/embed/VYwFYkxobDs" title="Use long-token contexts to perform quality checks for your entire API documentation" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
{% endif %}

## Reference material is the source of truth

First, let me explain a bit of the strategy. For the best outcomes with AI tools, you need a source of truth. The reference docs can serve as a key source of truth in your prompts, providing a list of classes, methods, etc., against which the AI output can be verified. User guide content and drift out of date, but freshly generated reference documentation should be accurate to the code base, for the most part. This is why it's vital that you generate the reference material: it gives you a source of truth.

From this reference documentation, you can do all sorts of things, such as identify outdated content in the user guide, see what's new between outputs, get links in your release notes, ask AI to fact check your user guide content, and more. For strategies on generating your reference docs, see [Creating scripts to automate doc build processes](/ai/prompt-engineering-doc-build-scripts.html).

## Get all your reference docs in a single file

You could manually gather all your reference content by copying and pasting from each file, but that will likely get tedious quickly. For efficiency, develop a script that will get the content from all your reference docs into a single file in a few clicks. 

For example, let's say you're working with an API that has 100 reference pages. Develop a script that will go through those 100 files, get the content, and put that content into a single output file. You can then pass this output file into your AI tool (assuming it supports long token context for input) and use it as a source of truth for your prompts.

The script you use to gather and consolidate this prompt will vary based on the doc system, capabilities available, environment, folder structure, and more. Rather than share a specific script to gather all reference content, here's a prompt that will likely lead you to developing a script.

<div class="chat">
<div markdown="1">
You're designing a shell script for a text file processing system. Your script needs to combine multiple text files from a source directory into a single, large output file. To handle potentially very large files, the script should have the ability to split files into smaller chunks during processing and then merge those chunks into the final output.

Here's the basic structure and comments for the script. Develop this pseudocode into a real script.

```bash
#!/bin/bash

# 1. COLLECT AND ORGANIZE FILES:
#   - Find all files within the specified input directory.
#   - Order the files alphabetically to ensure consistent output.
all_doc_files=[CODE HERE]

# 2. PREPARE TEMPORARY WORKSPACE:
#   - Create a temporary directory to hold the file chunks.
#   - This directory should be created within the standard system temporary location.
#   - Verify that the directory was created successfully.  If not, exit with an error message.
tempory_workspace=$(mktemp -d [CODE HERE])

# Error Handling: Check if the temporary directory creation was successful.
if [[ ! -d "$tempory_workspace" ]]; then
  echo "ERROR: Unable to create the necessary temporary directory.." >&2
  exit 1
fi

# 3. DIVIDE FILES INTO CHUNKS:
#   - For each file found in the input directory:
#     - Extract the filename without any path information.
#     - Use the 'split' command to divide the file into chunks of 100,000 lines each.
#     - Ensure each chunk file has a unique name incorporating the original filename and a numeric suffix.
#     - Store all chunks within the temporary workspace.
for current_file in $all_doc_files; do
  filename_only=$(basename "$current_file")  
  [CODE HERE] 
done

# 4. COMBINE CHUNKS INTO FINAL OUTPUT:
#   - Combine all the file chunks from the temporary workspace into a single output file.
#   - Specify the output file path and name.
#   - Suppress any errors that might occur during the merging process. 
cat [CODE HERE > output path / file name] 2> /dev/null

# 5. CLEAN UP:
#   - Delete the temporary workspace directory and all its contents.
#   - Suppress any errors during the cleanup process. 
rm -rf "$tempory_workspace" 2> /dev/null

echo "File processing complete! Please allow a few moments for the final output to be available." 
```
</div>
</div>

Test your script against your documentation to make sure it's working. If shell scripting isn't available to you, try Python. If your content is in a database, you'll need to use a database language of some kind. Again, I kept this part generic because there are many different documentation systems and languages.

## Variables in your script for other docs

I recommend creating a common base script that can work with various doc sets, with just a few tweaks of some variables. For example, the same core script should be able to consolidate docs for product A, product B, product C, etc, in separate files, just by changing some variables on the input. This way if you tweak your core logic, you have only a single script to update. 

For example, suppose you've already developed your core script to get and consolidate file content. Now create a list of different shell scripts to fire off different parameters for different docs. If there are three inputs after the script, you can run your script like this:

File name: `productAdocs.sh`

```bash
#!/bin/bash
source_dir="path/to/your/doc/sourceA"
output_dir="path/to/your/doc/outputA"
output_file="outputfilenameA.html"

bash path/to/your/common/script.sh "$source_dir" "$output_dir" "$output_file"
```

Then another shell script, for example, `productBdocs.sh`, could look as follows:

File name: `productBdocs.sh`

```bash
#!/bin/bash
source_dir="path/to/your/doc/sourceB"
output_dir="path/to/your/doc/outputB"
output_file="outputfilenameB.html"

bash path/to/your/common/script.sh "$source_dir" "$output_dir" "$output_file"
```

Now if you want to enhance your script, you won't have half a dozen copies to update.

One last detail. Give permissions to execute the shell scripts with `chmod`:

* `chmod +x path/to/your/common/script.sh`
* `chmod +x /path/to/productBdocs.sh`

## Running into word limits

Currently, Gemini has the longest context input, allowing 1 million tokens, which works out to about 700,000 words. If your docs are longer than this, you might exceed the token input. 

Even with a million tokens of input, you will find that a sizable API, along with all the HTML tags, consumes a lot of those tokens, if not all. If you're working with a large API, you might need to break up your output into smaller chunks.

I thought that for sure, a million tokens would be enough for any API I'm working with. I'm not working with *War and Peace* amounts of content in each API. Yet surprisingly, I find that those tokens get maxed out pretty easily.

## Supplementing the output with a high-level map

Despite the ease of developing a script that gets all your reference material in a few clicks, consider whether AI be able to make sense of the material. Imagine if you gathered up a list of alphabetized pages and passed it to a human to read from start to finish. Chances are, it would be a real challenge for the person to make sense of this content. Just as humans interpret content and surroundings best by starting with a macro view before consuming micro details, AI tools might work the same way.

I say *might* because I'm not entirely sure. In my experience passing in entire reference documentation like this, sometimes the AI seems to process and understand it well, and other times not. It might help to provide a high-level map to the AI input. 

Earlier in this series I explained how to [create tree diagrams from API reference](/ai/prompt-engineering-task-decomposition.html). You could pass this tree diagram in as well the reference, or you could simply use the "tree" command in your Linux terminal to get a high-level diagram of your content. Or perhaps you could use your table of contents as a way to provide a map. I'm not sure it matters, but a more high-level map for the consolidated reference content could be helpful to assist the AI in understanding your reference content.

## Quality control prompts

Now that you have an entire reference doc set in one file, you can paste it into an AI tool with long context. Keep in mind a few notes when pasting in long context: 

* Queries against a million tokens take longer to process. 
* With so many tokens, there's a lot more room for noise and extraneous information that the AI has to sort through.
* Queries against this large token input cost more. 

Consider that each query in your session will have to look through all tokens you pass on the input with each query &mdash; it's not just a one-time paste of a million tokens, but each question you ask the AI chat in the session will look through the previous input (the million tokens) to formulate the answer. 

Additionally, if you pass in 700,000 tokens of noise and only 10,000 relevant tokens, the AI tool might not find the relevant content as easily, or all the noise might distort the processing and output. Having all your reference docs at your fingertips in one click can seem like it would be an incredible convenience, but the due diligence effort to manually curate the input often forces you to be more selective and precise about the content. So there are tradeoffs. 

Nonetheless, it's so convenient to have all your reference docs in one file, I still recommend this approach. Some of the prompts most suitable could be looking at the content as a whole, especially quality-control prompts.

Let's look at a few scenarios.

{: .note}
Many of the following prompts are AI-assisted and experimental. I'm still exploring and tweaking these approaches, so let me know if you have feedback on them.
Structure these quality controls at release points

Here are 10 quality controls you can implement at each release. 

Also, some content, like older release notes that have a lot of deprecated or changed element names, appear as false positives in the results much more frequently. It's harder to evaluate and deal with long lists of discrepancies across many different files rather than one file at a time. You might have much better results going file by file, focusing on the files that matter to you. However, it could also make sense to group files into sections or groups. I'm still experimenting.

### 1. Check for inconsistencies between the user guide and reference

A brief note: I'm still exploring whether it's better to examine one user guide topic at a time or  the whole user guide (that is, all non-reference topics) in a single prompt. I find that for some products, if I pass in both the entire user guide and the entire reference content, I exhaust my word limit. If you plan to pass in your entire user guide, you'll likely need to develop a script similar to the one described earlier but which only gets user guide content, excluding your reference.

<div class="chat">
<div markdown="1">
You're a documentation specialist tasked with ensuring consistency between user guides and technical reference materials. 

**Task:** Analyze the provided user guide content and identify any discrepancies with the reference material, which serves as the single source of truth. 

**Focus on the following:**

* **Missing elements:** Flag any classes, methods, functions, or parameters mentioned in the user guide that are absent from the reference material.
* **Naming inconsistencies:** Identify any mismatches in casing or spelling for classes, methods, functions, or parameters between the user guide and reference material. 
* **Data type mismatches:** Highlight instances where the user guide specifies a different data type (e.g., string, integer, boolean) for a parameter compared to the reference material.
* **Conflicting instructions:**  Point out any steps, processes, or workflows described in the user guide that contradict the information provided in the reference material.

**Output:** 

Provide a detailed report of inconsistencies, indicating what the discrepancy is, where it appears in the user guide, and other relevant details. When noting issues, indicate the file names where you find the issues.

**Reference material:** 

Here's the reference material:

[Paste reference material here]

**User guide content:**

Here's the user guide content: 

[Paste user guide content here] 

---

That's all the content. Now make the analysis: What content in the user guide doesn't match the reference?
</div>
</div>

### 2. Check the user guide for broken links

<div class="chat">
<div markdown="1">
You're a documentation specialist tasked with verifying the accuracy of internal links within a user guide. Your primary goal is to ensure that all links referencing specific API elements point to the correct locations within the technical reference material.

**Task:** 

Analyze the user guide content and identify any broken or incorrect links that point to API elements within the reference material.

**Focus on the following:**

* **Link accuracy:** Verify that each link in the user guide pointing to an API element (class, method, enum, parameter, etc.) directs users to the exact location of that element within the reference material.
* **Missing targets:**  Identify links in the user guide that reference API elements not found within the reference material. 
* **ID tag validation:**  Note that links using ID tags to reference elements within tables are acceptable. 

**Output:**

Provide a detailed report of any broken or incorrect links. Indicate the user guide link text, the corrected reference link, or other details about the discrepancies. When noting issues, indicate the file names where you find the issues.

**Reference material:** 

Here's the reference material:

[Paste reference material here]

**User guide content:**

Here's the user guide content: 

[Paste user guide content here] 

That's all the content. Now check the user guide to identify any issues with links to the reference.
</div>
</div>

### 3. Check the reference material for broken formatting

This is a prompt you can use to look for broken formatting in your reference material. Getting the right markdown or html formatting in reference content can be somewhat challenging depending on the language and platform you're using. Checking each individual page can be tedious. Here's a prompt to examine your entire content in one go:

<div class="chat">
<div markdown="1">
You're a documentation specialist with expertise in Markdown and HTML formatting, tasked with identifying and reporting any formatting errors within a provided document. 

**Task:**

Thoroughly examine the provided content for any instances of broken or inconsistent Markdown or HTML formatting. 

**Focus on the following:**

**HTML:**

* **Missing closing tags:** Identify any HTML tags that are missing their corresponding closing tags (e.g., `<p>` without `</p>`, `<a>` without `</a>`).
* **Unclosed elements:**  Flag self-closing HTML tags that are not properly closed (e.g., `<br>` should be `<br />` or `<br/>`, `<img>` should have a closing `/` ).
* **Mismatched tags:** Report any instances where opening and closing HTML tags do not match (e.g., `<div>` closed with `</span>`). 
* **Attribute errors:** Check for incorrect or missing attribute values within HTML tags (e.g., missing quotes around `href` values in links). 
* **List formatting:** Ensure that HTML lists (`<ul>`, `<ol>`, `<li>`) have correct opening and closing tags, and that list items are properly nested. 
* **Markdown inside HTML**. Make sure that Markdown tags don't appear. The content should all be generated HTML, so if you see Markdown tags, such as backticks or square brackets (part of the link syntax) or asterisks instead of bullets, this Markdown formatting is broken and needs to be fixed.

**Output:**

Provide a detailed report of all formatting errors, indicating the error, where the problematic text is, and your suggested fix. When noting issues, indicate the file names where you find the issues.

**Reference material:** 

Here's the reference material:

[Paste reference material here]
</div>
</div>

### 4. Check the user guide to see if there are outdated code samples that don't align with the reference content

<div class="chat">
<div markdown="1">
You're a documentation specialist with expertise in code and API documentation, responsible for ensuring the accuracy and consistency of code samples within a user guide, using the technical reference material as the definitive source of truth.

**Task:**

Analyze the code samples in the user guide and identify any discrepancies or potential inaccuracies compared to the information and specifications outlined in the reference material. 

**Focus on the following:**

* **Element presence and accuracy:** Check if all classes, methods, parameters, and other API elements used in the code samples exist within the reference material. Verify that their names, casing, and usage align precisely with the reference guide. 
* **Data types and values:** Compare data types and values used for parameters and variables in the code samples against the expected types and values defined in the reference material. Flag any mismatches or inconsistencies. 
* **Syntax and structure:** Ensure the code syntax and structure in the samples adhere to the conventions and best practices outlined in the reference material for the specific programming language or framework in use. 
* **Generic code:** Recognize that some code within the samples might be generic for demonstration purposes and not directly tied to specific API elements. Focus on validating code that directly interacts with or references the API. 

**Output:**

Provide a detailed report of any discrepancies or potential inaccuracies found in the code samples. Indicate the location of the code snippet, the discrepancy, and the proper reference material if applicable. When noting issues, indicate the file names where you find the issues.

**Reference material:** 

Here's the reference material:

[Paste reference material here]

**User guide content:**

Here's the user guide content:

[Paste user guide content here] 
</div>
</div>

### 5. Check your tree diagrams against reference material

<div class="chat">
<div markdown="1">
You're a documentation specialist with expertise in data modeling and API documentation, tasked with verifying the accuracy of a tree diagram representing an API's data model against the official technical reference material.

**Task:**

Carefully examine the provided tree diagram and compare its structure and elements to the information provided in the reference material. Identify any discrepancies, inconsistencies, or potential inaccuracies in the tree diagram. 

**Focus on the following:**

* **Element presence and relationships:** Ensure all entities, attributes, and relationships depicted in the tree diagram are present and accurately represented in the reference material. 
* **Naming conventions:** Verify that the naming of entities, attributes, and relationships in the tree diagram consistently matches the casing, spelling, and terminology used in the reference material.
* **Data types:** Cross-reference the data types associated with attributes in the tree diagram against the defined data types specified in the reference material. Flag any mismatches or inconsistencies. 
* **Cardinality and optionality:** Check if the cardinality (one-to-one, one-to-many, etc.) and optionality (required or optional) of relationships in the tree diagram are accurately reflected in the reference material. 
* **Missing or extra elements:**  Identify any entities, attributes, or relationships present in the tree diagram that are missing from the reference material, or vice versa.

**Output:**

Provide a detailed report of any discrepancies or inaccuracies found in the tree diagram. Indicate areas in the diagram that are problematic and what your suggested fixes are. When noting issues, indicate the file names where you find the issues.

**Reference material:** 

Here's the reference material:

[Paste reference material here]

**Tree Diagram:**

[Provide a clear and complete representation of the tree diagram here.] 
</div>
</div>

### 6. Check for typos or misspellings, especially of reference fields, in the user guide and reference material

<div class="chat">
<div markdown="1">
You're a documentation specialist acting as a meticulous proofreader, with a keen eye for identifying typos, misspellings, and inconsistencies in technical documentation, particularly concerning the accurate representation of API reference fields.

**Task:**

Thoroughly examine the provided user guide and reference material to identify and report any instances of the following:

* **Typos and misspellings:** Flag any misspelled words, including common technical terms. Pay close attention to words that might have multiple correct spellings (e.g., "dialog" vs. "dialogue"). 
* **Inconsistent casing:** Identify discrepancies in the capitalization of API reference fields between the user guide and reference material. Ensure consistent casing across all instances of a field name (for example, "userId" vs. "UserID" vs. "userid"). 
* **Mismatched names:**  Report any inconsistencies where the user guide and reference material use different names or variations of names for the same API element.
* **Comment accuracy** While the reference material is the source of truth, review code comments for potential errors in field names.  Note that comments might use informal language or abbreviations that differ from the formal API field names. Identify these inconsistencies as well.

Note: Reference material is the source of truth.  Always defer to the spelling, casing, and naming conventions used in the reference material as the ultimate authority. If there are both REST and RPC options, prefer the REST style. However, note that comments or element descriptions might have inaccuracies that contradict the official elements described. Identify these comment errors as well.

**Output:**

Provide a detailed report of all identified errors, indicating where the problems occur, the problematic text, and your suggested fixes. When noting issues, indicate the file names where you find the issues.

**Reference material:** 

Here's the reference material:

[Paste reference material here]

**User guide content:**

Here's the user guide content: 

[Paste user guide content here] 
</div>
</div>

{% include ads.html %}

### 7. Create tree diagrams of your API

<div class="chat">
<div markdown="1">
You're an API documentation expert tasked with generating a comprehensive tree diagram that visually represents the structure and hierarchy of an API's data model. 

**Task:**

Create a tree diagram illustrating a generic API data model. Maintain the correct structure and relationships between elements to showcase the diagram's logic and readability. 

**Diagram logic and conventions:**

* **Root element:** The tree diagram should have a single root element representing the top-level object or concept in the API (e.g., "RootObject").
* **Nesting:** Use indentation to clearly show the hierarchical relationships between elements. Nested elements are children of their parent element. 
* **Data types:** Indicate the data type of each element in parentheses after the element name (e.g., `Field1 (string)`). Use common data types like string, integer, number, boolean, or generic placeholders like ObjectB, EnumTypeC.
* **Arrays and objects:** 
    * For arrays, use square brackets `[]` after the element name, followed by the data type or a reference to the object contained in the array (e.g., `Items [] (ObjectB)`).
    * For objects, use curly braces `{}` after the element name (e.g., `Properties (ObjectC {})`). 
* **Enums and oneOf types:** 
    * For enums, use `(enum EnumName)` to indicate the enum type (e.g., `Status (enum StatusType)`).
    * For `oneOf` types, use `(oneOf)` followed by placeholder types or references to generic definitions (e.g., `Value (oneOf)` followed by `string`, `integer`).
* **Comments:** Use comments, starting with `//`, to provide additional context or explanations where necessary.

**Example output (generic structure):**

```
RootObject {}
│   
├── Field1 (string)
├── Field2 (integer)
├── ObjectA {}
│   └── Property1 (boolean)
│       └── NestedObject {}
│           ├── Field3 (number)
│           └── Field4 (enum EnumTypeA) 
├── ArrayField [] (ObjectB {}) 
│   ├── Field5 (string)
│   └── Field6 (oneOf)
│       └── ObjectD {} 
│           ├── Field7 (boolean)
│           └── Field8 (string)
└── Field9 (string)
```

This example demonstrates the structure and conventions while using generic placeholders. Follow this pattern to create a complete tree diagram representing the real API data model. 

Use the following reference material to create the tree diagram.
</div>
</div>

### 8. Compare definitions of similar fields across APIs

<div class="chat">
<div markdown="1">

You're an API documentation specialist tasked with performing a cross-API comparison to ensure consistency in the definition and description of similar fields across multiple API specifications, even when those APIs have different implementations or target different platforms.

**Task:**

Analyze the provided reference materials for two different APIs and identify fields that have the same or very similar names, considering variations in naming conventions across API types (e.g., REST vs. Java). For each set of matching fields, compare their descriptions and assess their level of consistency.

**Focus on the following:**

* **Field name matching:** 
    * Identify fields with identical names across the two API specifications. 
    * Account for variations in naming conventions. For example, a REST API might use "fieldName" while a Java API uses "getFieldName()."
    * Consider fields with minor name variations as potentially matching (e.g., "userCount" vs. "numberOfUsers").
* **Description comparison:**
    * Once you've identified matching fields, carefully compare their descriptions for semantic consistency. 
    * Look for:
        * **Identical or nearly identical descriptions:** This indicates good consistency.
        * **Similar meaning, different wording:** Note instances where the descriptions convey the same information but use different phrasing.
        * **Conflicting or inconsistent information:** Flag cases where the descriptions provide contradictory or conflicting information about the field's purpose, behavior, or expected values. 
* **Contextual differences:**
    * While striving for consistency, consider any legitimate reasons for differences in descriptions due to API-specific context or platform variations. 
    * For example, a field might have additional constraints or behavior in a cloud API compared to an on-device API.

**Example.**

##### acme

* **Similar fields**: API 1 has `acme (string)`, API 2 has `getAcme(): string`
Description is similar: The descriptions are nearly identical, both stating that this field represents "a unique identifier for the widget."
user count
* **Similar fields**: API 1 has `userCount (integer)`, API 2 has `getUserCount`
Description is different: API 1 describes this as the "total number of registered users," while API 2 states it's the "current number of active users." 
* **Suggested fix**:  Clarify if "registered" vs. "active" users is the intended meaning across both APIs. 

**Output:**

Provide a structured report of your findings using a format similar to the example above.

**Reference material for API doc 1:** 
Here's the reference material for API doc 1:
[Paste reference material here]

**Reference material for API doc 2:** 
Here's the reference material for API doc 2:
[Paste reference material here]
</div>
</div>

## Other scenarios

These prompts are just an idea of how you might use long-token contexts in prompts. I find it invaluable to pass in reference content to assist with whatever documentation I'm writing, particularly using the reference to fact check and make accurate the content I'm working on. Specifically, every time I mention an element from the API, I link to it. This ensures that I'm being accurate with the content I write.