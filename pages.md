---
layout: single
permalink: /pages/
author_profile: true
---

{% comment %}
Get "pages" collection (in _pages/) and parse "tags" attribute. Sort pages by their tags.
{% endcomment %}

{% assign pages = site.posts %} 
{% assign tags =  pages | map: 'tags' | uniq %}

# Pages by Tag(s)

{% for tag in tags %}

  {% comment %}
  Omit journal (blog) posts from Pages.
  {% endcomment %}
  <ul>
  {% unless tag == "journal" %}
    <h3>
    {{ tag | capitalize }}
    </h3>

    {% for page in pages %}
      {% if page.tags contains tag %}
        <li>
          <a href="{{ page.url }}">
          {{ page.title }}
          </a>
        </li>
      {% endif %}
    {% endfor %}

  {% endunless %}
  </ul>

{% endfor %}
