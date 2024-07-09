---
layout: single
permalink: /pages/
author_profile: true
---

{% comment %}
Get "pages" collection (in _pages/) and parse "tags" attribute. Sort pages by their tags.
{% endcomment %}

{% assign pages = site.pages %} 
{% assign tags =  pages | map: 'tags' | uniq %}

# By Tag(s)

{% for tag in tags %}
  <h3>
  {{ tag | capitalize }}
  </h3>

  <ul>
  {% for page in pages %}
    {% if page.tags contains tag %}
      <li>
        <a href="{{ page.url }}">
        {{ page.title }}
        </a>
      </li>
    {% endif %}
  {% endfor %}
  </ul>

{% endfor %}

---

# All Pages

<ul>
{% for page in pages %}
  <li>
    <a href="{{ page.url }}">
    {{ page.title }}
    </a>
  </li>
{% endfor %}
</ul>
