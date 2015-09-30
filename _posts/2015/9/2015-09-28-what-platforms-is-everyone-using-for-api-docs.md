---
title: "Question: How do I tell what platform people are using for API docs?"
categories:
- api-doc
keywords: 
summary: "It's difficult to tell what platform someone is using for docs, but static site generators are pretty common. Other branding is sometimes easy to recognize."
published: false
---

A reader asks,

> How can I tell what platform people are using to publish their API docs? What are the most common tools used for building developer documentation sites?

Static site generators are pretty commonly used for developer documentation sites, but most of the don't have a footprint in the code, so they can be hard to recognize. If you look in the source code of the site, look for signs of a platform. 

If you see wp-content, it's a WordPress site. If you find the word "drupal," it's a Drupal site.

Sometimes a company blog indicates the platform for their docs. For example, [Mulesoft's documentation](https://docs.mulesoft.com/) uses Asciidoctor because they [mention it here](http://blogs.mulesoft.com/dev/tech-ramblings/new-documentation-platform-developer-forums).

You can tell Sendgrid uses Jekyll because of [a blogpost here](https://sendgrid.com/blog/creating-sustainable-documentation-with-jekyll/).
 
Some platforms are readily recognizable, like [readme.io](http://readme.io), [readthedocs.com](http://readthedocs.com), [MKdocs](http://www.mkdocs.org/), or [Slate template](https://github.com/tripit/slate).

Additionally, the interactive consoles are easy to decipher depending on whether one is using Swagger, RAML, or API Blueprint because they follow predictable branding.

You can try searching for the doc source on Github. This would show you the raw format, which would be a huge indicator.

You could also search for the company's name + technical writer on Linkedin. Sometimes people indicate the tools they work with in their profiles.

Finally, you could try contacting the company. I wish there were an easier way to tell what platform people are using, but really it's all over the place, almost like trying to understand what platform people use for their website.

As for the most common platforms, I'd say that static site generators are really popular right now. Platforms like Jekyll, Middleman, and Docpad are great for developer doc sites. If you find a developer doc site, especially an API doc site, that uses DITA or some other XML solution, please let me know. They are rare birds.
 
 Some doc platforms, like Stripe's, are custom-built. I know because I asked them at one time.


