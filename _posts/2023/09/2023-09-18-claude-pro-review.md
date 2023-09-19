---
title: "Claude versus ChatGPT -- and a few thoughts on using AI chatbots on an Alaskan cruise"
permalink: /blog/comparing-claude-vs-chatgpt-on-an-alaskan-cruise
date: 2023-09-18
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/claude-pro-review
description: "In this post, I compare ChatGPT and Claude on an Alaskan cruise. Claude seems better at handling long content, and ChatGPT shorter content. Using both chatbots, I asked many questions to learn about my cruise surroundings. The chatbots expanded my curiosity and made me more attentive to my environment by encouraging endless questions."
---

Currently, two of the most popular chatbots are [ChatGPT](https://chat.openai.com/) and [Claude](https://claude.ai). Most people have heard of ChatGPT, fewer Claude. Until recently, Claude was available for free in a limited way, allowing only a certain number of queries per hour. Then Claude came out with [Claude Pro](https://www.anthropic.com/index/claude-pro), offering 5x the amount of data queries. They priced it the same as ChatGPT: $20/month.

I have subscriptions to both ChatGPT Plus and Claude Pro and have been comparing them. Both provide similarly intelligent answers to most questions I ask. The chatbots mostly differ in the input source limits. Claude has a 100k input source limit, while ChatGPT Plus's input source is around 4k tokens. (100k tokens is about 75k words. 4k tokens is about 3k words.) 

This input source also relates to the context window of the chat session. This means you can upload a long article and follow it up with a few questions (for example, a 90k token-length article followed by 10k token-length chat), or you can upload a short article and follow it up with a lot of questions (for example, 10k token-length article followed by 90k token-length chat).

For example, after I upload several chapters from my [API documentation course](/learnapidoc) into Claude, I can only ask a few questions in the chat session before I have to start a new chat session. And with a new chat session, the context of the uploads is lost. But even having this upload limit size is phenomenal compared to ChatGPT, whose token limit is around 4k.

Anyway, here are some additional differences between Claude and ChatGPT:
  
* You can upload PDFs to Claude (max file size is 10 MB). With ChatGPT, you have to paste in the content.
* Claude seems faster with its responses. The site loads quickly, and answers appear more rapidly. In contrast, ChatGPT sometimes hangs and requires me to hit Regenerate. At times ChatGPT's text appears word-by-word at a plodding pace.
* Claude has more safeguards (such as guarding against biases). In contrast, you can "jailbreak" ChatGPT more easily.

I'm sure there are a lot more nuances across different knowledge domains. For example, is one better at math than another? Coding questions? Specialized knowledge? I'm not sure. That kind of testing is beyond the scope of my post.

## Other realizations about LLMs in general

Before jumping into more comparison tests between Claude and ChatGPT, let me detour a bit. My value as an informal tech commentator is in relating my own experiences with AI, so bear with me.

Despite my enthusiasm for AI, my wife remains uninterested, skeptical, and dismissive of AI chatbots. I keep waiting for her to have that magic moment where she gets it, but so far, it hasn't come. My hypothesis for her apathy is that LLMs are likely only appealing to creator types &mdash; content creators, coders, builders, etc. In many other scenarios, AIs don't have a compelling use case.

But this past week I had opportunities to use Claude and ChatGPT a number of times in a non-creator scenarios. This week I was on a cruise to Alaska, spending time traveling along the western coast of Canada and stopping in Juneau, Skagway, and Ketchikan. During the cruise, we listened to naturalist lectures and tour guide explanations and stories. With each lecture and excursion, I had questions I wanted to ask, like most people. Sometimes I asked the guide, but I also started asking Claude and ChatGPT. 

For example, during the ship naturalist's lectures on bears, salmon, and trees, I asked Claude the following: 

* Who is Robert Raincock, the naturalist? [This was the ship's lecturer.]
* What questions would specifically connect with Raincock's research in a personal way?
* I don't seem to really care about whales or seeing them. Is something wrong with me?
* What does it mean for salmon to be anadromous?
* What does it mean for salmon to spawn?
* When people catch salmon, are the salmon mostly in the spawning stage?
* What does this saying refer to: if black fight back, if brown lay down
* How could I engage with a grizzly in hand to claw combat and win? ... What if I have a long knife? ... Even if stabbed in the eye?
* How many people in Alaska die from bear attacks yearly?
* What do bears love that humans also love?
* Do people eat bear meat?
* Will climate change force polar bears south?
* If polar bear meets a grizzly, will they fight?
* Why is a fed bear a dead bear?
* Are any other fish besides salmon anadromous?
* How are AI tools applicable to bear or salmon study?
* What are the key ideas in the book Salmon in the Trees?
* How do salmon know when they've reached the point where they began life? ... What are the biological theories about how they do this?
* Why don't more animals eat the dead salmon that have just finished spawning and are laying in the water?
* Which is the most popular theory for how salmon navigate back home?
* Do all salmon originate in Alaska?

You can see my [Claude chat about salmon, bears, and trees here](https://shareclaude.top/c/jdnywws).

As I started to ask a few initial questions, the answers to those questions gave rise to more. My curiosity grew and grew. I soon became full of questions.

During the naturalist lectures, the speaker didn't take questions (there were 200 people listening). But even if he did, can you imagine someone asking 20 annoying questions like this? Not only would it derail the lecture's focus, some of my questions are embarrassing. Do I really want to ask questions about how to win at hand-to-claw combat against a bear? Or admit that I don't really care about seeing whales, or that I don't know what "salmon spawning" means or whether all salmon originate from Alaska? However, we can ask the dumb or embarrassing questions to AI!

Also, AI tools are good at answering general knowledge questions like this. You could probably find most of these answers on Wikipedia, but only after a long and tedious search. For example, try browsing the results to my question ["Are any other fish besides salmon anadromous?" on Wikipedia](https://en.wikipedia.org/wiki/Special:Search?go=Go&search=Are+any+other+fish+besides+salmon+anadromous%3F&ns0=1). The answers are scattered in fragments across various pages. It might be harder to find answers to questions about knife tactics in Grizzly fights, except perhaps on Reddit threads. 

In contrast, LLMs provide quick, immediate answers directly addressing my question. Could the answers be riddled with errors? Sure. And if you've asked a question that you don't know the answer to, you're in a position of vulnerability. However, I'll gladly take quick answers that are 90% accurate over 99% accurate answers that take 10x as long to find.

I’ll often pose the same question to both Claude and ChatGPT as a validation check on each other. I assume the common ground of their responses is less likely to be a hallucination. It's like getting a second opinion from another doctor. When multiple people tell you the same thing, the chances of it being true increase.

## Do LLMs encourage curiosity?

During the cruise excursions, I found myself thinking, I have a device in my pocket that can provide answers to practically any questions I have. As such, I started using Claude and ChatGPT more and more on the trip, in almost every place I visited.

On a naturalist tour through a temperate rainforest area, I did ask our tour guide (rather than the AI chatbots) a couple of questions, like what are these plants that have long leaves (skunk cabbage, it turns out), what kind of fish are in the lake (rainbow fish), why are the trees around us withering (due to tannic acid), and how do they calculate the age of trees without cutting them down to count the rings (they take core samples).

These questions were warmups for the larger questions that started to surface in my mind. Questions like, what did this forest look like 300 million years ago? When did trees originally form? If the life of a tree can be 900+ years, do trees have a slower pace of evolution? If trees evolve so slowly, and evolution is such a key trait towards dominance, why are trees still so abundant? If you could trace back the evolution of trees to the first tree, which kind would it be? Did Spruce trees evolve from Western Hemlock, or vice versa? What was the first tree? Which organisms evolve the fastest and slowest? Did tree life need to evolve first in order to support animal life? 

Since our guide wasn't a full-fledged biologist, I didn't ask him these questions. Plus, the answers I was getting from Claude (when service was available) were pretty good. At this point, my questions would have only tested his knowledge. Part of me wanted to ask the questions to the guide because I was proud of how clever they were, especially my question about the first tree, or what the forest looked like 300 million years ago. But looking clever didn't seem purposeful, and there wasn't time for endless Q&A on this short rainforest jaunt anyway.

These scenarios with LLMs were pretty cool. I started to get confident that I could find answers to nearly every question I had. I felt incredibly capable. What do I do with this infinite, immediate information about everything and anything? 

If nothing else, asking questions to AI tools begat more questions, and that endless stream of questions made me more curious, observant, and attentive. A semi-quiet, beautiful forest was no longer just a beautiful temperate forest setting. It became a space for critical inquiry, for questions to answer. Each answer led to more questions and thoughts. Through these tools, my curiosity expanded, my attention focused and stayed present, and I was never bored.

Coming back to an earlier theme: are LLMs just good for creators? In these tourist scenarios, obviously not. They are useful in unfamiliar settings, as long as you have a curious attitude. Ask one question and you'll find yourself asking half a dozen more. Will these tools catch on and become tools used by the mainstream? I'm not sure. The default search tools will morph more and more into LLMs. Maybe some day, we'll use AI chat as the primary interface to the world's information.

How will we use this information to not only answer basic questions like mine, but to move towards new questions that don't have answers? Will these tools fuel and expand our curiosity? How will we synthesize the answers into new information that's outside the LLM's predictive reach?

{% include ads.html %}

## Comparing Claude's answers with ChatGPT

Let's get back to comparing Claude versus ChatGPT. It just so happens that, during one of the ship excursions, we were in an excursion group (ziplines!) with the ship's navigator. The navigator invited us on a special tour of the ship's bridge, where we could see the captain, officers, and other crew using the navigation controls. To prepare for this special bridge tour, I started thinking up questions to ask:

* **Navigation.** How do you navigate the ship? GPS? What if GPS goes down? Satellite GPS? If you had to navigate using another method, what would it be? Could you navigate by way of the stars?
* **Avoiding hazards.** How do you see underwater to make sure we don’t run into anything like icebergs, whales, shallow water, large rocks, other stuff in the ocean? How do you avoid collisions with other cruise ships in the area? How much do you pay attention to weather in route planning and navigation?
* **Automation**. Does the map data get delivered automatically to components of the ship, or does the crew here do all the navigation manually? How are AI tools used in navigation? Autorouting? Auto-parking? Bad weather avoidance? Collision avoidance?
* **City welcomings.** Are cruise ships limited to the places they can stop due to the requirements of parking the ships? Are there any cities that don’t allow cruise ships to port? Do cities love or hate it when a giant cruise ship pulls into port?
* **Behind the scenes maneuvers.** What are some things passengers didn’t even know about on this trip that might have been safety hazards we had to avoid or altered decisions made about our route?
* **Leaving passengers behind.** What happens if a passenger doesn’t come back from an on-shore visit? How long do you wait? How frequently does it happen?
* **Sinking scenarios.** What’s the most likely scenario that would cause the ship to sink? A tsunami from an erupting volcano? Terrorist takes control? Bilge pump malfunctions? Rogue waves that capsize the ship? Fire from an engine explosion? 
* **Analytics from wearable tech.** Can you use the medallions to track the most popular activities on the ship and then cater those activities around what people do the most? E.g., tons of metrics around people going to a certain show vs. not others? Can these analytics be used to better shape the activities and cruise experiences?
* **Crew chiefs.** Is there someone in charge of the passengers overall? Is the captain mostly concerned about the ship while there’s like a head person over the passengers?

I did leverage the AI chatbots to help come up with some of the questions.

I initially planned to ask my questions to the bridge crew. But then I decided to ask Claude and ChatGPT for the answers even before the tour. Here's my initial prompt for the chat session:

<div class="chat">
You're the captain of the Princess cruise line, a luxury ship that carries 9,000 people from Seattle to Alaska, stopping at Juneau, Skagway, and Ketchikan. You're giving a tour to a select subgroup of passengers. Answer these questions:
</div>

Then I went through each of the above bullets, pasting them in separately rather than all at once because the answers tend to be more detailed that way. You can view the responses here:

* [Claude's answers](https://shareclaude.top/c/ztanjkd)
* [ChatGPT's answers](https://chat.openai.com/share/bd962389-c098-449a-9983-a559eea10e08)

Looking at the responses, ChatGPT's answers are more detailed and thorough. Claude's answers are decent but shorter and more succinct. During ChatGPT's responses, the chat session timed out twice, requiring me to hit Regenerate for the response. Additionally, ChatGPT took significantly longer to type out the answers than Claude. 

During the actual bridge session (see pic below), I asked only a couple of questions. Claude and ChatGPT's responses didn't really predict what the navigator explained on the bridge in detail. But it was still fun to do this.

<img src="{{site.media}}/cruisebridgetour2.jpg" alt="Bridge tour" />

## Conclusion

In conclusion, Claude is the better choice when you have longer content to analyze, but ChatGPT is better for shorter content. Both tools, however, can expand your curiosity and fill your mind with questions. This curiosity about the world around you can make you more attentive and present.


