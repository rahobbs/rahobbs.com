---
layout: page
title: Cheat Sheets
permalink: /cheatsheets/
---

<div class="home">

  <div class="posts">
  <p>This collection of 'cheat sheets' primarily serves as a place for me to write up notes to solidify my own understanding, and as a place for quick lookup and review.</p>
    {% for post in paginator.cheatsheets %}
      <div class="post">
        <p class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</p>
        <a href="{{ post.url | prepend: site.baseurl }}" class="post-link"><h3 class="h2 post-title">{{ post.title }}</h3></a>
        <p class="post-summary">
          {% if post.summary %}
            {{ post.summary }}
          {% else %}
            {{ post.excerpt }}
          {% endif %}
        </p>
      </div>
    {% endfor %}
  </div>

  {% include pagination.html %}
</div>
