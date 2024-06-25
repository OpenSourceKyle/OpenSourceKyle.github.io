---
title: OpenSourceKyle
---

Howdy there, and welcome to my life

---

## Pages

{% for post in site.pages %}
<li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}

---

## Posts

{% for post in site.posts %}
<li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
