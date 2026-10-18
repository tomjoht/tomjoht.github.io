---
title: "Step 1: The openapi object (OpenAPI tutorial)"
permalink: learnapidoc/pubapis_openapi_step1_openapi_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 5.3
section: openapitutorial
path1: learnapidoc/restapispecifications.html
map:
  step: 1
  definition: content/openapi_tutorial_map.html
last-modified: 2026-10-17
---

{% include coffeeshopbook.html %}

{% if site.format == "print" %}
<img src="{{site.api_media}}/openapistep1.png"/>
{% endif %}

If you haven't already read the [OpenAPI tutorial overview](pubapis_openapi_tutorial_overview.html), see that page first. In brief, this OpenAPI tutorial is unique in the following ways:

* This OpenAPI tutorial shows the spec in context of a simple weather API [introduced earlier](docapis_scenario_for_using_weather_api.html) in this course.
* This OpenAPI tutorial shows how the spec information gets populated in two different tools and display frameworks: [Stoplight](https://stoplight.io/) and [Swagger UI](https://github.com/swagger-api/swagger-ui).
* This OpenAPI tutorial is a subset of the information in both the [OpenAPI specification](https://github.com/OAI/OpenAPI-Specification) and the [OpenAPI specification commentary](https://swagger.io/docs/specification/v3_0/about/). In other words, it's not comprehensive of all the possible information in the spec.
* This OpenAPI tutorial covers the *3.1.1 version* of the OpenAPI spec. Version 3.2 was released in September 2025, but the 3.1.1 concepts in this tutorial still apply. (Surprisingly, some tools still support only the 2.0 version.)

<div></div>

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## The root-level objects in OpenAPI spec

The OpenAPI 3.1.1 spec has the following objects at the root level. These ten objects have many nested objects inside them, but at the root level, there are just these parent objects:

* `openapi`
* `info`
* `jsonSchemaDialect`
* [`servers`](https://spec.openapis.org/oas/v3.1.1.html#server-object)
* [`paths`](https://spec.openapis.org/oas/v3.1.1.html#paths-object)
* `webhooks`
* `components`
* [`security`](https://spec.openapis.org/oas/v3.1.1.html#security-requirement-object)
* [`tags`](https://spec.openapis.org/oas/v3.1.1.html#tag-object)
* `externalDocs`

{: .note}
By "root level," I mean the first level in the OpenAPI document. This level is also referred to as the global level because some object properties declared here (namely `servers` and `security`) are applied to each of the operation objects unless overridden at a lower level.

The whole document (the object that contains these root-level objects) is called an [OpenAPI document](https://spec.openapis.org/oas/v3.1.1.html#openapi-document). The convention is to name the document **openapi.yml**.

{: .note}
"OpenAPI" refers to the specification; "Swagger" refers to the tooling (at least from SmartBear) that supports the OpenAPI specification.

{% include ads.html %}

Although one could approach the assembly of an OpenAPI document in many ways, I've decided to structure each step in this tutorial based on each of these root-level objects. You'll see two approaches in this course: one using Swagger working at a code-level, and another using Stoplight working in a user interface.

## Swagger Editor

Before we jump into coding, let's first talk about where you'll write the code and what your options are.

The easiest option is to use the online [Swagger Editor](https://editor.swagger.io/). The Swagger Editor provides a split view: on the left where you write your spec code, and on the right, you see a fully functional Swagger UI display. You can even submit requests from the Swagger UI display in this editor.

{% include image_ad_right.html %}

The Swagger Editor will validate your content in real-time, and you will see validation errors until you finish coding the specification document. Don't worry about the errors unless you see X marks in the code you're working on.

I usually keep a local text file (using a text editor such as Cursor, VS Code, or Sublime Text) where I keep the specification document offline, but I work with the document's content in the online [Swagger Editor](https://editor.swagger.io/). When I'm done working for the day, I copy and save the content back to my local file. Even so, the Swagger Editor caches the content quite well (just don't clear your browser's cache), so you probably won't need your local file as a backup.

If you want to purchase a subscription to [SwaggerHub](pubapis_swaggerhub_smartbear.html) (now called Swagger Studio), you could keep your spec content in the cloud associated with your personal login. (Swagger Studio has an editor almost identical to Swagger Editor.) Swagger Studio is the premium tooling for the open-source and free Swagger Editor.

Another option to work locally is to use [Visual Studio Code](https://code.visualstudio.com/) with an OpenAPI extension, such as [Redocly OpenAPI](https://marketplace.visualstudio.com/items?itemName=Redocly.openapi-vs-code) or [OpenAPI (Swagger) Editor](https://marketplace.visualstudio.com/items?itemName=42Crunch.vscode-openapi) by 42Crunch. These extensions validate your spec as you type and let you preview the rendered docs. You can also download and run the [Swagger Editor locally](https://swagger.io/tools/swagger-editor/).

For the sake of simplicity, for the Swagger sections in this tutorial, we'll just use the [online Swagger Editor](https://editor.swagger.io/).

Go to the [Swagger Editor](https://editor.swagger.io/) and select **File > Clear editor**. Keep this tab open throughout the OpenAPI tutorial, as you'll be adding to your specification document with each step.

Add the first root-level property for the specification document: `openapi`. In the [openapi](https://spec.openapis.org/oas/v3.1.1.html#openapi-object) object, indicate the version of the OpenAPI spec to validate against. This tutorial uses `3.1.1`, along with the updated syntax for `examples` that 3.1 introduced. (Newer versions, 3.2.0 and 3.2.1, are also available.)

A quick note on Swagger Editor versions: The online Swagger Editor at [https://editor.swagger.io/](https://editor.swagger.io/) now runs Swagger Editor v5, which supports OpenAPI 3.1 and 3.2. (For a while, v5 was hosted separately at editor-next.swagger.io, which now redirects to editor.swagger.io.) If you run an older Swagger Editor v4 locally, it won't recognize the `3.1.1` version or the updated `examples` syntax, and you'll see validation errors.

### Add the openapi object

Add the `openapi` object:

```
openapi: "3.1.1"
```

{% include random_ad2.html %}

Until you add more information in here, you'll see error messages and notes such as "No operations defined in spec!" To avoid these errors, add some placeholder info here like this:

```
openapi: '3.1.1'
info:
  title: OpenWeatherMap
  version: '1.0'
paths: {}
```

The editor renders the display as follows.

<figure><img class="docimage large border" src="{{site.api_media}}/openapi_object_swagger.png" alt="openapi object" /><figcaption>openapi object</figcaption></figure>

{% include content/troubleshooting_spec_tip.md %}

On the backend, Swagger UI uses the 3.1.1 version of the spec to validate your content. In the above screenshot, the gray "1.0" version refers to the version of the API here, not the version of the OpenAPI spec.

{% include random_ad4.html %}

There's not much to the `openapi` object except to elaborate on the versions. OAS 3.0 was released on 2017-07-26, OAS 3.1.1 was released on 2024-10-24 (see [Version History](https://spec.openapis.org/oas/v3.1.1.html#appendix-a-revision-history)), and OAS 3.2.0 was released on 2025-09-19.

{% include random_ad3.html %}
