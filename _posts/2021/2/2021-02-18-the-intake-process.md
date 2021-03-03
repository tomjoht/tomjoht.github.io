---
title: "Who can make documentation requests"
categories:
- technical-writing
permalink: /blog/who-can-make-documentation-requests/
keywords:
description: "In my API course, I defined intake processes for <a href='https://idratherbewriting.com/learnapidoc/docapis_managing_doc_projects.html'>large documentation projects</a> and <a href='https://idratherbewriting.com/learnapidoc/docapis_managing_small_doc_requests.html'></a>small requests. However, I recently realized a major flaw in the process for small doc requests -- who can make the documentation request. In a nutshell, if you let anyone make doc requests, you can end up saddled with tasks to create documentation for which you lack information. If you instead require product teams to make the requests, you're more likely to get the information you need upfront."
rebrandly: https://idbwrtng.com/docrequests
published: false
---

## The scenario

Consider this scenario. Your DevRel group is working with a partner and notices that the lack of a tutorial for some feature Product X is causing friction. So the DevRel engineer goes to your doc intake form and files a request for a Product X tutorial for the feature. Sounds good because DevRel teams are closely focused on partner needs, right? And this would allow you to create more user-focused docs.

Well, when the request for a Product X tutorial lands in your technical writing lap, you have to start chasing down contacts and information in ways that might be really frustrating. Who owns Product X? Or more specifically, who is the SME for the requested feature related to Product X? And once you track down the right person, how willing/available will this person be to help a technical writer? Chances are, not much if the request involves more than one meeting.

In contrast, if you ask DevRel teams to make requests for documentation through the product teams, this accomplishes two things:

* It identifies the owner for the information. You no longer have to play guessing games about where to go to find the info. The team making the request will often allocate an engineer to provide the needed info for docs.
* The product team ponies up some bandwidth to work with you on the documentation, often by creating a draft or supplying other info.

This week was particularly frustrating for me because I wasn't following this workflow. I was working through partner-facing groups but unable to get much traction on a requested ticket. Everywhere I turned, I seemed to run into a deadend. Then I observed how another team bent over backwards delivering information for a partner-facing request, and it dawned on my what my error was. I shouldn't have allowed the DevRel group to file the ticket themselves, but rather should have instructed them to pressure the product team who owns the feature to file the doc request.

Based on this experience, I added a section in my API course title [Requests should come through product teams](/learnapidoc/docapis_managing_small_doc_requests.html#requester).

## Larger lesson

The larger lesson here relates to intake processes. Intake processes are at the heart of the tech comm workflow. Here's a secret: Almost no one understands what your team's tech comm processes are initially because few people work with tech writing teams, and most teams have different processes. There are no standards. How does one request documentation, and then how does that documentation request play out? It's a guessing game because it varies so much from team to team.

The trick to being a more efficient technical writer is to put more of the documentation pain onto the requester than the requestee (i.e.., the technical writer). If you allow someone to make vague requests for documentation, this puts information pain on technical writers to gather a host of details about what needs to be updated, who has the information, who needs to review the information, what the update consists of, and so on.

This is why your intake form should be as specific as possible. For example, see these two sections for more elaboration on sample intake questions/fields:

* [small requests intake questions](https://idratherbewriting.com/learnapidoc/docapis_managing_small_doc_requests.html#intake-template-for-small-requests)
* [large requests intake questions](https://idratherbewriting.com/learnapidoc/docapis_managing_doc_projects.html#create_project_plans)

The more information you can gather from requesters, the better positioned you'll be to take action in an efficient way.

It's very easy, however, for tickets to clog up a backlog. And while I would need to more carefully analyze this, my guess is that many tickets that don't get acted on are tickets that aren't actionable because of the reasons I described here -- the source of information is fuzzy, unclear. The person who owns the doc related to the feature is unclear, etc.
