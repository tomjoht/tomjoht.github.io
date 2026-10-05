# Project instructions

These instructions are shared by every coding agent used on this repo. `CLAUDE.md` is the real file, and `GEMINI.md` is a symlink to it, so edit either name and both tools see the change.

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

### Write in plain style

Avoid rhetorical flourishes or opinionated statements or punctuation that draws exaggerated attention to certain parts. The content doesn't have to follow simplified technical english (STE) but I do prefer a more plain style over the highly stylized output typically consistent with Claude's writing. Here are some principles to consider. None are hard and fast rules, just recommendations. Always prefer readability and flow over a formal construction.

**One idea per sentence, one topic per paragraph.** STE puts one instruction in one sentence, and the same discipline helps in prose. When a sentence carries two claims stacked on each other, split it into two sentences and link them.

**Keep the vocabulary controlled.** Pick one term for a thing and reuse it. STE's rule is one word, one part of speech, one meaning. Cycling through synonyms for variety is a strong AI tell, and it costs the reader precision, because they can't tell whether the new word means something new. If a skill is a skill, don't rotate through artifact, package, file, and instruction set in the same paragraph.

**Prefer active voice and simple tenses.** STE allows the infinitive, imperative, simple present, simple past, and simple future, and it permits passive voice in descriptive writing only where the agent is unknown. Avoid stacked auxiliaries. A phrase like "would have been able to be configured" almost always shortens to an active verb in a simple tense.

**Don't build long noun strings.** Something like "product skill eval loop coverage target" is six words deep and unparseable on first read. Break it apart with prepositions and articles.

**Don't drop parts of a sentence.** Keep the article, the subject, and the verb. This is the same point as "Don't truncate sentence openers" below, stated more generally.

**Use standard contractions.** Use contractions in standard ways: *do not* becomes *don't*, *is not* becomes *isn't*, *cannot* becomes *can't*, *does not* becomes *doesn't*, and so on. Avoid stiff or overly formal uncontracted phrasing. No need for more extreme contractions.

#### Where plain style collides with the voice rules

Two tensions are worth naming, because a literal reading of STE would flatten the voice described above.

**Short sentences are not the same as choppy ones.** The Voice section says Tom writes longer connected paragraphs, and that a paragraph of three short sentences is probably wrong. Both things hold at once. Cap the sentence, then join it to the next one with *However, Additionally, In other words, For example, As such*. What you want is a long paragraph built from short, clearly linked sentences, not a stack of clipped declaratives. Length comes from the connections between sentences rather than from the sentences themselves.

**Cutting adjectives is not the same as cutting opinion.** STE strips modifiers, while the calibration table above asks for more hedges and more evaluative words than a typical AI draft carries. The thing to cut is the empty intensifier, so *genuinely clever* becomes *clever*. The thing to keep is the stated judgment, as in *it works brilliantly*, *the hardest adjustment*, or *I'm still a bit mixed*. Plain prose can hold a strong opinion. It just states the opinion once and doesn't amplify it.

#### Where the dial sits

Push hardest toward STE in procedures, setup instructions, course steps, troubleshooting, and reference material. A reader there is following along with a keyboard, and any ambiguity costs them time. Relax it in blog narrative, podcast essays, and personal anecdote, where rhythm and digression are part of the point. Even relaxed, the sentence-length cap and the controlled vocabulary should hold, because those two do the most work and cost the least.

### Don't use rhetorical colons and dashes

The problem isn't the punctuation, and it isn't any single use of it. An occasional dash or a sentence built for emphasis is fine, and Tom uses both. The problem is frequency. When these constructions were allowed freely, drafts filled up with them, so treat them as something to use rarely rather than something banned. The rest of this section describes the pattern to keep rare. It's using a colon or dash to steer emphasis, setting up a short forceful phrase so it lands with extra weight. Grammatically this is fine. But so much AI-written content does it that the pattern now reads as a signature, and the manufactured emphasis gets annoying and distracting over a long piece.

Rhetorical, so keep these rare:

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

This is the highest-frequency piece of the plain style described above. Cut intensifiers that add emphasis but no information.

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

Some dashes here and there are fine. Beyond the rhetorical use above, em dashes read as an AI tell when they recur every paragraph, and they produce a choppy rhythm. A few in a long piece is fine where the beat is earned. Leave Tom's own dashes alone when revising his text, since the concern is drafts that lean on them, not the occasional one he writes.

When a draft has too many, remove them by restructuring, not substituting. These related tics travel with em dashes. (The two-beat verdict does too, and it's covered in the tic catalog below.)

- **Interruptive asides.** "an agent describes it — competently, fluently, uselessly — because..." becomes "an agent will describe it competently, fluently, and uselessly, because..."
- **The dash as an appositive.** Use commas, or recast as a relative clause.
- **The dash as a lead-in to a list.** A colon is correct here.

The podcast shownotes skill scopes its em dash rule to the narrative essay and allows ` — ` as a structural separator in Topics bullets. That exception still holds.

### The tics that give it away

Everything in this section is one underlying failure, so it's worth naming the mechanism before the list. An AI draft applies emphasis at a constant rate. Every sentence tries to land, every paragraph ends on a beat, and every section announces its own significance. Human prose varies: most sentences are flat and carry information, and the occasional one is shaped for effect, which is what gives the shaped one its force. A draft where every sentence is shaped reads as tic-filled and machine-made even when no single sentence is wrong.

The practical test is to look for the flat sentences. If you can't find a plain, low-stakes, purely informative sentence anywhere on the page, the page is over-emphasized. The most reliable revision pass is to delete every sentence whose only job is to make the previous sentence land harder.

Ranked by how badly each one gives the game away:

- **Rhetorical setup.** Announcing that something is interesting instead of saying it. "Here's a failure mode that gets almost no attention." "Notice what these have in common." "Here's what makes this interesting." Cut the frame and state the thing. If the observation is good, it doesn't need to be introduced as good.

- **Performed hedging.** Hedge the claim, not yourself. A real hedge limits what's being asserted, as in "this probably doesn't scale past thirty products." A performed hedge stages the author's inner state as a credential. "The part that nags at me." "I'd take the messier one every time." "Honestly, I can't construct a version where..." "This was the finding I had the hardest time accepting." Cut the staging and keep the qualification. The calibration table asks for more hedges than a typical AI draft carries, and it means the first kind.

- **Verdict fragments and labels.** "Distilled:" "The short answer:" "The practical upshot is short." A label standing in for a sentence is the rhetorical colon in a different costume. Write the sentence.

- **Narrating the argument instead of making it.** "The chapter runs in four movements." "Having argued the docs case this hard..." "That brings me to the most uncomfortable question in the chapter." This is distinct from the signposting the Voice section asks for. Announcing content is fine and sounds like Tom ("In this section, I'd like to propose a few design principles"). Announcing the drama of the argument, or grading the difficulty of one's own question, is a tic.

- **Extended metaphors, especially ones that come back.** A comparison can appear once where it clarifies something. Don't build a paragraph on it, don't extend it into a second vehicle ("a rudder on a boat that isn't seaworthy"), and don't call back to it in the closing section. Analogies from Tom's own life are welcome, and they're usually one sentence long.

- **Negation-then-correction.** "It's not X. It's Y." Once is fine. Twice on a page is a signature.

- **The two-beat verdict.** Two short sentences where the second delivers judgment on the first, as in "It's not better prose. It's anchoring." Fold into one sentence with a subordinate clause.

- **Rule of three.** Three parallel items where two would do, and three bolded lead-ins built to identical shape.

- **Bookending.** Don't force a callback to the opening concept in the closing paragraph. Endings should land on something concrete, per the Voice section.

- **Vague antecedents.** When writing "this shift" or "that change," name what you mean.

### Invisible style is the goal

For course topics and reference material especially, aim for prose that doesn't call attention to itself. The reader should come away with the information and no impression of the writing at all. A sentence that makes a reader notice the craft is a sentence that stopped them from reading, and the accumulated flourishes are worse than any one of them, because they read as a house style rather than as a person thinking. Judgment and opinion still belong in the prose. State them once, plainly, and move on.

## Accuracy

- **Verify every quote, statistic, and citation against the primary source before publishing.** AI-drafted course content has produced hallucinated quotes and wrong figures here before. Check arXiv abstracts, linked articles, and original posts directly rather than trusting a summary or a secondary write-up.
- **Prefer the number the primary source states.** When a secondary source and a paper disagree, use the paper and say which version you read, since arXiv versions can differ.
- **Don't invent quotes.** If you can't locate the exact wording in the source, paraphrase and drop the quotation marks.

## Confidentiality

Don't reference internal or confidential details from the author's employer. This includes internal meeting notes, colleague names, internal tooling and pipeline details, internal telemetry or metrics, and unreleased plans.

Source material handed to you may contain this even when the request doesn't. Research docs, transcripts, and notes are often assembled from internal material. Generalize the lesson and attribute it to a public source, or use a neutral hypothetical example instead.

## Images

The image bucket is lock-protected on purpose. Replace an image by uploading under a new filename. Never overwrite an existing one.
