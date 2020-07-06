---
title: "MadCap Central -- a first look at MadCap’s new cloud-based collaboration and publishing solution"
categories:
- technical-writing
keywords: MadCap central, MadCap software, MadCap flare, ccms, central hub
description: "MadCap Central, recently released in early January, is a new cloud-based collaboration and publishing solution for tech docs from MadCap Software. MadCap Central allows you to configure and deploy Flare builds from a central server. You can also manage tasks, teams, users, and other details related to each of your projects in MadCap Central."
bitlink: http://bit.ly/madcapcentralreview
date: 2017-01-16 17:00:00
---

Here’s an introductory video with more details:

<iframe width="560" height="315" src="https://www.youtube.com/embed/lqa2LqOGYIE" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
You can view more <a href="http://www.madcapsoftware.com/videos/central/" rel="nofollow">videos about MadCap Central here</a>.

With <a href="http://www.madcapsoftware.com/products/central/" rel="nofollow">MadCap Central</a>, you can do the following:

* Upload Flare projects into a central space
* Configure user and team permissions for projects
* Configure targets/builds and publishing schedules for projects
* Publish help files to a public URL that users can access
* Create and track tasks by user and team
* See project statistics in widgets on a dashboard, and more

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/central.png" alt="MadCap Central Interface" style="max-width: 700px; border: 1px solid #dedede;"/>

*Note: MadCap Software is one of the sponsors for this site.*

## Work locally, then upload to MadCap Central

MadCap Central serves as the hub for your Flare projects, but you don’t work with your Flare files in the cloud. You work with your projects locally using Flare, and then use options within Flare 2017’s interface to commit your updates into MadCap Central.

For example, in Flare 2017, go to **View > MadCap Central**. You'll see a pane on the left where you can log into MadCap Central and commit your current project.

<figure><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/uploadpane.png" style="max-width: 400px;" alt="Flare upload pane" /><figcaption>MadCap Central provides a central online Dashboard for your Flare projects</figcaption></figure>

Within MadCap Central's admin interface, you'll see the Flare projects you've uploaded and can configure the builds for your projects.

## Use source control to commit into MadCap Central

MadCap Central also provides source control for your Flare projects. Through source control, multiple writers can collaborate on the same project. When you commit your project in MadCap Central, the changes get stored on the server.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/changesstored.png" style="max-width: 400px;" alt="Changes stored on server" />

The source control used by MadCap Central is a simplified form of Git that reduces the complexity of full Git and tailors the options to technical writers.

If there are conflicts between writers who commit the conflicting changes to MadCap Central, a conflict management dialog box opens up and allows you to select the changes you want. MadCap refers to this model (using MadCap Central's source control) as "single bound."

If you're using another source control system outside of MadCap Central, you can designate your project as "dual bound." With dual bound projects, it's assumed that you've already done any conflict resolution on commits. When you commit a dual bound project, the last commit wins (rather than presenting conflict resolution dialogs).

For more info on the source control used with MadCap Central, see the
<a href="http://www.madcapsoftware.com/products/central/faq.aspx" rel="nofollow">Source Central</a> section of their FAQ.

## Configuring build schedules for projects

After committing your Flare project to MadCap Central, you configure the build and deployment details for your project. Within the build configuration details, you can build a project immediately, configure a build schedule, and set other details.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/buildschedules.png" style="max-width: 400px;" alt="Build schedules" />

You can even select whether to build or not when no changes have been committed.

When your project finishes building, it's available at a display URL. For example, here's a URL for the test project I uploaded into my trial version of Central: [amazon1.mcoutput.com/10567/Content/Home.htm](https://amazon1.mcoutput.com/10567/Content/Home.htm).

You can point your company's domain or subdomain to the MadCap Central DNS so that you have a URL that reflects your company. MadCap Central has a [robust security model](http://help.madcapsoftware.com/flare2017/Content/Central/Security.htm) for your content that should satisfy enterprise requirements.

## Why is MadCap Central significant?

What stands out to me as most significant about MadCap Central is the easy publishing workflow. I've been in plenty of companies that make it difficult to publish content on a server.

Outside of the corporate world, publishing files on a web server managed through a web hosting company (for example, I use BlueHost and GitHub) is drop-dead simple. But companies usually restrict the publishing of files to servers in complete ways (to satisfy security requirements).

In most companies, you can't simply FTP files to a server. You can't interact with a production server at all. Permissioned engineers that interact with the servers often do so through the command line with Unix commands.

Without the ability to push content out to servers, tech writers often have to pass along files to engineers, wait for release windows, or resort to cumbersome upload features in GUI systems.

For example, when I worked at Experian, the only way to publish (outside of sending files to engineers) was by uploading files to a website feature in Salesforce. Only a GUI upload option was available in Salesforce, and it took several minutes to upload a small zip file. (Larger file uploads would time out.)

At my current company, I can easily publish static files on AWS S3, but to get the official "amazon.com" URL I want, I have to go through engineering workflows to satisfy security and infrastructure requirements. This means involving an engineering support team to manage the deployment process to the server.

With MadCap Central, you can actually log into an admin interface (on MadCap Central), configure your build processes to run regularly, and deploy builds as desired.

The following screenshot shows the builds I've set up for a project called flaretest.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/builddashboard.png" style="max-width: 700px;" alt="Build Dashboard" />

It's important to note that the build takes place on MadCap Central. You don't need to transfer all your build files to the server each time you want to make an update.

For example, when you fix a typo and want to deploy the update, you don’t need to build anything locally. You just commit the update to MadCap Central. The build scripts on MadCap Central kick off a build (you can either build immediately or build based on a schedule), and once complete, the build can be published at a URL.

## Building on the server instead of building locally

Moving the build process to the server provides a number of wins:

*  It reduces your need to monitor the build process locally. (If you have 20 builds you're running on your local machine, this consumes processing power and requires monitoring.)
*  You don't have to worry about excluding temporary folders from source control that are used during the build process.
*  There's no time lag in having to transfer all the built files to the server. If you have a project that's 1 GB in size (due to all the media), you don't have to wait for all those files to transfer to the server each time you want to make an update. Instead, you just transfer the changed files from the commit.

Committing updates through Git and then triggering the build process on the server is one of the trends I'm predicting for more help systems in 2017.

## Conclusion

In contrast to CCMS systems, which simply store and manage your content in a central database, MadCap Central tackles the publishing and content delivery aspect of content. Pushing the latest updates to your project online in a quick and easy way gives you many advantages in the context of [DocOps](https://idratherbewriting.com/2014/10/21/docops-interview-with-jim-turcotte/) and agile.

You no longer need to use separate systems for source control, task management, permissions, and other details. It’s all contained and managed within one central hub. Overall, MadCap Central provides a much-needed publishing and content delivery solution for tech docs.

Check out more here: <a href="http://www.madcapsoftware.com/products/central/" rel="nofollow">MadCap Central</a>.
