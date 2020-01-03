---
title: "Question: How are you publishing and delivering your docs?"
categories:
- technical-writing
keywords:
description: "I'm publishing my documentation through Jekyll, delivering the content on internal servers for internal customers, and delivering it on Salesforce.com for external customers. I wish I had a better delivery mechanism externally other than Salesforce, but authentication solutions are either complicated or costly."
---

A reader asks,

>How are you publishing and delivering your documentation these days?

As far as publishing, I'm using [Jekyll](http://jekyllrb.com) with [this doc theme](https://idratherbewriting.com/documentation-theme-jekyll/) I created. (You can see the [Github source here](https://github.com/tomjoht/documentation-theme-jekyll).)

To deliver the content, I have several channels. For internal audiences, I upload the HTML output onto an internal server using FTP. For external audiences, I upload the HTML output into a [site.com repository on Salesforce](https://help.salesforce.com/HTViewHelpDoc?id=siteforce_overview.htm). This is because the content must be authenticated for access, and our users already access Salesforce to submit tickets and get files, so adding documentation there seemed natural.

I'm also creating a PDF from the HTML output using [Prince XML](http://www.princexml.com/) and including a link to the PDF on the homepage of the HTML site. If people want PDF, they can download it from the website.

The delivery setup is okay but not ideal. Uploading content onto Salesforce is too slow, since Salesforce doesn't provide a command-line interface to upload content (like Amazon Web Services does). But managing authentication (especially single-sourcing that authentication so that users don't end up with multiple logins) outside of Salesforce is challenging.

If I didn't have to worry about authentication, I'd use Github as a repository and [Github Pages](https://pages.github.com/) to build the Jekyll sites from commits to the repository. That's the approach I use for publishing my blog, and it's great not having to reupload the entire site each time I make an update. I just commit to Github, and hooks in Github build my Jekyll site. This approach may not work so well with multiple outputs defined by multiple configuration files, though.

If you require authentication, another approach would be to use [CloudCannon](http://cloudcannon.com) to connect to Github repositories. CloudCannon will automatically rebuild your Jekyll site when you commit a change to your Github repository. I created a tutorial for setting that up [here](https://idratherbewriting.com/learnapidoc/pubapis_static_site_generators.html).

Additionally, you can protect your output hosted on CloudCannon through usernames and passwords, or through [onelogin.com](http://onelogin.com/). In fact, onelogin looks like a great way to authenticate users, except that it costs $2 per user per month (which seems like a lot if you have a lot of users).

If you have multiple outputs produced from the same Github repository, it will be more challenging to set up this workflow through CloudCannon. You'd need to use [environment variables from Jekyll](http://jekyllrb.com/docs/configuration/) to handle your single-sourced outputs.

Two of the three products I write documentation for have an admin interface (in addition to the API). This interface is where field engineers configure services, and eventually where customers can go to also configure settings. My plan is to deliver the help through these admin interfaces and leverage the same authentication from the admin UI logins.

I'll push the content into an Amazon Web Services S3 bucket and then have engineers pull it from S3 into an EC2 instance (where the admin interface sits) and apply the same authentication controls on the docs as they do on the admin interface. This process is still under development, though.

Note that publishing content is practically a separate challenge from delivering content. A lot of tech comm conversations focus on publishing content but not much on delivering content. I wish I had a better handle on how to deliver authenticated content on the web without resorting to expensive services to manage the authentication, but that's kind of a skillset that is another area of expertise ("Identity Access Management").

There's a service called [Titania](http://www.titaniasoftware.com/products/administration_interface.html) that specializes in content delivery for doc portals, but like onelogin, it's not cheap.
