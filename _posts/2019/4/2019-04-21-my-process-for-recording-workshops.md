---
title: "How I record audio and video in workshops &mdash; all the technical details, equipment, software, post-production techniques, and publishing methods"
permalink: /blog/recording-a-workshop-video-audio-technical-details/
categories:
- general
keywords:
bitlink: https://rebrand.ly/myrecordingprocessvids
description: "In case you're curious about my process for recording workshops and producing the videos, such as in <a href='https://idratherbewriting.com/learnapidoc/docapis_course_videos.html'>Video recordings of API doc workshops</a>, I've detailed the process here. In short, I capture the screen video and audio separately and then combine them in post-production. There's room for improvement in my approach &mdash; mainly to capture audience voices and picture in picture, but this tends to require more work than it's worth."
---

## Recording audio

I use a [Zoom H4n Pro Handy Recorder](https://www.amazon.com/Zoom-H4N-Digital-Multitrack-Recorder/dp/B01DPOXS8I) ($220) with a [Shure SM93 Lavalier Microphone](https://www.amazon.com/gp/product/B0002JETWE/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1) ($160) to capture my voice. The Shure lavalier is a phantom-powered omnidirectional mic with an XLR input that plugs into the Zoom recorder. (Previously, I used a cardioid mic but found that it was too sensitive in reacting to changes in head positions.)

I capture the audio at 44.1/16 frequency since this is the same frequency that Camtasia captures at &mdash; this an important point that will become apparent after 30-60 minutes of recording. (If your video capture records at a different rate from the audio capture rate, even if slight, after an hour of recording, the two will be 1-2 seconds out of sync.) The Zoom microphone level is about 65. Ideally, as you monitor the sound, you want the recording level to be between -24 and -12, as this provides the best signal, and I achieve this range when I set the recording level at 65 with this mic. If you max it out at 100, a burst of sound could distort the audio and make leveling problematic in post-production.

Bulky as the Zoom recorder is, I put it in my back pocket (and tighten my belt a bit). Previously, I created a custom holder for this from a belt clip, but I've found that simply sticking it in my pocket also works. The XLR mic adds to the bulk, but that's okay. I admit that men's clothes tend to have larger pockets, which accommodates gadgets like this.

Initially, the audio recording is entirely separate from the video. This is an important point. I think many professional recording setups follow similar approaches.

## Recording video

I record my full computer screen with [Camtasia Studio](https://www.techsmith.com/video-editor.html), and when I record, I also capture sound via the onboard mic, though I later discard this onboard mic content. I just use the onboard mic to more easily align the audio captured with the Zoom (more on this later).

About every hour or two (whenever we take breaks), I stop the recording and save it as a separate file. In choosing the screen to record, I choose my computer screen rather than the projector monitor. MacBook screens have high retina displays, and the more pixels the better because YouTube will compress the resolution into an HD rendering when your capture area is at least 1280 x 720px.

## Syncing in post-production

After the workshop, I need to get the Zoom audio into the Camtasia recording, in perfect sync with the video. To do this, I export the audio from each Camtasia file into standalone WAV files with names such as `video1_original.wav`. In Audacity, I import both this original file that has the onboard sound capture and the Zoom audio file (e.g., `video1_zoom.mp3`). I put each audio file on a separate track. I split stereo to mono for each recording, and then line up the two tracks until the sound is in sync.

In lining up the two tracks, I usually line up the end of the recordings first because the endings for the onboard sound and the Zoom are more closely aligned. For example, I might start the Zoom recorder 30 sec or more before starting the screen capture (as I test things out), but when I finish the presentation, I immediately stop the capture and stop the mic, so the endings are already almost aligned (whereas the beginnings differ more so.)  

In Audacity, it's important not to change any position in the `video1_original.wav` file (the onboard captured sound) but to instead make all adjustments to position with the Zoom audio track. As I align the Zoom audio track to sync with the Camtasia-captured audio, usually I end up with a gap of silence at the beginning of the Zoom with 5-8 seconds or so. I fill this gap with some background sound on a new track because if you export an Audacity file with a silent gap at the beginning, Audacity removes that part and starts when the sound begins. (But removing that section will create alignment issues when reimporting the track back into Camtasia.)

After I align the audio files, I remove the `video1_original.wav` track from Audacity, as it is no longer needed. With the Zoom recording, I enhance the audio a bit following the tips in this YouTube video: [How To Make Your Voice Sound Better in Audacity](https://www.youtube.com/watch?v=dQCB72S64L4). Basically, I equalize the audio, normalize it, and compress it using the settings recommended in the video. Compression will fatten and amplify the sound, and the other settings make the voice sound richer and warmer. (If you hate the way your voice sounds, try this technique and you might change your mind about your voice.) I then export this file as an MP3 and call it `video1_enhanced.mp3`.

I now import the `video1_enhanced.mp3` back into Camtasia. It should automatically align with the existing audio track. After verifying that the two are in sync (a slight echo is okay but ideally the two voices should align seamlessly), I remove the original Camtasia audio track. I'll also bump up the voice level to 115% (because I dislike it when audio recordings are too quiet to easily hear while driving in a car).

I then add a title slide (which I make in Illustrator), and remove any long gaps in the recording (such as during a workshop activity). For any removed section, I'll add a fade transition to let viewers know that I've removed content.

## Publishing the content

I upload the MP4 videos to Youtube, add them to a playlist, add some descriptions below each video, set the date, location, category, keywords, and other settings, and publish them. I embed them on my site using YouTube's embed code.

I export the enhanced audio from Camtasia into standalone audio files (WAV), and import the WAV files into Audacity once more. After adding some metadata to the files, I export them as MP3 files (Camtasia can't output MP3 due to licensing issues). This allows me to embed the individual audio files as standalone files in case people prefer to listen only to audio.

I upload the audio files to my Bluehost web hosting space and embed them on the page using standard HTML5 audio tags. I also include some Podtrac code on the link to count the number of listens. The Podtrac code looks like this:

<pre>
<span style="color: red">http://www.podtrac.com/pts/redirect.mp3</span>/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/raleighapidoc/apiworkshopvid3.mp3
</pre>

Overall, it takes me about 5-6 hours to do all of this. I've found that I usually need about 15GB of space on my computer for all of these files. Eventually, after 2-3 weeks post-publication (where any issues will have been note), I just delete this content locally and let it live on YouTube and Bluehost. Again, to listen to these videos, see <a href='https://idratherbewriting.com/learnapidoc/docapis_course_videos.html'>Video recordings of API doc workshops</a>.

## What I don't capture and why

My process is actually pretty simple. I don't try to record myself (e.g., picture in picture or bookended visuals), nor do I try to capture the audience's voices with an additional mic. Usually, I try to repeat the audience's question, but sometimes I forget because it's not natural when everyone can easily hear the person's question.

I've tried capturing picture video (that is, a person, not just a screen) previously and found that it exponentially magnified file sizes and recording difficulties, so I dropped this in favor of just recording my screen. My computer (a Macbook Pro with 8GB RAM and 256GB storage) doesn't handle large video files well. And if I captured myself speaking, this creates two more difficulties. First, what if I move around? Would I need a camera person to follow me? Positioning the camera fixes where I can stand and move about. Second, in post-production, I'd need to interweave the picture recording with my screen, which then creates more post-production work. I guess I could simply embed a PIP image throughout, but really what does this add except some visual novelty?

Capturing audience voices also makes the recording more difficult. Trying to capture the audience voices and then splice the audience voice track into my own track proves to be too much trouble without more professional equipment that would mix them from the start, because now I'd have to align two tracks with the original onboard sound.

Ideally, for a more professional recording, I would require the audience to speak into a roving microphone that connected wirelessly to a receiver pack on the Zoom, but I find this difficult because in small workshops of 20+ people, where no one is using a mic to begin with, passing them a mic that doesn't actually amplify sound tends to confuse people, and they deem it unnecessary and immediately speak without it. I could embed small sound recording mics in the audience that projected back to a receiver on the Zoom, but good wireless sound equipment costs hundreds of dollars. Plus, if you're merging tracks from multiple sound captures, you'll have more background sound to deal with. Every mic (especially inexpensive mics) will bring some background sound with them, and each additional mic stream just adds to this overall noise.

I also don't add in music bumpers or interludes, nor do I add in other commentary before or after the podcast that introduces the track or concludes it. However, doing so would be a good idea. I've just never found any music that I like and that is free. I find that in most podcasts I listen to, the music is more annoying than compelling. (All too often I'm thinking, *really, you're actually leading with THAT!!??*)

## Conclusion

Overall, my philosophy with recording is to keep it simple. I could spend a lot of time editing and publishing video and audio. But I know that there's a balance between output and quality, and the higher quality I shoot for, the less output I'll achieve. Already, it's taken me 2 weeks to find the time to edit and publish these Raleigh API workshop videos.

I do think high audio quality is important, which is why I've invested in some decent audio equipment and follow the process that I do (recording audio separately from video). When I imagine my audience, I think of people listening with their headphones on while they drive or bike or are otherwise mobile. In these scenarios, audio quality is much more important than video quality.

Personally, I consume a lot of audio content because I bike to work. I end up with about 1.5 hours of listening time each day. Although I alternate between audio books and podcasts, lately I've been listening to YouTube videos, since a lot of good instructional content is only available on YouTube. The audio quality on YouTube videos varies dramatically. Some videos sound great, and others sound like someone recorded them with an onboard mic in the back of the room while eating a noisy bag of chips. Overall, it's the audio quality that matters most to me, which is why I've prioritized audio editing above all else in my recording process.
