---
---

# DEBUG

## .pages

<ul>
{% for page in site.pages %}
<li>
{{ page.title }}
{% for tag in page.tags %}
--> {{ tag }}
{% endfor %}
</li>
{% endfor %}
</ul>

## .categories (from \_posts only)

<!-- https://jekyllrb.com/docs/posts/#categories -->
<ul>
{% for category in site.categories %}
<li>
{{ category[0] }}
</li>
{% endfor %}
</ul>

## .tags (from \_posts only)

<!-- https://jekyllrb.com/docs/posts/#tags-and-categories -->
<ul>
{% for tag in site.tags %}
<li>
{{ tag[0] }}
</li>
{% endfor %}
</ul>

## .collections (defined in \_config.yml & in folder \_NAME)

<!-- https://jekyllrb.com/docs/collections/#liquid-attributes -->
<ul>
{% for collection in site.collections %}
<li>{{ collection.label }}</li>
<ul>
{% for doc in collection.docs %}
<li>
{{ doc.url }}
</li>
{% endfor %}
</ul>
{% endfor %}
</ul>

## .paginator

<ul>
{% for page in paginator.posts %}
<li>{{ page.title }}</li>
{% endfor %}
</ul>

## .posts

<ul>
{% for post in site.posts %}
<li>{{ post.title }}</li>
{% endfor %}
</ul>
