---
title: "More complex user process maps in documentation systems"
categories:
- visual-communication
keywords:
description: "For more complex user process maps, you can group the associated topics into larger collections. When users click a workflow step, you can show them all the relevant topics within that collection. This approach accommodates a more complex user process workflow."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/userprocesscomplexthumb.png
jtype: notes_visualcommunication
---

## Background

In my previous post, I outlined a method for [showing linear workflows](https://idratherbewriting.com/2016/05/30/building-a-workflow-user-map-with-css-and-js/), and pointed users to [this example](https://idratherbewriting.com/documentation-theme-jekyll/p2_sample1/).

Linear workflows work fine for simple processes that have a clear number of steps (especially when the steps are just a few, like the example I showed).

But what happens if you have a process that is more complicated? What happens if you have about 10-20 different topics users need to read or do to complete a process, and the steps don't all follow a linear order? What happens if steps are required, others are optional, and others are just informational?

Note I'm still talking about *processes*, with a beginning and end. I'm not talking about general principles for organizing content, which is a much broader topic. Additionally, I'm focusing on processes within *documentation for end-users*, not processes that detail user journeys for customer UX design thinking, or processes that help efficiency engineers improve systems.

## Adding Complexity

Let's expand the sample workflow with some more associated topics. Let's say that there are approximately 9 topics to be aware of in this process. Not all topics have to be completed in a specific order.

Rather than stacking these up into 9 workflow boxes, I'll break them up into three general groups:

* Get started
* Build your widgets
* Publish your app

I created an example of how to build this workflow map [here](https://idratherbewriting.com/documentation-theme-jekyll/p2_sample6/):

<figure><a href="https://idratherbewriting.com/documentation-theme-jekyll/p2_sample6/"><img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/complexusermapsample.png" | prepend: site.baseurl }}"/></a><figcaption>Complex user map sample -- click the workflow squares to see more details. Each square opens a modal that shows all associated topics in that collection.</figcaption></figure>

This example users [modals from Bootstrap](http://getbootstrap.com/javascript/#modals) to pop up information boxes that contain the various topic groupings. You could design each box more attractively, even adding background images into each one and such. But this simple implementation shows the general idea.

Here's a JS Fiddle for this code:

<script async src="http://jsfiddle.net/tomjoht/nuvcqbu5/embed/"></script>

Ultimately this is still a linear workflow, but I've extracted out the steps into larger groups. Each group can have a combination of required and optional steps, along with other informational topics. This kind of map is probably more realistic, though it's not as straightforward as the simple linear workflow.

I've never run across this kind of web design on any actual site, so users might find it strange. Still, I would gladly welcome this kind of process map in documentation. What do you think?
