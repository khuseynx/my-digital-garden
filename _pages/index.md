---
layout: page
title: Home
id: home
permalink: /
---

# Добро пожаловать! Ассаламу аляйкум! Welcome! и даже 你好 👋

<p style="padding: 3em 1em; background: #f5f7ff; border-radius: 4px;">
  Привет, странник! Ты каким-то чудом попал на мой личный сайт. Если ты хочешь узнать кто я такой, переходи на страницу [[Обо мне]]!
</p>

<strong>Недавно обновленные заметки</strong>

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
