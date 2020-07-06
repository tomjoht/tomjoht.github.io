---
title: "Amazon begins pilot with voice-interactive user manuals"
categories:
- technical-writing
- writing
keywords:
description: "Amazon's technical writers are taking their manuals to the next level using voice-interactive features with Alexa. The guides are still delivered through traditional means (PDF and web), but these guides now include an additional interactive voice enhancement that users can optionally leverage when they get confused or frustrated."
bitlink: http://bit.ly/voice-interactive-manuals
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/aprilfoolsalexapostthumb.png
---

## Example scenarios for voice interactions

As an example of how voice-interactive manuals work, if a user is unclear about how to follow step 3 on page 6, the user can ask:

> "Alexa, I'm having trouble understanding step 3 on page 6."

Alexa then responds with additional details. Although writers could provide these additional details embedded in the manual (in expandable sections, for example), interacting with Alexa for the information provides the human touch most users crave when learning or setting up a new technology.

<figure>
<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/aprilfools-01.png" style="max-width:570px; border: 1px solid #dedede;" />
<figcaption>Voice-interactive manuals let users ask Alexa for additional help when they get stuck.</figcaption></figure>

John Baker, a user who is part of the pilot trial with the voice-interactive manuals, explains:

> "It's not like I won't read a manual at all. I just don't want to plod through *War and Peace*. If I need more info, I'd like to ask for it, just like asking a friend who stands near me in the next cube over &mdash; but who doesn't come over unless I ask for his help."

## Emotional responses to minimize stress

The voice-interactive manuals also include emotional mechanisms to assist with the rhetoric in their responses. If Alexa hears swearing in the question, Alexa prefaces the responses with an empathetic prelude:

For example, a user is reading step 2 on page 1 and says,

> "Alexa, what the <b>#$@&%\*!</b> is a lambda function?"

or

> "Alexa, how the <b>hell</b> am I supposed to do step 3 on page 7?"

In the response, Alexa then inserts one of several possible empathetic emotions, personalized to the user's profile:

> "Jim, I'm sorry that you're having trouble. Let's see if I can help..."

or

> "Jim, I understand that you're experiencing an issue with step 3 on page 6. I know that must be frustrating."

Some users may feel put off by simulations of faked or automated empathy. If users desire, they can also turn up the "Sass" meter with Alexa.

In this same scenario, if a user is reading step 2 on page 1 and says,

> "Alexa, what if the <b>#$@&%\*!</b> is a lambda function?"

Alexa might respond:

> "Jim, your blood pressure seems to be rising. Why don't you take a break and go do some bird watching?"

If users turn up the Sass meter to 10, Alexa's responses can be a bit wild:

> "Jim, Confucius says it does not matter how slow you go as long as you do not stop. But given your current emotional state, you might want to take that long-planned vacation to Bermuda now."

In addition to a Sass meter, there are other rhetorical modes you can select. One such mode is called "Purr mode." In this mode, Alexa responds by purring like a cat and does not actually say anything at all.

> <span style="font-weight: bold; font-size: 22px;">...... &nbsp;&nbsp;&nbsp;&nbsp; ...... &nbsp;&nbsp;&nbsp;&nbsp; ...... &nbsp;&nbsp;&nbsp;&nbsp; ...... &nbsp;&nbsp;&nbsp;&nbsp; ...... &nbsp;&nbsp;&nbsp;&nbsp; ...... &nbsp;&nbsp;&nbsp;&nbsp; ...... </span>

Based on physiological research in how a cat's purring can actually calm a rising heart rate, this mode lasts approximately 5 minutes and is followed by a mindfulness meditation (entirely auditory) that includes sounds of waves in the ocean and distant seagulls. This mode gives users a chance to re-center.

## Coding required to create voice-interactive manuals

Creating a voice-interactive manual requires a bit of coding on the technical writer's part, but not too much. Every paragraph of content has a specific ID that is inserted into paragraphs in the manual. For this ID, the tech writer inserts the additional information available. A configuration file ties together natural human language with the page numbers, steps, and ID tags.

The writer will likely not insert IDs for every paragraph of content in a manual. The writer can instead select the parts of the manual that are likely to invite confusion. If desired, the writer can also visually identify these sections in the manual with an Alexa icon. This way, users won't need to guess whether Alexa can provide more information.

Early tests of the voice interactive manuals have been positive. Instructional designers like the approach because it prompts users to move through the user guide's content. They feel more confident knowing that they can interact with a "person" who can help them if they get stuck.

## Tiered voice support models

In addition to voice interactivity, Amazon is taking its support model to the next level with its voice-interactive guides as well. Prototypes are already in place to connect Alexa to a tier 2 level of support, where Alexa can transition into a live support function.

For example, if a user asks for additional information at a specific step, but Alexa is unable to provide information or clarify the user's confusion, Alexa responds with an option to connect to a support agent, like this:

> "Jim, I don't have any more information on that, but I can ask someone who does. Would you like me to connect you to someone from Amazon's live support?"

If the user says yes, Alexa issues a directive to a support center that provides virtual support delivered through the same Alexa console. The support agent then interacts with the user &mdash; by proxy &mdash; through the same Alexa-powered device.

This model takes previously integrated live support efforts (such as Mayday in the Kindle Fire tablets) to the next level. The model also reinforces Alexa as the focal point for help, rather than redirecting a user to a computer. This adds to the perception of Alexa as a tool for help.

If the support agent proxy is unable to resolve the issue, the user can escalate the issue to tier 3. Tier 3 support isn't available for everyone by default (initial plans are provided along a cost minimum), but with tier 3, the user can order support through Alexa Prime. In this scenario, the user says:

> "Alexa, order support for my product."

If the user has Prime Now, a support agent is delivered to your door within 2 hours. With a regular Prime membership, the delivery time is Same Day for most products. (Without a Prime membership, the delivery is 2 to 5 days.)

Upon arrival, the user opens the door and signs for the incoming agent. The delivered support agent then troubleshoots the issue or performs other configuration details as needed.

This model of tier 1, tier 2, and tier 3 support aligns with Amazon's goal to be the *most customer-centric company in the world*.

Although still in the design phase, there are also discussions about a possible tier 4 support. With tier 4 support, a drone with a small cargo bay is dispatched to your door. The user inserts the product or computer into the drone's cargo bay, and the drone returns to a nearby customer resolution center.

When the issue is resolved, the customer receives a text and the drone returns to the user's location with the product correctly configured or fixed. Implementation of Tier 4 support is dependent on the rollout of Amazon's drone program, which is still in development.

## Conclusion

Will voice-interactive manuals and the multiple tiers of support catch on and revolutionize the way help is delivered? It's too early to tell, but pilot tests so far have been positive. Engineers are constantly experimenting with ways to mitigate the high aggression levels and stress related to customer experiences with documentation, and Amazon thinks they may have a lead by merging voice interaction with Alexa and Prime delivery.

As an Easter egg, engineers have coded a few fun messages users can say while interacting with these manuals. One of them is as follows:

> "Alexa, what day is it?"

Alexa responds:

> "April Fools Day!"

<p>&nbsp;</p>
