---
title: "What I learned from organizing and running my first API documentation workshop"
categories:
- general
keywords:
bitlink: http://bit.ly/
published: false
summary: ""
---

This past week I held my first workshop in which I organized it from start to finish myself, and now I'd like to reflect a bit on it. Like I mentioned in my [earlier announcement](/2019/07/08/upcoming-api-documention-workshop-mountainview), although I've given many API documentation workshops in the past, they were always organized through some other group, such as an STC conference or chapter, or were private workshops through companies, or other groups in which I was brought in to provide the instruction.

It wasn't until the workshop through Scott Abel in Menlo Park that I began to really think I should be holding and running these workshops from end-to-end myself. I have a lot of scattered thoughts about these workshops, and I'm going to list them all in somewhat random order here.

## Financially worth the effort?

First, are full-day workshops worth the effort financially? Yes. This is an important point that I'm hesitant to be transparent about, but it is a primary factor in evaluating whether doing these workshops is worth it. They take a tremendous toll on me -- both in the weeks preparing for them as well as the actual day itself. But they are financially worth it if you target the right audience. That audience is company employees looking for continuing education opportunities, not necessarily newbies trying to transition into the field.

A few months ago I held a workshop organized through an STC chapter in North Carolina, and the thinking (mostly by the local leaders) was that the local members, not working at high-profile Silicon Valley tech companies, couldn't afford to pay more than $75 for the workshop. Flying all the way to the east coast for the workshop and back for about 20 attendees didn't amount to much profit (though I thoroughly enjoyed the day spent with them). Basically, I received $750 + airfare/hotel for the event. In my post-workshop evaluation, a few attendees even indicated that the cost for the event was too low. Teaching workshops at the STC Summit had double the profit but was even more draining because it involved also giving multiple presentations at the conference.

For the workshop I organized in Mountain View last week, I charged either $399 or $499 (depending on the registration time) and had 28 attendees. The net profit was about 10x that of the Raleigh event. So financially, it really felt worthwhile.

Although I'd like to ignore the financial costs of such an event in the evaluation of whether it is worthwhile, I must be a realist. I have four kids ranging between ages 9 to 18, with the first one heading off to college at UCSB in the fall. Starting this year, we'll be paying tuition for our children every year for the next 14 years. Also, in case you're out of touch with tuition costs, they are 3x that of what they were when most of us went to college. (For a good read on this, see [How Paying for College Is Changing Middle-Class Life](https://www.nytimes.com/2019/08/30/opinion/sunday/college-tuition.html).) Based on my need to pay tuition, I felt like I need a more marketable side-gig to really make it in the Bay area (even with a big tech company salary).

In deciding to teach the workshop, I also had to reduce my commitments elsewhere. I received an invitation to teach an API doc course at a UC extension school, which would basically run 2 months, require about 5 hours a week, and net $2,500. That kind of endeavor sounds enriching and worthwhile, for sure. But those activities would drain all the free time I have and would make organizing an event like a full-day workshop more challenging. In deciding whether to teach a course, I thought that if I already get many technical questions from experienced technical writers, how many more questions would I get from students.

In order to find attendees willing to pay several hundred dollars for a full-day workshop, you have to target currently employed technical writers who work for companies willing to invest in the continuing education of their employees. At most companies I've worked at, providing educational opportunities for employees to further their skills and knowledge is fairly common. But this also means that the workshop must take place on company time, such as a day during the week. Don't hold a workshop on a weekend, as this digs into the employee's personal time.

As I've analyzed the traffic on my blog over the past decade, I've seen that traffic always dips during the weekends and jumps back up during the weekdays. This means technical writing is basically a workday task, not anyone's hobby. So the event should basically be an extension of work.

## Focus of the workshop

Another important point is to focus on a subject that addresses a current pain point people have. There is almost no other topic in the tech comm industry as compelling for this as API documentation. If I were to hold a workshop on another topic, such as my [simplifying complexity series](/simplifying-complexity/), I doubt many people would sign up. API documentation has been and continues to be a huge source of traffic to my website and a topic of continual interest at tech comm events for the past five years.

Why is API documentation so popular? In part, API documentation is popular because it is a challenging specialization of tech comm. Learning to write for developers requires you to learn new skills, write for new user behaviors, survive in a new technology landscape, navigate new publishing and collaboration tools, and more. Even I feel a bit overwhelmed in this space by the pace and intensity of it all. There is no other topic in our industry that commands so much attention and puts so much pressure on technical writers. One technical writer, who has 30+ years of experience writing developer documentation, explained that she still lacks confidence on many developer documentation projects. Is it any wonder that people would be interested in attending a full-day workshop on this topic?

## Marketing

In order to stay up-to-speed in the API documentation space, I need to dedicate a lot of time and thought development in API doc topics. Although I might want to write about topics outside of API doc, those topics tend to perform poorly (get low traffic) and not result in much over time. It serves me better to expand on some topic in my course, as it attracts more viewers and readers who already have an affinity in that space.

A while ago I wrote a post called [Why I decided not to become a grasshopper expert, or, Not deciding your focus based on where readers are clicking](https://idratherbewriting.com/blog/dilemmas-about-focusing-on-traffic-momentum/), in which I argued that just because 75% of your site's traffic is focused on X, it doesn't mean you should write about X on your site. This topic no doubt gets into deep philosophical questions about the purpose of life, but there are realities at play here that are hard to ignore. If you want to thrive in this space, it requires a lot of time -- time consuming, reading, and exploring articles, tools, and other topics related to API documentation. Try to carry about some other endeavor, such as writing a novel or pursuing other topics, and you will find your time dissolves like sand.

I have also realized that I'm a natural marketer for the topic. Bloggers are consummate marketers for the topics they write about, and every time I write a post that touches upon API documentation topics, it's like an act of marketing for the workshop.

## Orchestrating activities for the workshop

One detail that is quite difficult is figuring out activities for the workshop. It's one thing to write posts and articles addressing various API documentation topics, but it's another to structure that learning into some kind of engaging, interactive material in a full-day course. What activities do you do?

For some aspects of API documentation, there are clear sorts of activities to do &mdashp; making a call in Postman or curl, or rendering a Swagger UI display from an OpenAPI specification file. Exposure to these tools is what makes the API documentation course come to life, and when attendees learn how to use a new tool for some documentation end, things click.

But much of the work of documentation involves working with abstract, conceptual topics, and it's hard to make concrete, hands-on activities for these topics. Like a new section I added on [documenting code](/learnapidoc/docapis_code_strategies.html). How exactly do you move from the conceptual into a hands-on activities with that? If you simply lecture for an hour on the topic, you'll soon tire attendees as well as yourself. My activity for documenting code involved having attendees look at various documentation tutorials to classify the approach. It worked okay, but in retrospect I needed more direct links to actual tutorials rather than asking attendees to find a tutorial in an API doc site they were interested in.

But I also learned a larger lesson: people want to break down complexity into a simple, straightforward approach. In my article on [documenting code](/learnapidoc/docapis_code_strategies.html), I tried to expose the reasoning behind why documenting code can be such a complex task. Developers might give you a finalized chunk of code, which has already been abstracted, made efficient, reorganized, and more. Trying to explain it from top to bottom can result in documentation that comes across as confusing, long-winded, and disorganized. I then presented several approaches to documenting code &mdash; the Lego approach, the Nautilus approach, and so on.

What I'm realizing is that people would prefer more clearcut techniques and strategies that they can more easily implement. This leads me to a larger observation. In the academia and with writing in general, there's a tendency to show how topics that might seem simple on the surface are actually increasingly complex underneath. I guess the opposite might also be true &mdash; showing how something insanely complex has some simple patterns driving it. At any rate, in the corporate space, people want clear strategies and simplified approaches.

For example, after the workshop, one person said he was having trouble connecting all the dots. I touched on a lot of different topics, but it seemed like he wanted something more straightforward, like a 1-2-3 approach to writing API docs. Maybe in a course on DITA or Information Architecture, there is a clear approach, maybe even something that can be trademarked or copyrighted, where you follow a pattern for something to achieve a result.

I might seriously consider implementing this approach. This is actually what we do as technical writers most of the day. Few end-users of tech docs are interested in learning the underlying complexities of a product or space, or in assessing myriad ways to tackle a topic. More common is someone who wants a clear path to achieve an end.

In most of my tech docs, I create workflows that articulate a 1-2-3 path to creating or configuring the product, even if there are many paths users might take, or even if the implementation could be done in a different order.

With this mindset, I might restructure my course into a wizard of steps that describe how to do API documentation. Something like this:

1. Start testing the product and making requests on your own
2. Document the reference topics
3. Structure the content into an OpenAPI specification
4. Build out your reference output using one of these 5 tools...
5. Develop conceptual content for these 6 topics (e.g., Overview, Getting Started, Authorization, Rate Limiting, etc.)
6. Create a Getting Started tutorial describing an end-to-end task.
7. Create tutorials for the most common tasks for your API.
8. Publish your docs using docs-as-code workflows and tools.
9. Stay on top of your game by devoting 60 minutes to learning the project's tech each day

And so on. Maybe I call this "Tom's 10-step approach to API documentation," or the "Ten Habits of Highly Effective API Documentation" or something. Having a specific approach, even if no project would ever fully implement it in this order, or even if no project would require it all, might give people a clear structure and direction that they need. Then they could adapt and modify as needed depending on their project, but at least they would have some specific methodology and direction.

Perhaps this approach merely reflects the sort of thinking of a technical writer, of someone whose job it is to draw clear 1-2-3 lines through murky, confusing products. Much of tech docs is a kind of fiction, of creating and defining a process to achieve an end even if that process is arbitrary and debatable, and even if there are so many other ways to approach something. You need to give users some steps to follow, or they will get lost.

Further, structuring this course following these 10 topics, maybe even structuring them in a workflow map like I wrote about [Principle 1: Let users switch between macro and micro views](https://idratherbewriting.com/simplifying-complexity/macro-micro.html), might give more structure, coherence, and story to what is otherwise a collection of miscellaneous topics. This is really how tech comm and literary fiction intersect: we're both in the process of creating narratives through rough terrain, of finding plot points and navigation paths through an unbroken forest of technological underbrush.

Even if the reality is much more abstract and fuzzy, more nuanced and complex, the clear path and approach gives users a starting point and methodology that might be what's necessary. It's kind of like [Scrum](/learnapidoc/pubapis_agile_scrum_for_docs.html) &mdash; sure, the approach doesn't always work and nearly everyone modifies and adapts it for their current situation, but at least it gives users a starting point, and in many people's minds this approach defines the ideal workflow for achieving some end, even if the reality is much more complex and muddy. Like they say in the military, "No plan survives first contact with the enemy" &mdash; but you still need a plan. No one goes to battle without a plan, even if the plan rarely describes the path to victory.

## Catering

Now back to some more mundane details. I learned that arranging catering is actually pretty easy. I used [Specialty's](https://www.specialtys.com/), which turns out to be about as hard as ordering a Lyft. You just log into the site, select the food you want and the times you want it delivered, and someone shows up with bags that they set up on a table.

I stressed quite a bit about catering, imagining that attendees might complain that the food (boxed sandwich lunches) were poor or that there weren't enough vegetarian options or something. Instead, I just ordered 1/3 vegetarian sandwiches, and it worked out well. I also ordered breakfast and an afternoon snack.

Overall, catering didn't cost more than $1,000, and it worked well enough. Then again, I'm not a "foodie," so maybe people were just polite, but I've never read any workshop review in which people rated the workshop poorly due to the food. As long as there is an abundance of it, and coffee, people are generally satisfied.

I also didn't need to have a second helper to meet the caterer or arrange the dropped-off food. In the afternoon, the delivery person simply left the food in bags, and this took me about three minutes to set up. But for the other two food dropoffs, the delivery person arranged the food on the table. You simply provide a half-hour window for the delivery time. I was relieved to see that I could still teach the workshop while managing the catering, which reinforced my plan to orchestrate the whole workshop myself.

## Choosing a venue

Additionally, the venue at the [Computer History Museum](https://www.computerhistory.org/) worked out well too. I chose the Computer History Museum because my kids have had various tech workshops there in the past, and I liked the space. It's easy to connect to the wifi, the location is central, the room was just the right size for about 30 people (even though it actually held 50). Also, the event staff was accommodating. The room was easy to find (just up the stairs), and it was relatively inexpensive ($1100 for the day, including AV equipment). The place even had a cafe in case people wanted to get their own food. The only drawback was that admission to the museum itself would have cost extra, though there wasn't really much time for attendees to wander off on their own anyway.

Would I choose the Computer History Museum again? Sure, but here's what I realized. People who attended the workshop were mostly South Bay locals. There were some people coming from farther away, one even from outside of California, but by and large, you have to choose a venue near the workplace of the audience you're targeting. I know this sounds somewhat obvious, but this also means that for future workshops, I'll likely need to travel about to other urban areas to attract attendees from companies in those areas. I sort of had in my mind that people would come to me instead of me coming to them. Silicon Valley is, after all, a tech hub, and with past workshops, a few people flew in from San Diego. In Raleigh, one attendee drove up from Atlanta. But by and large, people who are taking a day off of work for the event don't want to drive too much farther than why would normally travel for work.

Given the number of tech writers in the Bay area (4,000+, I think), I could likely repeat the Mountain View location again with success, but I am also thinking of holding the workshop in other urban centers &mdash; downtown San Francisco, San Diego, Seattle, Austin, Boston, Atlanta, and so on. The problem is that I'd need to locate a venue in areas that I'm unfamiliar with, and trust that the venue has everything I need prior to the workshop. I'd be reliant on the AV equipment (unless I buy my own projector) and other details, almost like buying a house via "site unseen." I could probably just piggyback on venues used and held by other groups giving workshops and be fine, but this involves some stress about this that can be taxing.

The stress element cannot be minimized. If you choose to hold an event, you're committing certain dollars up front in hopes that it pays off &mdash; renting the venue, buying plane tickets, and so on. What if only 5 people sign up? What if the venue is poor, or the projector doesn't connect right? You don't really know until the date draws near. I guess this is why giving workshops is a side gig only &mdash; I enjoy the security of my full-time job.

## Workshop size

Exactly how many people can attend a workshop? When I created the workshop on Eventbrite (which, by the way, makes managing the event registration and payment extremely easy), I put the limit as 50, even though most workshops I've seen from Scott Abel limit workshop sizes to around 20 or so. I was fortunate that only 28 signed up, because I think any size over 30 would have been unmanageable.

To scale to larger sizes, I had a plan. I would refine my activities to include clear step-by-step instructions (I was, after all, a technical writer, right?). And I would also print out the activities into booklets that I passed out. For every previous workshop I'd given, I simply required attendees to follow instructions on a web page. But toggling between screens on a laptop is cumbersome.

I spent quite a bit of time fine tuning the output to PDF. I generated a PDF (directly from the website content) that looked decent. Then I made the mistake of waiting until the night before to print this. Printing 28 booklets containing 20 double-sided pages seemed relatively easy, but even with my Brother laser printer (which performed like a champion), this herculean task took about 3 hours. My kids were in awe to see the printer going like this non-stop for so long, and I made a late-night trip to Target to get more paper. Miraculously, I had just enough toner from a "high-yield cartridge" to print everything. 40 pages x 28 booklets is 1120 pages. Apparently, printing this as a nearby print shop that charged 8 cents a page would have cost hundreds of dollars.

Doing this print job the night before was not smart, as it stressed me out a lot. I thought my toner cartridge would run out half way through, but it did the job. Unfortunately, as much as I tried to make my instructions flawless regardless of the platform (Windows versus Mac), people ran into issues. And one issue was kind of bad.

To get the Swagger UI project to render an OpenAPI spec locally, you have to run a web server on your computer. The easiest way to do this is to install Python and run a SimpleHTTPServer. So I created instructions for doing this, but I underestimated the complexity of even this task.

First, some people who installed Python were never prompted to add Python to their PATH. This means `python` wouldn't be recognized in the command prompt. Others had issues as well, which prompted me to try simplifying this task on the fly by having people use a web-hosted URL to an OpenAPI spec instead (then they wouldn't need to run the Python SimpleHTTPServer), but even communicating these instructions was challenging. Download a ZIP package from GitHub, unzip it, open the index.html file in a text editor like Sublime, customize the reference to the OpenAPI spec file with another one, then open the index file in your browser to view the result &mdash; sounds easy enough, but the success rate on this activity was low.

I need to simplify this activity even more and give attendees more time to complete it. I read quite a few post-workshop survey comments about needing more time to do the activities, so this is something I need to work on in the future. I should also not try to modify these activities on the fly like I did. In retrospect, I am constantly realizing that I need to simplify the activities and give users more time to complete them. Watching people struggle with steps that I think are pretty easy made me realize a few things.

First, tech writing is hard. We might think our instructions are flawless, but when you add in the variety of operating systems (and rights on those systems), and other assumptions, you see how many issues crop up. It can take a long time to create flawless instructions.

Second, I might be more technical than I often think. Or I might just be more familiar with these specific tasks, so I have become numb to some assumptions or other details that otherwise jump out at people as being new.

Overall, my plan to handle the larger workshop size through printed instructions didn't work so well, though everyone unanimously liked the printed booklets. I also did a couple of other things &mdash; I made sure attendees had everything installed prior to the workshop, and I brought in some red cups that attendees could put on their desks when they got stuck. The cups worked okay, and most people installed everything prior to the workshop. But there is still much to be done in this area to improve. I don't know why I'm not better at the activities part, as I just sort of assume that I can write instructions that people can follow and be successful with. Maybe I need to rethink my tech writing skills a bit here.

## Conclusion

Overall, this workshop went about as well as those in the past. About 45% rated it as excellent, 45% rated it as good. I am planning to hold maybe 5-6 more workshops this coming year, focusing on different tech hubs. I think I can improve my material with each one and get a better workshop and approach. If you have any input or insight for me to enhance this experience, feel free to share it with me.  
