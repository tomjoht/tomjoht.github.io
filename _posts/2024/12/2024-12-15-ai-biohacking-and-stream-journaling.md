---
title: "Using AI for personal optimization: biohacking and stream journaling"
permalink: /blog/ai-biohacking-and-stream-journaling
date: 2024-12-15
categories:
- ai
keywords: biohacking, bullet journal, stream journal, glucose, cgm, nutrition
rebrandly: https://idbwrtng.com/ai-biohacking-and-stream-journaling
description: "In this post, I stray slightly outside my normal tech comm focus to explore strategies for personal optimization, specifically with biohacking and stream journaling. Some of these techniques could apply to tech comm, such as in analyzing user analytics, but that isn't something I've tackled yet. In short, I'm experimenting with using AI tools to adopt healthier habits and organize my stream of tasks, thoughts, and other notes during the day."
---

* TOC
{:toc}

## Biohacking experiment

"Biohacking" might be a pretentious cyber term for what is otherwise a straightforward experiment. For 10 days, I tracked my food and exercise levels while also wearing a continuous glucose monitor (CGM) to track my glucose levels. I then used AI to pair up the food + exercise with the glucose readings and perform an analysis about triggers for glucose spikes and recommendations to avoid them.


### What prompted this experiment? 

A few months ago I read a book called *[The Case Against Sugar](https://www.amazon.com/Case-Against-Sugar-Gary-Taubes/dp/0307701646)* by Gary Taubes. Afterwards, I decided to give up "added sugar." The first month, I saw positive health benefits. But after a while, my body wised up and found a sugar workaround: I began eating more fruit than I've ever eaten in my life, believing that "natural sugar" in fruit was perfectly fine without moderation. Well, after 3 months of this, my A1C levels jumped up way more than I anticipated, which scared me. So I decided to start wearing, with the recommendation of a nutritionist, a CGM. I bought a $89 [Dexcom Stelo](https://www.stelo.com/) (the kind you can get without a prescription) to track what might be contributing to the glucose spikes. 

It only took a day to realize that natural sugars in fruits could lead to glucose spikes in the same way as added sugars and carbs. So I was like, duh, of course my blood sugar rose when I ate multiple apples, persimmons, and bananas a day. But I also started thinking about other ways to improve my health through the monitor. Wouldn't it be great if I had more energy, especially in the evenings? Wouldn't it be nice if I could sleep better at night? What could my glucose levels reveal about my mood? My circadian rhythms? If I flatten my glucose curves, as Jessie Inchauspé (aka "the Glucose Goddess") says, would I have more energy and be healthier? Glucose seemed like an interesting and accessible metric to track.

So I started keeping a detailed log of my day's events&mdash;what I ate, any exercise, and general energy levels. I noted the tracking through ongoing AI sessions. I started a new AI session and labeled it "Daily log" (customizing it with the date), and I starred it so I could easily find it. Then throughout the day, when I ate something or exercised, etc., I opened the AI session on my app and made a quick note&mdash;for example, 6:30am, drank protein shake with 1 banana, 2 scoops of protein. Or 8:00-8:50 am, did fitness class focusing on body strengthening. Or "2:30pm feeling hungry, ate protein bar." You get the idea.

### Prompt to start the AI session

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

### What did I learn?

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

## AI stream journaling experiment

While I was logging my day's events in an AI session, I had another thought: what if I didn't just log food + exercise + energy levels, etc., but also tasks, thoughts, observations, or other notes? I learned that this kind of all-in-one journal is often called a "bullet journal"&mdash;which is an officially trademarked term for [Ryder Carroll's bullet journaling methodology](https://bulletjournal.com/), often shortened to "Bujo." Carroll has detailed methodologies for organizing, tagging, and managing information in a journal that's far beyond the scope for how I'm using the term. So to avoid conflating my approach with bullet journaling, I'm calling my technique here an "AI stream journal."

Mainly, I just wanted a single place where I could jot down the stream of information flowing through my mind and have AI sort and organize it for me.

### The experiment

During the day, I opened an AI session and named it "stream journal." As I was looking through my email, working on tasks, responding to co-workers, texts, etc., I made notes in the stream journal. 

For example, "work task: respond to the email titled ‘such and such'." / "work task: Set up new bug templates for release notes specific to different teams." / "work task: Figure out this warning message is appearing in the logs." "work task: Correct this misspelling on this page of the reference docs." / "home task: Submit something for an HSA reimbursement." / "Thought: Working hard makes tech comm more interesting." / "home task: Prepare food items for soccer potluck." / "home task: Get your wife something for Christmas, etc." / "home task: Plan travel for upcoming soccer tournaments." Thought: "What happened to keeping a noticing journal?" And so on.

During the day, we're bombarded with dozens of random to-do's, thoughts, observations, and notes. I usually just write them down on paper, which I eventually lose or sometimes review later. But having a running AI session to note the stream of information has several advantages:

* AI will clean up my notes and make them more readable.
* AI can sort content with different tags. For example, all work tasks in one group, home tasks in another, ideas in another. I don't have to think about categories&mdash;I just make quick notes.
* Digital formats are more flexible and easier to work with than pen and paper.
* AI can export the content as a CSV to make it easy to import into other systems.

I found that dumping all these ideas into an AI session allowed me to maintain better focus on my current task. I wasn't worried that I would forget or lose track of some important task&mdash;it would be noted in my AI stream journal and would be curated and organized at the end of the day. With this method, I was able to better focus on my task at hand.

Sometimes people try to act on everything in the moment it comes to mind, whether responding to an email or doing some quick task. For example, yesterday morning as the sun was creeping through our study's windows and making me squint, my wife suggested I move the darker curtains from the dining room to the study. I said "That's a good idea&mdash;I'll do it later." Then my wife immediately started making the curtain change, explaining that "If I don't do it in the moment I think of it, I'll forget about it." 

This makes sense, and I definitely like the darker curtain now in the study. She's awesome to help out in the moment. But much of her day and my day is often spent like this, moving from task to task as they come to us, without a ton of preplanning or thought. How often have we received an email and thought, if I don't respond now, I'll completely forget about it? Then we start responding to the email, and before we know it we forgot what we were doing previously. In my experience, this do-it-now approach often leads to a fragmented, scattered day. It can be exhausting moving from task to task like this.

The AI stream journal gives me the ability to stop worrying about these other tasks and to instead concentrate on what I'm working on in a more immersive way, without the fear of forgetting a task entirely.

### AI stream prompt

Here's my AI stream prompt:

<div class="chat">
<div markdown="1">
I want you to act as my AI stream journal (similar to a bullet journal), for the day. In this chat session, I'll log all kinds of notes: work tasks, home tasks, thoughts and ideas, and food and exercise. The point is to have an easy way to dump all the scattered information in my head into a central log that you organize and analyze on my behalf. 

**Tasks**

Tasks will be prefaced with the word "work task" or "home task." This is a way for me to get all the random, scattered to-do's and reminders out of my head so that I can more fully focus on the task at hand.

**Thoughts**

Thoughts and ideas will be prefaced with the word "thoughts." These are just random ideas that pop into my head about anything. Feel feel to comment on any of the thoughts/ideas I jot down. Again, I just want to make a note of these ideas to potentially return to them later.

**Observations (mindfulness noticing)**

Sometimes I want to note my mindfulness observations and "noticings." These are details that I'm observing about the environment around me, taking in some detail that I might not have noticed before. It could be a small facet of a place or an activity or person that I hadn't noticed before. I want to zero in on this detail and really take it in, like observing it for the first time, as a way to increase my presence in the moment. For these entries, I'll preface it with the word "observation."

**Food and exercise**

For the food and exercise notes, I'll add details about the times and details of when and what I'm eating, and also the when and what of exercise. The notes will say "food log + time," such as "food log: 6am, drank protein shake." Or "exercise log: 11am, walked for 20 minutes." I may also note energy levels or other moods. I'm also wearing a CGM throughout the day that tracks my glucose levels. I'll provide CGM data at the end of the day. With both the food + exercise + glucose logs, you will then analyze food-glucose correlations (considering a ~30-minute delay for digestion), the impact of timing and food combinations, patterns and trends, and general recommendations for improvement to minimize glucose spikes.

When I log an entry about food or exercise, just acknowledge each entry briefly. Save your more detailed analyses for later, after I supply you with the glucose logs at the end of the day.

At the end of the day, I'll also ask you to provide me with an organized list of tasks, sorted by work tasks and home tasks, and a list of my ideas.

Sound good? Are you ready to be my AI stream journal?
</div>
</div>

### Issues to solve

In my first experiments, I ran into a few issues. Mixing work and personal tasks/notes in an AI session was a little tough. I didn't want to put confidential material in an AI that wasn't inside my company's firewall, but if I couldn't access that AI reliably on my phone without authenticating with a token every time, it was hard to use it. My AI stream journal needed to be available to me via my smartphone wherever and whenever I was during the day. So I used more publicly available AI tools and made any work tasks phrased general enough that they wouldn't contain confidential information.

It was also somewhat fragmenting to have so many AI sessions open. I starred or favorited the current sessions, but because this was a daily task (unstarring the old sessions, creating and starring new ones), it was hard to keep track of the right AI session.

I also needed to store my prompt in an easily accessible place so that I could just kick off the AI stream journaling session without retyping the whole prompt. I decided to put this prompt as a separate "Document tab" in a Google Doc where I also store my food/exercise/glucose logs.

### Results

I haven't experimented with AI stream journals nearly as much as the food+exercise+glucose journal. However, so far it's been good. I like having a single journal where I note the stream of details each day. As I said earlier, it allows me to better focus on the task at hand without worrying about losing track of other need-to-do tasks. If this method leads to greater focus and concentration, more in-the-moment engagement, that's a worthwhile productivity technique. 

Even better is the calmness that comes from living an *organized life*. By this I mean working on those tasks that are the highest priority so that I finish them well ahead of the needed timelines. When I organize my day like this, working on the highest priority tasks at the right times, I'm much less stressed and perform better all around. 

For example, when one of my daughters was applying to college, we proceeded through all phases of the application process months ahead of time, finishing several days before the earliest deadlines. There wasn't a late-night, last-minute crunch to crank out that personal essay, running against the clock and hyped up on caffeine to meet the deadline. It felt great.

At work, I dislike writing release docs at the last minute and pinging people over chat to do same-day reviews. It's so much better to prioritize the right things in the right order&mdash;knocking out release notes a week ahead of time so that I can request engineering reviews with ample time, giving them 3-4 days to review and approve the changelists.

The "organized life" isn't something that can be achieved through a simple AI stream journal&mdash;but maybe the stream journal can be one component of a larger system. There's also a need to process the tasks at the end of the day, to export the content and import it into other systems, and then incorporate planning sessions with each day to identify the highest priority tasks. These additional components are something I'm still working on incorporating. (If I can attach them to an existing routine&mdash;something I wrote about in [Routines and habit stacking](/blog/routines-and-habit-stacking), I'll have better chances of success.)

### Exporting from AI into Todoist

The tasks and other notes should be transferred from the AI session into a better system. For example, work tasks can be transferred into an issue tracking system at work (within a specific component and tags). Home tasks can be transferred into a home issue tracking system&mdash;the one I use is [Todoist](https://www.todoist.com). Then more immersive planning can be done through these issue tracking systems. 

To import items into Todoist, there's a [specific CSV template](https://get.todoist.help/hc/article_attachments/11984456882588) to follow, as described in [Format a CSV file to import into Todoist](https://todoist.com/help/articles/format-a-csv-file-to-import-into-todoist-UVUXTmm6). The AI tool can put the tasks into this CSV structure, facilitating the export and import. 

Here's a sample prompt for curating the personal tasks and exporting them in a Todoist CSV format:

<div class="chat">
<div markdown="1">
I'm done for the day. Now can you list all my personal tasks? Additionally, will you please structure those tasks in a CSV format following the example in this Todoist CSV template I just uploaded? This will allow me to import them into my Todoist app.
</div>
</div>

## Conclusion

There are countless ways to organize your tasks and be more productive. My stream journal is merely a tool for capturing all of these items, acting as a blank notebook, rather than performing an analysis. In that respect, it's like using a Ferrari to drive to the mailbox&mdash;there isn't a sophisticated analysis to perform with all the data. I'm not sure what that analysis would be, except perhaps to help organize and optimize the day. But if this technique can clear my mind and allow me to focus on the task at hand, that's enough for now.