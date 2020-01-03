---
title: "Guest Post -- MadCap Central: A Review for Companies Delivering Technical Communication Services"
categories:
- technical-writing
keywords:
bitlink: http://bit.ly/madcapcentralguestreview
description: "The following is a guest post from Michał Skowron and Jakub Wiśniewski, two technical writers working for 3di. 3di is a company providing technical authoring, translation and localization services. In this short review, Skowron and Wiśniewski evaluate MadCap Central, a new product from MadCap Software. MadCap Central is a cloud-based platform where you can host your MadCap Flare projects, manage builds, track tasks, manage users and their permissions, and collaborate with others. The article looks at the product from the perspective of a company delivering tech comm services."
---

## Introduction

[MadCap Central](http://www.madcapsoftware.com/products/central/) is a cloud-based, centralized solution for project hosting, build automation, task management and team collaboration. The idea of handling all those processes with a single tool sounds great. How does it work out in practice?

We decided to spend some time with MadCap Central to see if companies providing technical communication services, like [3di](http://3di.com.pl/), could consider it as the primary tool for day-to-day work.

## Flare integration

As we would expect, the new platform is designed primarily with Flare projects in mind. MadCap Central integration with Flare works great. You upload and import projects directly from Flare, using the new MadCap Central window. The whole process is quick and intuitive.

![MadCap Central window in Flare](/images/madcap_central_window.png)

At this stage, only MadCap Flare 2016 r2 and 2017 are integrated with MadCap Central, which means you need to consider additional costs and potential issues related to upgrading Flare, unless you're planning to get the new Flare version anyway.

## Source control

As far as source control goes, MadCap thought of two alternative solutions &mdash; a single-bound and dual-bound model. In the single-bound model, you use MadCap Central as your primary source-control system. In the dual-bound model, you use a system like SVN or Git, and MadCap Central serves as an additional repository. It is certainly good to have that choice if you already have a source control solution in place and you don't want to abandon it after moving to MadCap Central.

You perform all source control tasks, like push and pull, from Flare. Depending on the chosen model, you use the new MadCap Central window, the Source Control tab, or both. If you used Flare projects bound to source control before, you will be able to quickly start working with MadCap Central-bound projects.

![Source Control tab in Flare](/images/source_control_tab.png)

Currently, you can't perform source control tasks directly from the MadCap Central portal. We'd certainly welcome such a possibility in upcoming versions.

## Admin features

Admin features are simple and intuitive. You can quickly add new users, create teams, assign them to projects and manage their permissions. The possibility to bulk add users using a CSV file will come in handy when setting up MadCap Central for the first time.

![Users screen in MadCap Central](/images/users_screen.png)

All existing features are useful, but the set of permissions could be expanded to make them more robust. For example, allowing users to edit only their own tasks or to change task assignments without the possibility to edit any other information would be a valuable addition to the existing permission set.

## Task management

Task management features are helpful and transparent. The calendar view provides a neat look at deadlines while the task board allows you to change task statuses quickly by moving task cards between columns.

![Task Board in MadCap Central](/images/task_board.png)

What we found useful are customizable widgets that can be added to MadCap Central dashboards. We really liked the task summary widget that sums up all the work in a sharp-looking doughnut chart. All the widgets can be filtered, which makes them even more useful.

![Task Summary widget in MadCap Central](/images/task_summary_widget.png)

MadCap Central users can collaborate more efficiently while dealing with their tasks thanks to the built-in messaging system. Although it's purely internal (there is no integration with any external messaging systems), the possibility of communicating with your colleagues without the need to leave MadCap Central can definitely speed up the process of resolving tasks.

It'd be great if the task management could be enhanced in upcoming versions of MadCap Central with some additional features. We'd really like the option to link tasks to one another and the possibility to mention other users in comments that triggers notifications.

## Building and publishing

Apart from managing tasks, MadCap Central also offers some features for managing builds. You can build your Flare projects, download the output, and schedule the build process. Scheduling is handy because you don't need to install a separate build automation tool.

Builds can be set as private (to view them only from MadCap Central) or live (to get permanent links for public access). If you don't need all the customization possibilities offered by a traditional hosting service, MadCap Central can be a good candidate for taking over the role of your publishing platform. Even if you already publish your documentation in a hosting service, you can still use MadCap Central as a temporary publishing platform for testing and reviewing purposes. This combo solution will be much easier to implement if in the future MadCap decides to extend MadCap Central with the possibility to publish to external servers.

![Build Management screen in MadCap Central](/images/build_management.png)

It goes without saying that MadCap Central offers useful build management features, but there are also some limitations that you need to consider. There's no auto-sync of imported files, no support for multilingual output, and you can't automatically get latest files for dual-bound projects. Some output formats cannot be generated from Central (e.g., Adobe FrameMaker) and other output formats cannot be viewed there (e.g., DITA and MS Word). In some scenarios, these limitations may be hard to overcome, but let's keep in mind that this is the first version of MadCap Central. We believe that these obstacles will be tackled in subsequent versions.

## Summary

In the current form, MadCap Central and Flare 2017 are an interesting solution for simple, small-scale projects. Clients who don't have complex needs and need an out-of-the-box solution to deliver content easily may consider MadCap Central and Flare as one of the options.

For example, this tandem (Central + Flare) could work in a company that has a few authors who create documentation with a simple tool, like MS Word, and don't have any publishing platform &mdash; especially if they aren't part of any larger team and don't have any tools for source control or task and project management, and if they need to build up their documentation infrastructure from scratch. Instead of investing time into putting several tools together to build a solution, they could take MadCap Central and Flare and get to work straight away.

On the other hand, if a company already has tools in place for task management (like JIRA), source control (like SVN), build automation (like Jenkins), and a publishing platform, it may be hard to find a strong case to replace them with MadCap Central.

Also, if a company has complex documentation needs (like multilingual output), a considerable number of users accessing the documentation server, existing tools that they would like to integrate (SSO, Outlook), MadCap Central may not be up for the challenge due to its current limitations.

We see a lot of potential in MadCap Central and we love the idea of having all those necessary tools merged into one. It'd be great if in the future MadCap Central could be developed into a unified solution for storing text, templates, page layouts, CSS files &mdash; a central place for reusing content across Flare projects.

If you want to try MadCap Central, visit [https://www.madcapsoftware.com/downloads/?p=RCE#select][1].

<hr/>

### About Michał Skowron

Michał is a Senior Technical Writer with over five years of experience, a co-admin of the [techwriter.pl blog](http://techwriter.pl/), and a trainer for ITCQF. Before joining 3di, he worked for Dassault Systèmes and Proximetry creating documentation for a manufacturing operations management (MOM) solution and a management system for wireless networks. He moved to the technical communication field after spending three years in technical support, software implementation, and English teaching. In 2009, he graduated from the University of Silesia in Katowice, specializing in English translation.

### About Jakub Wiśniewski

Jakub is a Junior Technical Writer, starting his adventure with technical communication. Before joining 3di, he worked as an English teacher and translator. In 2015, he graduated from Jagiellonian University in Krakow, specializing in English translation studies. He pursues his interests in literary translation theory by studying for a PhD at the same university, where he also gives writing classes and analyses technical writing language in translation.

[1]: https://www.madcapsoftware.com/downloads/?p=RCE#select
