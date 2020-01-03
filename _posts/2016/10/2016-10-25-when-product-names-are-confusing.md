---
title: "Apple's Two-Step Verification versus Two-Factor Authentication, or, When Marketing's lingo makes it impossible to communicate with plain speech"
categories:
- technical-writing
keywords: 
description: "In the latest episode of This Week in Tech (TWIT episode 585), the hosts talk about how confusing Apple's two-factor authentication is compared to Apple's two-step verification. The hosts, who are all tech gurus, had trouble sorting out the difference, and their experience with the service was even more problematic. This naming fail points to a core challenge in tech comm that happens when Marketing's choice of terms makes it difficult or impossible for tech writers to communicate plainly."
bitlink: http://bit.ly/confusingmarketingterms
---

If you want to read a good explanation of the difference between two-step verification and two-factor authentication, see Oleg's [Apple Two-Factor Authentication vs. Two-Step Verification](http://blog.elcomsoft.com/2016/04/apple-two-factor-authentication-vs-two-step-verification/). But to get a real sense of the Apple tech writer's pain, you must read these two documentation topics: 

* [Frequently asked questions about two-step verification for Apple ID](https://support.apple.com/en-us/HT204152)
* [Two-factor authentication for Apple ID](https://support.apple.com/en-us/HT204915)

I feel sorry for the technical writer who had to write this. Although there are slight differences between the two services, essentially both send you a text message with a special code to complete the second-factor verification/authentication. The newer version uses some security measures only available in later devices and doesn't have the variety of options surrounding the second-factor authentication as with the two-step verification method.

But that's not my point here. I could care less about two-factor whatever. I'd simply like to highlight that Marketing groups often put tech writers into difficult positions when they come out with new services like this, where one service is highly similar to the previous service but with some vague differences. 

According to the technical writer, two-factor authentication differs from two-step verification because "It uses different methods to trust devices and deliver verification codes, and offers a more streamlined user experience" ([Two-factor authentication for Apple ID](https://support.apple.com/en-us/HT204915)). I can imagine the tech writer saying in product meetings, "Wait a minute, tell me again ... so how is this different from the previous two-step verification thing?"

This example points to a larger pattern. Marketing frequently renames older features with newer terms to communicate the new features and differentiate them from the old. I doubt there are significant *semantic* differences between "two-step verification" and "two-factor authentication." The terms could probably be reversed. But why invent a totally new name for essentially the same feature? Perhaps they could have called "Two-factor authentication" something like "Two-step verification for iOS 9 and El Capitan or later devices." It's confusing to have two distinct names for essentially the same feature.

Over the years I have had my share of experiences where I've had to use product names that I thought were less than clear. Recently when Amazon released the [Fire TV Stick with Alexa Voice Remote](https://www.amazon.com/dp/B00ZV9RDKK/ref=ods_dp_mamv_tkprstrp), I asked why the product name differed from name of the previous Fire TV Stick, which was called [Fire TV Stick with Voice Remote](https://www.amazon.com/Amazon-Fire-TV-Stick-with-Voice-Remote-Streaming-Media-Player/dp/B00ZVJAF9G). Does the old stick not use Alexa as the voice remote service? Yes, it does. 
 
However, the first Fire TV Stick was released before Alexa became a household name through the Echo. I like the inclusion of "Alexa" in the product name because it lets people know that they're getting the same Alexa voice service in their Fire TV Stick as exists in the Echo. 

But in the third-party developer documentation (not end-user documentation) I didn't call the Fire TV stick either of its official retail names because the developer community consistently refers to them as "Fire TV Stick (Generation 1)" or "Fire TV Stick (Generation 2)". (You can see the differentiation [here](https://developer.amazon.com/public/solutions/devices/fire-tv/docs/device-and-platform-specifications).)

Ultimately, tech writers don't often have leverage to change product names set by Marketing or Product Management. Products and features can be incredibly difficult to name, and names are decided not only by Marketing groups, but through negotiations with Legal and Business teams. Sometimes you can't use a specific word in your product name (such as "Java" or "Android") even though it would clarify the feature for users. 

Writing with clarity and precision in the documentation gets tricky when you're hamstrung by confusing product terminology. And yet if you shed Marketing's terms and go with simple, plain, understandable terms that you think make sense, users also get confused because the terms in your documentation no longer match the terms in the product. You've now got an inconsistent user experience. This is a case of damned-if-you-do, damned-if-you-don't. It's why so many tech writers experience friction with Marketing. 

The same scenario frequently exists with user interface text. As a technical writer, you find yourself using button and tab names that make little sense (not to mention error messages), and you wish you could have renamed them much earlier in the product's evolution. But alas, it's two weeks before the release, and no one is changing anything. So you're stuck trying to articulate some highly technical concept using terms that few people will understand.

In a recent discussion on [Write the Docs Slack](http://slack.writethedocs.org/), someone expressed frustration when their company adopted and slightly modified a third-party product. The interface text used in the third-party product was extremely poor, so as this writer created documentation for his users, he had to decide whether to use the existing UI names in the third-party product, add apologetic notes in his documentation that translated the text into simpler terms, or invent new names altogether. 

In the end, he noted that it's better to get involved earlier in the cycle but that he has limited bandwidth and must compromise in this situation for now.

What's the solution to situations like this, where you're forced into doc scenarios where you have to explain complex concepts and workflows using the wrong terminology? I'm not entirely sure. Ideally, tech writers should try to suggest clear, easy-to-understand names for products and features well ahead of the release date, before the name gets cemented by Legal and promoted in Marketing campaigns. That kind of approach requires you to step outside your normal role as a technical writer and play a larger part in shaping the product.

The problem is that few of us have the luxury or clout to be involved so early in product design with this influence. As a result, we often have to make do with the existing terminology. Likely the only practical solution is to provide more glossary-like sections in documentation that frequently remind users what we mean, with occasional parenthetical insertions that help clarify along the way.

If you want to listen to the [TWIT episode](https://twit.tv/shows/this-week-in-tech/episodes/585?autostart=false), I recommend that you download [Stitcher](http://www.stitcher.com/) and listen to it through the Stitcher app. 
