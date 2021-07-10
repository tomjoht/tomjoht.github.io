---
title: Challenges in documenting long JSON objects
categories:
- api-doc
keywords:
description: "Documenting long JSON objects (with hundreds of lines of code and multiple levels of nesting) can be challenging. There are different approaches to take, but none of the approaches seems to work well. I updated my API doc course topic with a section comparing the various approaches."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/longjsonchallenges.png
---

I'm now documenting an endpoint in a project at work that includes about 200 lines of code in a JSON object passed in the request body parameter. Inside the body parameter are various levels of key-value pairs and additionally nested objects (and sometimes arrays).

I added a section called [Documenting lengthy JSON objects in request bodies](https://idratherbewriting.com/learnapidoc/docapis_doc_parameters.html#documenting-lengthy-json-objects-in-request-bodies) in part of my API Documentation course to address the variety of ways people attempt to document long JSON objects. I think most approaches typically fail for this kind of documentation. What do you think is the best approach for documenting long JSON objects?


