---
title: "Making a comfortable office environment when working from home"
permalink: /blog/comfortable-office-environment/
categories:
- technical writing
keywords:
rebrandly: https://idratherbewriting.site/
published: false
description: ""
---

We recently moved about a mile away to a larger house, and it has an office. I was initially excited about working in the office, and I still am, but I've come to realize some challenges in getting a comfortable office environment. It's harder than it looks. When I would go to work each day at my corporate office space, I realize now that I took many details provided by facilities for granted. Here are some challenges that I have had to overcome to make my home office comfortable.

## Fast Internet

The office in this house is part of a garage-add-in (meaning, the garage was converted to a living space), and I have no idea what's inside the office walls, but the office is some kind of Faraday cage. I originally had a Netgear Nighthawk router with a range of 3,500 sq feet (this house is half that size), but the speeds in my office were a fifth of the speeds elsewhere in the house. Average speeds were 25-50Mbps (my Comcast promised speed is 175Mbps).

I replaced my Nighthawk router with [Eero mesh router system](https://www.bestbuy.com/site/eero-ac-dual-band-mesh-wi-fi-system-3-pack-white/6375348.p?skuId=6375348) (a three-pack). These are little wireless routers that you place all around your house. The result is a mesh network (like a web) forms. I have never experienced such a simple and well-functioning setup when it comes to wireless routing as with Eero. I fell in love with Eero routers.

However, the speeds were still only at about 50-75Mbps with the mesh network. I then added another pack of Eero routers, but it was still not much better &mdash; only about 90-100Mbps.

I then tried using something called [MoCA adapters](https://www.bestbuy.com/site/actiontec-bonded-moca-2-0-wired-network-adapter-2-pack/6286329.p?skuId=6286329) (multimedia over coax alliance). For some reason, almost every room in the house has a coaxial cable coming out of the wall. I think at some point there was a "DVR in every room" installation. I thought I could tap into one of these coaxial cables and get Ethernet from it through the MoCA adapters, but alas, they didn't work. It turns out that only one coaxial cable actually has Internet connectivity. I think pushing internet to all the cables would attenuate the signal or something. I even experimented with connecting and disconnecting different cables coming in from the phone lines outside the house.

Finally, I decided to simply buy a 150' Ethernet cable and run it from my office to the active coaxial cable in the living room. It took me about two hours to discreetly tack the cable along wall crevices and doorframes, but it works. My speed is now consistently around 175Mbps. I positioned one of the Eero routers in my office, and I think the signal bounces around inside this office with more strength. I could connect directly, but there's not much point in doing so. My speed is about 150-170Mbps regularly.

## Temperature

Last week we had a heat wave in California. Since my office faces west, by late afternoon the office was a furnace. I tried positioning fans around but ultimately decided I needed air conditioning. After reading up on how window air conditioning units are so much better than portable air conditioning units, I installed a window air conditioning unit, but since my window slides sideways rather than up and down, I had to add a custom board to fit it. I spent a while figuring out the best approach, but at the end of the day, a board like this worked best.

[image]

This little AC unit (Toshiba, 5,000 Btu/h, $150 from Home Depot) works quite well and blows cold air right in my face when I turn it on. I used a variety of foam stripping and other material to block any gaps to the outside.

## Fresh air

After installing the air conditioner and sealing off the window, the air became stuffy in my office. I needed some fresh air. So I repositioned my AC unit installation and made it so that I could slide my window back out a bit. This gives me about half a foot of air and sunlight coming through, which is perfect.

California has more cool days than hot, and on these cool days I like to have fresh air and feel the breeze come in. I also positioned a small fan near this window outlet to pull more air in when I want it.

[image]

## Floor

## Lighting

The office's lights involved some 4ft strip lights with fluorescent tubes and several 1' fluorescent tubes below one of the shelves. However, the 4ft fluorescent lights didn't work, and the small 1' lights were right in my eyes.

Good lighting wasn't a huge priority in the office because I like it somewhat dim anyway, and I'm just looking at a bright computer screen. However, when working from home, I'm on video meetings several hours a day. I want the image projected of me to be visible and well-lit. Have you ever connected with people who look like a silhouette, or who are angled so that they aren't looking at your but off to the side, or who are fuzzy or otherwise blurry? Because of this, I wanted to get the lighting right. I also knew I would need good lighting when doing recordings of videos, which I plan to do more of.

After reading about the health hazards of CFT, I bought some LED hybrid lights that should have worked instead. However, they flickered. I then bought some regular CFT tubes instead, hoping to match the originals, but they blew out after a few minutes. After researching how fluorescent tubes work, I decided the "ballast" was bad, so I bought another one. Because changing this light fixture means twisting live wires together, I turned off all the power to the house before untwisting the wires and retwisting the new ones with the new ballast.

The new ballast with the LED hybrid lights worked well, but then I realized that the new ballast didn't even have a "lens" (the cover that goes over the lights). As a result, even though the lights filled the room with lumens, they hurt my eyes to look at. I needed a lens to diffuse them a bit more. I returned again to Home Depot for a ballast fixture that would include a lens.

One little tip about going to Home Depot: When you go to Home Depot, limit the number of items you're buying to around half a dozen. I once went to Home Depot looking for about a dozen different things to solve all kinds of problems. The immensity of the store is like the last scene of Indiana Jones Raiders of the Lost Ark:

<iframe width="560" height="315" src="https://www.youtube.com/embed/Fdjf4lMmiiI?start=20" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Chasing too many solutions in Home Depot on one trip leaves me emotionally exhausted. Anyway, back to the lighting issue.

## Storage of Green Screen

Another reason for good lighting was because I'm thinking of creating more videos for my API workshop, creating an online version of this course. For these videos, I'm planning on using a picture-in-picture (PIP) technique similar to how I recorded the recent WTD video. How could I fit a green screen and tripod-mounted softbox lights in the office?

I literally spent hours trying different room configurations for the green screen and lights. Getting the camera angle just right so that only the green screen shows in the background, positioning the lights out of the frame, was challenging. I initially removed a shelf (IKEA cubby) from the room and tacked the green screen directly on the side wall, but then the camera captured too much of the background. I then draped the green screen from the extended shelf down to the ground, but this flopped around too much. I tried wrapping the green screen in a semi-circular way around the room too, but no luck.

I finally reduced the width of the hanging frame and wedged it into the room. I removed the tripod from the softbox lights and positioned them on the edges of desks. I opened up the windows more for natural light from the front. Thankfully, this seemed to work. When not in operation, I stored the softbox lights in different corners of the office. I am hesitant to remove the bulbs and collapse the frames because the last time I did that, I didn't re-open the lighting kit for 2+ years.



carpet
wood smell
how to fit my studio
ants
background
lighting
