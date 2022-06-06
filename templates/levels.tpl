<script>
    levels = { easy : '{{easy}}', normal : '{{normal}}', hard : '{{hard}}' }
    msg = '{{msg}}'
    $(document).ready(function() {
        let any = 0
        for (const nameprop in levels){
            let items = $("*[level="+nameprop+"]")
            if (items.length > 0){
                if (levels[nameprop] == 'False' ){
                    items.hide()
                }else{
                    items.show()
                    any += 1
                }
            }
        }
        if (any == 0 && msg.length > 0){
            $('.wrapper').append($('<span class="msg">{{msg}}</span>'))
        }
    })
</script>