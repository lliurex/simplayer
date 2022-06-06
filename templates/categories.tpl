<html>
<head>
<meta charset="utf-8">
{% include 'style.tpl' %}
{% include 'filter.tpl' %}
{% include 'levels.tpl' %}
</head>
<body>
<div class='filter'>
<span>{{filter_text}}:</span><input id='filterbox' type="text" />
</div>
<div class="wrapper">
{% for link,banner,name,level in items -%}
<grid-item name='{{ name }}' level='{{level}}'>
<a href="{{ link }}">
<img src="{{ banner }}"/>
<span class="title">{{name}}</span>
</a>
</grid-item>
{% endfor %}
</div>
</body>
</html>
