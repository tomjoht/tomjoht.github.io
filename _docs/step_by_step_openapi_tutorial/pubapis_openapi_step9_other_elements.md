---
title: "Other elements: webhooks and jsonSchemaDialect (OpenAPI tutorial)"
permalink: learnapidoc/pubapis_openapi_step9_other_elements.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 5.92
section: openapitutorial
path1: learnapidoc/restapispecifications.html
map:
  step: 9
  definition: content/openapi_tutorial_map.html
last-modified: 2025-07-05
---

{% include coffeeshopbook.html %}

While our OpenWeatherMap API example doesn't use them, the OpenAPI 3.1.1 specification includes other important root-level objects that are worth knowing about, specifically `webhooks` and the `jsonSchemaDialect` field. Understanding these will give you a more complete picture of the specification's capabilities.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## The `webhooks` object

The [`webhooks` object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.1.1.md#oas-webhooks) is a significant addition that allows you to describe out-of-band requests that your service might send to other applications. A webhook is essentially a reverse API; instead of your application calling the API, the API calls your application at a pre-configured URL when a specific event occurs.

For example, a version control system might send a webhook notification to a CI/CD server whenever new code is pushed to a repository.

The `webhooks` object is defined at the root level of your specification. Each key in the `webhooks` object is a unique name for the webhook, and the value is a [Path Item Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.1.1.md#pathItemObject) that describes the request that will be sent.

### Example `webhooks` object

Here’s a simple example of how you might define a webhook for a "new user" event:

```yaml
webhooks:
  newUser:
    post:
      requestBody:
        description: New user information
        content:
          application/json:
            schema:
              type: object
              properties:
                userId:
                  type: string
                  example: 'user-123'
                timestamp:
                  type: string
                  format: date-time
                  example: '2025-07-07T19:20:30+01:00'
      responses:
        '200':
          description: OK response from the client acknowledging receipt of the webhook.
```

In this example:

* `newUser` is the name of the webhook.
* It describes a `post` request that the API provider will make to the consumer's pre-registered URL.
* The `requestBody` defines the payload that will be sent with the webhook notification.
* The `responses` object describes the expected response from the webhook consumer (your application) to acknowledge that it received the event.

This is different from the `callbacks` object, which describes outgoing requests that are tied to a specific parent API operation. Webhooks are for events that are not directly triggered by a preceding API call from the consumer.

## The `jsonSchemaDialect` field

<!-- I've expanded this section significantly based on your request for clarification. -->

The [`jsonSchemaDialect` field](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.1.1.md#oas-json-schema-dialect) is a top-level string that declares the default **dialect** for all [Schema Objects](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.1.1.md#schemaObject) within your OpenAPI document.

### What is a Schema Dialect?

Think of a "dialect" as a specific version or set of rules for interpreting a schema. One of the most important changes in OpenAPI 3.1 is its full compatibility with **JSON Schema**, a separate, powerful specification for defining the structure of JSON data.

The `Schema Object` in OpenAPI is a superset of JSON Schema. This means it supports all the features of JSON Schema (like `type`, `properties`, `pattern`, `allOf`, etc.) plus a few extra keywords specific to OpenAPI (`discriminator`, `xml`, `example`).

### Why is `jsonSchemaDialect` important?

By default, if you don't specify a dialect, tools will use the standard OpenAPI 3.1 dialect, identified by the URI `https://spec.openapis.org/oas/3.1/dialect/base`. This is usually fine.

However, you might want to use features from a specific version of the JSON Schema standard that aren't part of the default OpenAPI dialect, or you just want to be explicit for maximum compatibility across different tools. The `jsonSchemaDialect` field lets you set a default for the entire document.

### Example `jsonSchemaDialect` field

If you want to ensure that all schemas in your document are interpreted according to the JSON Schema Draft 2020-12 specification, you would add this field at the root level:

```yaml
openapi: 3.1.1
info:
  title: My API
  version: 1.0.0
# This tells all tools to use the rules from JSON Schema Draft 2020-12 by default
# for all schemas in this document.
jsonSchemaDialect: [https://json-schema.org/draft/2020-12/schema](https://json-schema.org/draft/2020-12/schema)
paths:
  # ... rest of your API definition
```

### Overriding the Dialect with `$schema`

You can also set a dialect for a *specific* schema object using the `$schema` keyword inside it. This will override the global `jsonSchemaDialect` for that particular schema. This is useful if you have a mix of schemas that need to follow different rules.

```yaml
components:
  schemas:
    MyLegacySchema:
      # This specific schema uses an older dialect, overriding the global default.
      $schema: "[http://json-schema.org/draft-07/schema#](http://json-schema.org/draft-07/schema#)"
      type: object
      properties:
        # ...
    MyNewSchema:
      # This schema will use the global jsonSchemaDialect (or the OAS default if not set).
      type: object
      properties:
        # ...
```

In summary, `jsonSchemaDialect` is a global setting for your entire API definition that says, "Hey tools, unless I tell you otherwise, please use these specific JSON Schema rules to understand my data models." It's a best practice for clarity and ensures your schemas are validated consistently.


