<html>
<head>
{% include 'style.tpl' %}
</head>
<body>
<div class="wrapper">
{% for link,banner,name in items -%}
<grid-item>
<a href="{{ link }}">
<img src="{{ banner }}"/>
<span class="title">{{name}}</span>
</a>
</grid-item>
{% endfor %}
</div>
</body>
</html>
