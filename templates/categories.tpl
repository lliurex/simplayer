<html>
<head>
{% include 'style.tpl' %}
</head>
<body>
<div class="wrapper">
{% for link,banner in items.items() -%}
<grid-item>
<a href="{{ link }}">
<img src="{{ banner }}"/>
</a>
</grid-item>
{% endfor %}
</div>
</body>
</html>
