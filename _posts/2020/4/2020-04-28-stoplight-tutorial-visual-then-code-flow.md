---
title: "API doc course update: Re-architecting the OpenAPI spec tutorials to start with visual modeling tools first, then code"
permalink: /blog/api-docs-start-with-visual-first/
categories:
- api-doc
- apidoc-site-updates
keywords:
rebrandly: https://idratherbewriting.site/visualfirstthencode
description: "One of the most challenging aspects of my API documentation course is with the <a href='/learnapidoc/restapispecifications.html'>OpenAPI specification</a>. Describing how to code this detailed spec line-by-line is not only tedious but highly prone to error, confusion, and frustration. Recently, I decided to shift the approach in my course to begin first with coding the OpenAPI spec in a visual editor using Stoplight Studio, and then later, if desired, transition to a code-based approach."
---

The new flow in the OpenAPI section looks like this:

<a href="https://idratherbewriting.com/learnapidoc/restapispecifications.html"><img src="http://s3.us-west-1.wasabisys.com/idbwmedia.com/images/newuserflowopenapispec2.png"/>

As part of this new flow, I added an extensive Stoplight tutorial here: [Create an OpenAPI specification document using Stoplight Studio's visual editor](/learnapidoc/pubapis_openapis_quickstart_stoplight.html).

I think this new approach (visual first, then code) makes more sense for several reasons. Not only is this a walk-before-you-run type of approach, but the reality is that if your head isn't buried all day in the OpenAPI spec, it's hard to remember all the specification details. I work much more frequently with library-based APIs, mostly Android, than with REST APIs. When I shift back into REST API mode, I have to refresh my memory about many things.

My guess is that in several years, using a visual editor will be the norm anyway. Sure, some systems (like Linux) that let you operate entirely from the command line appeal to some people, but the visual manipulation of objects (e.g., Windows interfaces) turns out to be much more user-friendly and easy, and the easy model tends to win out.

To make another comparison, at home my family keeps re-adjusting our family chore chart, and during the last go-around, I asked my 15-year-old which approach she would prefer. Her immediate response: "Whatever requires less work." This is pretty much how most of us operate. Users will do whatever requires less work, if that means poking around in the UI to figure it out instead of reading the longwinded user guide, or copying and pasting a code sample from Stack Overflow to see if it works, and then if it doesn't, copying and pasting some other sample until it does, or cloning a sample app and just customizing it a bit for our needs, and so on.

When it comes to creating the OpenAPI spec, if you can generate out most of what you need using a visual editor in under an hour, isn't that approach going to succeed over one that requires two weeks of careful study of the code? The latter might be more beneficial in the long run, but we rarely operate in this mode, especially if in the long run we might not even be working on REST APIs.


