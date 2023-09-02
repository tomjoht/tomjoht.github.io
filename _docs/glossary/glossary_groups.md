---
title: "Glossary groups"
permalink: learnapidoc/glossary_groups.html
sidebar: docapis
path1: learnapidoc/glossary_overview.html
weight: 15.1
course: "Documenting REST APIs"
section: glossary
last-modified: 2023-08-31
basic_terms:
- api
- rest_api
- native_library_api
- api_documentation
- sdk
- developer_portal
- api_portal
- endpoint
- api_key
- curl
- request
- response
- rate_limiting
- authentication
- authorization
- specification
- hateos
api_reference:
- api_reference
- resource
- paths
api_methods:
- http_method
- http_verb
- crud
- operation
- post
- get
- put
- delete
api_parameters:
- parameters
- header_parameters
- path_parameters
- query_string_parameters
- request_body
api_responses:
- payload
- response_code
- response_example
- response_schema
- status_code
doc_formats:
- markdown
- json
- yaml
- asciidoc
- dita
- java
- javadoc
- templating_language
- open_source
- api_blueprint
- raml
- metadata
- schematron
version_control:
- version_control
- git
- git_repo
- github
- clone
- branch
- pull
- pull_request
- commit
- push
- mercurial
- perforce
documentation_tools:
- docs_as_code
- static_site_generator
- continuous_delivery
- hat
- sphinx
- hugo
- oxygenxml
writing_process:
- outline
- review
- publishing
- stakeholder
- cross_reference
- portfolio
openapi:
- oas
- openapi_specification
- openapi_specification_document
- openapi_contract
- openapi_swagger
- openapi_initiative
- api_console
- mock_server
- components
- tags
swagger:
- swagger
- swagger_codegen
- swagger_editor
- swagger_ui
- swaggerhub
project_management_concepts:
- scrum
- daily_standup
- definition_of_done
- sprint
- sprint_demo
- sprint_planning
- sprint_retrospective
- story_points
- user_story
- velocity
- backlog
- epic
- kanban
- waterfall
testing_and_qa:
- qa
- test_case
- test_environment
- assumption
- user_testing
- agile_testing
conceptual_docs:
- conceptual_docs
- product_overview_documentation
- getting_started_tutorial
- tutorial
- quick_reference
- authorization_documentation
- reference_docs
- code_sample
- rate_limiting_and_thresholds_documentation
- release_notes
- error_message_documentation
- terminology
- support
api_tools_and_platforms:
- apiary
- apigee
- apimatic
- api_transformer
- blobr
- mulesoft
- postman
- raml_console
- redoc
- redocly
- repo
- smartbear
- stoplight
- customization
- monetization
#ai_terms:
#- thematic_analysis
---

{% include coffeeshopbook.html %}

{% assign glossaryFile = site.data.glossary %}
{% assign counter = 0 %}

## Basic terms

{% include glossary_group.html group_name="Basic terms" group_code="basic_terms" %}

## API reference terms

{% include glossary_group.html group_name="API reference terms" group_code="api_reference" %}

## API method terms

{% include glossary_group.html group_name="API method terms" group_code="api_methods" %}

## API parameter terms

{% include glossary_group.html group_name="API parameter terms" group_code="api_parameters" %}

## API responses terms

{% include glossary_group.html group_name="API responses terms" group_code="api_responses" %}

## API doc format terms

{% include glossary_group.html group_name="API doc format terms" group_code="doc_formats" %}

## Version control terms

{% include glossary_group.html group_name="Version control terms" group_code="version_control" %}

## Documentation tools terms

{% include glossary_group.html group_name="Documentation tools terms" group_code="documentation_tools" %}

## Writing process terms

{% include glossary_group.html group_name="Writing process terms" group_code="writing_process" %}

## OpenAPI terms

{% include glossary_group.html group_name="OpenAPI terms" group_code="openapi" %}

## Swagger terms

{% include glossary_group.html group_name="Swagger terms" group_code="swagger" %}

## Project management terms

{% include glossary_group.html group_name="Project management terms" group_code="project_management_concepts" %}

## Testing and QA terms

{% include glossary_group.html group_name="Testing and QA terms" group_code="testing_and_qa" %}

## Conceptual docs terms

{% include glossary_group.html group_name="Conceptual docs terms" group_code="conceptual_docs" %}

## API tools and platform terms

{% include glossary_group.html group_name="API tools and platform terms" group_code="api_tools_and_platforms" %}

{% include random_ad2.html %}
{% include random_ad4.html %}
{% include random_ad3.html %}

{% include ads.html %}

{% include image_ad_left.html %}

<style>
div.defs {
margin: 20px 0px;
}
