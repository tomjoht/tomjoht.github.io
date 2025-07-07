---
title: Swagger UI Demo
permalink: learnapidoc/pubapis_swagger_demo.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.7
section: restapispecifications
path1: learnapidoc/restapispecifications.html
no_newsletter: true
last-modified: 2021-06-03
---

{% include coffeeshopbook.html %}

<p>When you use Swagger UI, it's not necessary for the Swagger UI output to be a <a href="https://idratherbewriting.com/assets/files/swagger">standalone site</a>. You can also embed Swagger into an existing web page. The following is an embedded instance of the <a href="https://github.com/swagger-api/swagger-ui">Swagger UI</a> showing the <a href="https://idratherbewriting.com/docs/openapi_spec_and_generated_ref_docs/openapi_openweathermap.yml">OpenAPI file for the OpenWeatherMapAPI</a>.</p>

{% include random_ad4.html %}

{% if site.format == "print" %}
<p>This page can only be viewed online through a browser on your computer. Go to https://idratherbewriting.com/learnapidoc/pubapis_swagger_demo.html to view it.</p>
{% else %}

<p><a id="tg-sb-link" href="#"><i id="tg-sb-icon" class="fa fa-toggle-on"></i> Nav</a></p>

<link rel="stylesheet" type="text/css" href="https://idratherbewriting.com/assets/css/swagger-ui.css" >
<style>
html
{
box-sizing: border-box;
overflow: -moz-scrollbars-vertical;
overflow-y: scroll;
}
*,
*:before,
*:after
{
box-sizing: inherit;
}

body {
margin:0;
background: #fafafa;
}
</style>

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="position:absolute;width:0;height:0">
<defs>
<symbol viewBox="0 0 20 20" id="unlocked">
<path d="M15.8 8H14V5.6C14 2.703 12.665 1 10 1 7.334 1 6 2.703 6 5.6V6h2v-.801C8 3.754 8.797 3 10 3c1.203 0 2 .754 2 2.199V8H4c-.553 0-1 .646-1 1.199V17c0 .549.428 1.139.951 1.307l1.197.387C5.672 18.861 6.55 19 7.1 19h5.8c.549 0 1.428-.139 1.951-.307l1.196-.387c.524-.167.953-.757.953-1.306V9.199C17 8.646 16.352 8 15.8 8z"></path>
</symbol>

<symbol viewBox="0 0 20 20" id="locked">
<path d="M15.8 8H14V5.6C14 2.703 12.665 1 10 1 7.334 1 6 2.703 6 5.6V8H4c-.553 0-1 .646-1 1.199V17c0 .549.428 1.139.951 1.307l1.197.387C5.672 18.861 6.55 19 7.1 19h5.8c.549 0 1.428-.139 1.951-.307l1.196-.387c.524-.167.953-.757.953-1.306V9.199C17 8.646 16.352 8 15.8 8zM12 8H8V5.199C8 3.754 8.797 3 10 3c1.203 0 2 .754 2 2.199V8z"/>
</symbol>

<symbol viewBox="0 0 20 20" id="close">
<path d="M14.348 14.849c-.469.469-1.229.469-1.697 0L10 11.819l-2.651 3.029c-.469.469-1.229.469-1.697 0-.469-.469-.469-1.229 0-1.697l2.758-3.15-2.759-3.152c-.469-.469-.469-1.228 0-1.697.469-.469 1.228-.469 1.697 0L10 8.183l2.651-3.031c.469-.469 1.228-.469 1.697 0 .469.469.469 1.229 0 1.697l-2.758 3.152 2.758 3.15c.469.469.469 1.229 0 1.698z"/>
</symbol>

<symbol viewBox="0 0 20 20" id="large-arrow">
<path d="M13.25 10L6.109 2.58c-.268-.27-.268-.707 0-.979.268-.27.701-.27.969 0l7.83 7.908c.268.271.268.709 0 .979l-7.83 7.908c-.268.271-.701.27-.969 0-.268-.269-.268-.707 0-.979L13.25 10z"/>
</symbol>

<symbol viewBox="0 0 20 20" id="large-arrow-down">
<path d="M17.418 6.109c.272-.268.709-.268.979 0s.271.701 0 .969l-7.908 7.83c-.27.268-.707.268-.979 0l-7.908-7.83c-.27-.268-.27-.701 0-.969.271-.268.709-.268.979 0L10 13.25l7.418-7.141z"/>
</symbol>


<symbol viewBox="0 0 24 24" id="jump-to">
<path d="M19 7v4H5.83l3.58-3.59L8 6l-6 6 6 6 1.41-1.41L5.83 13H21V7z"/>
</symbol>

<symbol viewBox="0 0 24 24" id="expand">
<path d="M10 18h4v-2h-4v2zM3 6v2h18V6H3zm3 7h12v-2H6v2z"/>
</symbol>

</defs>
</svg>

<div id="swagger-ui"></div>

<script src="{{ "https://idratherbewriting.com/assets/files/swagger/swagger-ui-bundle.js" }}"> </script>
<script src="{{ "https://idratherbewriting.com/assets/files/swagger/swagger-ui-standalone-preset.js" }}"> </script>
<script>
window.onload = function() {

// Build a system
const ui = SwaggerUIBundle({
url: "https://idratherbewriting.com/docs/openapi_spec_and_generated_ref_docs/openapi_openweathermapv3.yml",
// url: "http://petstore.swagger.io/v2/swagger.json",
dom_id: '#swagger-ui',
defaultModelsExpandDepth: -1,
docExpansion: "full",
deepLinking: true,
presets: [
SwaggerUIBundle.presets.apis,
SwaggerUIStandalonePreset
],
plugins: [
SwaggerUIBundle.plugins.DownloadUrl
],
layout: "StandaloneLayout"
})

window.ui = ui
}
</script>

<style>

.swagger-ui .info .title small pre {
padding: 1px;
background-color: #444;
}

.swagger-ui .info .title small {
font-size: 10px;
position: relative;
top: -5px;
display: inline-block;
margin: 0 0 0 5px;
padding: 4px;
vertical-align: super;
border-radius: 57px !important;
background: #89bf04 !important;
}
.swagger-ui .info .title small pre.version {
background-color: #89bf04;
border: 0px;
}
.swagger-ui pre.version {
padding: 0px;
max-width: 60px;
border: 0px;
}
.swagger-ui .info .title small pre {
padding:0px;
}

.swagger-ui .info .title small {
background-color: rgb(137, 191, 4);
}
.swagger-ui table th, .swagger-ui table td {
padding: 10px !important;
}

.swagger-ui table th {
color: white;
font-size:16px;
}

.swagger-ui .col_header {
color: white !important;
}

div#swagger-ui {
border: 1px solid #dedede;
}


.swagger-ui .info .title small pre {
padding: 1px;
background-color: #444;
}

.swagger-ui .info .title small {
font-size: 10px;
position: relative;
top: -5px;
display: inline-block;
margin: 0 0 0 5px;
padding: 4px;
vertical-align: super;
border-radius: 57px !important;
background: #89bf04 !important;
}

.swagger-ui .info .title small pre.version {
background-color: #89bf04;
}
.swagger-ui li.tabitem {
list-style: none !important;
}

.swagger-ui .response-col_description__inner p {
color: white;
font-style: normal;
font-size: 12px;
}

.swagger-ui pre.version {
padding: 0px;

}

.swagger-ui .info .title small pre {
padding:0px;
}


.swagger-ui .info .title small {
background-color: rgb(137, 191, 4);
}

.swagger-ui a.tablinks {
margin-right: 20px;
}

.swagger-ui td.col.response-col_status {
padding: 10px !important;
}

.swagger-ui .opblock .opblock-section-header h4 {
font-size: 18px !important;
font-weight: bold;
padding: 0px;
}

.swagger-ui td.col, .swagger-ui td.col.col_header.response-col_description {
padding: 10px;
}

.swagger-ui h4.opblock-title_normal {
font-size: 16px;
font-style: italic;
}

.swagger-ui h4.opblock-title_normal[id] {
padding-bottom: 15px;
font-style: italic;
}


.swagger-ui {
border: 1px solid #dedede;
}

.swagger-ui select {
font-weight: normal !important;
font-family: monospace;
}

.swagger-ui table {
table-layout: auto !important;
}

.swagger-ui .scheme-container {
padding: 0px 0px 15px 0px;
}

.swagger-ui .renderedMarkdown p {
font-size: 14px;
}

.swagger-ui tr.response p {
font-style: italic;
}

.swagger-ui table.model tbody tr td {
padding: 1em !important;
}

.response-content-type.controls-accept-header small code {
font-size: 12px;
}

.swagger-ui .opblock-summary-path a.nostyle {
font-family: monospace;
}


.swagger-ui .info {
/* margin: -25px 0px !important; */
}

.swagger-ui .main span.url {
display: none;
}

.swagger-ui span.opblock-summary-path a.nostyle {
font-family: Monospace !important;
size: 16px;
}

.swagger-ui .opblock-description-wrapper, .swagger-ui .opblock-external-docs-wrapper, .swagger-ui .opblock-title_normal {
padding: 15px 20px 5px 20px;
}
.swagger-ui h1[id], .swagger-ui h2[id], .swagger-ui h3[id], .swagger-ui h4[id], .swagger-ui h5[id] {
margin: 0px;
padding: 0px;
}

.swagger-ui pre {
font-family: Monaco, Monospace !important;
font-size: 11px;
}

h6, h6 code.highlighter-rouge {
font-size: 16px;
}

.swagger-ui .responses-inner h4, .swagger-ui .responses-inner h5 {
font-size: 16px;
}

.swagger-ui code {
font-size: 12px;
}


/* disable the try it out buttons

button.btn.try-out__btn {
display: none;
}
*/
</style>

{% endif %}

<style>
.navToggle {
display: none !important;
}
.expand {
width: 100%;
margin-left: 10%;
margin-right: 10%;
}
#tg-sb-link:hover, #tg-sb-link:active, #tg-sb-link {
text-decoration: none !important;
}
</style>

{% if site.format == "web" %}
<script>
$(document).ready(function() {
$("#tg-sb-link").click(function() {
$("#sidebar").toggleClass('navToggle');
$(".container").toggleClass('expand');
$("#tg-sb-icon").toggleClass('fa-toggle-on');
$("#tg-sb-icon").toggleClass('fa-toggle-off');
});
});
</script>
{% endif %}
{% include random_ad2.html %}

<p class="note">While the Swagger UI display is designed to be responsive, the collapse/expand sections in the Model views still have overflow issues in responsive views, so you might run into issues with embedding. For more discussion on how to integrate Swagger with the rest of your docs, see <a href="pubapis_combine_swagger_and_guide.html">Integrating Swagger UI with the rest of your docs</a>.</p>

{% include ads.html %}

{% include image_ad_left.html %}

{% include random_ad3.html %}
