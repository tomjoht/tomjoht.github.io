---
title: "Guest post -- The effects of terminology consistency on the reader's comprehension and attitude"
categories:
- writing
keywords: terminology, comprehension, usability
description: "From a cognitive perspective, what do we know about the effects of terminology consistency on how our readers understand and 'like' our documentation? In this guest post, Yves Pierrot explores how the cognitive aspects of memory, reading, text comprehension, and search strategies potentially influence reader comprehension in tech docs. He admits that research in this area is lacking, so he pulls on his own experience and background in psychology as he reflects on principles such as priming, polysemy, and more."
bitlink: http://bit.ly/termconsistencytw
---

We know that terminology/vocabulary consistency is a requirement for a good technical documentation, but what do we have to back it up? Specifically, is there solid research demonstrating that terminology consistency has a positive effect, or that inconsistency has a negative effect, on reader’s comprehension of, and reader’s attitude towards a technical documentation?

I did some digging. I could find many things on the word or sentence level in cognitive research about reading, but I failed to find cognitive experimentation on
- the effect of lexicon consistency on large technical content understanding and/or navigation.
- the effect of the writing style on reader's social representations.

Then I remembered some well-documented principles and observations which I could draw upon to build an argument for terminology consistency.

## Research on priming

Reading a word activates its semantic category and makes you better at integrating any exemplar for this category. Reading "nightingale," for instance, will likely make you better at recognizing and interpreting knowledge about birds in the later parts of the text. In turn, reading about a category makes you better at detecting and integrating exemplars from this category. Semantic relations makes you process texts faster and improves understanding.

We could infer from this that non-consistent terminology in our documentation (when several words are pointing to the same thing) is supposed to activate the same semantic categories, so based on priming alone inconsistency should not impair understanding of texts dramatically -- unless some of the terms that are used have several separate meanings, spanning different categories.

## Research on polysemy

The negative effect of polysemous words (words that have different meanings) on memory and comprehension are well known. For example, in French the word for "nightingale" also means "picklock," so it may invoke an entirely different semantic network if the reader or the text is related to the lock business. When processing these words, memory needs strong context.

I know of research and observations conducted by French cognitive ergonomists that demonstrate that an expert lexicon (the one that is typically never understood by readers other than the experts in the field) is specifically designed to create a relatively short vocabulary where one word means only one thing. Also, categories are very precisely defined, and of course far more extended, detailed, and deep than what lives in the mind of non-experts.

Knowing this, we could expect that a consistent lexicon in documentation will be effective if the reader is an expert in the field (this reader will expect one single word for one single thing), and less important for a non-expert (for whom the understanding of the content will be difficult in all cases and who could approach a concept from different angles).

If I could collect solid data on this, I'd have less of a hard time convincing companies to separate doc for experts in the tool and doc for "end-users" or "business users" of the tool. The objective of the doc is *not* to transform non-experts into experts because that takes not only time and effort but above all motivation. Technical communication should rather help all targeted populations.

## Observation of navigation behavior

My own personal experimental results on the way readers search through an extensive corpus of technical content supports the following behaviors:

- Readers focus on a very small set of words, frequently one or two, when browsing through a list of chapters, a hierarchy (table of content), or a list of search results. Instead of reading an item and wondering if what they search is in there, they focus on a word and detect if it is present or not in the line. The result is that if the word used in the line is related to what they're looking for but not the one they focus on, there is a high probability that they skip it. This effect is, of course, stronger under constraint (large lists, little time, etc.).
- If, alternatively, the readers turn to really reading the line instead of detecting a word, which takes a longer time and more focus (and fatigue), and they find something loosely related to what they are looking for, they will explore that part (chapter, link, etc.). If they don't find their target, they'll conclude it is not present in the corpus, even if the exact thing they're looking for is two lines down. I've seen a lot of search failures happen that way. The search from a list almost never gets to the bottom of the list. (You know the story about Google page 2).

From these observations, I infer that using a consistent terminology in a documentation will increase the chances for  readers to find what they are looking for if the reader has some previous knowledge of the "correct" vocabulary. On the other hand, during the first use of the documentation, someone who knows the "wrong" words could miss things entirely, and a non-consistent lexicon would actually help that person.

## Writing technical documentation in an organization

As professionals, we know that a consistent lexicon considerably helps the writing of a documentation by a team. If we extend this to technical communication as a whole, a consistent vocabulary becomes an effective tool that increases the efficiency in producing content and also makes organizations resistant to turnover -- if that vocabulary is documented. If it is not, then a large part of the benefit is lost.

If you remember that a large company employs one or several teams for documentation, for training, for technical presentations (pre-sales, events, etc.) or field services, then having one or several professionals working full time on the building, maintenance, and transmission of the in-house lexicon may be an appealing idea (the "Terminology Manager" position does exist in some companies).

The effect on content translation, as frequently noted, is even easier to materialize: we can sometimes put a number on it (translation costs, delays, refactoring, etc.). This is probably the argument that has the best chance of convincing an organization to put some effort in making the lexicon consistent.

From this point of view, we understand that a consistent terminology helps the content providers at least as much as the content users.

## Trust

The effect of the writing style on the reader's representation of the writer, or representation of the entity the writer stands for, is more complex (more interesting?). It could very well supersede all lower-level effects. We know from old research that a user interface that is evaluated as "more beautiful" is also perceived as "easier to use," whether or not it really is. We could imagine that content seen as "badly written" could be perceived as "harder to understand."

In some companies, I have seen complaints on how some parts of the doc seem to be written by a "non-native English speaker." Different populations react differently to this aspect of the language. Notably, the complaints I'm referring to come almost exclusively from the US. The priority of this issue seems to be higher for the reader than issues like the absence of needed content. (Perhaps many marketing specialists had the experience of a well-crafted, powerful, highly needed message totally ruined by a spelling mistake?)

As you suspect, a style perceived as non-professional could seriously undermine the trust that the reader may have in the content itself, as the shape of things so often has the upper hand over the content. I'm pretty sure the strength of these effects depends on the population we are writing for (location, level of education, language, level of expertise, age, etc.). I would so love to test that. I didn't find any paper on this.

## Conclusions

The conclusions I'm drawing are educated guesses based at least partially on personal experience that I would hurry to test right away had I the resource. We need to decide for ourselves until we get hard facts. My belief is that we first need to know who we are writing for, and what the reader needs to do with the content. That can override any characteristic of the documentation itself.

Yes, I believe we could discover populations of readers who don't give a damn about the occasional spelling mistake. However, it appears that even if in some cases a consistent terminology may not be that important for comprehension of content, it helps us a great deal, letting us produce better content faster. There should be no hesitation on working towards better consistency.

Generally speaking, we lack the experimental data we need to back up our assumption that consistent terminology improves the quality of our documentation and the attitude the reader can have towards it, even if our personal experience aligns in a consistent direction about it. We need more science. If you have resource to carry out experimentation on real-life bodies of content with real-life readers for a wide selection of population types, I'd be glad to help. And please call me out on any of the assumptions presented here if you have experimental results -- I love to discover new data.

I bet you noticed I randomly used "terminology," "lexicon," and "vocabulary" for the same thing. How did it make you feel?

## About Yves Pierrot

[Yves Pierrot](https://www.linkedin.com/in/yves-pierrot-b13a051/) started out as usability consultant. During ten years practice, he used cognitive psychology experimental methodologies for finding answers to his client's questions. He specialized in the knowledge and analysis of technical expertise. He then practiced technical communication for another ten years. Yves is a fervent advocate of the application of usability techniques to the search for perfect technical communication.
