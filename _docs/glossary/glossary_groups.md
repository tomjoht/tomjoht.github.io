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
- api_contract
- api_documentation
- api_gateway
- api_key
- api_portal
- api_reference
- api_versioning
- authentication
- authorization
- curl
- developer_portal
- endpoint
- graphql
- hateos
- native_library_api
- openapi
- parameters
- paths
- rate_limiting
- request
- response
- response_body
- rest_api
- resource
- sdk
- soap
- specification
- swagger
- uri
api_methods:
- crud
- delete
- get
- http_method
- http_operation
- http_verb
- idempotent_methods
- operation
- post
- put
api_parameters:
- accept_header
- authentication_token
- authorization_tokens_or_bearers
- base_url
- bearer_token
- caching_headers
- headers
- header_parameters
- oauth
- parameters
- path_parameters
- query_string_parameters
- rate_limit_headers
- request_body
- request_example
- request_payload
- response_headers
api_responses:
- content_type_header
- error_message
- payload
- response_body
- response_code
- response_example
- response_headers
- response_schema
- status_code
doc_formats_and_tools:
- api_blueprint
- asciidoc
- ccms
- cms
- continuous_delivery
- continuous_integration_continuous_delivery
- dita
- docs_as_code
- documentation_pipeline
- documentation_theme
- frontmatter
- hat
- hugo
- i18n
- java
- javadoc
- json
- l10n
- localization_internationalization
- markdown
- markup_language
- metadata
- open_source
- oxygenxml
- raml
- readthedocs
- restructured_text
- schematron
- sphinx
- static_site_generator
- taxonomy
- templating_language
- versioning_documentation
- yaml
version_control:
- blame
- branch
- bitbucket
- cherry_pick
- clone
- commit
- checkout
- fork
- git
- git_hook
- github
- gitlab
- git_repo
- head
- main_branch
- merge_conflict
- mercurial
- perforce
- pull
- pull_request
- push
- rebase
- remote
- stash
- subversion
- tag
- version_control
- webhooks
writing_process:
- cross_reference
- outline
- peer_review
- portfolio
- publishing
- review
- stakeholder
openapi:
- $ref_openapi
- api_console
- components_openapi
- externaldocs_openapi
- info_openapi
- mock_server
- oas
- openapi_contract
- openapi_initiative
- openapi_specification
- openapi_specification_document
- openapi_swagger
- parameters_openapi
- paths_openapi
- responses_openapi
- securityschemes_openapi
- servers_openapi
- tags_openapi
- validation
swagger:
- api_definition
- interactive_api_console
- swagger
- swagger_annotations
- swagger_codegen
- swagger_editor
- swaggerhub
- swagger_inspector
- swagger_petstore
- swagger_plugins
- swagger_ui
project_management_concepts:
- acceptance_criteria
- backlog
- backlog_grooming
- burndown_chart
- daily_standup
- definition_of_done
- epic
- iteration
- kanban
- product_owner
- release_planning
- scrum
- sprint
- sprint_demo
- sprint_planning
- sprint_retrospective
- stakeholder_engagement
- story_points
- timeboxing
- tshaped_skills
- user_story
- velocity
- waterfall
- work_in_progress
testing_and_qa:
- accessibility_testing
- agile_testing
- assumption
- beta_testing
- bug
- feedback_loop
- localization_testing
- qa
- regression_testing
- smoke_test
- test_case
- test_environment
- usability_testing
- user_testing
conceptual_docs:
- authorization_documentation
- code_sample
- conceptual_docs
- error_message_documentation
- getting_started_tutorial
- product_overview_documentation
- quick_reference
- rate_limiting_and_thresholds_documentation
- reference_docs
- release_notes
- support
- terminology
- tutorial
api_tools_and_platforms:
- api_transformer
- apiary
- apigee
- apimatic
- blobr
- customization
- mulesoft
- monetization
- postman
- raml_console
- redoc
- redocly
- repo
- smartbear
- stoplight
#ai_terms:
#- thematic_analysis

---

{% include coffeeshopbook.html %}

{% assign glossaryFile = site.data.glossary %}
{% assign counter = 0 %}

## Basic terms

{% include glossary_group.html group_name="Basic terms" group_code="basic_terms" %}

## API method terms

{% include glossary_group.html group_name="API method terms" group_code="api_methods" %}

## API parameter terms

{% include glossary_group.html group_name="API parameter" group_code="api_parameters" %}

## API responses terms

{% include glossary_group.html group_name="API responses" group_code="api_responses" %}

## API doc format terms

{% include glossary_group.html group_name="API doc format" group_code="doc_formats" %}

## Version control terms

{% include glossary_group.html group_name="Version control" group_code="version_control" %}

## Documentation tools terms

{% include glossary_group.html group_name="Documentation formats and tools" group_code="doc_formats_and_tools" %}

## Writing process terms

{% include glossary_group.html group_name="Writing process" group_code="writing_process" %}

## OpenAPI terms

{% include glossary_group.html group_name="OpenAPI" group_code="openapi" %}

## Swagger terms

{% include glossary_group.html group_name="Swagger" group_code="swagger" %}

## Project management terms

{% include glossary_group.html group_name="Project management" group_code="project_management_concepts" %}

## Testing and QA terms

{% include glossary_group.html group_name="Testing and QA" group_code="testing_and_qa" %}

## Conceptual docs terms

{% include glossary_group.html group_name="Conceptual docs" group_code="conceptual_docs" %}

## API tools and platform terms

{% include glossary_group.html group_name="API tools and platform" group_code="api_tools_and_platforms" %}

{% include random_ad2.html %}
{% include random_ad4.html %}
{% include random_ad3.html %}

{% include ads.html %}

{% include image_ad_left.html %}

<style>
div.defs {
margin: 20px 0px;
}
