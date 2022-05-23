<html>
<head>
<meta charset="UTF-8">
{% include 'style_index.tpl' %}
</head>
<body>
<div class="wrapper">
{% for link,image,name,untranslated_name,color in categories -%}
<grid-item name="{{untranslated_name}}">
    <a href="{{ link }}">
        <img src="{{ image }}"/>
        <span class="title">{{name}}</span>
    </a>
</grid-item>
{% endfor %}
</div>
</body>
</html>

