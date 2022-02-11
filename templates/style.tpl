<style>
html{
    background-color: beige;
}
body{
    margin: 0px;
    padding: 20px;
}
.wrapper {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    grid-template-rows: 200px;
    grid-gap: 10px;
}
grid-item{
    display: flex;
    justify-content: center;
    align-items: center;
}
grid-item img{
    object-fit: cover;
    height: 200px;
    display:block;
}
</style>
