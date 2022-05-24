<style>
html{
    background-color: {{ color }}20 ;
}
body{
    margin: 0px;
    padding: 20px;
}
.wrapper {
    display: grid;
    grid-template-columns: repeat({{columns}},1fr);
    align-items: center;
    justify-items: center;
   /* grid-template-columns: repeat(3,33%);*/
   /* grid-template-rows: 200px;*/
    grid-gap: 10px;
}
grid-item{
    display: flex;
    justify-content: center;
    align-items: center;
    width: 30vw;
}
grid-item img{
    /* object-fit: cover; */
    /* width: 30vw; */
    height: 20vw;
    display:block;
    filter: opacity(50%);
    border-radius: 10px;
    max-width: 100%;
}
grid-item:hover img{
    /* object-fit: cover;*/
    filter: opacity(100%);
}
grid-item:hover span.title{
    font-weight: bold;
}
grid-item a span.title{
    color: #666666;
    display: block;
    padding: 5px;
    text-transform: capitalize;
    text-align: center;
    font-family: sans-serif;
    font-size: xxx-large;

}
grid-item>*{
    text-decoration: none;
}
grid-item{
    border-radius: 10px;
    padding: 5px;
    background-color: #f5f5dc30;
}
grid-item:hover{
    background-color: {{color}}50;
}
grid-item:hover a span.title{
    color: #333333;
}
grid-item a span{
    margin-top: 30px;
}
grid-item[name="physics"]:hover{
    background-color: #0000ff50;
}
grid-item[name="physics"] a img{
    filter: invert(9%) sepia(94%) saturate(7497%) hue-rotate(248deg) brightness(88%) contrast(145%) opacity(25%);
}
grid-item[name="math"]:hover{
    background-color: #ff000050;
}
grid-item[name="math"] a img{
    filter: invert(23%) sepia(92%) saturate(6223%) hue-rotate(355deg) brightness(98%) contrast(120%) opacity(25%);
}
grid-item[name="chemistry"]:hover{
    background-color: #82008250;
}
grid-item[name="chemistry"] a img{
    filter: invert(11%) sepia(80%) saturate(6170%) hue-rotate(296deg) brightness(69%) contrast(107%) opacity(25%);
}
grid-item[name="earth-science"]:hover{
    background-color: #82553c50;
}
grid-item[name="earth-science"] a img{
    filter: invert(33%) sepia(72%) saturate(335%) hue-rotate(338deg) brightness(89%) contrast(87%) opacity(25%);
}
grid-item[name="biology"]:hover{
    background-color: #00ff0050;
}
grid-item[name="biology"] a img{
    filter: invert(32%) sepia(56%) saturate(4603%) hue-rotate(109deg) brightness(109%) contrast(101%) opacity(25%);
}
</style>
