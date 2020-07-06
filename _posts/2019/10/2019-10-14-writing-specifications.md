---
title: "Some specifications docs I've been working on -- and thoughts on strategies and techniques for managing specs"
permalink: /blog/specificiations-documentation-strategies/
categories:
- technical-writing
keywords:
bitlink: https://idratherbewriting.site/specsdocsstrategies
description: "Although specification documentation (which covers technical information about product details), doesn't involve much actual writing, it does require you to make many judgments about what information to include, how to gather and retrieve these details, and how to structure and present the information. These tasks are at the heart of technical communication."
---

## Background

This past week I've been creating specifications documentation for a lot of new Fire TV products. Specifications documentation isn't something I've written much about, but it's a topic worthy of discussion since specification pages can be a highly visited resource in documentation. (Our [Fire TV specifications](https://developer.amazon.com/docs/fire-tv/device-specifications.html) pages top the charts on visitor traffic in our developer portal week over week for the past four years.)

When I started at Amazon, there were just a couple of Fire TV devices. Now there nearly 20. As each has been released, we've added to the specifications documentation for the devices. In this post, I'll reflect on a few interesting points about writing specifications documentation, including techniques and strategies I use.

## Defining a schema for the specification

If you have 20 different devices, you need to define a common set of specifications that you describe. There are probably 100 different specs that you could choose from, but which are most relevant to your audience (in my case, to app developers)? And what do all the different specs and codecs and other granular technical details even mean?

After some decision-making about the right specs to track, the first step is to manage the specification in a structured way. Since I'm using Jekyll, I'll describe how I manage this structured specification info.

First, I create a structure in a YAML file (and also stored it as a snippet in Atom) that looks like this:

```yaml
codename:
  friendly_name:
  retail_name:
  release_year:
  retail_link:
  marketplaces:
    -
  form_factor:
  build_model:
  android_version:
  fire_os_version:
  processor:
  cpu:
  gpu:
  display:
  resolution: >
  memory_ram:
  audio_output: >
  audio_codecs: >
  video_codecs: >
  input_output_color_formats: >
  drm: >
  bluetooth:
  max_opengl_version:
  graphics_properties: >
  wifi: >
  ethernet:
  storage:
  miracast:
  farfield_alexa_control:
  nearfield_alexa_control:
```

Theoretically, every device should have values for these same fields. However, this is easier said than done. Some devices (like Fire TV Cube) introduce new features that older devices lack. Other devices also add to the video and audio codecs (like adding Dolby Vision or Dolby Atmos) that previous specs lack. To define a schema that can stand the test of time for all devices both in the past and future is challenging. And each time a new device comes out that introduces a new property, it raises the question of whether to update the specs for the previous devices.

I store information about all the specs in one YAML file. To navigate within the YAML file, I can collapse all fields using **Shift + Option + Cmd + [** or expand them with **Shift + Option + Cmd +]**. This shortcut key makes it super easy to locate the right info. I actually like working in YAML, sometimes more than Markdown. This is because I know that I can render the information in any way I choose.

## Reusing information in YAML

In the YAML file, for values that are the same, to avoid duplicating the content and applying it inconsistently, I store these values as re-usable lines using YAML syntax. For example, suppose I am indicating the Android level for Fire devices. I re-use that definition like this:

```yaml
snippets:
  android_level28: &android_level28 "[Android Level 28 (Android 9)](https://developer.android.com/about/versions/pie/android-9.0)"
```

Then where I want to repeat this line:

```yaml
some_device_name:
  android_level: *android_level28
```

This is basically how you re-use information in YAML. However, you can't use multiple references on the same line. You couldn't write `*android_level28 *release_year` or something.

## Tracking down specification information

Populating these specs would be easy if all the information were readily available. It's not. In a big company with a product that involves dozens of teams and hundreds of people, tracking down the right person with the info I need isn't straightforward. If I don't know where to start, I literally search for the product or spec on internal wiki pages, note the authors of about half a dozen relevant-looking pages, and then send them an email blast.

It takes about 1-2 days of back and forth emails like this until I zero in on the right people. (It sounds crazy, right? But there often isn't another way.) A lot of the specification information is extremely technical (particularly the multimedia codecs), and engineers who have familiarity with these details aren't always the most visible in the org. I've found that even product owners are unaware of the right contacts for the information.

## Organizing and presenting the specification information

After gathering the information (and phrasing it in a similar way across devices), the next step is to display it on a page. For this product set, I decided to divide the specs into various categories based on the Fire TV device type. You can see the division [here](https://developer.amazon.com/docs/fire-tv/device-specifications.html).

<a href="https://developer.amazon.com/docs/fire-tv/device-specifications.html"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/firetvdevicesgrid.png" alt="Fire TV devices" /></a>

Then on each page, I added a drop-down menu that lets users choose the device they want to see.

<a href="https://developer.amazon.com/docs/fire-tv/device-specifications-fire-tv-edition-smart-tv.html"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/firetvdevicelist.png" alt="Fire TV device list" /></a>

There's a lot of JavaScript behind that page that defines some show/hide properties there that I won't go into here.

Rather than manually populating each table in the docs, I create a template to render the information from the YAML spec. The table (truncated for the sake of brevity) looks like this:

```html
{% raw %}
{% assign device = {{include.device}} %}

<table>
<caption>
{{include.device_friendly_name}} Device Specifications
</caption>
   <colgroup>
      <col width="30%" />
      <col width="70%" />
   </colgroup>
   <thead>
      <tr>
         <th markdown="span">Feature</th>
         <th markdown="span">Description</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td markdown="span">**Friendly name**</td>
         <td markdown="span">{{site.data.fire-tv-specs2[device].friendly_name}}</td>
      </tr>
      <tr>
         <td markdown="span">**Retail name**</td>
         <td markdown="span">[{{site.data.fire-tv-specs2[device].retail_name}}]({{site.data.fire-tv-specs2[device].retail_link}})</td>
      </tr>
      <tr>
         <td markdown="span">**Release year**</td>
         <td markdown="span">{{site.data.fire-tv-specs2[device].release_year}}</td>
      </tr>
      ...
   </tbody>
</table>
{% endraw %}
```

Notice the references into the YAML file &mdash; `{% raw %}{{site.data.fire-tv-specs2[device].friendly_name}}{% endraw %}`. This is how you access those values using Jekyll. (See [Data Files](https://jekyllrb.com/docs/datafiles/) in the Jekyll docs for more details, or see my [YAML tutorial in the context of Jekyll](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_yaml_tutorial).)

BTW, this is one of the things I love most about Jekyll &mdash; the ability to define my own structures for information and then access that structured information in custom ways.

One variable we're passing is `device`. This variable will be populated by the include statement. For each place where the table should be written, I use an include statement like this:

```liquid
{% raw %}
{% include firetv_specs_table.md device="acme" device_friendly_name="Fire TV (Gen 2)" %}
{% endraw %}
```

Here the device name (`acme`) gets passed into the variable assignment in the template file: `{% raw %}{% assign device = {{include.device}} %}{% endraw %}`. Then the right fields get populated in the data references, e.g., `{{site.data.fire-tv-specs[device].friendly_name}}` becomes `{{site.data.fire-tv-specs.acme.friendly_name}}.`

To add to the fun, for the device names, I use the code names that all the internal people use and know. However, since those internal names are supposed to be kept internal, I end up mapping them to identifiers like `firetvgen3` and so forth.

You could manage specification information in a lot of different ways. This is just how I've chosen to manage it in Jekyll. Even within Jekyll, you could still manage information in many different ways (e.g., looping through collections).

## Information presentation problems and spec comparisons

Overall, managing specification documentation touches on some key technical writing principles:

* How do you sort out (and understand) which technical details are relevant to your audience?
* How do you store the information in a structured way so that it can be retrieved programmatically?
* How do you navigate among engineering groups to gather and vet the information?
* How do you organize, display, and present the information in a usable way?

At that heart of this information presentation problem isn't something I've even surfaced here yet: specifications alone don't mean a whole lot. Specifications are much more meaningful when you can compare them across devices. (Comparison is one of the fundamental rhetorical models in the Greek tradition.)

You see these kinds of comparison tables regularly presented on Amazon retail pages. For example:

<a href="https://www.amazon.com/gp/product/B0791TX5P5/ref=s9_acsd_al_bw_c_x_3_w?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=merchandised-search-1&pf_rd_r=SWVCKTHPE937YXECRJHD&pf_rd_t=101&pf_rd_p=3c92a6c5-14aa-404f-9aa3-1759b909e32a&pf_rd_i=8521791011"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/firetvcomparisontable.png" /></a>

Notice that only relevant products are compared. The retail pages don't try to compare every single Fire TV product against each other, nor do they provide sophisticated JS controls that show/hide select columns, or which scroll horizontally and such. Instead, they choose the most recent and relative products to compare, and usually limit the comparison to 3-4 similar products.

Our Fire Tablet developer specs do have more comparison features:

<a href="https://developer.amazon.com/docs/fire-tablets/ft-specs-custom.html"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/firetabletcomparison2.png"/></a>

The JS logic here works well to let users select up to four check boxes for the devices they want to compare. However, it's not really apparent which devices are most similar to each other and hence merit a comparison. You kind of have to know what each device is before you can know what to select.

In terms of comparison examples elsewhere, I really like Roku's device comparison page:

<a href="https://www.roku.com/products/compare"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/rokucomparisontable2.png"/></a>

Roku's device comparison page looks much more visually attractive and is better organized and presented. Overall, I'm not sure if there are stock JavaScript libraries for comparison scenarios like this, or if this is all custom JS that someone is writing (or heavily customizing from an open source plugin).

At any rate, the comparison scenario for developing a Fire TV app differs from comparison scenarios for buying a device. A developer might be interested in understanding the least powerful device his or her app must support. That baseline would make for a good test device. In contrast, a consumer buying a Fire TV device might be more interested in price points and finding the most processing power for the desired price point. So the fact that my tables don't have more detailed comparison across devices doesn't really concern me that much.

## Searching for spec info

Another challenge with spec information is to enable quick searching of information. Field engineers tell me they want to search for a spec and see which devices support it. However, enabling this functionality across 20 devices isn't an easy solution.

[jQuery Data Tables](https://datatables.net/) provide a handy search that lets you filter the table based on the keyword you type, but how would you handle this for a table with 20 devices, each of which has about 20 different properties? The filter mechanism only works on a single table, so you'd have to write all the device information into one massive table.

And for the video and audio codec properties, I haven't actually sliced and diced them out into their own properties. Instead, they are a free-form list grouped under the general category of audio codecs or video codecs.

<a href="https://developer.amazon.com/docs/fire-tv/device-specifications-fire-tv-edition-smart-tv.html"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/firetvaudiocodecs.png" /></a>

This makes it difficult for a user to filter on, say, AAC LC.

In future iterations of these specs, I hope to incorporate a search feature and potentially a comparison option. At any rate, I'm done updating specs for now, so I might just leave the content as is while I work on other projects.

I'm curious to learn what your techniques are for managing and presenting specification information, or if you have any good examples of specs to share.
