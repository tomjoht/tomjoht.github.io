---
title: "The bathroom fan and multiple paths through a topic"
permalink: /zamm/bathroom-fan-and-multiple-paths-through-a-task.html
date: 2023-11-26
categories:
# - podcasts
- technical-writing
keywords: 
rebrandly: https://idbwrtng.com/bathroom-fan-and-multiple-paths-through-a-task
description: ""
# podcast_file_size: 
# podcast_duration: ""
# podcast_length: 
# image: filename.png
# series: "Zen and the Art of Motorcycle Maintenance"
# sidebar: sidebar_zamm
# weight: 1.X
published: false
---


# The bathroom fan and multiple paths through a single topic

As it was Thanksgiving weekend, we had family visiting, including my wife’s brother Ryan, who is a doctor but who loves working on cars and should have been a mechanic of some sort. He’s the kind of guy who has multiple cars in different states in his yard, working on them for fun. He likes to take things apart, see how they work, fix them, etc. We had a bathroom fan motor that gave up the ghost, and my wife had ordered a new one. While people were cooking, she suggested that he go and install the new fan motor. 

I figured this might be a good opportunity to learn how the engineering mind works, to see it in action. I gathered up some tools, a ladder, the new motor, and we proceeded to the bathroom to make the switch. 

Replacing a fan motor would be relatively easy if you knew the right part you needed. Sadly, our house was 30 years old and the original fan motor was unidentifiable. My wife ordered a fan motor that fit our powder bathroom’s fan, as we swapped that out the year previously. However, this current bathroom fan project was a different sort, as it had a heat lamp too. I Ryan climb the ladder and quickly remove the old fan. He took note of its position, said it would be good to take a picture but didn’t, but set it on the counter in the same position it was applied. So far, so good. Anyone knows that as you take something apart, you should take careful note of how it was put together so that you can reassemble it later. 

All was going smoothly, except that when we tried to reinstall the new fan, the plastic fan blade’s diameter was a quarter inch too wide for the vent hole. It was propeller-style fan rather than a squirrel cage fan. Ryan looked at the fan blade and tried to put the old fan blade on instead of the new one. However, there wasn’t room in the vent hole to accommodate the squirrel-cage fan blade because the motor’s shaft was too long, pushing it further into the vent space. At this point, we returned out attention to the propeller-style fan, and Ryan offered two workarounds. He said we could sand down the plastic fan so that it would fit into the hole. Or we could use some tin snips and make the hole larger.

Both solutions seemed poor to me. I didn’t think using a hand sander to reduce the diameter of a fan would work — surely it would be oblong and asymmetrical in places, making the whirling fan blade loud and clunky as it spun around the shaft. Cutting the hole larger with tin snips seemed more practical, but still seemed wrong. Why should we have to cut the hole in the first place? 

We gave up on the repair and ate Thanksgiving dinner together, and eventually Ryan left. Upon leaving, he said to tell him how the fan project turns out. 

That night I started browsing Amazon for more fans, wondering if anyone else had to resort to these measures. I realized that my wife didn’t purchase the right fan, as there were many fans with squirrel cages more similar to our original. It puzzled me that Ryan’s first response, upon seeing the fan didn’t fit, wasn’t to order a different motor with the right sized fan but rather than modify the situation to make it work. I asked my wife why her genius brother, who fixes cars for fun, didn’t stop to think of a third solution to the problem: get a part that actually fits?

My wife explained that this is her family’s way, and that her brother had learned it from her father. She describes the method as “make it work.” The idea is that in your mind, you say, here’s what I have, and here’s what I need to do. How can I make it work? They have resourcefulness and frugality baked into their mind — it’s just how their family thinks. 

I ordered a fan with a squirrel cage and waited two days for it to arrive. Then I attempted to insert it into the space, but the shaft was too long and there wasn’t space enough for the fan. There wasn’t any readable part names on the previous fan or cage area. I returned to Amazon and browsed around for fans with a shorter shaft and ordered another one, hoping it would fit.

There’s an early scene in _Zen and the Art of Motorcycle Maintenance_ where the narrator badly wants to help John get into some maintenance tasks, and noticed his handlebars are slipping a bit. He proposes fixing them with a shim made from a beer can, but John doesn’t want to. 

> His handlebars had started slipping. Not badly, he said, just a little when you shoved hard on them. I warned him not to use his adjustable wrench on the tightening nuts. It was likely to damage the chrome and start small rust spots. He agreed to use my metric sockets and box-ends.

> When he brought his motorcycle over I got my wrenches out but then noticed that no amount of tightening would stop the slippage, because the ends of the collars were pinched shut.

> 

> "You're going to have to shim those out," I said.

> 

> "What's shim?"

> 

> "It's a thin, flat strip of metal. You just slip it around the handlebar under

the collar there and it will open up the collar to where you can tighten it

again. You use shims like that to make adjustments in all kinds of machines."

> 

> "Oh," he said. He was getting interested. "Good. Where do you buy them?"

> "I've got some right here," I said gleefully, holding up a can of beer in my

hand.

> 

> He didn't understand for a moment. Then he said, "What, the can?"

> 

> "Sure," I said, "best shim stock in the world."

> 

> I thought this was pretty clever myself. Save him a trip to God knows where to get shim stock. Save him time. Save him money.

> 

> But to my surprise he didn't see the cleverness of this at all. In fact he got noticeably haughty about the whole thing. Pretty soon he was dodging and filling with all kinds of excuses and, before I realized what his real attitude was, we had decided not to fix the handlebars after all.

> 

> As far as I know those handlebars are still loose. And I believe now that he was actually offended at the time. I had had the nerve to propose repair of his new eighteen-hundred dollar BMW, the pride of a half-century of German mechanical finesse, with a piece of old beer can!

> 

> _Ach, du lieber!_

>

> Since then we have had very few conversations about motorcycle maintenance. None, now that I think of it.

> 

> You push it any further and suddenly you are angry, without knowing why. I should say, to explain this, that beer-can aluminum is soft and sticky, as metals go. Perfect for the application. Aluminum doesn't oxidize in wet weather...or, more precisely, it always has a thin layer of oxide that prevents any further oxidation. Also perfect.

> 

> In other words, any true German mechanic, with a half-century of mechanical finesse behind him, would have concluded that this particular solution to this particular technical problem was perfect. (55-56)

Did Ryan’s mind operate like the narrator’s, and mine like John’s? Ryan proposed a solution of modifying the existing fan to fit, using the available materials — a sander, or tin snips. To me it just didn’t seem right, but maybe my reaction was to think that there was an official part and way to do it, and I didn’t want a hack job. Every time I turned on the fan, I didn’t want to wonder about the noise, the clunk rotation of the fan, and remember how we hacked it to fit.

In software documentation, there are times when I’ll do something similar. You’re documenting how something works, and there are a few details that you’re unsure about. You make an educated guess and hope that engineers will later catch it in the review, but they only superficially scan the content. Or for whatever reason, they don’t know for sure what the answer is. This happened to me just last week. I was documenting an API for map data, and there was an edge case where some data was missing, so I was adding a known limitation. Trying to explain the reason why the data was missing, I added more detail than the engineers could supply because it sounded poor to say hey, sometimes data isn’t available for these road geographies, and no one really knows why. Some person in another department probably knows, but we don’t know who he or she might be and we’re too busy to spend a day tracking this answer down. The engineer was about 80% confident in his answer, but in my documentation, I went with this answer as if it were the full truth. In other words, I did an information hack job.

Another approach could have been to track down the answer from someone deep inside the map data group, reaching out to multiple people to find the exact answer. Or to leave the documentation information more vague and less helpful.

I think a lot of documentation is written in similar ways. In another part of Zen and the Art of Motorcycle Maintenance, the chapter about the barbecue instructions that fail John, the narrator explains that there are multiple paths through a system, and that just because the instructions come from the factory, it doesn’t mean it’s the “right” way to do it. The narrator says that in reality, the foreman makes available the biggest goof on the floor and this person just tells the technical writer one way to do it, and that becomes the way. But it’s certainly not the only way. The narrator explains: 

> What's really angering about instructions of this sort is that they imply there's only one way to put this rotisserie together...their way. And that presumption wipes out all the creativity. Actually there are hundreds of ways to put the rotisserie together and when they make you follow just one way without showing you the overall problem the instructions become hard to follow in such a way as not to make mistakes. You lose feeling for the work. And not only that, it's very unlikely

that they've told you the best way."

> 

> "But they're from the factory," John says.

> 

> "I'm from the factory too," I say "and I know how instructions like this are put together. You go out on the assembly line with a tape recorder and the foreman sends you to talk to the guy he needs least, the biggest goof-off he's got, and whatever he tells you...that's the instructions. The next guy might have told you something completely different and probably better, but he's too busy." They all look surprised. "I might have known," DeWeese says.

> 

> "It's the format," I say. "No writer can buck it. Technology presumes there's just one right way to do things and there never is. And when you presume there's just one right way to do things, of course the instructions begin and end exclusively with the rotisserie. But if you have to choose among an infinite number of ways to put it together then the relation of the machine to you, and the relation of the machine and you to the rest of the world, has to be considered, because the selection from many choices, the art of the work is just as dependent upon your own mind and spirit as it is upon the material of the machine. That's why you need the peace of mind."

> 

> "Actually this idea isn't so strange," I continue. "Sometime look at a novice workman or a bad workman and compare his expression with that of a craftsman whose work you know is excellent and you'll see the difference. The craftsman isn't ever following a single line of instruction. He's making decisions as he goes along. For that reason he'll be absorbed and attentive to what he's doing even though he doesn't deliberately contrive this. His

motions and the machine are in a kind of harmony. He isn't following any set of written instructions because the nature of the material at hand determines his thoughts and motions, which simultaneously change the nature of the material at hand. The material and his thoughts are changing together in a progression of changes until his mind's at rest at the same time

the material's right."

> 

> “Sounds like art,” the instructor says.

> 

> “Well, it is art,” I say. “This divorce of art from technology is completely unnatural. It's just that it's gone on so long you have to be an archeologist to find out where the two separated.

Even though I found Ryan’s workarounds so strange, they do encapsulate the narrator’s mindset here. From my point of view, there was a correct part and a correct installation procedure, and it shouldn’t involve using tin snips to widen holes or sanders to reduce the fan’s diameter. But even if Ryan’s ideas were wrong, the direction wasn’t. He didn’t see a set path through a problem, a single way of doing something. Instead, he saw multiple options to solving a problem, multiple paths to achieving it.

A similar scenario happens during driving. My wife goes to Costco regularly, and she knows multiple ways to get there. I rarely go to Costco, so when I’m driving, I’m careful to stick to the route I know, and sometimes I need Google Maps to get me through the final bit of turns. I’m a novice in the area, and as a novice I lean towards a single, simple set of instructions to achieve my goal. Like installing the fan, I wanted to observe a simple set of steps to replace the fan, or a single set of steps to bleed my brakes. 

But the more advanced driver who knows the area sees multiple paths to get to Costco. My wife might prefer one route when it’s busy, and another route when it’s less busy. In the same way, a more advanced engineer might see five different ways of solving a problem, and lean towards one or other other based on various factors. But both points of view align with the narrator’s point that for the experienced craftsman, he or she “isn't following any set of written instructions because the nature of the material at hand determines his [or her] thoughts and motions, which simultaneously change the nature of the material at hand.”

As a technical writer, I should know better. I’m often looking for a set of steps to achieve an end goal, and as soon as I find a path, I sometimes latch onto it, without acknowledging that there are multiple paths a user could conceivably take. The reason documentation often shows a single path is because, at some point, I learned that even if there are 5 different ways to do something, you should pick the simplest approach and document that, potentially acknowledging that there are other approaches. But if you documented the 5 different ways of doing something, it would mushroom the size and scope of the documentation, making it unnecessarily large. Plus, you end up confusing users who now have to decide which path to take and why, so now as a writer you’re forced to explain the merits of different approaches. You might not know the merits, so this means more research and talking with different engineers. And why bother when you’ve already found a way of getting it to work.

Often when assembling something, I wonder if the sequence through the assembly instructions represents the only way of doing it, or if it’s just one way. If I deviate, I sometimes regret it later as I realize in hindsight why the instructions guided me a certain way. Oh, I see how, I can’t connect these two pieces together because when I do, I can’t reach the bolt here, or something.

Instruction guides rarely acknowledge when a sequence is optional or required, though. For example, when you’re assembling a dresser you bought from IKEA, it doesn’t acknowledge things like, you can do these 5 steps in any order, but you have to finish these 5 steps before the 6th step because the 6th step can only be completed once the 5th step is complete. IKEA manuals don’t even have words, so there’s no way to communicate optionality versus required orders of steps, and like I said before, noting optional versus required sequences involves extra verbiage and explanation, so it’s easier to just assume that all steps are required to be done in the order noted in the assembly. As a result, most users, especially novices like me, go about the manual in a somewhat religious way, making sure to complete each and every step accurately and thoroughly before proceeding to the next one. The problem is that as soon as we get stuck with one step, it presents an insurmountable situation because our rigid, step-by-step mindset can’t get to the next step while believing the previous one is incomplete.

You might think at this point, that I’ve got my tin snips out and am ready to widen the vent hole to make my bathroom fan fit, but now. I’ve decided to wait for the new motor to arrive and see if it fits better. I don’t have high confidence in my tin-snipping ability and my prowess at “making things work,” at least not for this scenario.

{% include ads.html %}

