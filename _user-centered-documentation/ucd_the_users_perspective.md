---
title: Understanding the User's Perspective
permalink: /understanding-the-users-perspective
course: "User-centered documentation"
weight: 4
---

In the rush to meet deadlines, I had to forego one of my most valued principles of technical writing: going through all the steps in my documentation, exactly as a user would. I wrote about this here.

Walking through all the steps in documentation yourself is critical to producing good documentation. But the more complex setup you have, the more difficult it can be to walk through all of the steps. Especially with developer documentation, the tasks are not trivial. Still, they are essential.

## Understanding users
One of the first steps to understanding the user's perspective is to go through the same actions as the user. This is logical for any empathy-related attempt. If you want to understand the perspective of a motorcyclist, you can do so by riding a motorcycle. If you want to understand what the perspective of a fast-food employee, work at a fast-food restaurant. If you want to understand an airplane pilot's perspective, fly an airplane.

The problem is that we write content for highly specialized roles, so it's difficult to put ourselves into those roles. For example, to become a pilot, I'd need to undergo extensive training and 1,000+ hours of flight time.

However, the principle is the same. To understand your users' perspective, you need to do what the users are trying to do.

## Step 1: Set up a test environment

The first step is to set up a test environment. Usually the QA team already has this in place, so you need to find out how to access it, what things they don't want you to alter, and so on. Without this test environment, it will be really difficult to make any progress.

Although the test environment seems like a no-brainer, it really isn't. A lot of times developers test systems on their local machines. Other times the platform requires extensive architecture to set up. For example, you might have to build a sample Java app to interact with the system. 

If you're documenting a hardware product, you may not get a "test instance" of the product to play with. I once worked at a government facility documenting a million-dollar storage array. The only time I ever got to see it was by signing into a special data server room environment, accompanied by an engineer, who wouldn't dream of letting me actually touch any of the RAIDs or log into storage array's terminal.

## Step 2: Walk through your instructions

After setting up the test environment, the next step is to walk through your instructions. Again, this isn't rocket science, but it can be trickier than it looks. 

Sometimes documentation builds on some assumptions. For example, you may assume that users already know how to log into the system, configure a database, create authorizations needed to submit calls, and so on. 

Usually documentation doesn't hold a user's hand from beginning to end, but rather jumps into a specific task that depends on a 

## What you gain

What do you gain by setting up your own test environment to walk through all of the instructions?

First, you can start to answer your own questions. Rather than taking the engineer's word for it, you can run a call, see the response, and learn for yourself.

Second, when things don't work, you can identify and log bugs. This is helpful to the team overall and increases your own credibility with the engineers.

Third, you can identify gaps in the documentation. There usually tend to be things that get missed in the documentation, or steps that are glossed over. By going through each section in detail, you can identify and fill in these gaps.

## Hello World

Now is a good time to mention the Hello World component of documentation. In getting everything set up, why not take the time to write a Hello World tutorial that takes users from step a to z? 


how to understand user
know thyself -- you are not the user
walk through all the tasks that you expect the user to do
sometimes this is complicated, especially in dev doc
takes a lot of time to set all this up
access to a QA environment
test cases that you can leverage
why is it so hard to do this?
once you learn a lot of stuff, it's hard to go back and unlearn it, to see things fresh and new.
technical writers are most suited to doc tasks actually because of their limited tech ability and their lack of more in-depth knowledge. they aren't hampered by the curse of knowledge.

don't see this as a weakness, see it as a strength.

first attempt in documentation should be to walk through the actual task that the user would likely do. 
complicated when you have to do all kinds of hoop jumping to get to this point.

are you a hypocrite if you don't follow this approach?

it takes time, you're under a crunch...
deluded into thinking that actually, your user scenario is way more complicated or something.
delued into thinking that users know more than you think.


