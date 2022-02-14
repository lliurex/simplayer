<script type="text/javascript" src="include/jquery.min.js"></script>
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
    $(document).ready(function(){
        $("#filterbox").bind('input propertychange',
            function(){
                    if (this.value.length < 2){
                        $("grid-item").each(function(i,v){
                        // console.log($(v).attr('name')+' activated')
                        $(v).show()
                        })
                    }else{
                        $("grid-item:not([name*="+this.value+"])").each(function(i,v){
                            // console.log($(v).attr('name')+' disabled')
                            $(v).hide()
                        })
                    }

                }
        )
    })

</script>