---
layout: page
title: Home
id: home
permalink: /
---

## Добро пожаловать! Ассаламу аляйкум! Welcome! и даже 你好 👋

<strong>Коротко обо мне: Меня зовут Хусейн, и я - ✏️ писатель, 💻 аналитик данных и 💡 гик порядка. </strong> 📍 <i>Более подробно на странице</i> [[Об авторе]]!

<strong>Содержание сайта</strong>
- [[Мои статьи]]
- [[Мои рассказы]]
- [[Мои конспекты]]
- [[Мои рецензии]]

#### Случайная заметка с сайта

{% assign random_note = site.notes | sample %}

- <a href="{{ random_note.url }}" class="internal-link">{{ random_note.title }}</a>

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
