---
title: "Simplified Technical English and HyperSTE"
categories:
- api-doc
keywords: hyperste, acrolinx, writing checker
summary: ""
bitlink:
published: false
---

I write a lot &mdash; both at work at and on this blog. Mostly, I rely on my own judgment to identify poor constructions, grammar errors, typos, and style issues.

But I would absolutely welcome more tools to aid in identifying problem areas. Not only would the tools help me spot the errors quickly and efficiently, tools could reduce the cognitive load that comes with writing and editing all day.

When I’m immersed in writing and editing for hours on end, at some point, I become blind to my own errors. My brain skims over words and sentences it has seen dozens of times. The more I try to refine content, the blinder I become to it.

## Origin of Simplified Technical English

In the late 70s, the European aerospace and defense industry was asked to improve the clarity and readability of their maintenance documentation. They came up with an approach they called "Simplified Technical English."

Simplified Technical English (STE) consists of a dictionary of allowed words and a set of writing rules. The dictionary includes around 900 words, and the writing rules have about 65 different grammar rules. Together, the dictionary and writing rules help writers produce clear and consistent documentation.

## Industry expansion toward an official standard

Although the original focus was on maintenance documentation for the aerospace industry, Simplified Technical English has since expanded to other technical industries. Now the aerospace language comprises only about 3% of the STE dictionary.

The AeroSpace and Defence Industries Association of Europe (ASD) eventually made Simplified Technical English a standard (called [ASD-STE100]((http://www.asd-ste100.org/request.html)) that many companies have to follow as part of regulatory standards.

Although mostly aerospace companies are required to adhere to the ASD-STE100 standard, companies in other industries follow it as well. For example, even the U.S. Army follows ASD-STE100 in their equipment documentation. (See http://www.asd-ste100.org/faq.html for more detail.)

## Dictionary

The STE dictionary limits the allowed vocabulary to words that have direct and clear meaning. This is because in the English language, some words (for example, “set”, “run”, “go”, “take”, or “stand”) have dozens of different meanings. It can be especially troubling for non-native English speakers to pick the right meaning from the sentence's context.

Take the word "fall”, for example. *fall* could refer to a season, a decline, or about [10 other meanings](https://www.merriam-webster.com/dictionary/fall). A scarf *falling* on one's shoulders, subordinates *falling* into line, a defeated soldier *falling* on his sword, a boy *falling* for the new girl, a lumberjack *falling* a tree,  a sinner *falling* to temptation, and so on.

When words have synonyms, STE prefers the simplest word. For example, instead of allowing writers to choose among “begin,” “commence,” “initiate,” “originate,” or others, STE adopts the most unequivocal and simple verb: “start.”

Sticking with a controlled vocabulary helps lower translation costs, because now the same verbs and phrases that have already been translated won’t require re-translation in computer-assisted translation programs.

## Writing Rules

In addition to a controlled vocabulary, the writing rules require you to use certain verb choices. For example, you generally keep sentences short, prefer active tense over gerunds, limit sentences to a single topic, avoid passive voice, and more. There are more than 60 writing rules.

The result of combining a controlled vocabulary with this grammar yields content that is clear and easy to follow, especially for non-native speakers.

Here’s an example from a tcworld article titled [A close look at Simplified Technical English](http://www.tcworld.info/e-magazine/technical-communication/article/a-close-look-at-simplified-technical-english), by Herbert Kaiser. Kasier provides this before and after the sentence:

**Before STE:**
> The synthetic lubricating oil used in this engine contains additives which, if allowed to come into contact with the skin for prolonged periods, can be toxic through absorption.

**After STE:**
> Do not get the engine oil on your skin. The oil is poisonous. It can go through your skin and into your body.

Which is easier to read? Now imagine that you’re an airplane mechanic who speaks English as a third language. Although the first sentence is still comprehensible if you’re a native speaker, it becomes increasingly difficult for second-language speakers. It’s also hard to scan.

(See the article for the full explanation of the change, and the STE grammar rules used.)

## Writing tools to implement STE

It can be difficult to remember the 900 words in the STE dictionary and 65 writing rules. To help with this, there are various tools you can install as plugins in your authoring environment. These plugins act as grammar/style checkers that highlight problem text and provide suggestions or explanations in the margins.

Etteplan, a technical services company based in Europe, offers a plugin called [HyperSTE](https://technicaldocumentation.services/offering/hyper-ste/) that integrates with most help authoring tools. HyperSTE can work with Microsoft Word, Adobe FrameMaker, Madcap Flare, Oxygen, XMetal, Author-It, and most major content management systems.

HyperSTE not only provides style and grammar checking for STE, it also lets you build your own dictionaries. These custom dictionaries contain your company's specific language and product terms.

Given the abundance of these terms (they can comprise more than half the words in your dictionary), building out your own dictionary to supplement the STE dictionary is essential.

You can also include other dictionaries in the HyperSTE plugin, such as *Microsoft Style for Tech Pubs*, *Chicago Manual of Style*, or S1000D.

## Training

Etteplan also provides training on Simplified Technical English and the ASD-STE100 spec. The training helps technical authors understand the principles and write with STE principles from the start, rather than just reacting to flagged words and sentences they’ve already written. The training that Etteplan provides distinguishes it from other companies offering similar services.

## Conclusion

Although you don’t actually need a plugin to follow the ASD-STE100 spec (which is nearly 400 pages), HyperSTE can make technical authoring much easier and cost effective. To learn more about HyperSTE, see [HyperSTE](https://technicaldocumentation.services/offering/hyper-ste/).

*Note: HyperSTE is one of the sponsors of this site.*

