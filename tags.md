---
title: Tags
---
# Tags
{% for tag in site.tags %}
  {% assign t = tag | first %}
  {% assign posts = tag | last %}
  {% assign dt = t | downcase | replace:" ","-" %}
## {{dt}} has {{ posts | size }} posts <a id="{{dt}}"></a>
{% for post in posts %}
  {% if post.tags contains t %}
* [{{post.title}}]({{post.url}}) {{post.date | date:"%B %-d, %Y"}}
  {% endif %}
{%endfor %}
{% endfor %}
