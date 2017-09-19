---
title: "Trading eloquence for simplicity: The language we lost/gained working in tech comm"
categories:
- general
keywords:
summary: "Although technical writers champion plain language, embracing plain language for many years can cripple your ability to use more sophisticated language, like that of a literary author or essayist. There isn't much room for literary play or even playful tones in technical documentation. Following the rules of simple language has distorted my ability to read anything that blatantly violates those rules. Sometimes I feel that simple language has removed my ability to use more sophisticated sentences and speech."
bitlink: http://bit.ly/
published: false
---

My wife is in a masters of liberal arts programs at Stanford. When she writes an essay, she asks me to read it and provide feedback. Every time I review an academic essay, it reminds me of the stark differences in language. In tech comm, most of the more interesting, flavorful words she uses in her essay are off-limits for technical documentation.

For example, here's a smattering of words and phrases she used in her last essay:

* imposed didacticism
* pearlescent hues
* erstwhile acolyte
* progeny
* wanton
* placatory efforts
* intangible
* ephemeral
* uncannily
* evocative
* existentialist ideal of transcendence
* immanence
* blessed cessation of incessant demand
* litany
* emotional expenditures
* begrudge
* solicitous weather forecasts
* ebbed in bolstering
* travesty of symbiosis
* unfathomable pit of neediness
* modulating
* deputizing
* chivvy
* yonic
* staunching
* counter-narrative
* foisting
* catechism
* talisman
* culminatory
* inaugurated
* commodity
* promotional conventionality

*None* of those words would be welcome in technical documentation. Instead, best practices for language in technical documentation are to use simple, unambiguous words that have one meaning. You also use short sentences, small paragraphs, and frequent subheadings.

Despite the attempt at simplicity, technical documentation struggles with its own jargon. In a topic I was working on last week, the following words might be just as challenging as the previous academic ones:

* Fire TV
* Android Nougat
* Fire TV Generation 2
* Android 7.1.2, level 25
* Fire TV Edition
* Fire TV Stick Gen 1 and 2
* backported Marshmallow
* Lollipop, or Android 5.1, level 21
* uplevel
* permissions at runtime
* linking to private libraries
* normal and dangerous permissions
* declared in your app's manifest
* revoke individual permissions
* single binary targeting multiple devices
* gyroscope permissions
* public NDK APIs
* Private API
* Picture in Picture (PiP)
* Content Recording
* Time-shifting APIs
* Apps & Games Services SDKs
* in-app purchasing
* parity with Nougat
* participating providers
* target devices
* `Build.Model`
* `Build.VERSION.SDK_INT`
* dependencies
* SDK add-on

Imagine if you were to use academic language *and* technical jargon? That would be a one-two punch for incomprehensibility (though it would score a ten for comedic effect).

The difference in style between academic essays and technical documentation isn't anything new. But I'm a bit troubled by it. After working many years in tech comm, much of my wife's vocabulary is no longer part of my lexicon. I'm constantly going to the dictionary to look up words when reviewing her essays. It makes me feel out of step with my English BA and MFA background.

More importantly, in giving up these words, I have a sense of having lost something &mdash; my delight in language, learning new words, and in reading and enjoying the eloquence of an author. Now when I read an author who uses more sophisticated language, I find myself constantly asking, couldn't the writer have expressed this in a simpler way? Why use that uncommon word instead of a more familiar one? My distraction with the language often poisons my attitude toward the content and author.

## Comprise

As an example of plain versus complex language, let's look at a specific use word: **comprise**. From a plain language advocate's point of view, is there ever a time you should use **comprise**?

In Wikipedia's article on [New England](https://en.wikipedia.org/wiki/New_England), the entry begins like this:

> New England is a geographical region comprising six states of the northeastern United States: Maine, Vermont, New Hampshire, Massachusetts, Rhode Island, and Connecticut.

In technical documentation, a guide might use similar language:

> The system comprises submodules A, B, and C.

But the question is ... *why*? Wouldn't "consists of," "includes," or "is made up of" work equally well and be a lot more understandable?

> The system consists of submodules A, B, and C.

or

> The system contains submodules A, B, and C.

or

> The system is made up of three submodules: A, B, and C.

The substitutes all work well. Additionally, *comprise* is a problematic word with slippery usage. Apparently, there's no wrong way to use this word. If you look at usage comments for *comprise* in dictionaries,  you'll find that these constructions are also allowed by usage panels:

* New England is comprised of six states.
* Six states comprise New England.

See [Webster](https://www.merriam-webster.com/dictionary/comprise) and [other sources](http://itknowledgeexchange.techtarget.com/writing-for-business/comprises-or-is-comprised-of/).

In fact, comprise originates from the French word for "comprehend." This seems a little odd until you think of phrases like "a comprehensive exam," which is an exam that includes every part of something. In that sense, you could also say that "New England comprehends six states," though this use of *comprehend* is less common.

**Comprise** tells you more about the people using it than the content of what they say. Some people who use comprise are trying to hypercorrect their grammar to sound impressive. If someone says "is comprised of," it also usually means they're unfamiliar with the traditional usage of the word. But when someone objects to the phrase "is comprised of," it shows they don't understand that this usage is also acceptable, though rejected by many traditional grammarians.

At any rate, tech comm's focus on precision and clarity mean the word "comprise" is pretty much off-limits. This word joins thousands of other words that have become [extinct](http://phrontistery.info/clwdef.html).

## Language as a tool of expression

For the literary essayist or novelist, language is a tool for expression. The more words you know, the more precise you can be in finding the exact word or phrase to describe something. When my wife writes her essays, maybe there's no better phrase to capture her meaning than "erstwhile acolyte." Would "former follower" or "previous disciple" not have worked equally well, without sending readers to the dictionary? Perhaps there's a play on words she's going for, or maybe she's mimicking the diction of the early 20th-century author (her essay focuses on Virginia Wolf), or maybe she's mocking someone by using a pseudo-formal phrase.

I'm 42 years old, and I don't think I've ever used the word "erstwhile" in either speech or writing. Why would someone decide to suddenly use *erstwhile* instead of former?

The Simplified Technical English (STE) dictionary limits the number of words you can use to around 3,000. Any word that has multiple meanings is usually restricted, or if used, can only be used in its most conventional way. Would literature be better off following the guidelines of Simplified Technical English? Is it time to move "erstwhile" to the growing list of extinct words?

No, of course we cannot force literature to follow simplified English. Eliminating huge chunks of the English language would be a mistake. Although STE has a place in technical documentation, which is already overflowing with its own impenetrable jargon, applying the same plain language principles to other genres would be the equivalent of removing all non-rainbow colors from a box of crayons. (No teal, no periwinkle, no burnt sienna. Just blue, green, yellow, etc.)

Additionally, our thoughts are made up of words. The more words we have, the more tools we have for both constructing and expressing our thoughts. Eloquent language (which might use phrases "blessed cessation of incessant demand," as my wife writes) is not always antithetical to communication. It's surely possible to be both sophisticated and clear.

## Programming rhetorical play in language

Although no one reads documentation to delight in the play of language, there is sometimes a playful tone in docs. Android candy release names (Kit Kat, Lollipop, Marshmallow, Nougat, Oreo, etc.) inject a little fun into programming language. But sometimes programming docs also sneak in little irreverent remarks, or slide into a playful and quirky tone. You see this more commonly in third-party guide books where authors have latitude to cut loose and be more authentic.

I once read a programming book on Java where the author explained the reason for this [playful, irreverent tone](http://idratherbewriting.com/2014/01/11/tips-for-writing-code-comments-in-developer-documentation/). The author explained that programming tends to be dry and boring (it is, after all, describing interactions with a non-human device). As such, by adding a little quirky, irreverent tangent every now and then, you wake up the reader and remind each other that you're both human. Tim Wright explains:

> Coding can always be a little more stressful than we would like, so don't be afraid to inject some humor into your comments. As far as brightening up someone's day when they're eyeballs deep in code, it doesn't get much better than reading a funny comment someone left. I've even caught myself laughing at comments I've written in the past. It's always a nice surprise and lightens the mood. (Chapter 9: Code Design) See [Learning JavaScript: A Hands-on Guide to the Fundamentals of Modern JavaScript](http://www.amazon.com/Learning-JavaScript-Hands-On-Fundamentals-Modern/dp/0321832744)

This non-standard tone is rarely allowed from company style guides, since companies often have many technical writers and so need to adopt a consistent and general voice (which they usually describe as friendly and helpful, but which is usually just professional and boring.)

Unless you're writing tech docs in a third-party guidebook, you're probably stuck with a standard, professional tone coupled with a form of Simplified Technical English. You can't break the professional tone nor delight in any kind of word play. In fact, eloquence and diction are usually far from my mind when I'm working on tech docs, as I'm just trying to understand what I'm even writing.

## Questions and dilemmas

Yet many of us studied literature for years in college, or we wrote (or aspire to) write creatively. The idea of combining language with technology for a career in technical writing appealed to our literary side. We had the idea that we could use our command of the English language to shape sentences, articulate complex ideas, and play with words all day like a child playing in a fountain at the park. Has it all been a lie? Has the simplified vocabulary made us essentially sub-lingual? And does the limited language trap us with simple thoughts?

Or instead, have we been cured of an illness of poor communication? While academics write in single sentences that span the length of paragraphs, and employ polysyllabic words when simpler words are available, have we become the St. Francis of language? Have we have thrown our ornate gowns down to the streets, sold our excess belongings, given our money to the poor, and simplified our lives with singleness of purpose so that we can be free?

Perhaps so. By stripping away fuzzy, ornate speech, we can focus on precision in meaning. We can convey ideas to readers in shorter, more compressed speech, increasing the efficiency of the exchange between the writer and reader.

But I'm not really sure whether technical writers have won or lost when it comes to language. We have traded eloquence for simplicity. Becoming a technical writer has poisoned my attitude toward academic language. I cannot read my wife's essays without stopping to wonder, when I run across a phrase like "existentialist ideal of transcendence," whether she could not have just said "find meaning and purpose" or "rise above the mundane to be free," or even what that phrase could possibly mean, if anything. Even if it does convey meaning, what are the chances that the reader's interpretation matches the author's intent?

Here I would like her to supplement her text with a brief concept diagram.
