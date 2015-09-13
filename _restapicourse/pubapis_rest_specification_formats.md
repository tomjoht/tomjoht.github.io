---
title: "REST API specification formats"
permalink: /pubapis_rest_specification_formats/
course: "Documenting REST APIs"
type: notes_docapis
---


- rest api specs
- learn by doing
- http://idratherbewriting.com/2015/01/06/api-doc-survey-automating-rest-api-documentation/#sts=Why Swagger instead of some other tool?


## Specs replace program-specific doc blocks

With REST APIs, the platform and architecture behind the API can be in any programming language. This makes it difficult for tools to parse through comments within the code and run them through the same processing.

However, with content in a standard specification, the tools can read and parse the content. There are at least two main specifications for REST API documentation:

* [Swagger](http://swagger.io/)
* [RAML](http://raml.org/)
* [API Blueprint](https://github.com/apiaryio/api-blueprint/blob/master/API%20Blueprint%20Specification.md) 

Swagger is open source and has a strong community. RAML is more tied to Mulesoft's tooling platform. But both follow generally the same principles. 
