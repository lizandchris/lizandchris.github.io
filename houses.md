---
name: "Collection of House Related Documents"
title: "Houses"
---
# {{ page.title }}
{% for house in site.houses %}
* [{{house.title}}]({{house.url}})
{% endfor %}
