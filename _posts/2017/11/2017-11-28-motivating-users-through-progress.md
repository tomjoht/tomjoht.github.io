---
title: "How do you communicate user progress in a course without a Learning Management System (LMS)?"
categories:
- writing
- podcasts
keywords: lms, user progress, learning management system, motivation, goals, course, api documentation
bitlink: http://bit.ly/communicateprogress
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/progresswithoutanlms.mp3
podcast_file_size: 11.6 MB
podcast_duration: "14:21"
podcast_length: 11591898
description: "When you don't have a system that logs users in and tracks their progress, it can be a challenge to show their progress in a course. However, rather than showing progress through completed pages, quizzes, or other interactive exercises, progress can also be measured through larger user goals that extend beyond the course. In the case of my API documentation course, the user's goal is to break into the field of API documentation, not so much to finish a course. Breaking into API documentation requires users to build a compelling portfolio, which is how I'm choosing to measure the user's progress."
---

{% include audio.html %}

## Differences in the idea of "learning" between tech comm and eLearning

One difference between tech comm and eLearning is how each discipline approaches the idea of "learning." Tech comm focuses more on learning just when the user needs the information. Tech writers produce documentation so that users can quickly find an answer and use it to solve a problem. The whole interaction &mdash; user needs info, consults docs, finds answer, returns to work context &mdash; takes place fairly quickly. Some people call this "just-in-time learning" or "informal learning."

eLearning approaches learning as more of a long-form course or training that a user undergoes to ramp up their knowledge and skills from one level to the next. It's not a quick interaction but rather might take an hour or more for several weeks, depending on the material. eLearning developers define learning objectives that they use to build a course around, and then sequentially take users module by module through the learning objectives. Along the way, to ensure progress toward the objectives, eLearning developers incorporate exercises, quizzes, and other interactions to ensure engagement and learning.

## Reference content versus a "course"

When I created my [API documentation site](https://idratherbewriting.com/learnapidoc/), I compiled the material as reference content for workshops I was leading. I didn't approach the content as an eLearning deliverable, because eLearning concerns aren't in my tech comm DNA. However, after I started receiving a lot of feedback from users who were progressing through the material as a "course," I started to consider some of these eLearning considerations.

Users aren't consulting my API documentation material as a just-in-time learning situation, where they go to quickly consult the right terminology for documenting an endpoint and then return to their work context. Instead, most users want to transition into the field of API documentation. Either they're traditional tech writers working with software documentation and want to make the switch, or they're students trying to ramp up their skills for a future job. Others are tech writers who are assigned an API doc project at work and need a course of some kind to learn the needed skills.

In short, I now suddenly find myself in an eLearning situation. I'm developing a "course" when course development isn't usually in my target sights. I'm a technical writer. I produce information, not long-form learning experiences. How do I pull users from start to finish through a whole course and help them achieve their larger career objective? How can I inspire and motivate my users to consume and complete long-form material?

In [The Progress Principle: Using Small Wins to Ignite Joy, Engagement, and Creativity at Work](https://www.amazon.com/Progress-Principle-Ignite-Engagement-Creativity/dp/1491514353), researchers Teresa Amabile and Steven Kramer argue that the greatest motivation comes from feeling a sense of progress. They explain:

> Real progress triggers positive emotions like satisfaction, gladness, even joy. It leads to a sense of accomplishment and self-worth as well as positive views of the work and, sometimes, the organization. Such thoughts and perceptions (along with those positive emotions) feed the motivation, the deep engagement, that is crucial for ongoing blockbuster performance.

They base their research in work scenarios with managers and employees, looking through "nearly 12,000 diary entries provided by 238 employees in 7 companies" (rather than examining eLearning scenarios) to arrive at their conclusions. But I think the conclusions apply to both scenarios.

The idea of progress resonates with me. When I sense that I'm actually making headway on a goal, it fills me with motivation. Amabile and Kramer talk about progress as a "principle" to leverage, arguing that &mdash;

> of all the positive events that influence inner work life, the single most powerful is progress in meaningful work; of all the negative events, the single most powerful is the opposite of progress—setbacks in the work.

If progress is a primary motivator for inspiring employees, or for inspiring participants to continue through a course, then how can I communicate this progress to my users? How can I let them know they're progressing?

## Showing the user's progress

My initial idea was to capture the user's progress through the course (based on the page they're viewing) and display it in a widget, maybe showing completed pages with a check mark icon.

But to do this properly, I think I'd need to switch from Jekyll, which produces static HTML and which is what I'm using for my course, to a databased learning management system (LMS) system (probably something like [WP Courseware](https://flyplugins.com/wp-courseware/) or [Learndash](https://www.learndash.com/), or use an e-learning platform like Udemy or Udacity). Alternatively, I could integrate a database through [Firebase](https://firebase.google.com/) and allow users to log in, and then save data captured through their session, but this solution looks too much effort for a quick implementation. (It might take me months to learn how to do that.)

Given my static setup, are there alternative ways to inspire users with a sense of progress without using an LMS-like system to save their session details and track their progress? Can someone actually implement a course with static site generator? Should I switch systems and start using an LMS tool of some kind?

Even without a database to track progress, I decided to start small. I embedded a progress bar at the bottom of every page that shows users how far they are in the course. This progress bar is populated based on the page they're viewing in the course. If the user randomly lands on a page in the middle of the course, the site will think the user completed all the previous pages up to that point, so it's a bit of a fiction. But it does convey the idea that the user is progressing in a larger system.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/progressbarjs.png"/>

(This progress, by the way, is mathematically calculated and dynamically generated (see the [source here](https://github.com/tomjoht/learnapidoc/blob/master/_includes/progress.html)). The idea is that no user likes to see that their progress isn't complete, so it might motivate them to keep going.

I also incorporated some workflow maps for my [API reference tutorial](https://idratherbewriting.com/learnapidoc/docapis_resource_descriptions.html) and for my [OpenAPI tutorial](https://idratherbewriting.com/learnapidoc/pubapis_openapi_step1_openapi_object.html). Workflow maps as shown below appear at the top of each of these tutorial pages.

<a href="https://idratherbewriting.com/learnapidoc/docapis_resource_descriptions.html"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/workflowmapexample_apiref.png" alt="API reference tutorial"/></a>

<a href="https://idratherbewriting.com/learnapidoc/pubapis_openapi_step1_openapi_object.html"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/workflowmapexample_openapi.png" alt="OpenAPI tutorial"/></a>

While workflow maps are good, they mostly act as navigational aids to help users recognize that they're following a larger process that spans multiple pages, and that each step should be more or less followed in the sequence shown. The workflow boxes highlight based on where you're currently at in the tutorial, but they don't record your session progress in any way.

## Progress is an illusion

What else could I really do? After some deliberation, I decided that, ultimately, I'm not in the business of designing courses. eLearning isn't my passion. So while my API doc course is designed as a course, and I refer to it as such, my main purpose in creating the API documentation content isn't to string together some modules in an online LMS.

In some ways, the "progress" that an LMS course communicates through completed pages, finished quizzes, and pages with checkmarks *is a bit of an illusion*. eLearning courses are designed to communicate the idea of progress, but it's an artificial progress. The user's goal isn't to progress **through a course**. The user's goal is to **break into API documentation**.

Completing all the modules in an online course and scoring 100% on little quizzes doesn't mean you're progressing toward your goal of breaking into API documentation. Sure you're probably learning, and completing these little steps does give you a sense of progressing toward this larger goal. But for the real goal of breaking into API documentation, in order to feel inspired by the progress principle, users need to make actual, verifiable progress toward that goal, not just progress in a course.

## Progress toward the user's real goal

How do you make progress toward breaking into API documentation? After I finished teaching the initial API workshops to a tech writing staffing company in the Bay area, the main feedback I got was that, sure, I'd given the writers a foundation in API documentation, but they needed convincing portfolios full of API documentation samples to be attractive to companies.

Although we kicked around the idea of immersing everyone in open-source API projects, that effort never gained momentum. Helping someone find an API doc project that has doc needs, showing them how to contribute (through version control), identifying gaps and other ways to contribute, etc., and doing it for all the different, unique projects across an entire group of people is a time-intensive, challenging task.

It's not just time intensive for the workshop leader, but for each participant. These were working professionals who didn't have hours/weeks/months of time to sink into open-source projects, so the idea of building an API doc portfolio was even more farfetched.

Real activities that will build a portfolio take a lot of time to create. For example, it could take hours to find a suitable open-source project, and a few days to a few weeks to ramp up on the project's technology. Then more time to identify the documentation needs, time to figure out how to make pull requests in GitHub, and so forth. It's much easier to give someone a short 2-minute quiz and move on. But which is more valuable for the progress the user is seeking?

## Measuring progress through portfolio-building activities

For my course, I wanted to measure progress toward the real goal users have: breaking into API documentation. The interactive bells and whistles in an LMS platform won't really help me measure this progress. Additionally, my static HTML platform makes these interactive bells and whistles difficult.

To this end, I recently created several activities more designed for users to build up the API doc samples in their portfolios. See the following:

* [Activity: Find an Open Source Project ](https://idratherbewriting.com/learnapidoc/docapis_find_open_source_project.html)
* [Activity: Critique or create an API reference topic](https://idratherbewriting.com/learnapidoc/docapis_api_reference_activity.html)
* [Activity: Create an OpenAPI specification document](https://idratherbewriting.com/learnapidoc/pubapis_openapi_activity.html)
* [Activity: Create your own Swagger UI display](https://idratherbewriting.com/learnapidoc/pubapis_swagger_ui_activity.html)

With each new piece in their portfolio, users grow one step closer to their goal. The compilation of the portfolio will establish their credibility and marketability. Ultimately, it can help them either move into API doc (or figure out much earlier in the course whether they're suited for this specialization).

I currently have just 4 portfolio-building activities, but I hope to add some more. My plan is to integrate an activity into each main section (so I'll probably double the number of activities I currently have).

I'm curious to hear your thoughts on how to inspire users with a sense of progress without using an LMS of some kind.
