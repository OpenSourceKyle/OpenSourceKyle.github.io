---
layout: home
permalink: /
author_profile: true
---

{% comment %}
Reference: https://stackoverflow.com/a/74307051 -->
{% endcomment %}

{% capture source %}{% include_relative pages.md %}{% endcapture %}
{{ source | split: "---" | last }}
