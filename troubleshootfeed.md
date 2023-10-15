
## Any podcast episodes without podcast_length
{% for ep in site.categories.podcasts %}
{% if ep.podcast_length == blank %}
<p>{{ ep.podcast_link | remove: "www.podtrac.com/pts/redirect.mp3/" }}</p>
{% endif %}
{% endfor %}

## Any podcast episodes with invalid podcast_length

{% for ep in site.categories.podcasts %}
  {% assign len = ep.podcast_length | plus: 0 %}
  {% if len <= 0 %}
    <p>{{ ep.podcast_link | remove: "www.podtrac.com/pts/redirect.mp3/" }}</p>
  {% endif %}
{% endfor %}


{% for ep in site.categories.podcasts %}
{% if ep.podcast_length == blank %}
<p>{{ ep.podcast_link | remove: "www.podtrac.com/pts/redirect.mp3/" }}</p>
{% endif %}
{% endfor %}

## Any podcast episodes with missing podcast_link
{% for ep in site.categories.podcasts %}
{% if ep.podcast_link == blank %}
<p>{{ ep.title }}</p>
{% endif %}
{% endfor %}

## List of all MP3 links
{% for ep in site.categories.podcasts %}
{{ ep.podcast_link }}<br>
{% endfor %}




