<html>
<head>
{% include 'style.tpl' %}
{% include 'filter.tpl' %}
</head>
<body>
<div class='filter'>
<span>Filter:</span><input id='filterbox' type="text" />
</div>
<div class="wrapper">
{% for link,banner,name in items -%}
<grid-item name='{{ name }}'>
<a href="{{ link }}">
<img src="{{ banner }}"/>
<span class="title">{{name}}</span>
</a>
</grid-item>
{% endfor %}
</div>
</body>
</html>
