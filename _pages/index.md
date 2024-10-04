---
layout: page
title: Home
id: home
permalink: /
---

# Добро пожаловать! Ассаламу аляйкум! Welcome! и даже 你好 👋

<div style="padding: 3em 1em; background: #f5f7ff; border-radius: 4px;">
ОБО МНЕ:  
✏ Писатель: Пишу книги, рассказы, курсы и все, что можно писать.  
💻 Аналитик: Профессионально считаю циферки.  
💡 Гик письма и порядка: Комбинирую две эти страсти для пользы людям.  
📍 Более подробно на странице [[Обо мне]]!
</div>


<strong>Содержание сайта</strong>
- [[Мои рассказы]]
- [[Мои конспекты]]
- [[Мои статьи]]
- [[Мои рецензии]]

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
