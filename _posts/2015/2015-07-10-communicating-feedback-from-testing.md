---
title: Communicating feedback from testing documentation
categories:
- technical-writing
tags: [series_testing_documentation]
series: Testing your documentation
jtype: notes_testing_documentation
keywords: jira, bugs, agile processes, issue tracking, visibility
description: "After testing your documentation, you should communicate the feedback with your project teams. As much as possible, try to communicate the information through issue tracking systems because this makes the information more permanent, visible, and actionable."
weight: 1.2
---
{% include series/seriesTagTestingDocs.html %}

## Results from testing

As I [test all my documentation](https://idratherbewriting.com/2015/07/07/testing-your-instructions/), I usually have several results: 

* I have questions about how something works.
* I discover bugs with the system.
* I have ideas for improving the system. 

What's the best way to communicate this feedback? 

## Communicating questions about how something works

If I have a question about how something works, I ask a quality assurance engineer, a developer, product manager, or someone else who knows the system well. I don't schedule a special time; I just go over to the person's cube to ask him or her.

If I have a lot of questions, I save the questions up until I have 4 or 5 questions so I'm not asking the same person every hour.

In general, QA is often the best group to ask because they have a holistic understanding of the system. In contrast, engineers are usually focused on one piece of the software. It's like engineers are looking at the system through a straw, seeing only one sliver of the functionality. In contrast, QA has fish-eye lenses to see the project from a 360-degree view.

Additionally, developers have a tendency to explain how something works on the backend, when in reality users may not care about this level of detail.

## Communicating bugs you discover 

When I discover bugs, I first verify that the bugs are actual bugs and that I'm not doing something wrong. I ask QA if the behavior I'm seeing is correct or if it's a bug. 

If the behavior is a bug, the QA team may prefer to log it, since they may have special options and flags they're using in the issue tracking system. But it's really better if I log the bug, because this inserts me more into the agile process. (With agile, roles are fuzzy and everyone can log bugs in the system, not just QA.)

When I log a bug, I list detailed steps for reproducing the bug. Otherwise, QA may may close the ticket because they can't reproduce it. I include code samples or screenshots and am specific about versions and data entered to generate it. I may be asked to explain the bug at a later time, such as how I got into the situation where I encountered the bug, or even what the bug is (despite a detailed explanation in the ticket).

In general, it's best to integrate with the same communication system that the rest of the project team uses, which is usually an issue tracking system like JIRA. (Actually, every IT shop I've ever been in has used JIRA.)

The more I test the documentation, the more bugs I find. The more bugs I find, the more I interact with JIRA. The more I interact in JIRA, the more I get out of the introverted tech writer role and become a power player on the team, because JIRA drives everything.

Getting deep into JIRA is really the center where I try to communicate the findings that result from my testing. In meetings or emails, only some team members are present. It's easy for issues brought up to fade from memory and be forgotten. But there are many team members (remote, on other projects, or who may have been absent) who look carefully in JIRA for project information. Additionally, JIRA tickets are regularly reviewed with each new sprint.

## Communicating ideas for system improvement

The more I test, the more I also have ideas on how to improve the system. From confusing error messages to poor UI designs and workflows, I make a list of suggestions for how to improve things. Product managers are almost always open to hearing ideas for improvement.

I'm especially looking out for error messages, since these messages are usually swimming below the surface and rarely become visible (except through testing). I add the error messages to a troubleshooting section on the relevant doc page. These error messages are usually poorly written and are prime targets for improvement.

When communicating ideas for improvement, I try to time my suggestions for when they might be most readily adopted. The best period to pitch suggestions is during sprint planning, or just before. Once a product manager has planned a sprint (or an epic, which is a series of sprints), the work has been measured against the time and resources allowed, so trying to add more work into the sprint gets a lot of pushback.

Even if the timing isn't right, I still file the item in JIRA. When product managers have time and sort through JIRA looking for ideas for the next sprint, they'll run across my feedback. They really can't just disregard the feedback without actively deleting the ticket, which few will do.

## Conclusion

Overall, what I'm suggesting here is not rocket science. But learning to use the issue tracking systems to communicate feedback on a project team is a huge shift. At the beginning of my career, I thought JIRA was just for engineers and quality assurance teams. I didn't think I was allowed to log tickets, comment on items, and schedule doc work through this system.

Now I think that technical writers can and should play huge roles in interacting with issue tracking systems like JIRA. This is where we should be directing our feedback from testing.

{% include series/seriesTagTestingDocs_next.html %}



