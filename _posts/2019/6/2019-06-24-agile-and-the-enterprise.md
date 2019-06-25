---
title: "If the current trend in software development is independent agile teams, does enterprise content strategy have any chance of realistic adoption?"
categories:
- technical-writing
permalink: /blog/agile-teams-and-enterprise-content-strategy/
bitlink: https://idratherbewriting.site/agileandenterprise
summary: "Agile seems to favor independent, autonomous teams. In contrast, enterprise content looks to harmonize content across multiple teams and boundaries. In a current model where agile trends dominate, how do you reconcile larger needs for enterprise content strategy?"
---

## Agile versus the enterprise

I've been listening to some podcasts from [Towards a Smarter World](https://simplea.com/Treasury/Podcasts), produced by Cruce Sanders at [A] ([simplea.com](https://simplea.com)). Listening to these podcasts has prompted me to think about how agile fits in with enterprise content strategies. The issue is that agile teams tend to be independent, autonomous smallish groups. For example, companies might spin off a group of 20 people (including various roles &mdash; engineers, testers, UX, project managers, and sometimes a technical writer) to build out a solution. The agile teams function as small startups within the larger company.

Agile implementations and adaptions vary considerably, but these teams are often autonomous and single-threaded so they can be nimble and execute on a solution from end to end. You need to move fast to stay competitive in a rapidly evolving tech landscape. The doc produced by the tech writer might be a standalone help system, maybe even integrated into the same repository as the code.

Now shift gears and put on your enterprise content strategy hat. Look at all the content touchpoints customers have across the enterprise through their product journey, from pre-sales touchpoints with marketing, solutions engineers, and business development pitches to post-sales touchpoints with tech docs, support, and troubleshooting. How do you ensure consistency of brand, terminology, style, and message across all of these touchpoints? What about a unified taxonomy for all of this content that feeds into a larger faceted search or content management system where assets are described, shared, tracked, and re-used? Enterprise content strategy by definition forces you to cross department and team boundaries to coordinate on a higher level.

## Moving against current trends

Is agile at odds with enterprise content strategy? It seems like the current trend is for agile engineering teams sensing large documentation needs to hire a dedicated technical writer specific to their team. These writers often arrive with only marginal obligations to adhere to a larger system. If the writer has to feed into the same toolchain, taxonomy, style guide, re-usable content storage, approval process, and publishing workflows as the enterprise, then you've slowed down the tech doc process and have immediately started moving at odds with agile's nimble and quick development process.

If the natural direction for tech writer dynamics in companies is small agile teams rather than coordinated cross-department collaborations and structures, then is enterprise content strategy an uphill battle that's simply running counter to trends in software development? Should we resist the move to unify content across the enterprise and instead be satisfied with the current product we're documenting, without squaring and aligning it within the larger content landscape outside of our agile team's concerns?

Any writer has to draw lines around their stewardship to survive. Take on too much, drawing the circles of ownership too large, and the work will crush you. Is your circle of ownership limited to your agile team's product only?

It's a valid position to take, I guess, but the content produced will likely be poor quality. Content produced separately by many different teams written in different styles, published by different tools and systems, without any larger awareness often results in a fragmented and disjointed content landscape.

Even setting aside content and focusing on code only, engineers face similar problems. If engineers build separate systems that don't integrate, the user experience also ends up being disjointed and impractical. Users might find that one SDK doesn't integrate with another, or that one tool is built on a technology that is incompatible with another.

This kind of disjointed hodgepodge of tech is understandable in mergers and acquisitions, but few users will understand and be patient with the idea that the single company they interact with is actually made up of dozens of small, independent internal companies that, it has become clear, don't seem to know what each other is working on or building, since none of the products work together.

As a worse case, in massive companies, totally isolated teams might even be working on different solutions for the same problem, unaware of each other's existence.

Good documentation can't be written with blinders on. I wrote about the need to make information harmonize in the larger landscape in [Principle 3: Ensure information harmony in the larger landscape](/simplifying-complexity/ensuring-information-harmony-in-the-larger-documentation-landscape.html). I summarized this principle as follows:

> Before adding new topics to an information landscape, look to see how the new information will fit in with the existing information &mdash; across all information forms, from docs to blogs, forums, white papers, and more. Synthesizing information to harmonize with the larger information landscape requires wide reading and analysis but is essential for the user experience, since users often bounce from one information source to another as they consume information.

Without question, it's much harder to understand the larger landscape in which you're writing, and to assess how your content (and the terms, styles, semantics, etc.) that you're using fit into this other content for which you likely do not own or have stewardship over. It's much easier to write a standalone article and push it out.

The standalone nature of writing is what makes blogging so easy. Before writing this article, I didn't search my blog to see if I'm repeating or contradicting earlier posts on this topic. Have I really been blogging for 13 years without ever having visited this topic? How does this current post align with other content on the same topic? Well, that's too much effort. I'm just going to write something new and toss it over the content wall....

The traditional strategy for allowing independent, autonomous teams to harmonize within the larger content landscape is to create style, brand, and design guides that everyone aligns with. UX and marketing teams are excellent at producing these guides &mdash; clearly explaining color palettes, voice, logo usage, and such. Style guides for tech docs are similarly helpful, but content by nature is messier. Content has the added problem of not making sense with other content (rather than merely clashing in style).

To give you an example, I'm currently documenting video skills for multimodal devices. In exploring other content, I found that the end-user docs (written by another team) calls these same devices "Echo devices with a screen." Another doc team is creating content for custom skills and how to get custom skills on multimodal devices (which they're calling "Alexa-enabled devices with screens"). Don't confuse "video skills" with "custom skills," even though they're part of the same Alexa Skills Kit and are used with multimodal devices. Do users understand that content produced on our doc portal is the product of multiple doc teams, as well as some other independent groups with lone writers, and that each of these teams has no real obligation to be aware of what each is writing, let alone to conform to the same terminology and style?

Content on any doc site might all read with the same general tone and follow similar structures (due to convention with industry standards), but in many places the content might be muddled and confusing. Those intermixed semantics are what degrade the user experience, not necessarily style differences. Many writers wearing blinders tackling the same subject without understanding the larger landscape they're writing in results in a disjointed customer experience, for sure.

## Levels of awareness

If there's a scale for content quality, the next level of awareness (beyond awareness of other documentation written by other groups) is to be cognizant of content outside the documentation domain &mdash; content on blogs, white papers, ebooks, business development slide decks, and other collateral produced by other groups outside of documentation.

And stretching even further, a good writer should also be aware of the competitor's landscape. I wrote about this in [My documentation takeaways from the Boeing disaster -- two essential doc questions to ask for any project](/2019/03/20/two-doc-takeaways-from-boeing-disaster). In that post I argued that good documentation should address the question, "How does this product differ from other products?"

> This question is actually rarely addressed in documentation, since many companies do not call out competitors or compare their products with competitors. For example, even though my audience for Amazon Appstore documentation are users who presumably have apps that they’re also submitting to the Google Play store, I rarely call out differences between Amazon Appstore and Google Play. There are two reasons for not doing this.
>
> First, callouts like this require me to be familiar with other products and systems. It takes a lot of knowledge and awareness to write about how, say, developing an app feature for Amazon differs from developing an app feature for Google Play or developing a feature for Apple’s Appstore. You barely have enough time to ramp up on your own products, let alone provide more in-depth cross-industry comparisons.
>
> Also, comparisons inevitably invite judgment, and in my experience, product managers run from this like a disease. As soon as you start explaining how your product differs from competitor products, you’ll raise questions in the user’s mind about pros and cons, advantages and disadvantages, and such. It seems so much safer and easier to just write about your own product, and let users bring their own background and experiences with other products to the text in order to draw their own comparisons. Legal departments also do not like technical writers writing about competitors in documentation.

So not only should documentation be aware of other content in the enterprise, but also documentation from competitors, as difficult as this might be. If you're just keeping your head down and documenting your product within your agile team, nothing more, then what you write will likely be more superficial and limited.

Here is where practitioners can actually learn from academic genre conventions. Nearly every academic article presents the context of previous research on the topic. Academics don't just start writing without awareness of what has already been written on the topic. They start by surveying the landscape, summarizing what other research has been done, and then move forward with their current argument.

## Wrestling with boundaries

Let's return to the original issue: If the current trend in software development is independent agile teams, does enterprise content strategy have any chance of realistic adoption? Most writers won't expand their horizons to consume more than their immediate product documentation requires. No one will force you to read documentation written by other departments or docs written by competitors. So should you even bother? Surely this expanded analysis isn't scoped into your project plan or expectations, right? Where, then, do you find the time or bandwidth to do it?

I'm not sure. In companies like Microsoft, the developer docs include author names and timestamps, which helps provide context. There might be value in celebrating the individual authorship &mdash; users might be more sympathetic to differences of style and semantics, or overlapping content, even from the same company.

Let's expand our vision even more here and examine the example of the Internet. The Internet provides one big pot of content soup, with no effort to align the content across domains, for the most part. You get a lot of different hits on the same topic, with different approaches and styles and perspectives from different authors at different times on different websites. Content on the Internet is redundant, outdated, disjointed, written in different styles for different purposes, audiences, business contexts, and more. Why can't content from the enterprise be viewed in a similar way? A good search engine like Google surfaces content and lets you pick and choose what topic happens to be the most relevant, even among many similar matches.

Although I want to champion enterprise content strategy, if the web has shown us the future, the future is independent publishing from disparate groups. It works out all right, for the most part, on the Internet, though enterprises might have another standard.

Most likely one finds a middle ground here &mdash; finding some awareness of other content but not extensive awareness. In general, good writers will read beyond their agile team's boundaries to provide better semantic context and fit with their content, but none of us has time to read endlessly and widely before the doc is due and another project takes the stage.

Whatever your position, if you want to write more informed documentation, try to climb up this pyramid of awareness:

<img src="https://idratherbewritingmedia.com/images/triangleofawareness.svg" alt="triangle of awareness" />

Start with awareness of content related to your product, and then expand to learn about similar content across the company, and then look at the same content in other business groups, and finally expand your analysis of competitor documentation for similar products. Most tech writers do the base layer and maybe the second, but few climb up higher.
