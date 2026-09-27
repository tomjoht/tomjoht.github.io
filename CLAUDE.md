# CLAUDE.md

Jekyll site for idratherbewriting.com. Courses live in `_ai/`, blog posts in `_posts/`, sidebars in `_data/`.

Existing workflows and skills live in `.agent/skills/` and `.agent/workflows/`. Read the relevant one before starting a task it covers. The podcast shownotes skill in particular carries detailed format rules that supersede anything general below.

## Voice

Tom writes in a recognizable first-person voice. Reference posts worth rereading before drafting: [Tom's opinionated guide to skill building 101](_posts/2026/06/2026-06-30-all-about-skills-intro.md), [Looking at the book club one year in](_posts/2026/04/2026-04-28-looking-at-book-club-one-year-in.md), [Too much coffee?](_posts/2026/04/2026-04-24-too-much-coffee.md), and [Buying a car in the age of AI](_posts/2026/09/2026-09-07-buying-a-car-in-age-of-ai.md).

The characteristics below are what make the prose sound like him. Drafts that skip them read like a generic industry explainer, which is the most common failure.

**Don't manufacture first person.** Tom's finished prose is full of "I," but he adds those himself, and he'd rather do that than have a draft guess at his experiences and opinions. Write the draft without reaching for first person, and leave room for him to pepper it in. Where a first-person sentence is genuinely needed to carry an argument, keep it to something he has actually said or done in this repo. Never invent an anecdote, a preference, or a claim about his own work.

**Do anchor claims to something concrete.** The habit underneath his first-person style is that general claims get attached to specifics rather than left abstract. A draft can do that without the pronoun, by naming the actual number, tool, file, or situation.

**Quantify from experience, including rough estimates.** He counts things constantly and isn't precious about precision. "I have roughly 20 of them on my doc site now." "About 10 skills." "Only about 30-40% of what I do can be partly automated." "Some contain 350+ elements." Numbers from his own work carry more weight than a cited statistic.

**Open problems with clusters of questions.** Two to five in a row, then the discussion. "What if you want to go on a trip? What if your wife wants to see a show at the same time? What if you just don't feel like reading a book that month?" This is one of his most recognizable moves and it almost never appears in AI drafts.

**Write longer, connected paragraphs.** Sentences link with *However, Additionally, In other words, For example, Overall, As such, In contrast*. He does not write in short punchy declaratives stacked on each other. If a paragraph is three short sentences, it's probably wrong.

**Use "In other words" to restate.** A signature move. He makes a point, then restates it more plainly.

**Hedge honestly, then commit.** "I acknowledge that programming an LLM is putting it optimistically, but I like to think of them this way." "I'm not convinced that I retain more, though, so I'm still a bit mixed." He names uncertainty without becoming mushy, and he still takes a position.

**Say plainly what he likes.** "It works brilliantly." "The sit test is the best thing AI recommended I do." "The simplicity of the skill structure is part of the ingenious nature of the skill specification." Enthusiasm is stated, not implied.

**Use parenthetical asides, often personal or wry.** "(Trust me — I have four kids. When all six of us are at the table, it's chaos. Four is perfect.)" "(if that's your aim)" "(lowercase)"

**Announce what a section is doing.** "In this section, I'd like to propose a few design principles for skills." "Now let me touch on an undiscussed aspect of skills I find interesting." "This brings me to a key point to emphasize."

**Reach for analogies from his own life.** Basketball, commuting, his kids, family history, reading habits, coffee. Not generic metaphors.

**Don't end on a grand conclusion.** He closes on a concrete observation, a list of resolutions, or a call to action, not a sweeping thesis restatement.

**Calibration.** Measured against Tom's posts and course topics, per 1,000 words, AI drafts consistently come in too confident and too flat. Targets worth checking a draft against:

| Marker | Tom | Typical AI draft |
|---|---|---|
| Hedges (*might, could, tends to, generally, somewhat*) | 4-5 | ~2 |
| Evaluative words (*love, odd, brilliant, hardest, best*) | 1.5-2 | ~0.5 |
| Casual markers (*Anyway, Well, honestly, of course, pretty*) | 0.5-1 | ~0.1 |
| Questions | 1.5-2.5 | ~1 |
| First person (*I, my, me*) | 5-20 in course topics, 40+ in blog posts | ~3 (leave it low; Tom adds his own) |

The first three are where drafts fail hardest, and they're the ones to actually fix. Prose that states everything as settled fact, never says what it likes, and never relaxes its register reads as machine-written even when the pronouns are right. Don't chase the first-person row. Adding "I" to a draft that is otherwise stiff and over-confident just produces a stiff, over-confident draft with pronouns in it.

Things that break the voice: writing about "teams" and "publishers" where he would write "I" or "you"; balanced essayistic prose with no stake in it; short verdict sentences; stacked fragments; and generalizations with no example from his own work attached.

## Writing style

These rules apply to all prose written for this site, including courses, blog posts, and podcast essays. They exist because the default LLM register is recognizable, and content that reads as AI-written undermines the site.

### Don't use rhetorical colons and dashes

The problem isn't the punctuation. It's using a colon or dash to steer emphasis, setting up a short forceful phrase so it lands with extra weight. Grammatically this is fine. But so much AI-written content does it that the pattern now reads as a signature, and the manufactured emphasis gets annoying and distracting over a long piece.

Rhetorical, so avoid these:

- `The short answer: a huge share of your traffic is no longer human.`
- `For a publisher, the takeaway is blunt: a bigger skill library doesn't help.`
- `Product skills differ from internal skills in one uncomfortable way: your users bear the risk.`
- `Routing is how the judgment gets delivered — not the point of it.`
- `A thin skill isn't an unfinished skill — it's a skill that delegates.`

Structural, so these are fine:

- `The following are a few official skills repositories:`
- `Here's why tech writers should own product skills:`
- `**Google Cloud:** Published an official skills repository.`
- `Mintlify compared four formats: HTML, plain Markdown, Markdown linking to /llms.txt, and Markdown with it inlined.`

The test is what follows the mark. If it restates, sharpens, or delivers a verdict on what came before, it's rhetorical and should be recast as its own sentence or folded into a longer one. If it enumerates or labels, it's structural and can stay.

Rewriting a rhetorical colon usually means splitting the sentence in two or subordinating the second half. Don't just swap the colon for a dash, which has the same problem.

### Minimize adjectives and adverbs

Prefer a just-the-facts register close to Simplified Technical English. Cut intensifiers that add emphasis but no information.

Common offenders are *genuinely, actually, precisely, exactly, dramatically, startlingly, considerably, substantially, remarkably, notably, arguably, quietly, actively, deeply, incredibly, massively*.

- Bad: `That's genuinely clever engineering.` → Good: `That's clever engineering.`
- Bad: `The most startling change is that nearly half of traffic...` → Good: `Nearly half of traffic...`

Keep the word when it carries real meaning, such as "what do its scripts actually do" where *actually* marks a contrast.

### Don't write one-sentence paragraphs

A lone sentence standing as its own paragraph is a way of forcing emphasis, the same move as the rhetorical colon. Fold it into the paragraph it belongs to, or give it company. This applies to section openers especially, where a single-line lead-in before the real content adds nothing.

### Don't truncate sentence openers

Fragments used as openers are a related AI pattern.

- Bad: `Two caveats before you extrapolate from these numbers.`
- Good: `There are two caveats to keep in mind before you extrapolate from these numbers.`

### Minimize em dashes

Beyond the rhetorical use above, em dashes read as an AI tell when they recur every paragraph, and they produce a choppy rhythm. One or two in a long piece is fine where the beat is earned.

Remove them by restructuring, not substituting. These related tics travel with em dashes.

- **The two-beat verdict.** "It's not better prose. It's anchoring." Fold into a longer sentence with a subordinate clause.
- **Interruptive asides.** "an agent describes it — competently, fluently, uselessly — because..." becomes "an agent will describe it competently, fluently, and uselessly, because..."
- **The dash as an appositive.** Use commas, or recast as a relative clause.
- **The dash as a lead-in to a list.** A colon is correct here.

The podcast shownotes skill scopes its em dash rule to the narrative essay and allows ` — ` as a structural separator in Topics bullets. That exception still holds.

### Other patterns to avoid

- **Rule of three.** Three parallel items where two would do.
- **Negation-then-correction.** "It's not X. It's Y." Used once it's fine. Used repeatedly it's a tell.
- **Bookending.** Don't force a callback to the opening concept in the closing paragraph.
- **Vague antecedents.** When writing "this shift" or "that change," name what you mean.

## Accuracy

- **Verify every quote, statistic, and citation against the primary source before publishing.** AI-drafted course content has produced hallucinated quotes and wrong figures here before. Check arXiv abstracts, linked articles, and original posts directly rather than trusting a summary or a secondary write-up.
- **Prefer the number the primary source states.** When a secondary source and a paper disagree, use the paper and say which version you read, since arXiv versions can differ.
- **Don't invent quotes.** If you can't locate the exact wording in the source, paraphrase and drop the quotation marks.

## Confidentiality

Don't reference internal or confidential details from the author's employer. This includes internal meeting notes, colleague names, internal tooling and pipeline details, internal telemetry or metrics, and unreleased plans.

Source material handed to you may contain this even when the request doesn't. Research docs, transcripts, and notes are often assembled from internal material. Generalize the lesson and attribute it to a public source, or use a neutral hypothetical example instead.

## Images

The image bucket is lock-protected on purpose. Replace an image by uploading under a new filename. Never overwrite an existing one.
