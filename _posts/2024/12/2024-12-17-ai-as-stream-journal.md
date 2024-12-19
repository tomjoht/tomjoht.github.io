---
title: "AI stream journaling experiment"
permalink: /blog/ai-stream-journaling-experiment
date: 2024-12-17
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/ai-as-stream-journal
description: "After my post on <a href='/blog/biohacking-your-glucose-with-ai'>Biohacking your glucose with AI</a>, I had another thought: what if I didn't just log food + exercise + energy levels, etc., but also tasks, thoughts, observations, or other notes? I learned that this kind of all-in-one journal is often called a <i>bullet journal</i>&mdash;which is an officially trademarked term for <a href='https://bulletjournal.com/'>Ryder Carroll's bullet journaling methodology</a>, often shortened to <i>Bujo.</i> Carroll has detailed methodologies for organizing, tagging, and managing information in a journal that's far beyond the scope for how I'm using the term. So to avoid conflating my approach with bullet journaling, I'm calling my technique here an <i>AI stream journal.</i> Mainly, I just wanted a single place where I could jot down the stream of information flowing through my mind and have AI sort and organize it for me."
---

* TOC
{:toc}

## The experiment
I want you to act as my AI stream journal (similar to a bullet journal), for the day. In this chat session, I’ll log 3 kinds of notes: tasks, thoughts, and events. Tasks are to-do list items. Thoughts are random ideas or notes I have. Events consist of food eaten, exercise, or descriptions of my internal states. The point is to have an easy way to dump all the scattered information in my head into a central log that you organize and analyze on my behalf. 

**Tasks**

Tasks will be prefaced with the word “task.” This is a way for me to get all the random, scattered to-do’s and reminders out of my head so that I can more fully focus on the task at hand.

**Thoughts**

Thoughts and ideas will be prefaced with the word “thought.” These are just random ideas that pop into my head about anything. Feel feel to comment on any of the thoughts/ideas I jot down. Again, I just want to make a note of these ideas to potentially return to them later. I’m always interested in seeing familiar things in new ways.

**Food, exercise, and well-being events**

For the food and exercise notes, I’ll add details about the times and details of when and what I’m eating, and also the when and what of exercise. These food and exercise entries will always be prefaced with a time. The time entry might also indicate general feelings of mood, well-being, energy levels, etc. These are all events. For example, “6:20am - drank protein shake.” Or “2pm feeling sleepy.” or “11 am — feeling full of energy.” Or “1pm - 2pm played basketball.”

I’m also wearing a CGM throughout the day that tracks my glucose levels. I'll provide CGM data at the end of the day. With both the food + exercise events + glucose logs, you will then analyze food-glucose correlations (considering a ~30-minute delay for digestion), the impact of timing and food combinations, patterns and trends, and general recommendations for improvement to minimize glucose spikes. My goal is to do as the Glucose Goddess Jessie Inchauspé says and minimize my glucose spikes, with the larger goal of increasing my energy and sense of well-being.

When I log an entry about food or exercise, feel free to provide feedback. I really would like to strike a balance with whatever meal or snack I’m eating. My nutritionist says I should try combining various macronutrients with each meal to strive for balance, especially doubling down on fiber at the beginning of meals. So maybe give me some feedback as I log food to tell me if it's a balanced meal/snack, and if not, how to balance it. In general, though, save your more detailed analyses for later, once I supply you with the glucose logs from the CGM at the end of the day.

At the end of the day, I’ll also ask you to provide me with an organized list of tasks, sorted by work tasks and home tasks. And a list of my thoughts.

Sound good? Are you ready to be my AI stream journal?
</div>
</div>

## Issues to solve

In my first experiments, I ran into a few issues. Mixing work and personal tasks/notes in an AI session was a little tough. I didn't want to put confidential material in an AI that wasn't inside my company's firewall, but if I couldn't access that AI reliably on my phone without authenticating with a token every time, it was hard to use it. My AI stream journal needed to be available to me via my smartphone wherever and whenever I was during the day. So I used more publicly available AI tools and made any work tasks phrased general enough that they wouldn't contain confidential information.

It was also somewhat fragmenting to have so many AI sessions open. I starred or favorited the current sessions, but because this was a daily task (unstarring the old sessions, creating and starring new ones), it was hard to keep track of the right AI session.

I also needed to store my prompt in an easily accessible place so that I could just kick off the AI stream journaling session without retyping the whole prompt. I decided to put this prompt as a separate "Document tab" in a Google Doc where I also store my food/exercise/glucose logs.

## Results

I haven't experimented with AI stream journals nearly as much as the [food+exercise+glucose journal](/blog/biohacking-your-glucose-with-ai). However, so far it's been good. I like having a single journal where I note the stream of details each day. As I said earlier, it allows me to better focus on the task at hand without worrying about losing track of other need-to-do tasks. If this method leads to greater focus and concentration, more in-the-moment engagement, that's a worthwhile productivity technique. 

Even better is the calmness that comes from living an *organized life*. By this I mean working on those tasks that are the highest priority so that I finish them well ahead of the needed timelines. When I organize my day like this, working on the highest priority tasks at the right times, I'm much less stressed and perform better all around. 

For example, when one of my daughters was applying to college, we proceeded through all phases of the application process months ahead of time, finishing several days before the earliest deadlines. There wasn't a late-night, last-minute crunch to crank out that personal essay, running against the clock and hyped up on caffeine to meet the deadline. It felt great.

At work, I dislike writing release docs at the last minute and pinging people over chat to do same-day reviews. It's so much better to prioritize the right things in the right order&mdash;knocking out release notes a week ahead of time so that I can request engineering reviews with ample time, giving them 3-4 days to review and approve the changelists.

The "organized life" isn't something that can be achieved through a simple AI stream journal&mdash;but maybe the stream journal can be one component of a larger system. There's also a need to process the tasks at the end of the day, to export the content and import it into other systems, and then incorporate planning sessions with each day to identify the highest priority tasks. These additional components are something I'm still working on incorporating. (If I can attach them to an existing routine&mdash;something I wrote about in [Routines and habit stacking](/blog/routines-and-habit-stacking), I'll have better chances of success.)

## Exporting from AI into Todoist

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