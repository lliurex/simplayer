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
    grid-template-columns: repeat(3,1fr);
   /* grid-template-rows: 200px;*/
    grid-gap: 10px;
}
grid-item{
    display: flex;
    justify-content: center;
    align-items: center;
}
grid-item img{
    /* object-fit: cover; */
    width: 30vw;
    height: 20vw;
    display:block;
    filter: opacity(50%);
    border-radius: 10px;
}
grid-item:hover img{
    /* object-fit: cover;*/
    filter: opacity(100%);
}
grid-item:hover span.title{
    font-weight: bold;
}
grid-item a span.title{
    color: #333333;
    display: block;
    padding: 5px;
    text-transform: capitalize;
    text-align: center;
    font-family: sans-serif;

}
grid-item>*{
    text-decoration: none;
}
grid-item{
    border-radius: 10px;
    padding: 5px;
    background-color: {{color}}30;
}
grid-item:hover{
    background-color: {{color}}50;
}
</style>
