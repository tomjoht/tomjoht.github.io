---
title: "Some thoughts after using AI to help with taxes"
permalink: /blog/taxes-thoughts-using-ai
date: 2026-04-20
categories:
- ai
rebrandly: https://idbwrtng.com/taxes-thoughts-using-ai
keywords: taxes, AI tax help, IRS, CP2000, capital loss carryover, backdoor Roth IRA, TurboTax, tax refund, artificial intelligence
description: "After receiving a letter from the IRS stating that I owed more taxes on a previous year, I used AI to identify the issue -- a missing cost basis on stock sales. I then successfully disputed the notice, and ultimately claimed a sizable refund by carrying over capital losses. AI tools like Claude and Gemini have become surprisingly capable at analyzing uploaded tax returns and guiding novices like me through complex scenarios."
image: taxrefundpostimage2thumb.png
---

* TOC
{:toc}

One aspect of living in the US is that every year, we have to figure out our taxes. I always thought the entire world did this, but that’s not the case. Many countries (such as Denmark, Sweden, Spain, Japan, the UK, and New Zealand) automatically calculate taxes for people. It’s a bit of a mystery why the US has its own citizens do it. Part of this is probably historical; there’s also the fact that there’s an entire industry of tax accountants and preparers who thrive off this industry. Frustratingly, TurboTax, the software whose main promotion is that it makes it easier to do your taxes, is also the primary lobbyist to prevent the US government from prefilling your taxes. The whole history of taxes is one that I’m curious about and might decide to dive into at some point. 

I wanted to make a brief post, though, about my recent tax experience and how AI has been helpful. A few months ago I received a letter from the IRS stating that I owed a lot more money from my 2023 taxes — enough that it stressed me out in an almost panicky way. After a bit of calculating and interacting with AI, I realized that I didn’t report the “cost basis,” which is the original amount paid, for stocks. It turns out, if you transfer your stocks from one brokerage to another (such as after selling your RSUs and moving the proceeds to another brokerage), the cost basis doesn’t carry over automatically in the auto-generated tax forms with the new brokerage. Anyway, long story short, this was the basis of a CP2000 letter from the IRS. 

Using AI, I figured out the right forms to fill out (Form 8948) and made a case for disagreement with the IRS. A couple of months later, they accepted my disagreement, and I received a small refund for my 2023 tax year. While analyzing those 2023 taxes, I learned that I actually had a huge capital loss that year, one that I could carry over to the next year to reduce my capital gains.

After receiving confirmation that the IRS accepted my disagreement, I then amended my 2024 taxes to carry over the 2023 capital losses and received a a sizable refund 8x the 2023 refund year. Had the IRS not said anything, they would not have had to pay me anything, as my ignorance would have kept me unengaged.

<figure><img style="max-width: 500px" src="{{site.media}}/taxrefundpostimage2.png" alt="Using AI for help with taxes" /><figcaption>Using AI for help with taxes</figcaption></figure>

I know very little about taxes and the right forms for different scenarios like this, but like I said, AI has been useful. In fact, you can upload your entire tax return (downloaded from TurboTax) and feed it into AI for analysis. (If you do this, use a private chat mode. I’m also using a PIN and other security measures.) Both AI tools I used (Gemini and Claude) have been able to number crunch my taxes with a high degree of accuracy and sophistication. If I’m uncertain about a result, I often cross-check the analysis with a different session or different AI tool. For example, before sending my letter of disagreement for 2023, I probably cross-checked the analysis half a dozen times between Claude and Gemini.

Some taxes are easy, but they can quickly become complicated. If you have investment income from stocks, HRAs and HSAs, side businesses, educational expenses, dependents, IRA accounts, and more, it can be overwhelming to figure out the right taxes. TurboTax estimated that it would take 1.5 hours to do my taxes this year. Instead, it took me at least 8 hours. This also includes helping my kids with their taxes. At one point, while trying to figure out the backdoor Roth IRA configuration (for a contribution made the previous year), I was so tired and confused I just resorted to capturing screenshots and asking Claude at nearly every screen what I should enter. 

Overall, I’m pretty excited that I don’t have to rely on paying a tax expert what would likely be \~ $1,000 to do my taxes (it can be much less if you don’t have complex finances). I’m sure this is one way that AI will erode an industry. But AI has empowered me in a way that I haven’t felt previously doing taxes.

(On this note — about eroding a tax experts' industry — note many tax experts and agencies that are set up to help file your taxes are propped up by regulations that prohibit the government from simplifying or prefilling your taxes. This arrangement is literally the equivalent of technical writers passing a law restricting how simple user interfaces for software can be so that tech writers will be needed to help confused users.)

{% include ads.html %}

On the flip side of AI helping users, I’m sure that AI empowers the government to employ more powerful surveillance tools to analyze millions of taxes and identify the most profitable ones that it should audit. AI enables surveillance at a new scale, with scrutiny over even the smallest details. Now if the government could only [figure out a way to tax billionaires](https://www.nytimes.com/2026/04/17/opinion/ezra-klein-podcast-ray-madoff.html), we’d be all set\!

Pondering my taxes has also made me question this government institution. The IRS reached out when they realized I owed them money; they did not reach out when they realized they owed me money. It seems like an adversarial institution set up to penalize and extract as much money from people as it can, never to help them realize if they’re paying too much. I chatted with one of my basketball buddies about this one day (he’s a tax accountant), and he agreed — the IRS is not on your team, he said.

As another example of the shadiness of the IRS, as I was helping my kids with their taxes (from summer jobs), they had to decide whether they even needed to file (whether they met the minimum threshold). Sure, they can choose not to file, but if they paid federal taxes, most likely they can get a full refund on these taxes — saying they don’t have to file is yet another subtle encouragement from the government to take rather than give.

I’m sure that AI is probably not 100% accurate in its tax advice and analyses. This is one domain that I’m an absolute novice in; if I had a CPA, I’d probably find a lot of small errors here and there. But I couldn't care less. If AI can get me most of the way there, that’s a lot more than I can get on my own. 

I’m now eager to try to see if AI can identify areas where I can reduce my taxable income for the next year, or identify what else I might be missing. I’m guessing that in the not too distant future, AI (with browser actions) will be able to fill out my taxes for me entirely, as long as it has the provided forms.

