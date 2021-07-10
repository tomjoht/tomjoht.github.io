---
title: "Question: How do I tell what platform people are using for API docs?"
categories:
- api-doc
keywords: doc platforms, viewing source
description: "It's difficult to tell what platform someone is using for docs, but static site generators are pretty common. Other branding is sometimes easy to recognize."
---

A reader asks,

> How can I tell what platform people are using to publish their API docs? What are the most common tools used for building developer documentation sites?

If you look in the source code of the site, look for signs of a platform. Sometimes with web CMSs, it's obvious. If you see "wp-content," it's a WordPress site. If you find the word "drupal," it's a Drupal site.



If the site loads slowly, it might be dynamically serving content from a database, so it could be another web CMS. 

Static site generators are often used for developer documentation sites, but most of them don't have a footprint in the code, so they can be hard to recognize. Does the page load really quickly? If so, it might be a static site generator.

If you can add "/index.html" after the URL permalink, it could be a Jekyll site or some other [static site generator](http://staticgen.com). But that's only if the site is using permalinks.

Sometimes a company blog indicates the platform for their docs. For example, I know [Mulesoft's documentation](https://docs.mulesoft.com/) uses Asciidoctor because they [mention it here](http://blogs.mulesoft.com/dev/tech-ramblings/new-documentation-platform-developer-forums).

You can tell that Sendgrid uses Jekyll because of [a blog post here](https://sendgrid.com/blog/creating-sustainable-documentation-with-jekyll/).

You can try searching for the doc source on Github. This would show you the raw format, which would be a huge indicator. A lot of doc sites on the web have repos on Github.

Some platforms are readily recognizable, like [readme.com](http://readme.com), [readthedocs.com](http://readthedocs.com), [MKdocs](http://www.mkdocs.org/), or [Slate template](https://github.com/tripit/slate). Once you know the look and feel of the main template, it's easy to recognize instances of it.

Additionally, interactive consoles are easy to spot regardless of whether one is using Swagger, RAML, or API Blueprint because they all follow predictable branding.

You could also search for the "company name + technical writer" on Linkedin. Sometimes people indicate the tools they work with in their profiles.

Finally, you could try contacting the company.

I wish there were an easier way to tell what platform people are using, but really it's all over the place, like trying to understand what platform people use for their website.

As for the most common platforms, I'd say that static site generators are really popular right now. Platforms like Jekyll, Middleman, and Docpad are great for developer doc sites in part because they plug well into the UX toolset. If the doc needs to sell the product, the UX person can help make that happen.

If you find a developer doc site (especially an API doc site) that uses DITA or some other XML solution, let me know. They're rare birds but they do exist. Salesforce, Oracle, SAP, IBM, Couchbase, and other large companies frequently use DITA. But if it's a small company, it's unlikely they're using DITA. DITA is more recognizable from the information typing patterns than the online help output.
