---
title: PDF build instructions
permalink: pdf_instructions.html
last-modified: 2026-10-17
published: false
---

These instructions explain how to build the PDF version of the API documentation course and upload it for download. For an agent-driven version of this process, ask Claude to run the `update-api-doc-pdf` skill (`.agent/skills/update-api-doc-pdf/SKILL.md`). The last full build was on October 17, 2026 (969 pages).

## Prerequisites

* [Prince XML](https://www.princexml.com/) (version 15.4.1 was used for the last build)
* `pdftk` (`brew install pdftk-java`)
* Python 3 (for splitting the PDF into chapters)
* The Python virtual environment at `.venv`, which includes the AWS CLI used for Wasabi
* An AWS CLI profile named `wasabi` with your Wasabi keys

The build expects the project to be at `/Users/tomjohnson/projects/idratherbewriting`, because the PDF config files use absolute paths for images and the cover. If you reclone the project, put it at this path.

## 1. Download the images from Wasabi

Prince needs local copies of the course images. Sync them from Wasabi into `images/api` (this only downloads, so it doesn't touch the lock-protected files in the bucket):

```
source .venv/bin/activate
aws s3 sync s3://idbwmedia.com/images/api/ images/api \
    --profile wasabi \
    --endpoint-url=https://s3.us-west-1.wasabisys.com
```

The `images` folder is gitignored, so you'll need to do this on any fresh clone. The cover image (`images/api/ebook_cover.png`) comes down with this sync.

## 2. Build the PDFs

Run this script:

```
./pdf_build_docapis_all.sh
```

The script does the following:

1. Builds the site with `configs/_config_pdf_all.yml`, which sets `format: print` and uses the `printpdf` layout.
2. Runs Prince on the pages listed in `_site/prince-list-all.txt` to create `pdf/docapis_all_chapters.pdf`. This step takes about a minute and a half.
3. Runs `pdf_split_chapters.py`, which splits the comprehensive PDF into a frontmatter PDF and one PDF per chapter (chapter 0 through chapter 17).
4. Zips everything, along with `pdf/readme_docs.txt`, into `pdf/docapis.zip`.

You no longer need to run the script twice or update page ranges by hand. The split script reads the chapter start pages from the PDF bookmarks. Prince creates a top-level bookmark for each page title, and the script looks for titles that start with "Chapter N:" (plus "Course overview" for chapter 0).

Because of this, only the chapter landing pages should have titles that start with "Chapter N:". If another page uses a chapter title by mistake (as the glossary page once did with "Chapter 17: Glossary"), the script stops with an error that says the chapter pages are out of order.

`pdf/readme_docs.txt` isn't in version control (the `pdf` folder is gitignored). If it's missing, copy it out of the previous `docapis.zip`, or recreate it. It's a short note explaining the difference between the all-chapters PDF and the individual chapter PDFs.

## 3. Check the output

Before uploading, open `pdf/docapis_all_chapters.pdf` and spot-check a few pages:

* The cover image appears on page 1.
* Pages have the header ("Last generated: [date]") and footer ("Documenting REST APIs" and the page number).
* Code samples have gray boxes and syntax highlighting.

If the PDF is plain and unstyled and has a lot more pages than expected, Prince couldn't find the stylesheets. Look for `can't open input file` warnings in the Prince output. The stylesheets live in `assets/css/pdf/`.

## 4. Upload the zip to Wasabi

The Buy Me a Coffee download links directly to `https://s3.us-west-1.wasabisys.com/learnapidoc-outputs/docapis.zip`. The Rebrandly short link `https://idbwrtng.com/apidocbook` points to the same file. The upload overwrites that file on purpose, so the URL never changes and the Buy Me a Coffee link never needs updating. (Overwrites are enabled on the `learnapidoc-outputs` bucket for this reason.) The bucket has no versioning, so if you want to keep the previous version, copy it first:

```
source .venv/bin/activate
aws s3 cp s3://learnapidoc-outputs/docapis.zip s3://learnapidoc-outputs/docapis-YYYY-MM-DD.zip \
    --profile wasabi \
    --endpoint-url=https://s3.us-west-1.wasabisys.com
```

Then upload the new zip:

```
./pdf_upload_docapis.sh
```

## 5. Update the download page

The [Download PDFs](https://idratherbewriting.com/learnapidoc/download.html) page (`_docs/course_overview/download.md`) mentions the approximate page count. Update it if the count changes a lot. The PDF itself shows the generation date in its header.

## How it works

### Configuration

`configs/_config_pdf_all.yml` is used by itself (not merged with `_config.yml`). Key settings:

* `format: print`: Lets pages hide web-only content (see below).
* `baseurl` and `api_media`: Absolute local paths, so Prince can find pages and images on disk.
* `cover_image`: Absolute path to `images/api/ebook_cover.png`.
* `defaults`: Sets the `printpdf` layout for all pages and docs.

The other `configs/_config_pdf_[n].yml` files were for building individual chapters separately. They aren't used by `pdf_build_docapis_all.sh`, which builds everything at once and then splits it.

### Stylesheets

The `printpdf` layout uses these stylesheets:

```
assets/css/pdf/syntax.css
assets/css/pdf/bootstrap.min.css
assets/css/pdf/theme-blue.css
assets/css/pdf/printstyles.css
```

These files used to be gitignored by accident (the `**/pdf` rule in `.gitignore` matched the `assets/css/pdf` folder), so they were never committed and got lost. In October 2026 they were restored from the old [learnapidoc repo](https://github.com/tomjoht/learnapidoc/tree/master/assets/css/pdf), and `.gitignore` now has an exception (`!assets/css/pdf/`) so they're tracked.

`printstyles.css` controls the page size, headers, and footers. The header and footer text comes from JavaScript functions (`datestamp` and `guideName`) defined in `_layouts/printpdf.html`, which is why Prince runs with `--javascript`.

### Page list

`prince-list-all.txt` is a Liquid template that outputs the absolute path of each page. It starts with the title, copyright, and table of contents pages (from `pages/pdf_frontmatter/`), then loops through the `docapis` sidebar data (`_data/docapis.yml`). Sidebar entries with `type: web` are skipped. If a page is missing from the PDF, check whether it appears in `_site/prince-list-all.txt`.

### Excluding content from the PDF

To hide content that doesn't work in print (YouTube videos, JavaScript demos, Swagger UI embeds, interactive widgets), wrap it in a conditional:

```
{% raw %}{% if site.format == "web" %}
...web-only content...
{% endif %}{% endraw %}
```

To show content only in the PDF, use `{% raw %}{% if site.format == "print" %}{% endraw %}`. For example, the chapter tiles on the course overview page render as a plain list in the PDF.

### Links in the PDF

The print stylesheet prints each link's URL in parentheses after the link text. For external links, that gives readers the full URL. For links you don't want expanded, add the `noCrossRef` class.

### Prince command parameters

* `--javascript`: Runs the scripts in the `printpdf` layout that populate the header and footer.
* `--input-list=_site/prince-list-all.txt`: The list of pages to include, in order.
* `--no-warn-css-unsupported`: Suppresses warnings about Bootstrap CSS properties that Prince doesn't support but that don't affect the output.
* `-o pdf/docapis_all_chapters.pdf`: The output file.

A warning that says `not a TrueType or OpenType font` is expected and doesn't affect the output.
