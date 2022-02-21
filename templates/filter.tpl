<script type="text/javascript" src="jquery/jquery.min.js"></script>
<style>
.filter{
    height:50px;
    font-family: sans-serif;
    text-align: end;
}
.filter input{
    margin-left: 10px;
    background-color: {{color}}10;
    border-radius: 10px;
    border-style: solid;
    border-color: {{color}}10;
}
</style>
<script>
    var filter_size = 0
    $(document).ready(function(){
        $("#filterbox").bind('input propertychange',
            function(){
                    $("grid-item").each(function(i,v){
                        $(v).show()
                    })

                    if (this.value.length != 0){
                        let filter_value = this.value
                        $("grid-item a span.title").each(function(){
                            if ($(this).text().toLowerCase().indexOf(filter_value.toLowerCase()) == -1){
                                $(this).parent().parent().hide()
                            }
                        })
                    }
                    
                    filter_size = this.value.length
                }
        )
    })
</script>