---
title: "New OpenAPI 3.0 specification tutorial in my API Course"
categories:
- api-doc
keywords:
description: "I added a new tutorial on creating an OpenAPI 3.0 specification document in my API course. (OpenAPI was formerly referred to as Swagger.) The tutorial has 8 steps and guides you through the process of creating the specification document in the context of a sample weather API. Additionally, I explain how the specification fields get displayed in Swagger UI. Swagger UI is the display framework that reads the OpenAPI spec and generates an interactive documentation website."
bitlink: http://bit.ly/openapi30tutorial
---

You can view my OpenAPI 3.0 tutorial here: [OpenAPI 3.0 tutorial overview](https://idratherbewriting.com/learnapidoc/pubapis_openapi_tutorial_overview.html). Here are the 8 steps in the tutorial:

<a href="https://idratherbewriting.com/learnapidoc/pubapis_openapi_step1_openapi_object.html"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/open-api-tutorial-workflow.png"/></a>

* [Step 1: openapi object](https://idratherbewriting.com/learnapidoc/pubapis_openapi_step1_openapi_object.html)
* [Step 2: info object](https://idratherbewriting.com/learnapidoc/pubapis_openapi_step2_info_object.html)
* [Step 3: servers object](https://idratherbewriting.com/learnapidoc/pubapis_openapi_step3_servers_object)
* [Step 4: paths object](https://idratherbewriting.com/learnapidoc/pubapis_openapi_step4_paths_object.html)
* [Step 5: components object](https://idratherbewriting.com/learnapidoc/pubapis_openapi_step5_components_object.html)
* [Step 6: security object](https://idratherbewriting.com/learnapidoc/pubapis_openapi_step6_security_object.html)
* [Step 7: tags object](https://idratherbewriting.com/learnapidoc/pubapis_openapi_step7_tags_object.html)
* [Step 8: externalDocs object](https://idratherbewriting.com/learnapidoc/pubapis_openapi_step8_external_docs_object.html)

You can read the full [OpenAPI specification here](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md).

You can view the sample [Swagger UI](https://github.com/swagger-api/swagger-ui) output from my OpenAPI specification document in a couple of ways:

* [Swagger UI Demo 1 (standalone)](https://idratherbewriting.com/learnapidoc/assets/files/swagger/)
* [Swagger UI Demo 2 (embedded)](https://idratherbewriting.com/learnapidoc/pubapis_swagger_embedded.html)

Previously, I had some tutorials on Swagger, but none that dived into the nuts and bolts of creating a specification document.

Also, a lot has happened in the past year with Swagger. First, the terms have evolved. "Swagger" now refers to API *tooling*. "OpenAPI" refers to the *specification*. The development of the OpenAPI spec is led by the [OpenAPI Initiative](https://www.openapis.org/), not Smartbear.

Additionally, the OpenAPI Initiative released [version 3.0](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md) of the specification. Version 3.0 is a significant revision from [2.0](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md) (but you can convert your existing spec files programmatically through [APIMATIC](https://apimatic.io/)). (I was actually waiting for the release of 3.0 before writing this content, because I knew instructions related to 2.0 would become somewhat obsolete.)



I had to go back through the [whole section on REST specifications](https://idratherbewriting.com/learnapidoc/pubapis_rest_specification_formats.html) in my course and update how I referred to the specification versus the tooling. I also reorganized the content, added more detail, and tried to bring everything up to date.

Maintaining these [tutorials on API documentation](https://idratherbewriting.com/learnapidoc/) is certainly a challenge, since this space is rapidly evolving. In addition to the major changes from 2.0 to 3.0 in the specification, and the ownership and steering of the specification from Smartbear to the OpenAPI Initiative, Swagger UI (the display framework that reads the spec and generates an interactive documentation website) also updated to a new version ([3.4](https://github.com/swagger-api/swagger-ui/tree/v3.4.3)).

With all these changes, I needed to overhaul the entire section on REST specifications and clarify terms. I even added an [API Glossary](https://idratherbewriting.com/learnapidoc/api-glossary.html) to my API course.

Also, when I first put together the material on REST specifications, [RAML](https://idratherbewriting.com/learnapidoc/pubapis_raml.html) and [API Blueprint](https://idratherbewriting.com/learnapidoc/pubapis_api_blueprint.html) were also more serious contenders for widespread acceptance of the spec. But in the past couple of years, I've heard almost nothing about these other specs. I'm pretty sure they're adoption continues to wane, and frankly, I don't think we don't need multiple specifications for REST. It's confusing enough to learn one specification, let alone several, especially when they have the same goals and largely the same result.

If you're working with a REST API project, I invite you to go through my [OpenAPI tutorial](https://idratherbewriting.com/learnapidoc/pubapis_openapi_tutorial_overview.html) and let me know if it's helpful. (If so, consider [adding a review](https://idratherbewriting.wufoo.com/forms/sxgxvqb1ahtv6q/).) Figuring out how to build the OpenAPI specification file from scratch can be somewhat daunting, and the [specification documentation](https://github.com/OAI/OpenAPI-Specification) is more like reference documentation than anything else. It's also constructed on one eternal page, so navigating it takes some getting used to. There are other tutorials online for building specification documents, but almost none that cover the newly released 3.0 version.
