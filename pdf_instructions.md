---
title: PDF build instructions
permalink: pdf_instructions.html
last-modified: 2023-05-29
published: false
---

These instructions explain how to build the PDF outputs.

## Prerequisites

* [Prince XML](https://www.princexml.com/)

## Download the images from Wasabi

Switch into `myvenv`, then run:

```
aws s3 cp s3://idbwmedia.com/images/api/ ~/tomjohnson/projects/idratherbewriting/images/api  --recursive  --profile wasabi
```

Prince requires image references to be local, absolute paths and will look into this directory for the images.

## Exclude content not suitable for PDF

The build adds `_config_pdf_[n].yaml` in the build command to add to the configuration instructions. The PDF config file has format `pdf`, so to exclude anything from the PDF:

```
{% if site.format == "print" %}

{% endif %}
```

Exclude any YouTube videos, JavaScript, Swagger demos, or other content that doesn't display well in print.

## Ensure relative links are valid in the output

If the output doesn't have the referenced pages, the cross reference will say 0. To avoid this:

* For links to pages outside the section, use absolute links and include this class: `noCrossRef`.
* For links to pages inside the section, use relative links.

## Build the PDFs

Run this script:

```
./pdf_build_docapis_all.sh
```

This script builds a comprehensive PDF and then splits it into individual chapter PDFs.

### Important: Update page ranges before splitting

The script uses `pdftk` to split the comprehensive PDF into individual chapters. **You need to run the script twice** to get the correct chapter splits.

1. **First run:** Execute the script to build the comprehensive PDF:
   ```
   ./pdf_build_docapis_all.sh
   ```
   This will create `pdf/docapis_all_chapters.pdf` and attempt to split it (though the splits may be incorrect).

2. **Check the table of contents:** Open `pdf/docapis_all_chapters.pdf` and look at the frontmatter/table of contents to identify the correct page numbers where each chapter starts and ends.

3. **Update the page ranges:** Edit the `pdftk` commands in `pdf_build_docapis_all.sh` with the correct page ranges. For example:
   ```bash
   pdftk $LOCATION/docapis_all_chapters.pdf cat 1-8 output $LOCATION/frontmatter.pdf
   pdftk $LOCATION/docapis_all_chapters.pdf cat 9-33 output $LOCATION/chapter0_course_overview.pdf
   # ... update all other chapter ranges
   ```

4. **Second run:** Execute the script again to create the correctly split chapter PDFs:
   ```
   ./pdf_build_docapis_all.sh
   ```

**Note:** The page ranges should capture all content for each chapter. If ranges are incorrect, chapters may be missing content or include content from other chapters.

### Optional: AI-assisted page range updates

Instead of manually updating the page ranges, you can use AI to help determine the correct `pdftk` commands. Here's a prompt you can use with an AI assistant:

```
I have a comprehensive PDF with multiple chapters and need to split it into individual chapter PDFs using pdftk. 

Here's the table of contents from the PDF frontmatter showing chapter titles and their page numbers:
[Paste the table of contents here]

Here are the current pdftk commands from my script that need to be updated with the correct page ranges:

pdftk $LOCATION/docapis_all_chapters.pdf cat 1-8 output $LOCATION/frontmatter.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 9-33 output $LOCATION/chapter0_course_overview.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 34-67 output $LOCATION/chapter1_introduction_to_rest_apis.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 68-117 output $LOCATION/chapter2_using_an_api_like_a_developer.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 118-177 output $LOCATION/chapter3_documenting_api_endpoints.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 178-269 output $LOCATION/chapter4_openapi_spec_and_generated_reference_docs.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 270-341 output $LOCATION/chapter5_step_by_step_openapi_code_tutorial.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 342-360 output $LOCATION/chapter6_testing_api_docs.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 361-434 output $LOCATION/chapter7_conceptual_topics_in_api_docs.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 435-505 output $LOCATION/chapter8_code_tutorials.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 506-535 output $LOCATION/chapter9_the_writing_process.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 536-602 output $LOCATION/chapter10_publishing_api_docs.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 603-669 output $LOCATION/chapter11_publishing_tools.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 670-701 output $LOCATION/chapter12_thriving_in_the_api_doc_space.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 702-739 output $LOCATION/chapter13_native_library_apis.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 740-821 output $LOCATION/chapter14_processes_and_methodology.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 822-849 output $LOCATION/chapter15_metrics_and_measurement.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 850-888 output $LOCATION/chapter16_glossary.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 889-950 output $LOCATION/chapter17_additional_resources.pdf

Please update the page ranges in these pdftk commands based on the table of contents. The page ranges should:
1. Start on the page where each chapter actually begins.
2. End 1 page before where the NEXT chapter begins (this ensures no overlap and captures all content for the current chapter)
3. For the last chapter, end at the last page of the PDF

**Example logic:** If Chapter 1 starts on page 34 and Chapter 2 starts on page 68, then Chapter 1 should be `cat 34-67` (ending 1 page before Chapter 2).

Return only the updated pdftk commands with the corrected page ranges.
```

## Upload the PDFs to Wasabi

Run this script:

```
./pdf_upload_docapis.sh
```

## Update the Download the PDFs page

Update the last generated date on `download.html` page.

## How it works

The build uses an additional configuration file with PDF settings:

*   In the `defaults` section, all directories are set to be unpublished except for `pdf_frontmatter` and a specific directory.

    ```
    defaults:
    -
        scope:
        path: ""
        type: pages
        values:
        layout: printpdf
    -
        scope:
        path: ""
        type: docs
        values:
        layout: printpdf
        published: false

    -
        scope:
        path: _docs/pdf_frontmatter
        type: docs
        values:
        layout: printpdf
        published: true
    -
        scope:
        path: _docs/introduction_to_rest_apis
        type: docs
        values:
        layout: printpdf
        published: true
    ```

*   The layout used for the pages is `printpdf`. This layout uses these stylesheets:

    ```
    <link rel="stylesheet" href="assets/css/pdf/syntax.css" />
    <link rel="stylesheet" href="assets/css/pdf/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/pdf/theme-blue.css" />
    <link rel="stylesheet" href="assets/css/pdf/printstyles.css" />
    ```

*   The `prince-list.txt` file runs the same logic as the sidebar to generate a list of pages included in the PDF. The URLs are absolute paths.
*   The `prince-list.txt` has this logic: `if folder.section == site.section`. In the PDF configuration, there's a property called `section` that identifies which section is being printed.

After Jekyll builds the output, both the images and files are ready for Prince to build the output. The prince command includes these parameters:

*   `--javascript`: Allows for JS scripting to run. The PDF frontmatter pages has some scripts that dynamically print page numbers ahd titles into the header and footer.

    ```js
    <script>
        Prince.addScriptFunc("datestamp", function() {
            return "PDF last generated: {{ site.time | date: '%b %d, %Y' }}";
        });
    </script>

    <script>
        Prince.addScriptFunc("guideName", function() {
            return "{{site.title}}";
        });
    </script>
    ```

*   `--input-list=_site/prince-list.txt`: Indicates the list of pages to include in the PDF output. If you run into troubles in the output, look at `prince-list.txt` to see if the right pages are being listed here. This file also includes the `if folder.section == site.section` conditional logic that matches the `section` property in the `_config_pdf_[section].yml` file.
*   `--no-warn-css-unsupported`: Indicates that warning messages about unsupported CSS should be suppressed. The theme uses Bootstrap CSS that has a bunch of shadow properties in CSS that aren't supported, but which don't make any difference in the output. 
*   `-o pdf/docapis_four.pdf`: Indicates the name of the output file and where it's stored.



## Output location

The PDFs build in the `pdf` folder. There are 15 outputs, one for each chapter.

## Upload to Wasabi

Upload the PDFs to Wasabi: `pdf_upload.sh`

## Update the Download PDF page

Update the `download.md` page.

2. see pdf/docapis.pdf

- format: print
- css: assets/css/pdf/printstyles.css
- css: assets/css/pdf/theme-blue.css
- layout: printpdf.html

## Web

1. bundle exec jekyll serve
2. format: web
3. uses the default.html layout
layout: default.html
css: main.css (compiles from sass)

## Upload to the web
./upload_outputs.sh
