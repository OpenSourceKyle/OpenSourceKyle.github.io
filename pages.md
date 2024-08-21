---
layout: single
permalink: /pages/
author_profile: true
---

These pages are meant to be help guides from my own experience and/or research. Some general guidelines:

* Overthinking and making excuses do not lead to results: take responsibility for your life!
* Don't trust theory: go and find out for yourself!

# Pages by Tag(s)

{% comment %}
Get "pages" collection (in _pages/) and parse "tags" attribute. Sort pages by their tags.
{% endcomment %}

{% assign pages = site.posts %} 
{% assign tags =  pages | map: 'tags' | uniq %}

{% for tag in tags %}

  {% comment %}
  Omit journal (blog) posts from Pages.
  {% endcomment %}
  <ul>
  {% case tag %}
    {% when "journal", "notes" %}
      {% comment %} Do nothing {% endcomment %}
    {% else %}
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

  {% endcase %}
  </ul>

{% endfor %}
