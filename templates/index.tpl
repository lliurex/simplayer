<html>
<head>
{% include 'style.tpl' %}
</head>
<body>
<div class="wrapper">
{% for link,image in categories.items() -%}
<grid-item>
<a href="{{ link }}">
<img src="{{ image }}"/>
</a>
</grid-item>
{% endfor %}
</div>
</body>
</html>
