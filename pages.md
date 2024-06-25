---
title: Pages
---

<ul>
  {% for page in site.pages %}
    <li>
        <h2><a href="{{ page.url}}">{{ page.title }}</a></h2>
    </li>
  {% endfor %}
</ul>
