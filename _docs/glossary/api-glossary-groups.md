---
title: "Glossary groups"
permalink: learnapidoc/api-glossary-groups.html
sidebar: docapis
path1: learnapidoc/docapis_glossary.html
weight: 15.1
course: "Documenting REST APIs"
section: glossary
last-modified: 2023-08-31
basic_terms:
- api
- api_console
- api_documentation
- api_key
- api_portal
- api_reference
- authentication
- authorization
- developer_portal
- endpoint
- native_library_api
- rate_limiting
- rest_api
- sdk
api_reference:
- components
- crud
- curl
- hateos
- header_parameters
- http_method
- http_verb
- java
- json
- path_parameters
- paths
- request
- request_body
- response
- response_code
- response_example
- response_schema
- tags
- yaml
version_control:
- branch
- clone
- commit
- git
- github
- git_repo
- mercurial
- perforce
- pull
- pull_request
- push
- repo
- version_control
documentation_tools:
- asciidoc
- docs_as_code
- dita
- hat
- hugo
- javadoc
- markdown
- oxygenxml
- publishing
- review
- schematron
- sphinx
- stakeholder
- static_site_generator
- templating_language
openapi:
- openapi_contract
- openapi_initiative
- openapi_specification
- openapi_specification_document
- openapi_swagger
- open_source
- oas
project_management_concepts:
- agile_testing
- backlog
- continuous_delivery
- daily_standup
- definition_of_done
- epic
- kanban
- scrum
- sprint
- sprint_demo
- sprint_planning
- sprint_retrospective
- story_points
- user_story
- velocity
- waterfall
testing_and_qa:
- assumption
- qa
- test_case
- test_environment
- user_testing
conceptual_docs:
- conceptual_docs
- error_message_documentation
- getting_started_tutorial
- product_overview_documentation
- rate_limiting_and_thresholds_documentation
- reference_docs
- release_notes
- support
- terminology
- tutorial
api_tools_and_platforms:
- apiary
- apigee
- apimatic
- blobr
- customization
- mulesoft
- monetization
- postman
- raml
- raml_console
- redoc
- redocly
- smartbear
- stoplight
- swagger
- swagger_codegen
- swagger_editor
- swagger_ui
- swaggerhub
---

{% include coffeeshopbook.html %}

{% assign glossaryFile = site.data.glossary %}

{% if site.format == "print" %}
*Note: This content doesn't embed well in print because it contains JavaScript. Please go to [https://idratherbewriting.com/learnapidoc/api-glossary-groups.html] to view the content.*
{% endif %}

{% if site.format == "web" %}

## Basic terms

<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Basic terms &raquo;</button>
<div id="demo" class="collapse defs">
<dl>
{% for entry in page.basic_terms %}
<dt><a id="{{entry}}"></a>{{glossaryFile[entry].term}}</dt>
<dd markdown="span">{{glossaryFile[entry].def}}</dd>
{% endfor %}
</dl>
</div>

## API reference terms

<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo1">API reference terms &raquo;</button>
<div id="demo1" class="collapse defs">
<dl>
{% for entry in page.api_reference %}
<dt><a id="{{entry}}"></a>{{glossaryFile[entry].term}}</dt>
<dd markdown="span">{{glossaryFile[entry].def}}</dd>
{% endfor %}
</dl>
</div>

## Version control terms

<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo2">Version control terms &raquo;</button>
<div id="demo2" class="collapse defs">
<dl>
{% for entry in page.version_control %}
<dt><a id="{{entry}}"></a>{{glossaryFile[entry].term}}</dt>
<dd markdown="span">{{glossaryFile[entry].def}}</dd>
{% endfor %}
</dl>
</div>

## Documentation tools terms

<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo3">Documentation tools terms &raquo;</button>
<div id="demo3" class="collapse defs">
<dl>
{% for entry in page.documentation_tools %}
<dt><a id="{{entry}}"></a>{{glossaryFile[entry].term}}</dt>
<dd markdown="span">{{glossaryFile[entry].def}}</dd>
{% endfor %}
</dl>
</div>

## OpenAPI terms

<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo4">OpenAPI terms &raquo;</button>
<div id="demo4" class="collapse defs">
<dl>
{% for entry in page.openapi %}
<dt><a id="{{entry}}"></a>{{glossaryFile[entry].term}}</dt>
<dd markdown="span">{{glossaryFile[entry].def}}</dd>
{% endfor %}
</dl>
</div>

## Project management terms

<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo5">Project management terms &raquo;</button>
<div id="demo5" class="collapse defs">
<dl>
{% for entry in page.project_management_concepts %}
<dt><a id="{{entry}}"></a>{{glossaryFile[entry].term}}</dt>
<dd markdown="span">{{glossaryFile[entry].def}}</dd>
{% endfor %}
</dl>
</div>

## Testing and quality assurance terms

<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo6">Testing and quality assurance terms &raquo;</button>
<div id="demo6" class="collapse defs">
<dl>
{% for entry in page.testing_and_qa %}
<dt><a id="{{entry}}"></a>{{glossaryFile[entry].term}}</dt>
<dd markdown="span">{{glossaryFile[entry].def}}</dd>
{% endfor %}
</dl>
</div>

## Conceptual documentation terms

<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo7">Conceptual documentation terms &raquo;</button>
<div id="demo7" class="collapse defs">
<dl>
{% for entry in page.conceptual_docs %}
<dt><a id="{{entry}}"></a>{{glossaryFile[entry].term}}</dt>
<dd markdown="span">{{glossaryFile[entry].def}}</dd>
{% endfor %}
</dl>
</div>

## API tools and platform terms

<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo8">API tools and platform terms &raquo;</button>
<div id="demo8" class="collapse defs">
<dl>
{% for entry in page.api_tools_and_platforms %}
<dt><a id="{{entry}}"></a>{{glossaryFile[entry].term}}</dt>
<dd markdown="span">{{glossaryFile[entry].def}}</dd>
{% endfor %}
</dl>
</div>

{% endif %}

{% include random_ad2.html %}
{% include random_ad4.html %}
{% include random_ad3.html %}

{% include ads.html %}

{% include image_ad_left.html %}

<style>
div.defs {
margin: 20px 0px;
}
