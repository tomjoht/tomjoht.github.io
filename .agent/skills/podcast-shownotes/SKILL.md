---
name: podcast-shownotes
description: Assemble complete podcast shownotes from a raw transcript file. Use when the user has a podcast transcript and needs to build a full blog post with frontmatter, resource links, topic summaries, a narrative essay, and a cleaned-up transcript. Handles transcript cleanup (name fixes, fragment merging, transcription errors), frontmatter population, resource link formatting, topic extraction, and narrative essay writing.
metadata:
  author: tomjohnson
  version: "1.1"
---

# Podcast Shownotes Assembly

This skill takes a raw transcript and assembles a complete podcast blog post with shownotes. The user provides inputs; the agent fills in everything else.

**Example to follow**: Read the file `_posts/2026/08/2026-08-02-podcast-deaton-anthropic-tw-automation.md` for the target format, structure, and tone of all sections. It is the most recent post built with this skill and matches the current structure (`## Links mentioned`, the AI-generated note above the TOC, an essay with no em dashes). `_posts/2026/03/2026-03-21-will-tech-writers-survive-ai-academics-nupoor-jeremy.md` is a good secondary reference for tone, but its headings are from an older version of the format.

## Required inputs from the user

At the start of the session, remind the user of these preparation steps. They often have some done and others pending:

### Before starting (user does these themselves)

1. **Populate the transcript** — download the transcript from Riverside.fm and paste it into the post file in `_posts/`
2. **Upload the MP3** — upload via `./upload_podcast.sh`, then update the frontmatter with the correct `podcast_link`, `podcast_file_size`, `podcast_duration`, and `podcast_length`
3. **Upload the YouTube video** — upload to YouTube and have the video ID ready (the 11-character ID from the URL, e.g., `kHEk5GVMw9o`)
4. **Create the post file** — run `./post.sh` which auto-creates the rebrandly short link and scaffolds the file
5. **Upload thumbnail images** — upload via `./upload.sh` (both the `*thumb.jpg` and full `*.jpg` versions)

### During the session (user provides these to the agent)

1. **Guest LinkedIn URL(s)** — for the description HTML link (not included in Links mentioned per Step 4)
2. **YouTube video ID** — if not already in the file
3. **Any resource links** to include beyond what's mentioned in the conversation
4. **Categories** — if different from the defaults (`ai`, `podcasts`)

The user may provide all of these at once, piecemeal, or say "I'll give you that later." If inputs are missing, use `[VIDEO_ID]` or similar placeholders and note them in the final summary. Don't block on missing inputs — build everything you can.

## Step 1: Clean up the transcript

Transcripts from speech-to-text tools have common problems. Fix these **without changing meaning or voice**:

- **Name errors**: Ask the user for correct spellings of guest names, then search-and-replace all misspellings throughout the transcript.
- **Merge broken fragments**: Speech-to-text often splits sentences across paragraph breaks. Merge them into single coherent sentences.
- **Fix transcription errors**: Common issues include homophones ("laughs" for "layoffs"), garbled proper nouns, missing words at sentence starts.
- **Capitalize**: Fix lowercase sentence starts, proper nouns (product names, company names, university names).
- **Add missing punctuation**: Periods, question marks, commas where clearly needed.
- **Remove filler-only entries**: Delete entries that contain only "Mm-hmm" or similar with no substantive content, but keep them if they're interspersed naturally in conversation flow.
- **Remove stray characters**: Clean up `⁓`, stutter duplicates ("that\n\nthat"), and other artifacts.
- **Trim post-recording chatter**: Transcripts sometimes capture conversation after the sign-off ("let's wait for the recording to upload"). Cut everything after the final guest/host farewell.

Work in batches of ~100-150 lines to keep edits manageable and reviewable.

**Do this step even when the user only asks for the topics and essay.** Users often say "I already started it, just write the topics and narrative" while the transcript in the file is still raw. Clean it anyway — it's the part that most needs the work.

### Recurring transcription errors in this podcast's subject matter

Speech-to-text reliably mangles the same AI/docs vocabulary. Search for these:

| Heard as | Should be |
|---|---|
| Cloud Code, Clog Code, clot | Claude Code |
| Claude Tag, clot tag, Cloud Talk | Claude Tag |
| Mitlifly, Mint Lify, Vinlify, Mint Levi | Mintlify |
| cash hit rate | cache hit rate |
| a genetic / Segantic / aging tick | agentic |
| dogs, docks | docs |
| deck writing | tech writing |
| scale (in "product scale") | skill |
| L L S dot TXT | llms.txt |
| Bakteen | Bakhtin |
| anti-gravity | Antigravity |

Product and model names to verify rather than guess: Fable, Sonnet 5, Haiku, Bedrock, GrowthBook, BigQuery, Agent SDK.

**Product names are the most commonly garbled words in these transcripts.** The guest's company name, their product names, and any technical standard (like `llms.txt`) will almost certainly be misspelled in multiple different ways. Search aggressively for phonetic variants.

**When you can't confidently decode a word, leave it as spoken** rather than inventing a plausible replacement. Flag those spots to the user in your summary instead. Correcting garbled speech is in scope; guessing at facts is not.

### Speaker labels

Use the guest's/host's normal public first name, not whatever nickname the transcription tool produced, and stay consistent with how earlier episodes labeled the same person (for example, the transcript may say "Fabri" but previous posts use `**Fabrizio**`). Check a prior post before deciding.

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
description: "[1-3 sentence HTML description with <a href='...'>guest name</a> links to the guest's blog or website (not LinkedIn). Summarize the key themes discussed.]"
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/[filename].mp3
podcast_file_size: [size in MB]
podcast_duration: "[HH:MM:SS]"
podcast_length: [size in bytes]
image: [thumbnail-filename].jpg
linkedin: [linkedin post URL if available]
---
```

**Description style**: Start with "In this podcast, I chat with..." followed by guest names as HTML links (linking to the guest's blog or website, not LinkedIn), then 1-2 sentences summarizing the key themes.

The description renders as a summary block at the top of the published post (see `_layouts/default.html`), so it's the most visible place to credit people. **If the episode has a co-host, name them as co-host in the description with a link to their site** ("In this podcast, co-host <a href='https://passo.uno'>Fabrizio Ferri-Benedetti</a> and I chat with..."), and add their site to the Links mentioned section as well.

### Title guidance

The title is the one thing worth pushing back on. Two failure modes:

- **A striking number or anecdote as the whole title.** It hooks well but promises the wrong episode, and it ages badly in the archive. Prefer a title that names the argument, and let the anecdote do its work in the essay opener, a topic bullet, and the description.
- **Numbers that overstate what happened.** Verify the claim against the transcript before putting it in a title (for example, "100 PRs in a day" was merging *and closing* a backlog, not authoring 100 docs).

Also check the subtitle for unintended sting given the audience. A phrase like "the writer who stopped writing" lands badly on a blog read by writers.

Use ` -- ` or an em dash as the separator between the topic and the "podcast with X" half, matching earlier posts.

**When the title changes, update it in all four places**: frontmatter `title`, the iframe `title` attribute, and the figure's `alt` and `<figcaption>`. The permalink and rebrandly slug do not need to change.

## Step 3: Assemble the post body structure

The body should follow this order:

```markdown
Note: These shownotes are AI-generated.

* TOC
{:toc}

<iframe width="560" height="315" src="https://www.youtube.com/embed/[VIDEO_ID]" title="[Podcast title]" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Audio-only version

{% include audio.html %}

## Links mentioned

[resource links go here]

## Topics covered in this podcast

[10 key topics go here]

{% include ads.html %}

## Narrative essay version of the conversation

[narrative essay goes here]

[figure image goes here]

## Transcript

[cleaned transcript goes here]
```

**Important**: Place the AI-generated note (`Note: These shownotes are AI-generated.`) once at the very top of the body, before the TOC. Do NOT repeat AI-generated disclaimers on individual sections (Topics, Narrative essay, etc.).

The YouTube embed goes directly before the Audio section — not inside a `## Video` heading. Just place the raw iframe.

## Step 4: Build the Links mentioned section

The section heading is `## Links mentioned` (not "Resources").

For each URL the user provides:

1. Fetch the actual page title from the URL.
2. Format as: `* [Actual Page Title](URL) (Author/Source — brief context if helpful)`
3. Order: guest-authored content first, then host content, then third-party references.
4. LinkedIn profiles are not included by default, but add them if the user asks.

## Step 5: Write the Topics section

Create exactly 10 key discussion points. Precede the list with:

`Here's a list of topics we talked about.`

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
5. **Close** (1 paragraph): End with a forward-looking reflection, not a summary. Leave the reader thinking. Do NOT circle back to the opening concept — close with a new forward-looking thought rather than a bookend.

### Formatting rules

- Give it a compelling subtitle formatted as **bold text** (not an H3 heading). Check it for unintended sting given the audience (see the title guidance in Step 2).
- Precede it with: `*If the podcast were an article, this is what it would read like.*`
- No speaker attributions. No "In the podcast, they discussed..." framing.
- Use concrete details and specific examples from the conversation to keep it grounded.

### Prose rhythm: minimize em dashes in the essay

**Minimize em dashes in the narrative essay.** Overuse reads as a tell of AI-written content and produces a choppy, staccato rhythm. One or two across the whole essay is fine where the beat is genuinely earned; the problem is the pattern repeating every paragraph. This constraint applies to the essay only — the Topics bullets still use ` — ` as the separator between the bold title and the summary, which is structural rather than prose.

Removing them properly means restructuring, not substituting. Watch for these related tics, which tend to travel with em dashes:

- **The two-beat verdict**: "The words are cheap." / "It's not better prose. It's anchoring." / "Everyone wants them. Nobody has finished building them." Fold these into a longer sentence with a subordinate clause.
- **Interruptive asides**: "an agent describes the feature — competently, fluently, uselessly — because..." becomes "an agent will describe the feature competently, fluently, and uselessly, because..."
- **The dash as a lead-in to a list**: use a colon.
- **The dash as an appositive**: use commas, or recast as a relative clause.

Keep one or two genuinely short sentences where the beat is earned. The problem is the pattern repeating every paragraph, not any single short sentence.

### Content guidelines

- **Focus on main themes, not tangents.** If a topic was a brief aside in the conversation (e.g., local models, a passing mention of a book), don't give it a full paragraph in the essay. Focus on the ideas that drove the conversation.
- **Be explicit about transitions.** When you write "the shift" or "this change," name what you're referring to (e.g., "this shift from creator to reviewer"). Don't rely on the reader to infer the antecedent across paragraphs.
- **Avoid referencing internal or confidential work details.** If the podcast casually mentioned something about a specific employer's internal systems, generalize the example in the essay. Use generic technical writing scenarios (e.g., SDK migration guides, configuration parameter docs, API deprecation notices) instead of repeating specific internal examples from the conversation.
- **Don't bookend with the opening concept.** If the essay opens with a literary reference or specific idea, don't force a callback to it in the closing paragraph. The close should feel like forward motion, not a loop.

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

**Check for a carried-over video from the previous episode.** Drafts are often started by copying the last podcast post, which leaves the previous episode's video ID and iframe `title` in place. A stale ID returns 200, so the curl check will not catch it — compare the ID and title against the most recent podcast post. If the real ID isn't available yet, put a literal `[VIDEO_ID]` placeholder in both the iframe and the figure link so it fails visibly, and tell the user. Never leave a working link to the wrong video.

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
- The **rebrandly** short link (`idbwrtng.com/[slug]`) returns 404 until the user creates it — expected, but mention it.
- Any other non-200 code indicates a broken link that needs fixing.

Assets the user prepares separately (thumbnail, audio, video, short link) are frequently not done yet when the shownotes get built. Don't treat a 404 on those as something to fix in the file — verify each one, then list the outstanding items at the end of your summary so the user knows what's blocking publication.

### 8e. Validate frontmatter

Check these fields in the YAML frontmatter:

- `podcast_duration` must be in `HH:MM:SS` format (two digits for each segment, e.g., `"01:18:01"` not `"01:18:1"`)
- `podcast_file_size` should be a number (MB)
- `podcast_length` should be a number (bytes) and should match the `Content-Length` header returned by the audio link test in 8a. **If they don't match, the user probably copied metadata from the previous episode.** Trust the S3 `Content-Length` and flag the discrepancy.
- `description` should contain valid HTML (check that all `<a>` tags have matching closing tags and proper `href` attributes)
- `image` filename should match the filename tested in 8c
- `permalink` should start with `/blog/`

### 8f. Grammar and formatting review

Scan the shownotes (Topics, Narrative essay, and Links mentioned sections — NOT the transcript) for:

- Spelling errors
- Missing or unclosed markdown formatting (e.g., unclosed `*` for italics, unclosed `**` for bold)
- Sentence fragments or run-on sentences
- Inconsistent em dash usage in the Topics bullets (use ` — ` with spaces, not `--` or `—` without spaces). The narrative essay should minimize em dashes (1-2 max) — see Step 6.
- Proper capitalization of product names, company names, and university names

Do NOT rewrite for style — only flag clear errors.

### 8g. Check the categories

Categories are often copied from the previous post and may not fit. Verify them against the actual content (for example, `academics-and-practitioners` doesn't apply to an episode with no academics in it).
