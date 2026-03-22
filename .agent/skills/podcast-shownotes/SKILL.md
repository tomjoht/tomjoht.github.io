---
name: podcast-shownotes
description: Assemble complete podcast shownotes from a raw transcript file. Use when the user has a podcast transcript and needs to build a full blog post with frontmatter, resource links, topic summaries, a narrative essay, and a cleaned-up transcript. Handles transcript cleanup (name fixes, fragment merging, transcription errors), frontmatter population, resource link formatting, topic extraction, and narrative essay writing.
metadata:
  author: tomjohnson
  version: "1.0"
---

# Podcast Shownotes Assembly

This skill takes a raw transcript and assembles a complete podcast blog post with shownotes. The user provides inputs; the agent fills in everything else.

**Example to follow**: Read the file `_posts/2026/03/2026-03-21-will-tech-writers-survive-ai-academics-nupoor-jeremy.md` for the target format, structure, and tone of all sections.

## Required inputs from the user

Before starting, collect these from the user (they may provide them all at once or piecemeal):

1. **Transcript file path** — the markdown file containing the raw transcript (already in `_posts/`)
2. **Guest names and LinkedIn URLs**
3. **YouTube embed URL** (if available)
4. **Podcast audio filename** (already uploaded to S3 via `./upload_podcast.sh`)
5. **Podcast metadata**: file size (MB), duration (HH:MM:SS), length (bytes)
6. **Thumbnail image filename** (already uploaded via `./upload.sh`)
7. **Any resource links** the user wants included (blog posts, papers, etc.)
8. **Categories** for the frontmatter

## Step 1: Clean up the transcript

Transcripts from speech-to-text tools have common problems. Fix these **without changing meaning or voice**:

- **Name errors**: Ask the user for correct spellings of guest names, then search-and-replace all misspellings throughout the transcript.
- **Merge broken fragments**: Speech-to-text often splits sentences across paragraph breaks. Merge them into single coherent sentences.
- **Fix transcription errors**: Common issues include homophones ("laughs" for "layoffs"), garbled proper nouns, missing words at sentence starts.
- **Capitalize**: Fix lowercase sentence starts, proper nouns (product names, company names, university names).
- **Add missing punctuation**: Periods, question marks, commas where clearly needed.
- **Remove filler-only entries**: Delete entries that contain only "Mm-hmm" or similar with no substantive content, but keep them if they're interspersed naturally in conversation flow.
- **Remove stray characters**: Clean up `⁓`, stutter duplicates ("that\n\nthat"), and other artifacts.

Work in batches of ~100-150 lines to keep edits manageable and reviewable.

### Transcript entry format

Each entry in the cleaned transcript should follow this format:

```markdown
**SpeakerName** (HH:MM) <br>
The spoken text goes here as a continuous paragraph. Multiple sentences in one turn of speech stay together in one block.
```

- **Speaker name** in bold, followed by timestamp in parentheses, followed by `<br>` on the same line.
- The spoken text starts on the next line (no blank line between the speaker label and their text).
- Separate different speakers' turns with a blank line.
- Keep each speaker's turn as a single paragraph — do not break one turn into multiple paragraphs.
- Use first names only as speaker labels (e.g., `**Tom**`, `**Nupoor**`, `**Jeremy**`).

## Step 2: Fill in the frontmatter

Complete all frontmatter fields. Use this template:

```yaml
---
title: "[Podcast title]"
permalink: /blog/[slug]
date: [YYYY-MM-DD]
categories:
- [category1]
- [category2]
- podcasts
keywords: [comma-separated relevant keywords, 8-12 terms]
rebrandly: https://idbwrtng.com/[slug]
description: "[1-3 sentence HTML description with <a href='...'>guest name</a> links to LinkedIn profiles. Summarize the key themes discussed.]"
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/[filename].mp3
podcast_file_size: [size in MB]
podcast_duration: "[HH:MM:SS]"
podcast_length: [size in bytes]
image: [thumbnail-filename].jpg
linkedin: [linkedin post URL if available]
---
```

**Description style**: Start with "In this podcast, I chat with..." followed by guest names as HTML links, then 1-2 sentences summarizing the key themes.

## Step 3: Assemble the post body structure

The body should follow this order:

```markdown
* TOC
{:toc}

## Video

<iframe width="560" height="315" src="https://www.youtube.com/embed/[VIDEO_ID]" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Audio-only version

{% include audio.html %}

## Resources

[resource links go here]

## Topics covered in this podcast

[10 key topics go here]

{% include ads.html %}

## Narrative essay version of the conversation

[narrative essay goes here]

[figure image goes here]

## Transcript

The following is a near verbatim transcript of the podcast.

[cleaned transcript goes here]
```

## Step 4: Build the Resources section

For each URL the user provides:

1. Fetch the actual page title from the URL.
2. Format as: `* [Actual Page Title](URL) (Author/Source — brief context if helpful)`
3. Put guest LinkedIn profiles at the bottom of the list.
4. Order: guest-authored content first, then host content, then third-party references, then LinkedIn profiles.

## Step 5: Write the Topics section

Create exactly 10 key discussion points. Precede the list with:

`Here's a list of topics we talked about. (Note: AI-generated.)`

Format each as:

```markdown
- **Bold topic title** — 2-3 sentence summary of what was discussed. Don't attribute to speakers ("Tom said..."). Instead, directly state the idea or argument. Keep each entry to ~40-60 words.
```

Order topics roughly in the sequence they appeared in the conversation.

## Step 6: Write the Narrative essay

Write an ~800-word essay that reads like a standalone article. This is NOT a summary — it's an essay that presents the conversation's ideas as a coherent argument.

### What this should feel like

Imagine a journalist listened to the podcast and then wrote a feature article inspired by it. The article doesn't quote speakers or attribute ideas ("Tom argued...", "Nupoor responded..."). Instead, it presents the ideas directly, as if the writer is making the case themselves, drawing on the conversation's insights. The tone should be confident, slightly opinionated, and engaging — like a well-written blog post or magazine piece, not an academic paper.

### Structure

1. **Hook** (1 paragraph): Open with the most striking or provocative point from the conversation — something that makes the reader want to keep going.
2. **Context/tension** (1-2 paragraphs): Set up the problem or debate. What's at stake?
3. **Core argument** (3-4 paragraphs): Trace the main thread of ideas. Build logically from one point to the next. Weave in supporting details from different parts of the conversation.
4. **Counterpoint or nuance** (1-2 paragraphs): Acknowledge complexity. Where does the argument get uncomfortable or uncertain?
5. **Close** (1 paragraph): End with a forward-looking reflection, not a summary. Leave the reader thinking.

### Formatting rules

- Give it a compelling subtitle formatted as **bold text** (not an H3 heading).
- Precede it with: `*If the podcast were an article, this is what it would read like. (Note: AI-generated.)*`
- No speaker attributions. No "In the podcast, they discussed..." framing.
- Use em dashes, concrete details, and specific examples from the conversation to keep it grounded.

## Step 7: Add the figure image

After the narrative essay and before the Transcript heading, add:

```html
<figure><a href="https://youtu.be/[VIDEO_ID]"><img src="{{site.media}}/[image-filename].jpg" alt="[Podcast title]" /></a><figcaption>[Podcast title]</figcaption></figure>
```

## Step 8: Verify the post

After assembling everything, run these checks before considering the post done.

### 8a. Test the audio link

Verify the podcast MP3 returns HTTP 200 from S3:

```bash
curl -sI "https://s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/[FILENAME].mp3" | head -3
```

Expected: `HTTP/1.1 200 OK` with `Content-Type: audio/mpeg`. If 404, the file wasn't uploaded correctly.

### 8b. Test the YouTube embed

Verify the video embed URL returns HTTP 200:

```bash
curl -sI "https://www.youtube.com/embed/[VIDEO_ID]" | head -3
```

Expected: `HTTP/2 200`. If it fails, the video ID is wrong.

### 8c. Test the thumbnail image

Verify the image is accessible on S3:

```bash
curl -sI "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/[IMAGE_FILENAME].jpg" | head -3
```

Expected: `HTTP/1.1 200 OK`. If 404, the image wasn't uploaded.

### 8d. Test all resource links

Extract all URLs from the Resources section and check each one returns a success status:

```bash
grep -oP 'https?://[^\s)]+' [POST_FILE] | sort -u | while read url; do
  code=$(curl -sI -o /dev/null -w "%{http_code}" -L "$url" 2>/dev/null)
  echo "$code $url"
done
```

Expected: All return 200. Known exceptions:
- **LinkedIn** URLs return 999 (blocks automated requests) — this is normal.
- **ResearchGate** URLs return 403 (blocks bots) — this is normal.
- Any other non-200 code indicates a broken link that needs fixing.

### 8e. Validate frontmatter

Check these fields in the YAML frontmatter:

- `podcast_duration` must be in `HH:MM:SS` format (two digits for each segment, e.g., `"01:18:01"` not `"01:18:1"`)
- `podcast_file_size` should be a number (MB)
- `podcast_length` should be a number (bytes) and should match the `Content-Length` returned by the audio link test in 8a
- `description` should contain valid HTML (check that all `<a>` tags have matching closing tags and proper `href` attributes)
- `image` filename should match the filename tested in 8c
- `permalink` should start with `/blog/`

### 8f. Grammar and formatting review

Scan the shownotes (Topics, Narrative essay, and Resources sections — NOT the transcript) for:

- Spelling errors
- Missing or unclosed markdown formatting (e.g., unclosed `*` for italics, unclosed `**` for bold)
- Sentence fragments or run-on sentences
- Inconsistent em dash usage (use ` — ` with spaces, not `--` or `—` without spaces)
- Proper capitalization of product names, company names, and university names

Do NOT rewrite for style — only flag clear errors.
