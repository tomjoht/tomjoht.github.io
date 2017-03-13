---
layout: kindle
permalink: kindle.html
---

<h2>Table of Contents</h2>
{% include kindletoc.html %}

<mbp:section>
<div class="section">Using a REST API like a developer</div>
{% assign apipages = site.restapicourse | sort: "weight" %}
{% for p in apipages %}
{% if p.weight <= 2.3 %}
<h1 class="chapter" id="{{p.permalink | remove: "/"}}">{{p.weight}} {{p.title}}</h1>
{{p.content}}
<mbp:pagebreak />
{% endif %}
{% endfor %}
</mbp:section>


<mbp:section>
<div class="section">Documenting a new API endpoint</div>
{% assign apipages = site.restapicourse | sort: "weight" %}
{% for p in apipages %}
{% if p.weight >= 2.4 and p.weight <= 3.1 %}
<h1 class="chapter" id="{{p.permalink | remove: "/"}}">{{p.weight}}  {{p.title}}</h1>
{{p.content}}
<mbp:pagebreak />
{% endif %}
{% endfor %}
</mbp:section>

<mbp:section>
<div class="section">">Documenting non-reference sections</div>
{% assign apipages = site.restapicourse | sort: "weight" %}
{% for p in apipages %}
{% if p.weight >= 3.2 and p.weight <= 3.8 %}
<h1 class="chapter" id="{{p.permalink | remove: "/"}}">{{p.weight}}  {{p.title}}</h1>
{{p.content}}
<mbp:pagebreak />
{% endif %}
{% endfor %}
</mbp:section>

<mbp:section>
<div class="section">Exploring other REST APIs</div>
{% assign apipages = site.restapicourse | sort: "weight" %}
{% for p in apipages %}
{% if p.weight >= 3.9 and p.weight <= 4.4 %}
<h1 class="chapter" id="{{p.permalink | remove: "/"}}">{{p.weight}}  {{p.title}}</h1>
{{p.content}}
<mbp:pagebreak />
{% endif %}
{% endfor %}
</mbp:section>

<mbp:section>
<div class="section">Publishing API documentation</div>
{% assign apipages = site.restapicourse | sort: "weight" %}
{% for p in apipages %}
{% if p.weight >= 4.5 and p.weight <= 6.2 %}
<h1 class="chapter" id="{{p.permalink | remove: "/"}}">{{p.weight}}  {{p.title}}</h1>
{{p.content}}
<mbp:pagebreak />
{% endif %}
{% endfor %}
</mbp:section>

<mbp:section>
<div class="section">Design patterns</div>
{% assign apipages = site.restapicourse | sort: "weight" %}
{% for p in apipages %}
{% if p.weight >= 6.3 and p.weight <= 6.9 %}
<h1 class="chapter" id="{{p.permalink | remove: "/"}}">{{p.weight}}  {{p.title}}</h1>
{{p.content}}
<mbp:pagebreak />
{% endif %}
{% endfor %}
</mbp:section>

<mbp:section>
<div class="section">Documenting native libary APIs</div>
{% assign apipages = site.restapicourse | sort: "weight" %}
{% for p in apipages %}
{% if p.weight >= 7.0 and p.weight <= 7.9 %}
<h1 class="chapter" id="{{p.permalink | remove: "/"}}">{{p.weight}}  {{p.title}}</h1>
{{p.content}}
<mbp:pagebreak />
{% endif %}
{% endfor %}
</mbp:section>
