---
layout: page
title: Home
id: home
permalink: /
---
## Содержание сайта
- [[Мои статьи]]
- [[Мои рассказы]]
- [[Мои конспекты]]
- [[Мои рецензии]]
<br>
<br>

---
## Случайная заметка с сайта
{% assign random_note = site.notes | sample %}
- <a href="{{ random_note.url }}" class="internal-link">{{ random_note.title }}</a>
<br>
<br>

---
## Недавно обновленные заметки
<ul>
  {% assign recent_notes = site.notes | sort: "last_modified_at_timestamp" | reverse %}
  {% for note in recent_notes limit: 7 %}
    <li>
      {{ note.last_modified_at | date: "%Y-%m-%d" }} — <a class="internal-link" href="{{ site.baseurl }}{{ note.url }}">{{ note.title }}</a>
    </li>
  {% endfor %}
</ul>

<style>
  .wrapper {
    max-width: 46em;
  }
</style>
