---
name: update-api-doc-pdf
description: Build the PDF version of the Documenting REST APIs course with Prince, split it into chapter PDFs, zip it, and upload the zip to Wasabi so the paid download gets the latest content. Use when the user says "run the update API doc PDF skill," "regenerate the course PDF," "update the API doc PDF," or similar.
metadata:
  author: tomjohnson
  version: "1.0"
---

# Update the API doc course PDF

This skill rebuilds the PDF of the API documentation course (`_docs`), checks it, and uploads `docapis.zip` to Wasabi. Readers buy the PDF through Buy Me a Coffee, and the Buy Me a Coffee product redirects buyers directly to the zip file's public URL. The upload replaces that file, so paying readers get the new version immediately. The steps below are ordered so that nothing gets uploaded until the PDF has been checked.

Invoking this skill authorizes the upload in Step 6. However, if any check in Steps 1–5 fails, stop and report to the user instead of uploading.

`pdf_instructions.md` in the repo root has background on how the build works. This skill is the procedure to follow. If the two disagree, trust this skill and then update `pdf_instructions.md` to match.

## Local settings and key URLs

The bucket name, file key, download URL, and short link are **not** in this skill or anywhere else in the repo. Tom keeps them in `pdf.local.env` at the repo root, which is gitignored, because the repo is public and anyone (or any AI tool) could otherwise find the paid download URL. Never write these values into a tracked file, a commit message, or a blog post.

`pdf.local.env` defines these variables:

| Variable | What it is |
|---|---|
| `PDF_BUCKET` | The Wasabi bucket that holds the zip |
| `PDF_KEY` | The zip's file name in the bucket |
| `PDF_ENDPOINT` | The Wasabi endpoint URL |
| `PDF_PUBLIC_URL` | The download URL that the Buy Me a Coffee product redirects to |
| `PDF_SHORTLINK` | Rebrandly short link to the same file |
| `SMARTPHONES_KEY` | The zip for Tom's other book (not used by this skill) |

Each Bash call runs in a fresh shell, so `source pdf.local.env` in the same command as anything that uses these variables. If the file is missing (for example, after a fresh clone), stop and ask Tom for the values. `pdf.local.env.example` shows the format.

These URLs are public and fine to use anywhere:

| What | URL |
|---|---|
| Buy Me a Coffee product page | `https://www.buymeacoffee.com/learnapidoc/e/146076` |
| Buy Me a Coffee shop page | `https://www.buymeacoffee.com/learnapidoc/extras` |
| Download page on the site | `https://idratherbewriting.com/learnapidoc/download.html` |

Tom sometimes forgets the download URL, so include `$PDF_PUBLIC_URL` and `$PDF_SHORTLINK` (read from `pdf.local.env`) in the final report to him. The report goes only to Tom, so that's fine.

## Environment notes (read first)

These caused real failures during the October 2026 build. Keep them in mind throughout.

- **Repo path is fixed.** The PDF configs use absolute paths under `/Users/tomjohnson/projects/idratherbewriting`. Run every command from that directory.
- **The shell is zsh.** Unquoted variables don't word-split, so `for f in $LIST` and `set -- $x` don't behave like bash. Use literal globs, `while read` loops, or `bash -c '...'`.
- **Always pass the Wasabi endpoint.** The `wasabi` AWS profile has a region but no endpoint. Every `aws` command needs `--profile wasabi --endpoint-url="$PDF_ENDPOINT"` (or the literal Wasabi endpoint), or it silently targets AWS instead of Wasabi. Activate the venv first (`source .venv/bin/activate`), since that's where the AWS CLI lives.
- **The image bucket is lock-protected.** `s3://idbwmedia.com/images/` has object lock on purpose. Only download from it in this skill. Never upload, overwrite, or delete anything there.
- **The outputs bucket allows overwrites on purpose.** Tom configured the outputs bucket (`$PDF_BUCKET`) to allow overwrites so that the zip keeps the same URL and the Buy Me a Coffee link never needs updating. Always upload to the same key (`$PDF_KEY`). Never upload under a new name or change the URL. The bucket has no versioning, so the overwrite is permanent, which is why Step 6 makes a dated backup copy first.
- **The build overwrites `_site`.** The PDF build writes a print-formatted site into `_site`. That's harmless (GitHub Pages builds the live site on its own), but if the user is previewing locally, they'll need to rerun `bundle exec jekyll serve` afterward.
- **Prince takes about 80–90 seconds**, and the whole build script about 2–3 minutes. Give commands a timeout of at least 600000 ms.

## Step 1: Preflight checks

Run these checks before building, and fix whatever is missing:

```bash
cd /Users/tomjohnson/projects/idratherbewriting
which prince pdftk zip python3      # all four must resolve
ls .venv/bin/aws                     # AWS CLI in the venv
ls assets/css/pdf/                   # bootstrap.min.css, printstyles.css, syntax.css, theme-blue.css
ls images/api/ebook_cover.png        # cover image
ls pdf/readme_docs.txt               # readme bundled into the zip
ls pdf.local.env                     # local bucket and URL settings (gitignored)
grep -h "^cover_image" configs/_config_pdf_all.yml
```

How to fix each one:

- **`assets/css/pdf/` is missing or incomplete.** These four stylesheets are committed to git now, so `git status` and `git checkout -- assets/css/pdf` should restore them. Without them, Prince still produces a PDF, but it's unstyled and about 1,250 pages instead of about 970. If they're missing from git too, the originals are in the old repo: `https://raw.githubusercontent.com/tomjoht/learnapidoc/master/assets/css/pdf/{file}`.
- **`images/api/` is missing or empty.** This is normal on a fresh clone, because `images` is gitignored. Step 2 downloads the images.
- **`cover_image` doesn't point to `/Users/tomjohnson/projects/idratherbewriting/images/api/ebook_cover.png`.** Fix the config. A relative path like `images/ebook_cover.png` resolves inside `_site` and the cover goes missing.
- **`pdf/readme_docs.txt` is missing.** The `pdf` folder is gitignored, so this file doesn't survive a fresh clone. Recover it from the current zip in Wasabi:

  ```bash
  source pdf.local.env && source .venv/bin/activate
  mkdir -p pdf "$TMPDIR/oldzip"
  aws s3 cp "s3://$PDF_BUCKET/$PDF_KEY" "$TMPDIR/oldzip/docapis.zip" --profile wasabi --endpoint-url="$PDF_ENDPOINT" --only-show-errors
  unzip -o -j "$TMPDIR/oldzip/docapis.zip" pdf/readme_docs.txt -d pdf/
  ```

  Use your scratchpad directory instead of `$TMPDIR` if you have one. The old zip is also handy for comparing page counts in Step 4. To get its page count, extract `pdf/docapis_all_chapters.pdf` and run `pdftk ... dump_data | grep NumberOfPages`.

Also run `git status` and note any uncommitted changes in `_docs/`. The PDF reflects the working tree, uncommitted edits included. Mention this in the report so the user knows the PDF might contain unpublished changes.

## Step 2: Sync the images from Wasabi

This step only downloads. It never writes to the bucket.

```bash
source .venv/bin/activate
aws s3 sync s3://idbwmedia.com/images/api/ images/api \
    --profile wasabi \
    --endpoint-url=https://s3.us-west-1.wasabisys.com \
    --only-show-errors
ls images/api | wc -l
```

The October 2026 build had 1,037 files. The count should be about the same or a bit higher.

## Step 3: Run the build script

```bash
./pdf_build_docapis_all.sh > "$SCRATCH/pdfbuild.log" 2>&1; echo "exit $?"
```

(Replace `$SCRATCH` with your scratchpad directory, or any temp location outside the repo.)

The script uses `set -e` and does four things:

1. Builds the site with `configs/_config_pdf_all.yml`.
2. Runs Prince on `_site/prince-list-all.txt` to create `pdf/docapis_all_chapters.pdf`.
3. Runs `pdf_split_chapters.py`, which reads the chapter start pages from the PDF bookmarks and writes `frontmatter.pdf` plus `chapter0_...pdf` through `chapter17_...pdf`. You don't need to edit page ranges or run the script twice.
4. Zips everything into `pdf/docapis.zip`.

If the exit code isn't 0, read the end of the log. The usual causes are:

- **The split script reports missing or out-of-order chapters.** A page other than a chapter landing page has a title starting with "Chapter N:". (In 2026, `_docs/glossary/glossary.md` was titled "Chapter 17: Glossary.") Find the culprit with `grep -rn '^title:.*Chapter [0-9]' _docs`, and compare the results against the `- title: "Chapter N: ..."` entries in `_data/docapis.yml`. Only the landing page of each chapter (the `landing:` URL) should have a "Chapter N:" title. Fix the stray title and rerun.
- **The zip step fails because `pdf/readme_docs.txt` is missing.** See Step 1.

## Step 4: Check the build log and the page counts

Summarize the Prince warnings:

```bash
grep -v "^$" "$SCRATCH/pdfbuild.log" | grep "prince:" | sed 's#/Users/tomjohnson/projects/idratherbewriting/##g' | sort | uniq -c | sort -rn | head
```

- **Expected and harmless:** `warning: not a TrueType or OpenType font`, which appears once. The Jekyll step also prints a harmless `GitHub Metadata: No GitHub API authentication` warning.
- **A real problem:** `can't open input file` for any `.css` file or for `ebook_cover.png`. Go back to Step 1. Don't upload a PDF built with these warnings.

Then check the page count and the chapter ranges, which the split script printed to the log:

```bash
pdftk pdf/docapis_all_chapters.pdf dump_data | grep NumberOfPages
grep "pages [0-9]" "$SCRATCH/pdfbuild.log"
```

The October 2026 build was 969 pages, and the July 2025 build was 954. Course edits shift this a bit. If the count jumps by more than about 15% (for example, to 1,200 or more), the CSS probably didn't load. Each chapter should span a plausible number of pages. A chapter with 0 or 1 pages means a bookmark problem.

## Step 5: Visually spot-check the PDF

No PDF rasterizer (`pdftoppm`, ImageMagick, or Ghostscript) is installed, but macOS `sips` can convert a single-page PDF to PNG. Extract a few pages and look at them with the Read tool:

```bash
mkdir -p "$SCRATCH/pages"
for p in 1 8 34 300; do
  pdftk pdf/docapis_all_chapters.pdf cat $p output "$SCRATCH/pages/p$p.pdf"
  sips -s format png "$SCRATCH/pages/p$p.pdf" --out "$SCRATCH/pages/p$p.png" >/dev/null 2>&1
done
```

Choose the pages from the split output. Use page 1 (cover), the first page of chapter 0 (course overview), the first page of chapter 1, and one page from the middle of a chapter with code samples (chapter 5, the OpenAPI tutorial, works well). Check for the following:

- **Cover (page 1):** The "Documenting APIs" cover illustration fills the page. A text-only title page means the cover path is wrong.
- **Body pages:** The header shows the page title on the left and "Last generated: [today's date]" on the right. The footer shows "Documenting REST APIs" and a page number.
- **Course overview:** The "The 17 chapters" section is a clean bulleted list with bold chapter names and descriptions. If you see jumbled run-together text with `(/learnapidoc/...)` URLs, the print branch in `_docs/course_overview/docapis_overview.md` got lost. That branch renders a plain list when `site.format == "print"` and the web tiles otherwise.
- **Chapter landing page:** The chapter title, a description, and a "Chapter sections" list with dot leaders and page numbers.
- **Code pages:** Code blocks have gray boxes and syntax colors. Internal links show the target filename in parentheses after the link text, which is the stylesheet's normal behavior.

If something looks wrong, fix it, rerun Step 3, and check again. Look for other web-only content that renders badly in print, such as interactive widgets, embeds, or JavaScript demos. To hide content from the PDF, wrap it in `{% if site.format == "web" %}...{% endif %}`.

## Step 6: Back up the old zip and upload the new one

First, record the date of the current zip in the bucket and back it up under that date:

```bash
source pdf.local.env && source .venv/bin/activate
aws s3 ls "s3://$PDF_BUCKET/" --profile wasabi --endpoint-url="$PDF_ENDPOINT" | grep "docapis"
# Use the date shown for the current zip, for example 2026-10-17:
aws s3 cp "s3://$PDF_BUCKET/$PDF_KEY" "s3://$PDF_BUCKET/docapis-YYYY-MM-DD.zip" \
    --profile wasabi --endpoint-url="$PDF_ENDPOINT" --only-show-errors
```

This copy happens on the server side, so nothing is downloaded. If a backup with that date already exists, skip the copy, because it's the same file.

Then upload the new zip:

```bash
./pdf_upload_docapis.sh 2>&1 | tail -2
```

The script prints a progress line for every MiB, so only show the last lines. To verify the upload, confirm that the public download URL (the one Buy Me a Coffee uses) returns the new file. The `Content-Length` should match the local file size, and `Last-Modified` should be just now:

```bash
ls -l pdf/docapis.zip
source pdf.local.env && curl -sI "$PDF_PUBLIC_URL" | grep -iE "^HTTP|content-length|last-modified"
```

## Step 7: Update the download page if needed

`_docs/course_overview/download.md` says "The PDF version is 900+ pages." Update that number only if the page count has crossed into a different hundred (for example, 1,000+). Don't add a date to the page, because the PDF header already shows the generation date.

Don't commit automatically. If Step 1, 5, or 7 led to changes in tracked files (such as a fixed title, config, or print conditional), list them in the report and ask whether to commit and push.

## Step 8: Report to the user

Keep the report short. Include the following:

- The page count, compared with the previous build.
- The chapter page ranges, as a compact list or one line per chapter.
- Anything you had to fix, and which files changed.
- Any uncommitted `_docs/` changes that went into the PDF.
- The name of the backup zip, and confirmation that the public download URL now serves the new `docapis.zip` (with its size).
- The download links: `$PDF_PUBLIC_URL` (what Buy Me a Coffee redirects to) and `$PDF_SHORTLINK`, with the actual values read from `pdf.local.env`.

## Reference: files involved

| File | Purpose |
|---|---|
| `pdf_build_docapis_all.sh` | Main build script (Jekyll, then Prince, then split, then zip) |
| `pdf_split_chapters.py` | Splits the comprehensive PDF by bookmarks |
| `pdf_upload_docapis.sh` | Uploads `pdf/docapis.zip` to the bucket and key in `pdf.local.env` |
| `pdf.local.env` (gitignored) | Bucket, key, download URL, and short link |
| `configs/_config_pdf_all.yml` | Standalone Jekyll config for the print build (not merged with `_config.yml`) |
| `prince-list-all.txt` | Liquid template that lists the pages in sidebar order (`_data/docapis.yml`) |
| `_layouts/printpdf.html` | Print layout. Loads the PDF CSS and defines the header and footer script functions |
| `assets/css/pdf/*.css` | Print stylesheets |
| `pages/pdf_frontmatter/` | Title, copyright, and table of contents pages |
| `pdf/` (gitignored) | Build output, plus `readme_docs.txt` |
| `pdf_instructions.md` | Human-readable background on the build |
