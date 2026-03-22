---
description: Assemble shownotes for a podcast episode from a transcript file
---

# Podcast Shownotes Assembly

This workflow takes a raw transcript and assembles a complete podcast blog post with shownotes. The user will provide inputs; the agent fills in everything else.

**Example to follow**: See [this podcast post](file:///Users/tomjohnson/projects/idratherbewriting/_posts/2026/03/2026-03-21-will-tech-writers-survive-ai-academics-nupoor-jeremy.md) for the target format, structure, and tone of all sections.

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

**Description style**: Start with "In this podcast, I chat with..." followed by guest names as HTML links, then 1-2 sentences summarizing the key themes. See existing podcast posts for examples.

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

1. Fetch the actual page title using `read_url_content`.
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

## Transcript format

The raw transcript will arrive from speech-to-text tools. The expected format for each entry in the cleaned transcript is:

```markdown
**SpeakerName** (HH:MM) <br>
The spoken text goes here as a continuous paragraph. Multiple sentences in one turn of speech stay together in one block.
```

Key formatting rules:

- **Speaker name** in bold, followed by timestamp in parentheses, followed by `<br>` on the same line.
- The spoken text starts on the next line (no blank line between the speaker label and their text).
- Separate different speakers' turns with a blank line.
- Keep each speaker's turn as a single paragraph — do not break one turn into multiple paragraphs.
- Use `**Tom**`, `**Nupoor**`, `**Jeremy**`, etc. (first names only) as speaker labels.

## Final checklist

- [ ] All guest names spelled correctly throughout transcript
- [ ] Frontmatter fully populated (title, keywords, description, podcast metadata, image)
- [ ] YouTube iframe present
- [ ] `{% include audio.html %}` present
- [ ] Resources section with proper titles and links
- [ ] 10 topics in the correct format
- [ ] ~800-word narrative essay (not a summary, but an argument)
- [ ] Figure image with link to YouTube
- [ ] `{% include ads.html %}` between Topics and Narrative sections
- [ ] Transcript cleaned for readability
