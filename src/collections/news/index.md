---
title: Articulos
nav:
  order: 3
---

Estos son los articulos de [blog.naiel.fyi]{.naielfyi} :

<div class="stack">

{% for entry in collections.news %}

  <article class="news">
    <h2 class="news__title"><a href="{{ entry.url }}">{{ entry.data.title }}</a></h2>
    <p class="news__meta">{{ entry.date | readableDate }}</p>
  </article>
{% endfor %}

</div>
