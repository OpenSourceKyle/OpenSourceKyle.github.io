---
layout: default
title: Pages
---
<h1>Pages</h1>

<ul>
  {% for page in site.pages %}
    <li>
        <h2><a href="{{ page.url}}">{{ page.title }}</a></h2>
        <h3>{{ page.position }}</h3>
    </li>
  {% endfor %}
</ul>
