---
title: How do you authenticate your documentation?
categories:
- technical-writing
- jekyll
keywords: content management, access control, identity access management 
description: "Authenticating documentation poses significant challenges with identity access control. Ideally, customers should only see documentation for products they purchased. Rather than creating separate sites for each audience, a content management system can map viewing rights to user groups."
---

## Why authenticate documentation?

As a blogger, I'm not in favor of authenticating anything. But most companies I've worked for have required users to authenticate with a username and password in order to access the documentation I write. I'm currently trying to find a good solution for authenticating my documentation, and I could use a few tips if you have information to share.

## The traditional solution for authenticating documentation

The traditional solution for authenticating documentation is to load it onto the same server as the application. The authentication is then handled through the application interface. Once users can log in, they click the help button to view documentation that resides within the same server. 

The problem with this approach is that you get trapped in the same release cycle as the application. If you need to make an update, you can only do so at regular release windows. You usually have to finalize all the documentation in time for code freeze, which often happens two weeks before the release. 

That's the busiest time for developers, since they're also struggling to meet the release date. Trying to get developers and project managers to review your documentation at that time is a real challenge.

Sometimes you can get permission to publish into a documentation-only folder on the server, but usually IT groups don't let tech writers FTP into production environments and upload things.
 
## APIs don't have application GUIs
 
One of the problems with the previous method (that is, publishing help on the same server as the application) is that some APIs don't have application interfaces. Without the interface, there's no login control.
 
Sometimes the API libraries for specific programming languages are simply delivered through a file sharing system. You could upload your documentation into the same file sharing system, but those systems usually only accommodate PDF or zip files. This is not an ideal way to publish a website. 
 
## Showing different versions to different customers
 
Another challenge is getting the right documentation to the right customer. One of my products has two different product markets, four different languages, and two different versions. There are a 12 different outputs to deliver to customers. Other projects have numerous outputs as well. Each output is a separate site. Ideally, customers should only see the documentation for the product they purchased. 
 
I realized yesterday that a content management system might be useful in this situation. Instead of producing 20 different sites for different products and customers, why not publish all content to one master site. When users log in, their rights map to what they have been provisioned to see. 
 
You can't do this rights-mapping with a static site generator. With an Jekyll site, you just get an output of HTML or PDF files. How do I integrate into a content management system that can handle rights mappings for the various user groups? I doubt it's possible without the CMS framework.
 
## Web publishing platforms
 
Many of the popular web publishing platforms (which are lightweight content management systems) offer user groups and rights mapping. For example, in WordPress, Drupal, and Confluence, you can create different user groups and assign viewing rights to those groups. 
 
However, these platforms would require me to shift out of Jekyll and into the CMS to author natively in it, which I am reluctant to do. Additionally, someone would have to provision and de-provision access to the various docs, which I am also reluctant to do since I don't handle customer accounts. The alternative might be a customer access control integration with Salesforce and LDAP, but that would consume engineering resources.
  
## More complexity
 
One of the proposals was to use Salesforce to handle the rights mapping. Salesforce does offer some CMS-like features, with its Knowledge and Site.com components. However, I've never seen documentation published through Salesforce. Mostly it's used for publishing knowledge base articles. 
 
Also, rights mappings are more complex than I've alluded to. We have several groups: internal users, customers, and prospects. Not everyone is in the same system, so the identity protocols for the various rights differ. 
 
With Salesforce, provisioning access to every user is expensive. For example, this [article about Site.com](http://venturebeat.com/2012/03/15/salesforce-cms-for-dummies/) notes some prices: 
 
>For example, you can create a careers page that is populated by job listing data stored in Salesforce. It will cost you $1,500 per month for a website created with Site.com, an extra $125 monthly for each publisher, and $20 monthly for each contributor user you set up.
 
That seems really pricey to me, given that Salesforce doesn't really have good document management controls in the first place.
 
## How are you authenticating your docs?
 
I'd like to know how you're authenticating your docs. How do you add an authentication layer over static HTML files? Or is my only recourse to upload the static HTML files into a content management system with the rights mapping? What systems and approaches are you using to authenticate your documentation?
