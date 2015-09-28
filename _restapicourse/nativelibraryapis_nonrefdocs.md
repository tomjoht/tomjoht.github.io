---
title: "Creating non-ref docs with native library APIs"
permalink: /nativelibraryapis_nonrefdocs/
course: "Documenting REST APIs"
type: notes_docapis
weight: 7.8
---

## About non-reference docs

Although much attention tends to be given to the reference documentation with APIs, actually the bulk of what technical writers usually do with native library API docs is provide non-reference documentation. This is the stuff that engineers rarely write. Engineers will throw a quick description of a class in a file and generate a Javadoc, and they'll give that Javadoc to the user as if it represents a complete set of documentation, but  reference docs don't tell even half the story.

[Jacob Kaplan Moss says](http://jacobian.org/writing/what-to-write/) that reference docs can be an illusion....

>… auto-generated documentation is worse than useless: it lets maintainers fool themselves into thinking they have documentation, thus putting off actually writing good reference by hand. If you don’t have documentation just admit to it. Maybe a volunteer will offer to write some! But don’t lie and give me that auto-documentation crap. – Jacob Kaplan Moss 


Other people seem to have [similar opinions](https://communities.cisco.com/community/developer/blog/2014/09/03/introducing-devnet-slate):

>Auto-generated documentation that documents each API end-point directly from source code have their place (e.g., its great for team that built the API and its great for a reference document) but hand-crafted quality documentation that walks you through a use case for the API is invaluable.  It should tell you about the key end-points that are needed for solving a particular problem and it should provide you with code samples.” 

When you write API docs, don't lose sight of the need for non-reference documentation. All of this other info is equally if not more important. 

