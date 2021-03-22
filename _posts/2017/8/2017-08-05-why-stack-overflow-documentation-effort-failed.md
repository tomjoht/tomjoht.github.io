---
title: "Why Stack Overflow's Documentation effort failed -- a few thoughts from a technical writer's perspective"
categories:
- technical-writing
- writing
- podcasts
keywords: Stack Overflow, crowdsourcing, documentation
bitlink: http://bit.ly/stackoverflowdocfail
description: "Stack Overflow, mostly known as a forum for answering niche software questions, recently tried to launch a Documentation component to their site. The goal of Documentation was to 'do for Documentation what we did for Q&#38;A'. In other words, provide substantial, valuable information that could be the go-to source for tech docs instead of just one-off answers around niche topics. However, the effort failed and now Stack Overflow is sunsetting their Documentation."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/stackoverflowdocfail.mp3
podcast_file_size: 9.7 MB
podcast_duration: "12:09"
podcast_length: 9684748
---

{% include audio.html %}

For an introduction and tour of Stack Overflow's documentation, see [Welcome to Stack Overflow Documentation](https://stackoverflow.com/tour/documentation). For their sunset announcement, see [Sunsetting Documentation](https://meta.stackoverflow.com/questions/354217/sunsetting-documentation).

## Why Stack Overflow's Documentation failed

Here are a few reasons why Stack Overflow's [Documentation effort failed](https://meta.stackoverflow.com/questions/354217/sunsetting-documentation):

* **Documentation was largely redundant from the original sites**, so the Documentation pages didn't receive the anticipated traffic. There's not a compelling reason to go to Stack Overflow instead of the more authoritative source. For example, when creating a new project in Android Studio, would you go to [Stack Overflow](https://stackoverflow.com/documentation/android/85/getting-started-with-android/537/creating-a-new-project#t=201708080613182384865) or [Android's docs](https://developer.android.com/studio/projects/create-project.html)? Turns out more people went to the latter.
* **Examples-heavy model didn't take off**. The model of foregrounding examples before textual explanations was supposed to be the differentiating characteristic in Stack Overflow's Documentation, but it didn't seem important enough to users to persuade them against the original sources.
* **Documentation doesn't granularize into little chunks that can be easily crowdsourced.** It's a lot of work to write documentation. If the effort for contributors is too high, fewer people participate. Forum responses are much easier to crowdsource than entire documentation topics.
* **Contributing authors felt less confident writing docs than they did forum posts.** It takes more of a sense of expertise and authoritativeness to write documentation than to answer a forum question. Additionally, in a forum you're contributing your perspective amid a variety of other potential answers, not providing a single authoritative answer. Contributors felt intimidated.
* **The interaction model for writing documentation isn't as compelling as answering forum posts.** With a forum post, you're directly helping someone. Documentation, on the other hand, is more general. "You aren't documenting a specific problem you're facing, you're helping others deal with an entire class of problems by documenting" ([Welcome to Stack Overflow Documentation](https://stackoverflow.com/tour/documentation). You start out expounding on a general topic, not answering an actual question a user asked and needs help with. As a result, the effort to contribute isn't as engaging.

## Was the failure of Stack Overflow Documentation good or bad for professional technical writers?

Now, to make sense of the failure for technical writers. Was Stack Overflow's Documentation good or bad for professional technical writers? I think the failure has both good and bad results.

### Good outcomes from the failure

* **Evidence against crowdsourcing.** Stack Overflow is one of the most successful sites that programmers consult to find needed information. It has a functional gamification model that incentivizes many contributors. If any attempt at crowdsourcing docs could have worked, it would have been with Stack Overflow. That it failed presents us with a compelling argument that crowdsourcing docs, no matter the platform or topic, is an idea that doesn't work. We can stop trying this model with the latest technology that sells itself on how easy it is for everyone to contribute. Whether it's a new  [wiki](https://idratherbewriting.com/2012/06/11/essay-my-journey-to-and-from-wikis-why-i-adopted-wikis-why-i-veered-away-from-them-and-a-new-model-for-collaboration/) or an [Edit on Github button](https://idratherbewriting.com/learnapidoc/pubapis_edit_on_github.html), crowdsourcing docs (beyond simple fixes of typos and broken links) doesn't work.

* **Job security.** We're not going to be crowdsourced out of a job soon. There was a fear that companies would simply start a product category on Stack Overflow, and programmers and others would flock to the site to create the needed documentation. If that would have truly happened, my role as a technical writer would have been either eliminated or reduced to content curation and error correction. Stack Overflow's Documentation failure also reinforces the difficulty of the technical writer's role, which drives up our value. It's not easy to create compelling, clear, and helpful documentation, and people won't just create doc for free. Good documentation continues to remain [a struggle on open source projects](https://thenextweb.com/dd/2017/06/02/free-software-is-suffering-because-coders-dont-know-how-to-write-documentation/) as well. Technical writing really is hard, and it's hard to find good technical writers.

* **Existing doc model is okay**. The examples-before-explanations model won't cause us to re-architect all of our documentation. If this model had won out (and persuaded users to go to Stack Overflow instead of the original sources), it might have caused tech writers to rethink and reapproach all of our existing documentation. Since this didn't happen, perhaps it's okay to lead with an explanation before an example.

## Bad outcomes from the failure

* **Missed out on Wikipedia for tech docs.** If the model had worked, Documentation could have turned out to be an incredible resource for the Internet, on par with Wikipedia but with tech docs. This could have been the first fully functional crowdsourcing model for documentation. Given how influential Wikipedia has been at distributing and disseminating information, we could really use a similar model with documentation, which has traditionally been seen as "terrible" and a "waste of time" by many users.

* **Missed out on industry standard doc platform**. We might have abandoned all our fragmented tools and just started using Stack Overflow's platform for documentation. This could have eliminated a lot of tool tinkering and inefficiency while introducing a standard industry-wide platform and format for tech docs. Users would have had a central location to turn to for documentation.

* **Not forced into more interesting careers.** If Documentation had ended the careers of technical writers, we could have potentially transitioned into [more interesting lines of work](https://idratherbewriting.com/2015/05/31/realizations-from-career-fair-what-i-lost/). I've always wanted to join the CIA, military, or police force. If tech writing had been seriously threatened by the Stack Overflow Documentation model, it might have forced me to look elsewhere. As is, I'll probably just keep my [boring ol' tech writer job](https://idratherbewriting.com/2007/03/14/tech-writer-voices-podcast-is-technical-writing-boring-tech-writers-as-information-architects/). (I'm mostly kidding here. I love writing docs.)

## How could Documentation be tweaked for success?

How could the Stack Overflow Documentation effort be tweaked in order to be successful? More interestingly, why was Wikipedia, another information crowdsourcing effort, successful in contrast? What characteristics led to Wikipedia's success that Stack Overflow could adopt to achieve similar success?

These are the questions everyone wants to know when it comes to crowdsourcing, and I by no means have the answers.

On Niemanlab.org, Megan Garber summarizes scholar [Benjamin Mako Hill](https://mako.cc/)'s work on this topic. Garber explains:

> **Wikipedia attracted contributors because it was built around a familiar product — the encyclopedia.** Encyclopedias aren’t just artifacts; they’re also epistemic frames. They employ a particular — and, yet, universal — approach to organizing information. Prior to Wikipedia, online encyclopedias tried to do what we tend to think is a good thing when it comes to the web: challenging old metaphors, exploding analog traditions, inventing entirely new forms... But that approach, web-native and admirable as it was in theory, ended up hindering early encyclopedias’ ability to attract contributors. &mdash; [The contribution conundrum: Why did Wikipedia succeed while other encyclopedias failed?](http://www.niemanlab.org/2011/10/the-contribution-conundrum-why-did-wikipedia-succeed-while-other-encyclopedias-failed/)

That Stack Overflow tried to reinvent the documentation format in an unfamiliar model (not just examples first, but upvoting topics and surfacing more popular topics), may have contributed to its lack of success. Any time you present a new mental model, you also risk alienating a user base who already has an idea of what they're looking for. (But this is the risk inherent in any innovation.)

## Despite failure, Stack Overflow's forums are still documentation

Stack Overflow shouldn't consider the information in their forums as something other than documentation. Stack Overflow's forums provide helpful documentation for niche cases. Mark Baker regularly [champions Stack Overflow as a model for successful "Every Page Is Page One" documentation](http://everypageispageone.com/examples-of-eppo-topics/).

Perhaps instead of trying to introduce a new model, Stack Overflow should build on their existing forum model to make the information more valuable and documentation-like. Some ways they could improve their forum documentation might be as follows:

* **Cross-link topics better.** Wikipedia took internal cross-linking to another level that Stack Overflow could model. Stack Overflow already cross-links to redundant topics, but they could perhaps automatically link more topics in a more robust way.
* **Use forum questions as a starting point for more elaborate explanations.** Sure, the quick code reply is helpful, but they could add a "More Details" option for responders to give more information about the principles, background, and other info in the code samples. In this way, the forum would start with a specific question and the answers would transition into more general documentation. (This may or may not work &mdash; it's just an idea.)
* **Really reinvent the documentation-interaction model with chatbots/AI.** Here's a moonshot, but could chatbots and AI be leveraged in the interaction model? This could be a killer feature. Rather than searching for an answer using a text box, users could interact with an automated Stack Overflow chatbot that has an index of Stack Overflow information in its brain, ready to reply with the most popular answers, or to help new users nuance the right vocabulary for their questions.

## Conclusion

Now that the Documentation experiment is over, I'll be interested to see what innovations Stack Overflow follows next. I can't say that I participated much in Documentation or used it, but it was awesome to see the effort and interesting to interpret the result.

## Additional reading

To read more on this topic, see Beth Aitman's post [Thoughts on Stack Overflow's Documentation beta](https://medium.com/@beth.aitman/thoughts-on-stack-overflows-documentation-beta-f5a8b7f10c8). See also Bob Watson's thoughts in [It’s hard to write good technical docs](http://docsbydesign.com/2017/08/03/its-hard-to-write-good-technical-docs/), [Learning from V1](http://docsbydesign.com/2017/08/04/learning-from-v1/), and [Still buzzing about Stack Overflow documentation](http://docsbydesign.com/2017/08/08/still-buzzing-about-stackoverflow-documentation/).

See also [Tearing Down the Structure of Documentation](https://meta.stackoverflow.com/questions/349410/tearing-down-the-structure-of-documentation) and [Sunsetting Documentation](https://meta.stackoverflow.com/questions/354217/sunsetting-documentation).
