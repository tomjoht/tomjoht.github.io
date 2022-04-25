---
title: "First experiences in moving away from smartphones"
permalink: /blog/first-experiences-moving-away-from-smartphones/
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.com/experienceswithoutsmartphone
description: "In this post, I describe my first two weeks in living without a smartphone in my pocket. I got a flip phone and figured out how to get the functionality I needed (e.g., an Audible app, texting), how to use the phone again, and more."
series: "Journey away from smartphones"
jtype: notes_smartphones
---

If you're just coming into this series, see these two posts first:

* [My awakening moment about how smartphones fragment our attention span](/blog/awakening-moment-to-how-smartphones-fragment-our-attention/)
* [My initial rules and reasons for intentional smart phone use](/blog/my-international-rules-for-smartphone-use/)

# Getting a basic phone

I debated just leaving smartphone on Do Not Disturb permanently and keeping it in my bag, but my daughter, who's into vintage and the 80s, was begging me for a flip phone, and I kept wondering what life might actually be like with a flip phone. I deliberated back and forth for about a week. Eventually, I figured the only way would be to experiment, so why not. And if I could get my daughter off of smartphones in the process, all the better.

Flip phones are actually expensive (in part because they're not mainstream devices). I had a few basic requirements, such as hotspot capability, texting, 4G capability, Verizon compatibility, etc. I bought a used [Kyocera DuraXV Extreme](https://www.verizon.com/basic-phones/dura-xv-extreme/) for about $200 (and got a similar one for my daughter). We both entered a period of learning and experimentation with the phones.

I had to re-learn how to use a flip phone (e.g., you turn it on by holding down the End button, remember?). But it came back to me within a few days. It's a much more button-based experience, with a screen that you navigate through a D-pad controller rather than a mouse. (A D-pad controller is a circular ring that has a button press for each side &mdash; up, down, right, left &mdash; and center. There's no touch screen or mouse.)

The Kyocera DuraXV Extreme (not LTE) actually runs Android 9, which turns out to be incredibly useful. Because the phone runs on Android, if you enable developer mode, you can [adb](https://developer.android.com/studio/command-line/adb) into it (either wirelessly or with a USB-C cable that supports data transfer). You can also download some APKs for flip phones (such as from [apps4flip.com](https://www.apps4flip.com/installation/) or from anywhere you can download an APK, including [F-Android]](https://f-droid.org/en/)) and install them through adb.

What's adb? adb stands for Android Debug Bridge and is the way you interface with an Android device (any Android device) to sideload apps. When I worked at Amazon, I frequently used adb to sideload Android APKs onto Fire TV and Echo devices, so I'm pretty familiar with this process, as is anyone who develops on Android. Google of course uses Android as the OS for devices, so it was cool to realize that I could interact with my phone this way.

Note that flip phones don't have an app store. But do you need an app store to get apps? No. The main purpose of an app store is to make it *easier and safer* to get apps onto your phone. The app store filters which apps are compatible with your device, makes sure they're virus-free and secure, makes it easy to install/uninstall the apps, etc. But you don't need to use an app store to get apps onto a device &mdash; you can use adb to sideload the app. ("Sideloading" refers to loading apps onto your device outside of the app store's method of installation.)

It turns out that there's one app called [Apps4Flip Mouse](https://www.apps4flip.com/apps/) that is critical. This app allows you to switch your flip phone's cursor from D-pad controller to mouse mode or scroll mode so you can interact with apps that are designed only for touch screens. Most apps these days don't actually support D-pad controllers. With this mouse-scroll-mode functionality, you can download and sideload many Android APKs (such as [Spotify](https://spotify.en.uptodown.com/android/download) or [Audible](https://apkpure.com/audible-audiobooks-podcasts/com.audible.application/download)) that wouldn't otherwise be compatible with your flip phone, and you can [make them work](https://www.youtube.com/watch?v=D3fqvtsI4E8).

It takes a bit of poking around to find the downloadable APK file, but once you do, you sideload them onto your flip phone (e.g., `adb install <apk name>`), launch the app from your phone, and then as needed, switch your cursor into mouse or scroll modes to navigate the app. (The [apps4flip installation page](https://www.apps4flip.com/installation/) has some how-tos, though info about adb is everywhere online.)

Amazingly, the APKs I downloaded actually worked (most of the time). It's kind of hit or miss whether an app works, but so far I've just been searching for "app name + Android APK," downloading the APK, sideloading it, then seeing if it works. I only really needed several apps.

The Kyocera also has Bluetooth, so you can pair your airpods to it or connect it to your car's bluetooth (or use an auxilliary cable). I  mainly launch the Audible app, switch into mouse mode with the cursor, press Play, then close my phone (the audio keeps playing) while biking. I plug in earphones, and I'm good to go. In fact, when Bluetooth is enabled on the phone, when I get in my car (a 2013 Honda Accord), the radio automatically pairs with the device and starts playing the media available (Audible) by default, so it's literally a hands-free experience, allowing me to leave my phone in my bag. It still surprises me that it works so well.

Interestingly, the Kyocera DuraXV Extreme's home screen UI has a top bar (with some standard icons) that has click / pull-down functionality. But with a D-pad, there's no way to actually click those top bar icons! I can double-click the top nav bar in the apps4flip cursor's mouse-mode, though, and the pull-down view stays open. From this pull-down view, I have an even quicker way to start/stop Audible books. (BTW, if you enable some other [developer options](https://developer.android.com/studio/debug/dev-options) on Android, as [this youtuber explains](https://www.youtube.com/watch?v=YvZ_uwM_dzM), you can do other things, like download APKs from F-Droid right from the browser and install them, or free up tons of memory that useless services are consuming.)

You might be asking, what's the point of installing apps on a flip phone? I thought the whole point was to get away from apps. Yes, and I'm pretty sure I could find versions of social media apps to install if desired. But even though you can install apps, the screen is about 2 inches high by 1.25 inches wide, so any app you install is incredibly tedious to use. But some apps are just essential (e.g., Audible for me), and for those essential app needs, I seem to be able to get away with sideloading.

{% include ads.html %}

## Single-function devices

The Kyocera has both a camera and alarm clock, but as per my [smartphone rules use](/blog/my-international-rules-for-smartphone-use/), I didn't want my phone on my nightstand acting as an alarm clock. The Kyocera's camera is okay, but if I'm capturing photos for the future, I'd prefer something higher quality. So I also ordered some single-function devices.

I'm still waiting for my point-and-shoot camera to arrive. For the alarm clock, I could not resist getting a 1980s GE electric alarm clock, just like the one I had growing up. It works great!

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/gealarmclock.jpg" alt="GE alarm clock" />

I love rotating the dial to change the FM radio station. It's so old that if I unplug it, there's not even a backup battery to prevent me from losing my settings.

(okay, full confession. I'm not sure what's happening to me, but I currently want to turn back time and live in the 80s again, or the earliest days of the internet (90s), when everything was just coming online. I'm undergoing a serious anti-tech phase.)

I also returned to carrying around a separate wallet (rather than using a smartphone case that includes a wallet case built-in). With the return to more single-function devices (phone + wallet + camera + keys), I decided I needed a <s>purse</s> [casual crossbody leather sling bag](https://www.amazon.com/BULLCAPTAIN-Crossbody-Backpack-Charging-Genuine/dp/B07RRTDXRM/).

The leather sling bag is great and I highly recommend it (it's quality leather and smells good). The brand is "BullCaptain." Admittedly, it's a purse for men (a "murse"), but if you sling it on your side or back like some kind of commando or explorer, it looks acceptable. I find that I like carrying my phone around this way. It's much more out of sight and out of mind. Granted, this also means I might not hear incoming calls or texts. But 99.9% of the time, nothing is truly urgent. (And if it were truly urgent, I probably couldn't do anything from a distance anyway.)

## Texting

Texting has been the greatest challenge with flip phones, but with some intended benefits coming as a result of those challenges. I mostly send texts to my family members. Previously, I used MightyText from my computer to type the texts (or Google's Messages app), but desktop apps that sync with smartphone apps aren't supported on a flip phone. The flip phone requires you to type on a small number keypad with multiple letters per number, which is tedious.

I tried sideloading the Google Messages APK onto the device, but the app requires you to set it as the default message handler, which then makes the other built-in messaging app and options on the phone nonfunctional (they crash). Plus, reading texts from the browser display is small and a little fuzzy.

I feared that this move away from texting might isolate me from my family. Also, I do communicate a lot with my wife throughout the day through texts, and it would be slow to type this out, and also cumbersome if I resorted to always making phone calls (but good in other ways to encourage this mode).

As a workaround, I started using [scrcpy](https://github.com/Genymobile/scrcpy) to control my phone on my computer. As I said, because the Kyocera supports adb, I'm able to use emulator-like programs such as these. From scrcpy, I stepped up to using [Vysor](https://www.vysor.io/) because it has some more functionality: it offers a back button, tries to connect automatically, and allows the window to stay on top.

The messaing approach with Vysor isn't great, but it's good enough. For example, I can't click some buttons on the phone's virtual display (those buttons outside the D-pad ring). I also have to use my phone's D-pad controller to select the message to read the message on my phone. Again, not ideal, but not that cumbersome either. I probably send 5-6 texts to my wife throughout the day, sometimes just 1-2.

I tried Google Voice, which theoretically would have allowed me to use a VOIP number and forward my cellular number to the VOIP number, but for some reason my wife's phone doesn't receive Google Voice texts that I send. I also tried [Textfree Web](https://messages.textfree.us/login), which works great for web-based texting. However, I can't receive phone calls from Textfree Web, just texts. It would be great to switch to Textfree Web because it's just easier, but having two numbers would confuse people. How would they know which to use? Textfree web would only notify me if I'm sitting at the browser, and what if I was walking or driving around?

Fortunately, the silver lining here is that I've found myself calling more. Instead of interacting with texts, I'll actually call a family member. We end up talking a bit more than a specific text might have been about. And the voice quality on this phone is outstanding. Verizon has some kind of [HD voice quality feature](https://www.pcmag.com/reviews/kyocera-duraxv-extreme) with this phone's snapdragon chipset, and voices sound rich, full, and detailed. Unfortunately, the listener doesn't hear the same HD voice quality on their end.

I haven't found a slam-dunk solution for texting yet, and I'm kind of okay using scrcpy because it does seem to prompt me to make calls more. I'm confident that sooner or later, I'll stumble across a better solution.

By the way, I recorded a short video showing some of these features on the Kyocera. This isn't an impressive video, and it was somewhat late and I was tired when recording it:

<iframe width="560" height="315" src="https://www.youtube.com/embed/YYYdCh3kIz8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Conclusion so far

Overall, the switch to the basic phone has been novel and fun. I consider it an experiment. I do enjoy the reduced number of interruptions in my life, and I'm regaining my ability to focus more. I find that instead of distracting myself with my phone, I instead distract myself with a book. I recently finished [*Autonorama*](https://islandpress.org/books/autonorama), by Peter Norton. Is reading books all that better than reading all the incoming information on a phone? So far, yes. And I'm preferring to read paper-based books rather than from a Kindle. I just don't like reading from a screen. I'm also printing things out at work to read them (e.g., department newsletters or long product design documents). It's just easier to focus while reading from paper, and it's easy to annotate things with a pen. (Sorry environment &mdash; at least I'm recycling.)

I do think that hitting Do Not Disturb on a smartphone and leaving it in a bag all day (rather than a pocket) would likely achieve a highly similar result (as long as I have the willpower to enforce it). I've also found that blocking Reddit through [Freedom](https://freedom.to) does help precommit me to not relapse at 9pm at night when my brain is tired and I'm ready to just decompress/escape/relax.

In my [smartphone rules use](/blog/my-international-rules-for-smartphone-use/), I also mentioned that I've mostly stopped reading the news. This has been a gamechanger as well. I *think* the Ukraine war is still going on, since gas prices haven't changed much. :) Seriously, my hypothesis about finding more mental/physical energy in the evenings by reducing the amount of incoming information the brain has to sort/file/manage throughout the day seems to be working. And I am sleeping better. But there could be a number of causes at work, and it's too early to tell.

The larger question will be whether all the inconvenience of moving away from smartphones outweighs the benefits. So far, the answer seems to be yes. But just like credit cards have now becoming table stakes for living in modern society, smartphones are too. I went to an Ol Reign soccer game last week with my kids, and found that the tickets were "mobile only" tickets that I had to add to my iOS or Android wallet. Literally, it wasn't not possible to print the ticket out. But beyond a few random scenarios (banking apps, circle app), which can easily be remedied through an old tablet or ipod-like device, I'm able to get along just fine. I do feel more present and capable of listening.

One other realization. I think Johann Hari's alarmist writing about our fragmented attention span in [Stolen Focus](https://www.amazon.com/Stolen-Focus-Attention-Think-Deeply/dp/0593138511) may have been over-inflated. I seem to be mostly back to my old self (the college self I reminisced about in [my awakening post](/blog/awakening-moment-to-how-smartphones-fragment-our-attention/)) after a month. The Internet didn't permanently rewire my brain. I think we can easily teach our brain habits and patterns within a short period of time.

For example, if you start posting on Twitter, within a few days, your brain starts coming up with quippy little nuggets to post. A 160-character thought will naturally form in the back of your mind, and you'll be like, what a clever thing I can post on Twitter!  

Same with dreams. Have you ever kept a dream journal? Well, when you start writing down your dreams, you train your brain to pay attention to dreams more. As a result, you start to remember more of your dreams. If you keep a dream journal for several months, you'll find that you remember many more of your dreams. I once did this as a teenager and was initially enthralled to suddenly remember so many dreams. But after finding that my dreams were utter nonsense whose interpretation only frustrated me, I abandoned the effort. And not long after, I stopped remembering my dreams.

I'm sure that if you read feeds all day, constantly scanning and skimming, you teach your brain to operate in this mode. Short attention, process, assess, file, act, next, etc. Of course you then begin to apply this quick processing to other contexts where you might not want to operate in that mode. It's not some huge phenomenon to get worked up about, claiming that smartphones and the internet, with its profit-driven attention economy, have wrecked our ability to focus and permanently changed who we are. At least, for me personally, I've found that my brain is still fairly plastic (at 46!) and can be retrained without too much effort.

What I want to achieve long-term, however, is *optimal Tom*. I'm convinced that I think and work better without my smartphone. I'd like to take this to the next level, getting into more states of productive focus and flow. I still find myself, even without any external interrupter, looking for a distraction. For example, as I was working on some documentation today, I decided to stop because it was mentally taxing. I responded to about half a dozen blog comments, then returned 20 minutes later to the documentation task. Eventually, I want to get to a state where I don't have any internal compulsion for distraction.
