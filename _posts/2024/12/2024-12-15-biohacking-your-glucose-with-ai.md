---
title: "Biohacking your glucose with AI"
permalink: /blog/biohacking-your-glucose-with-ai
date: 2024-12-17
categories:
- ai
keywords: biohacking, glucose, cgm, nutrition
rebrandly: https://idbwrtng.com/ai-biohacking-and-stream-journaling
description: "In this post, I stray slightly outside my normal tech comm focus to explore strategies for personal optimization, specifically with biohacking your glucose with AI. Some of these techniques could apply to tech comm, such as in analyzing user analytics, but that isn't something I've tackled yet. In short, I'm experimenting with using AI tools to adopt healthier habits so that I feel better and am more productive throughout the day."
redirect_from:
- /blog/ai-biohacking-and-stream-journaling
---

* TOC
{:toc}

## Biohacking experiment

"Biohacking" might be a pretentious cyber term for what is otherwise a straightforward experiment. For 10 days, I tracked my food and exercise levels while also wearing a continuous glucose monitor (CGM) to track my glucose levels. I then used AI to pair up the food + exercise with the glucose readings and perform an analysis about triggers for glucose spikes and recommendations to avoid them.

## What prompted this experiment? 

A few months ago I read a book called *[The Case Against Sugar](https://www.amazon.com/Case-Against-Sugar-Gary-Taubes/dp/0307701646)* by Gary Taubes. Afterwards, I decided to give up "added sugar." The first month, I saw positive health benefits. But after a while, my body wised up and found a sugar workaround: I began eating more fruit than I've ever eaten in my life, believing that "natural sugar" in fruit was perfectly fine without moderation. Well, after 3 months of this, my A1C levels jumped up way more than I anticipated, which scared me. So I decided to start wearing, with the recommendation of a nutritionist, a CGM. I bought a $89 [Dexcom Stelo](https://www.stelo.com/) (the kind you can get without a prescription) to track what might be contributing to the glucose spikes. 

It only took a day to realize that natural sugars in fruits could lead to glucose spikes in the same way as added sugars and carbs. So I was like, duh, of course my blood sugar rose when I ate multiple apples, persimmons, and bananas a day. But I also started thinking about other ways to improve my health through the monitor. Wouldn't it be great if I had more energy, especially in the evenings? Wouldn't it be nice if I could sleep better at night? What could my glucose levels reveal about my mood? My circadian rhythms? If I flatten my glucose curves, as Jessie Inchauspé (aka "the Glucose Goddess") says, would I have more energy and be healthier? Glucose seemed like an interesting and accessible metric to track.

So I started keeping a detailed log of my day's events&mdash;what I ate, any exercise, and general energy levels. I noted the tracking through ongoing AI sessions. I started a new AI session and labeled it "Daily log" (customizing it with the date), and I starred it so I could easily find it. Then throughout the day, when I ate something or exercised, etc., I opened the AI session on my app and made a quick note&mdash;for example, 6:30am, drank protein shake with 1 banana, 2 scoops of protein. Or 8:00-8:50 am, did fitness class focusing on body strengthening. Or "2:30pm feeling hungry, ate protein bar." You get the idea.

## Prompt to start the AI session

I started my AI session with a prompt like this: 

<div class="chat">
<div markdown="1">
I want you to act as my food, exercise, and glucose tracking assistant. I'll log the following throughout the day:

* Exact time of consumption
* Food and drinks consumed (with estimated portion sizes/calories if possible)
* Physical activity (type, duration, intensity)
* Energy levels/how I'm feeling
* Sleep patterns and other relevant context

I'm also wearing a CGM throughout the day that tracks my glucose levels, logging the time and levels in 15-minute increments. I'll provide CGM data at the end of the day. With both the food + exercise + glucose logs, you will then analyze:

* Food-glucose correlations (considering a ~30-minute delay for digestion)
* Impact of timing and food combinations
* Effects of activity and other factors
* Patterns and trends
* Recommendations for improvement to minimize glucose spikes.

When I log an entry, just acknowledge each entry briefly. Save your in-depth analyses for later, when I provide the glucose logs.
</div>
</div>

{:.note}
For another prompt with a more expanded scope, see the one in [AI stream journaling experiment](/blog/ai-stream-journaling-experiment).

I found that logging events in an ongoing AI session like this was easy. Of course, I could have equally just noted these things in a Google Doc, but why not leverage AI for this? AI could clean up the notes, allowing me to quickly dictate half-intelligible logs on the go and keep track of everything for me in an easy way.

At the end of the day, I exported the glucose logs as a CSV file (from [https://clarity.dexcom.com/](https://clarity.dexcom.com/)), cleaned up irrelevant noise in the exported content (via Google Sheets), then downloaded the cleaned up CSV file with just two columns: time and glucose level. 

Then I returned to my AI session and used this prompt:

<div class="chat">
<div markdown="1">
I'm all done logging events for the day. Here's my CGM data (attached as a CSV file). Please create a table to analyze these events with my glucose response. The table should have the following columns: Time, Event, Glucose Level, and Analysis.

The Glucose Level column should reflect Glucose Level Now → Glucose Level +30 min. This is because if you eat some food, your body has to first metabolize the food, taking about 30 minutes before you see the impact on your glucose. For example, if the glucose level at about 6:00 am is 105, and 30 minutes later it's 130, then represent the glucose values in the Glucose Level column like this: 105 → 130.

The "Analysis" column should explain the likely reasons for the observed glucose changes. Focus on actionable recommendations for tomorrow to minimize spikes. 
</div>
</div>

The resulting tables were pretty good. I'm hesitant to share one here due to the personal details, but so you can see the result, I'll share a little. The tracking is way more detailed and meticulous than I would ever want to do manually. After doing this for about 10 days, I can't imagine manually tabulating all of this information&mdash;it would take hours. Here's a sample table.

<div class="response">
<div markdown="1">

**Sunday, Dec 15**

| Time | Event | Glucose Level (Now → +30min) | Analysis |
|------|--------|----------------------------|-----------|
| 5:15 AM | Food: Protein shake + Dave's killer bread with butter | 110 → 128 | Moderate spike (+18). The combination of protein shake with bread caused a rise. Consider eating the protein shake first, waiting 15 minutes, then eating the bread to blunt the glucose response. |
| 5:45-6:15 AM | Exercise: Brisk walk | 128 → 84 | Excellent glucose lowering effect (-44). The morning walk effectively brought down the breakfast spike. Continue this timing of post-breakfast walks. |
| 6:15-6:23 AM | Exercise: Housework | 84 → 95 | Gentle rise (+11) as body recovers from exercise. This is a healthy stabilization. |
| 6:25 AM | Food: Monkeybrew with adaptogens | 95 → 102 | Minimal impact (+7). Good choice for a morning drink. |
| 7:35-7:55 AM | Nap | 102 → 104 | Very stable during rest. Good timing for a nap from a glucose perspective. |
| 7:57 AM | Food: Barebells protein bar | 104 → 126 | Moderate spike (+22). Consider pairing protein bars with a short walk or eating half at a time. |
| 9:30 AM | Food: Greek yogurt with honey, cashews, berries | 97 → 120 | Notable rise (+23). The mix of protein and fat from yogurt and nuts helped moderate what could have been a larger spike from honey and berries. Good combination overall. |
| 9:45-10:40 AM | Exercise: Housework and yard work | 120 → 102 | Effective glucose lowering (-18) through sustained activity. This timing after breakfast helped minimize the morning glucose peak. |
| 10:55 AM | Food: Nature Valley peanut butter granola bar | 102 → 133 | Significant spike (+31). These bars tend to be high in sugar. Consider switching to a lower-sugar alternative or pairing with protein. |
| 12:45 PM | Food: Broccoli with butter, mozzarella, popcorn chicken, fry sauce, chocolate | 111 → 120 | Relatively modest increase (+9) despite mixed meal. The fiber from broccoli and protein/fat combination helped moderate the impact of breading and chocolate. Good meal composition. |
| 2:30-3:00 PM | Activity: Wrapping presents | 103 → 105 | Very stable during light activity. Shows good glucose control in early afternoon. |
| 5:55 PM | Food: 3 pizza slices, breadstick, cinnamon pretzel, salad with croutons, 2 chocolates | 105 → 162 | Largest spike of day (+57). High-carb dinner with multiple refined carbohydrates. |
| 6:15-7:00 PM | Exercise: 45-min brisk walk | 162 → 121 | Excellent glucose lowering effect (-41). The post-dinner walk significantly helped moderate what could have been a larger spike. |

Key Recommendations for Tomorrow:

1. Maintain the post-meal walking habit - it's clearly effective at managing glucose spikes
2. Consider these meal timing adjustments:
   - Eat protein before carbs when having mixed meals
   - Space out carb-heavy foods instead of consuming them together (especially for dinner)
3. Food swaps to consider:
   - Replace Nature Valley bar with lower-sugar protein bar or nuts
   - For dinner, try eating the salad first, then waiting 10-15 minutes before the higher-carb items
4. Continue the pattern of activity after meals - even light movement helps

Positive Patterns Observed:
- Morning and evening walks are very effective at managing glucose
- Protein/fat/fiber combinations help moderate glucose response
- Light activity throughout the day helps maintain stability
- Good recovery after spikes, suggesting healthy metabolic flexibility

</div>
</div>

Note that I've tried this with Claude, Gemini, and ChatGPT. Claude performed the best with the most helpful analysis. (Some Gemini models also performed excellently.)

{% include ads.html %}

## What did I learn?

This approach helped me understand a lot about the food I was eating and the impact. Here are a few things I realized:

* One great way to reduce glucose spikes is to go on a 20-minute walk after a meal. Going on walks after meals also just feels right. In fact, walking during the start of a glucose spike gives the walk so much more purpose and just feels right internally. Moderately vigorous house cleaning (e.g., vacuuming, putting away laundry, picking up) also does the trick.
* Low glycemic-level fruits like mixed berries have way less glucose impact than a banana. 
* Anything with oats in it (Cheerios, granola bars, cold oats) leads to quick glucose spikes.
* There's nothing like seeing your glucose spike after eating food (e.g., pizza) to make you rethink your food choices. Seeing the data can really stop you in your tracks.
* Perhaps a more accurate predictor for glucose spikes is to combine the carbs *and* sugar. Even eating a lot of winter squash (which seems like a vegetable, hence good, right?) leads to glucose spikes.
* Aerobic vs. anaerobic activities affect glucose in starkly different ways. If I play basketball (anaerobic), my glucose can shoot up to 170 without having eaten anything. But biking, walking, and fitness classes (aerobic) always either leaves my glucose steady or drops it. Even a cardio fitness class with a lot of intense exercises still impacts my body as an aerobic activity. Competitive sports are just a really different sort of activity.
* If you eat chicken that's been breaded (e.g., chicken nuggets), the breading has a lot of carbs in it. However, if you eat a bowl of broccoli first, it can really flatten the glucose spike.
* Salads and other greens are my best options for foods, especially with a vinaigrette dressing. I'm learning to like salads more.
* My natural bedtime based on stabilizing glucose levels is about 10/10:30 pm, with a natural wake time of 5:30/6:00 am. 

I'm not a health and nutrition expert, so I was learning first-hand the impact of foods on my body. My realizations probably wouldn't surprise anyone with knowledge of nutrition, but they were revealing to me. More than anything, monitoring glucose logs gives me awareness of the impact of food. For example, tonight when my daughter threw a Christmas party, I ate 3 slices of pizza with some other bread. Even after 45 min of walking afterwards, it still spiked my glucose. I have so much regret about eating that much pizza.

I have more realizations, but my point is to describe more of the approach I took, my use of AI tools, and to hint at the power of having AI do the work of pairing up logs with events to provide intelligent analyses. The pairing of glucose levels with food/exercise logs is particularly powerful because (a) you can easily see cause and effect and identify patterns and correlations, (b) the glucose monitoring is continuous and in the background, and (c) glucose is a really interesting metric to track because it correlates with energy levels, mood, and well-being. 

The AI tools did frequently make mistakes, so if anything doesn't look right, spot check the data and ask it to re-analyze sketchy parts. (For example, in one of the tables, I didn't see my evening commute bike ride. Either I forgot to log it, or AI accidentally omitted it.)

Finally, I should note that there's a lot of different opinions about glucose spikes and blood sugar tracking, with many people saying spikes aren't necessarily bad (they're the body's normal response) and that constantly checking your glucose levels might lead to obsessive behavior and avoiding healthy foods. This is likely just an experiment I'll do for 1-2 months while I get a solid grounding on more healthy habits. It seems like eating more salads, going on postprandial walks, and avoiding foods with lots of sugar and carbs will likely be the main takeaways. My next project might be sleep tracking.

<hr/>

For additional reading, see [AI stream journaling experiment](/blog/ai-stream-journaling-experiment).