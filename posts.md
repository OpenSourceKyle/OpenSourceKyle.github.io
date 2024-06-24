---
title: Posts
---
These posts are very much like a journal or diary -- they are not meant to be perfect nor reflect my beliefs well. I use these to get thoughts out of my head -- some turn into ideas and others are best forgotten (or left here). Regardless, here they are.

<h2>Latest Posts</h2>

<ul>
  {% for post in site.posts %}
    <li>
        <h3><a href="{{ post.url }}">{{post.date | date: "%d %b %Y" }} - {{ post.title }}</a></h3>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>
