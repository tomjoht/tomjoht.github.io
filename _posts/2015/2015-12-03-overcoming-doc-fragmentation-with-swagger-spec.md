---
title: Single sourcing the Swagger spec and main documentation using Jekyll
categories:
- api-doc
- jekyll
keywords: jekyll, swagger, raml, duplication, copy and paste, inefficiency, variables, auto-populate, single source
description: "You can use Jekyll to populate variables in both your Swagger spec and main documentation. This allows you to single source your content into both of these outputs in a more efficient way."
---

One of the challenges with Swagger is that the output duplicates a lot of the descriptions that already appear in your main documentation.



In your Swagger spec, you list your resources and endpoints, with descriptions, code samples, and other content. Most likely all of this content **already exists in your main documentation**.

As a result, you may end up either copying and pasting the same descriptions from your main doc into your Swagger spec file. Or you end up trying to generate Markdown from the Swagger spec that you can then paste in your documentation. Either way, it seems like you end up copying and pasting from one output to another.

To eliminate this inefficiency, here's the approach I'm trying.

In Jekyll, create a YAML file (e.g., acme.yml) in the \_data folder. Add key-value pairs in it like this:

```
description: "This is a description of my API..."
```

Put your Swagger spec file inside your Jekyll project. Reference the description stored in the data file:

{% raw %}
```
---
swagger: '2.0'
info:
  version: 1.0.0
  title: My API
  description: {{site.data.acme.description}}
  contact:
    name: Tom Johnson
    email: tomjoht@gmail.com
    url: https://idratherbewriting.com
```
{% endraw %}

Add Jekyll frontmatter tags so that Jekyll will process the file, but don't use your regular layout.

{% raw %}
```
---
layout: none
---
---
swagger: '2.0'
info:
  version: 1.0.0
  title: My API
  description: {{site.data.acme.description}}
  contact:
    name: Tom Johnson
    email: tomjoht@gmail.com
    url: https://idratherbewriting.com
```
{% endraw %}

When Jekyll builds the site, it will populate those variable fields ({% raw %}`{{site.data.resolve.res_api.description}}`{% endraw %}) with content.

The result looks like this:

{% raw %}
```
---
swagger: '2.0'
info:
  version: 1.0.0
  title: My API
  description: This is a description of my API..."
  contact:
    name: Tom Johnson
    email: tomjoht@gmail.com
    url: https://idratherbewriting.com
```
{% endraw %}

In the main documentation, for the description of the API, you would also use the same variable:

{% raw %}
```
## Welcome to my API

{{site.data.acme.description}}
```
{% endraw %}

This way you will be populating both the Swagger spec file and your main documentation from the same source.

I did a small test and this approach seems to work. Now I'm just implementing the rest of my Swagger spec with this approach. What do you think? Is this a good approach, or is there a better way to avoid the duplication?
