{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

<!-- block title -->
{% block title %}{{ config.title }}{% if theme.index_with_subtitle and config.subtitle %} - {{config.subtitle }}{% endif %}{% endblock %}
<!-- //end block title -->

<!-- page_class -->
{% block page_class %}
  {% if is_home() %} page-home {% endif %}
{% endblock %}
<!-- //end page_class-->

<!-- block content -->
{% block content %}
  <!-- content -->
  <section id="posts" class="posts-expand">
    {% for post in page.posts %}
      {{ post_template.render(post, true) }}
    {% endfor %}
  </section>
  <!-- //end content -->
  <!-- pagination -->
  {% include '_partials/pagination.swig' %}
  <!-- //pagination -->
{% endblock %}
<!-- //end block content -->

<!-- sider bar -->
{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
<!-- //end sider bar -->
