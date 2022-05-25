<html>
<head>
<meta charset="utf-8">
{% include 'style.tpl' %}
{% include 'filter.tpl' %}
<script>
    easy = '{{easy}}'
    normal = '{{normal}}'
    hard = '{{hard}}'

$(document).ready(function() {
    //let params = new URLSearchParams(window.location.search)
    //let easy = params.get('easy')
    //let normal = params.get('normal')
    //let hard = params.get('hard')
    if (easy == 'False') {
        $('*[level=easy]').hide()
    }else{
        $('*[level=easy]').show()
    }
    if (normal == 'False') {
        $('*[level=normal]').hide()
    }else{
        $('*[level=normal]').show()
    }
    if (hard == 'False') {
        $('*[level=hard]').hide()
    }else{
        $('*[level=hard]').show()
    }
})
</script>
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
