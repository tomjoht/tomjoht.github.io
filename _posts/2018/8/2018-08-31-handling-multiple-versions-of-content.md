---
title: "How I handled data for about 10 device specifications on the same page -- the advantages of a flexible, customizable web-based framework like Jekyll"
categories:
- writing
keywords:
description: "Jekyll provides flexibility and customization in ways that make it extremely attractive for addressing complex scenarios. You can separate data from the presentation layer, define templates, and iterate through data to populate the templates. In this post, I explain how I approached a device specifications page that has specs for about 10 different devices all shown on the same page."
bitlink: http://bit.ly/devicespecsjekyll
date: 2018-08-31T16:04:33+00:00
---

One of the most popular doc pages I work on is the [Fire TV device specifications page](https://developer.amazon.com/docs/fire-tv/device-specifications.html). This page has the specs for about 10 different Fire TV devices (including sticks, smart TVs, cubes, etc.). The page gets the most traffic of all our docs, so this information tends to be a high priority. Handling this information wasn't easy -- at first.

The page started out listing the specs in a table with various columns for each device. After about 5 devices, the table format no longer worked because the columns became too narrow. At that point, I switched to a drop-down list format. When you select a device, all the information on the page switches to that device. The URL stays the same except that a query string gets appended to the URL. You can load a specific option from the drop-down menu by using a query string such as `?v=firetveditiontoshiba4k`. This query string gets automatically appended when you select an option from the drop-down menu.

The approach I've taken here has greatly simplified the specification info, and honestly I don't know how I could have achieved this through more traditional approaches with DITA or help authoring tools. Part of the beauty of Jekyll is that you can incorporate web technologies and scripts to achieve whatever end you want. You aren't locked in or limited by anything.

So here's how this whole setup works. I store all the specification information in a YAML file. For example, I have a firetv-specs.yml file that looks like this:


```yaml
media_specifications:
  video:
    h265:
      ftvcube: Hardware accelerated up to 3840x2160p (4K) @ 60fps...
      ftvgen3: Hardware accelerated up to 3840x2160p (4K) @ 60fps...
      ftvgen2: Hardware accelerated up to 3840x2160p (4K) @ 30fps...
      ftvgen1: Not supported
      ftvstickgen2: Hardware accelerated up to 1080p @ 30fps...
      ftvstickbasicedition: Hardware accelerated up to 1080p @ 30fps...
      ftveditionelement: Hardware accelerated up to 3840x2160p (4K) @ 60fps...
      ftveditiontoshiba4k: Hardware accelerated up to 3840x2160p (4K) @ 60fps...

    h264:
      ftvcube: Hardware accelerated up to 3840x2160p @ 30fps...
      ftvgen3: Hardware accelerated up to 3840x2160p @ 30fps...
      ftvgen2: Hardware accelerated up to 1080p @ 30fps...
      ftvgen1: Hardware accelerated up to 1080p @ 30fps...
      ftvstickgen2: Hardware accelerated up to 1080p @ 30fps...
      ftvstickgen1: Hardware accelerated up to 1080p @ 30fps...
      ftvstickbasicedition: Hardware accelerated up to 1080p @ 30fps...
      ftveditionelement: Hardware accelerated up to 3840x2160p @ 60fps...
      ftveditiontoshiba4k: Hardware accelerated up to 3840x2160p @ 30fps...
...
```

I truncated the content here for readability. There are lots of different properties specified on this page, and about 1,500 lines of code. But you get the point. Key to this whole plan is to separate content from format.

Next, I create a template that will use the information in the YAML file. The template is an HTML file (`firetv_specs_table.html`) that looks like this:

```html
{% raw %}{% assign device = {{include.device}} %}{% endraw %}
## Media Specifications
<table class="grid" style="width: 100%">
    <caption>{% raw %}{{include.device_friendly_name}}{% endraw %}</caption>
    <colgroup>
        <col width="15%" />
        <col width="20%" />
        <col width="20%" />
        <col width="45%" />
    </colgroup>
    <thead>
        <tr class="header">
            <th>Type</th>
            <th>Codec</th>
            <th>MIME type</th>
            <th>Details</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="white" rowspan="7"><b>Video</b></td>
            <td class="white">H.265 (HEVC)<br/><small>(High Efficiency Video Coding)</small></td>
            <td class="white">video/hevc</td>
            <td class="white">{% raw %}{{site.data.firetv-specs.media_specifications.video.h265[device]}}{% endraw %}</td>
        </tr>
        <tr>
            <td class="white">H.264</td>
            <td class="white">video/avc</td>
            <td class="white">{% raw %}{{site.data.firetv-specs.media_specifications.video.h264[device]}}{% endraw %}</td>
        </tr>
....
```

Note that `{% raw %}{{site.data.firetv-specs.media_specifications.video.h265[device]}}{% endraw %}` will pull in data from the YAML file.

I save this file as an [include](https://jekyllrb.com/docs/includes/) in Jekyll so that I can re-use it. Then this table is used for each device specification. Notice that `device` is a variable here, as is `device_friendly_name`. These variables will be populated based on parameters I pass in when calling the include (see [Passing parameters to includes](https://jekyllrb.com/docs/includes/#passing-parameters-to-includes) for more info.).

Next, I create a separate page for each device. So I do actually have about 10 pages, but each page just has this include:

```liquid
{% raw %}{% include firetv_specs_table.html device="ftvcube" device_friendly_name="Fire TV Cube" %}{% endraw %}
```

When the `firetv_specs_table.html` include is called, the `device` and `device_friendly_name` parameters get populated. In this case, `ftvcube` is used in a way that retrieves the right info from the YAML file. It will be inserted into `{% raw %}{{site.data.firetv-specs.media_specifications.video.h264[device]}}{% endraw %}` so that it's populated like this: `{% raw %}{{site.data.firetv-specs.media_specifications.video.h264.ftvcube}}{% endraw %}`. The variable assignment (`{% raw %}{% assign device = {{include.device}} %}{% endraw %}`) and brackets are needed because we're inserting this into formatting that already has double curly braces.

For the other variable, `device_friendly_name`, this gets inserted into `{% raw %}<caption>{{include.device_friendly_name}}</caption>{% endraw %}`. Since this variable isn't already inside curly braces, no brackets are needed.

(Note: I'm sorry for the poor explanation here, but more proper explanations about how Jekyll works would require me to back up several revolutions and create a much longer post.)

Now in another file called `device-specifications.md`, I have another include called `version_includes.html` that populates the page with a list of files (each of the 10 specification files) specified in the page's frontmatter. The `version_includes.html` file populates the drop-down selector with each of the files, and then does about another five really cool (and complicated things) to generate a mini-TOC, set the query string parameter in the URL, activate the right stylesheet, and populate other aspects all based on some logic I configured.

The actual code in my `version_includes.html` file is a bit too complex for me to explain in this simple blog post. (When one option is selected from the drop-down menu, it switches stylesheets to hide info for other devices, etc.) But the larger point I'm moving towards is this: Jekyll rocks! And here's why. In a content management system, this sort of logic would be nearly impossible to program. For example, I couldn't envision actually doing this in WordPress or Drupal. Of course, CMS's have other benefits and advantages. But when you want to create custom scripting for specific problems, nothing beats the flexibility of Jekyll, Liquid, and web technology scripting (JavaScript or other libraries). You can usually pull together almost any solution in a more efficient way to manage.

This is why Jekyll (and other static site generators) are so popular. They provide flexibility and customization in ways that make them extremely attractive for addressing complex scenarios. They allow me to separate data from the presentation layer, define templates, and iterate through data to populate the templates.

Without the ability to iterate through a template and populate it with data stored in a YAML file, I would likely need to maintain 10 separate tables with information stored in each table. That method is tedious and prone to error. For example, if I decided to update a column name in one table, I'd need to make the same update in 10 files. Additionally, I wouldn't be able to see at a glance whether the data in one table was written in the same style as all the other tables.
