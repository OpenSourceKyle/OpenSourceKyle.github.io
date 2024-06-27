---
title: OpenSourceKyle
---

Howdy there, and welcome to my life. <a href="/about.html">Learn more about me</a>

---

<!-- 
 https://www.w3schools.com/howto/howto_css_two_columns.asp
-->
<style>
.row
{
  display: flex;
}
.column
{
  flex: 50%;
}
</style>

<div class="row">
  <div class="column">

## Pages

{% for post in site.pages %}
<li>
<a href="{{ post.url }}">{{ post.title }}</a>
</li>
{% endfor %}

  </div>
  <div class="column">

## Posts

{% for post in site.posts %}
<li>
<a href="{{ post.url }}">{{ post.title }}</a>
</li>
{% endfor %}

  </div>
</div>
