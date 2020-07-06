---
title: "Single-sourcing data into table templates in Jekyll"
permalink: /blog/single-sourcing-data-into-table-templates-jekyll/
categories:
- jekyll
keywords:
bitlink: https://idratherbewriting.site/tablesjekyll
description: "Jekyll lets you separate out your data from your presentation layer. You can store your data in a YAML file and then populate the data into templates as desired, passing parameters into includes. In this post, I describe my process for creating tables where I might re-use the same definitions in various places in the docs."
---

## Introduction

I was recently working on defining a lot of response definitions for an API project. Normally I would prefer [OpenAPI](/learnapidoc/pubapis_swagger_intro.html) for defining these fields, but this API doesn't actually have endpoints exposed to the user; it just has extensive JSON inputs and outputs.

Building out the tables reminded me why I like working with Jekyll so much, and why even after 4+ years of using Jekyll, I'm still pretty content with it.

## End Goal

First, here's [an example](https://developer.amazon.com/docs/video-skills-multimodal-devices/getdisplayableitemsmetadata.html#payload-descriptions-1) of the end goal:

<a href="https://developer.amazon.com/docs/video-skills-multimodal-devices/getdisplayableitemsmetadata.html#payload-descriptions-1"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/sampletablejekyll.png" style="max-width: 650px" alt="sample table with lots of field definitions" /></a>

A lot of responses have similar fields, so I needed to re-use these definitions in various places in the docs (after each JSON sample). Also, I didn't want to create a bunch of HTML table code everywhere.

Here's the process I followed.

## Step 1: Store data in YAML

The first step is to store the data for the field definitions in a YAML file. Create a YAML file inside `_data` called something like `fruit-fields.yml`. In it, list entries like this:

```yaml
apple:
  field: "<code>apple</code>"
  description: >
    <p>A round red fruit that tastes tart, sweet, and crisp.</p>
  required: false
  type: "String"
  values: "<p><i>Example</i>: <code>Honeycrisp</code>, <code>Pink Lady</code></p>"


orange:
  field: "Orange"
  description: >
    <p>A small orange-colored fruit divided into sections with a sweet and juicy taste.</p>
  required: false
  type: "String"
  values: "<p><i>Example</i>: <code>Navel</code>, <code>Minneola</code></p>"
```

The fields you list depend on what you're describing, obviously. You need to look at your data and figure out what columns you need, and then basically create a property for each column following YAML syntax. I just needed field name, description, required, data type, and values properties.

## Step 2: Create your table template

Now create the template for displaying your content. I'm using a table here, and the HTML looks like this:

```html
<table class="grid" style="width: 100%">
    <caption></caption>
    <colgroup>
        <col width="20%" />
        <col width="65%" />
        <col width="15%" />
    </colgroup>
    <thead>
        <tr class="header">
            <th>Field</th>
            <th>Description</th>
            <th>Data Type</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td><br/>
          <span class="tableRequired">required</span></td>
          <td></td>
          <td></td>
        </tr>
    </tbody>
</table>
```

Fortunately, this is all the HTML we actually need.

## Step 4: Create an include to pull in your template

The "include" is how you will pull your template into your content. You can pass parameters in your include that will populate the template. (See [Passing parameters to includes](https://jekyllrb.com/docs/includes/#passing-parameters-to-includes) for details.) The include needs to pass three parameters.

```liquid
{% raw %}{% include video_skills_table.md items="apple, orange" file="fruit-fields" caption="Fruit Descriptions" %}{% endraw %}
```

You'll see how the `items`, `file`, and `caption` parameters get populated into the table template in the next step.

## Step 4: Populate the table with your YAML data

Now comes the fun part: Use Liquid to populate the template with your table data. You might want to see my [YAML tutorial in the context of Jekyll
](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_yaml_tutorial.html) for some more basic tutorials to start.

Here's how I loop through my table data in this example:

```liquid
{% raw %}{% assign tableItems = include.items | split: ", " %}
{% assign tableFileParam = {{include.file}} %}
{% assign tableFile = site.data[tableFileParam] %}

<table class="grid" style="width: 100%">
    <caption>{{include.caption}}</caption>
    <colgroup>
        <col width="20%" />
        <col width="65%" />
        <col width="15%" />
    </colgroup>
    <thead>
        <tr class="header">
            <th>Field</th>
            <th>Description</th>
            <th>Data Type</th>
        </tr>
    </thead>
    <tbody>
    {% for entry in tableItems %}
        <tr>
          <td>{{ tableFile[entry].field }}<br/>
          {% if tableFile[entry].required == true %}<span class="tableRequired">required</span>{% endif %}</td>
          <td>{{tableFile[entry]description}}
          {% if tableFile[entry].values != empty %}{{ tableFile[entry].values }}{% endif %}</td>
          <td>{{ tableFile[entry].type }}</td>
        </tr>
    {% endfor %}
    </tbody>
</table>{% endraw %}
```

Here's what's going on. The `include.items` code gets the items identified in the include (`apple, orange`) and splits them into an array based on a comma + space (`, `). As an array, the data is now formatted as `[apple, orange]`. Most importantly, you can loop through an array.

Next, the `tableFileParam` gets the name of the `file` parameter specified in the include and then references this is `site.data[tableFileParam]`. This dot notation (`site.data.filename`) is how you access items stored in `_data` in Jekyll. See [Data Files](https://jekyllrb.com/docs/datafiles/) for details.

`{% raw %}{{include.caption}}{% endraw %}` gets the `caption` parameter from the include and populates it in the table.

Now we want to get each of the items specified in `tableFileParam` and populate each value into `site.data[tableFileParam]`. So we loop through this array: `{% raw %}{% for entry in tableItems %} ... {% endfor %}{% endraw %}`. With each loop, we get get the property for that item: `{% raw %}{{ tableFile[entry].field }}{% endraw %}`. For the first loop, it looks like this:

```yaml
site.data.fruit-fields.apple.field
```

And for the second iteration of the loop:

```yaml
site.data.fruit-fields.orange.field
```

The template gets the other properties as desired (e.g., `required`, `values`, `type`).

For `values`, some entries have this, some don't. We only want to show the section if the value is present. So we add a condition:

```liquid
{% raw %}{% if tableFile[entry].values != empty %} .... {% endif %}{% endraw %}
```

And that's it. Now creating a new table is as easy as storing definitions in the YAML file and using this include:

```liquid
{% raw %}{% include video_skills_table.md items="apple, orange" file="fruit-fields" caption="Fruit Descriptions" %}{% endraw %}
```

## Conclusions

Although this example showed how to populate a table, you can create any sort of template and populate it from a YAML file. By separating out the data from the presentation, you can create more sophisticated presentation displays that might be otherwise tedious to code and maintain if populating them manually.
