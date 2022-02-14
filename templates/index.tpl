<html>
<head>
{% include 'accordion.tpl' %}
</head>
<body>
<div class="container">
{% for link,image,name in categories -%}
<div class="card">
<a href="{{ link }}">
<img src="{{ image }}"/>
<div class="card__head">{{name}}</div>
</a>
</div>
{% endfor %}
</div>
</body>
</html>

