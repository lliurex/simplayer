{# https://codepen.io/bbx/pen/Jxoqdg #}

<style>
body {
  margin: 0;
  min-height: 100vh;
  /* background: #000; */
  background: beige;
  font-family: sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
}
.container {
  display: flex;
  position: absolute;
  top: 10%;
  justify-content: center;
  align-items: center;
  /* margin: 3vmin; */
  /* overflow: hidden; */
  /* transform: skew(5deg) */;
}
.container .card {
  flex: 1;
  transition: all 1s ease-in-out;
  /* height: 75vmin; */
  height: 27vmin;
  position: relative;
}
.container .card .card__head {
  color: #333333;
  background: rgba(0, 0, 0, 0.25);
  padding: 0.5em;
  /* transform: rotate(-90deg); */
  transform-origin: 0% 0%;
  transition: all 0.5s ease-in-out;
  /* min-width: 100%; */
  min-width: 95%;
  text-align: center;
  position: absolute;
  bottom: 0;
  left: 0;
  font-size: 1em;
  white-space: nowrap;
  text-transform: capitalize;
}
.container .card:hover {
  flex-grow: 10;
}
.container .card:hover img {
  /* filter: grayscale(0); */
  filter: opacity(100%);
}
.container .card:hover .card__head {
  text-align: center;
  top: calc(100% - 2.2em);
  /* color: white; */
  color: #333333;
  background: rgba(0, 0, 0, 0.5);
  font-size: 2em;
  /* transform: rotate(0deg); */
  transform: translateY(75px);
  /* skew(-5deg); */
}
.container .card img {
  /* width: 100%; */
  width: 80%;
  margin-left; 43px;
  height: 100%;
  /* object-fit: cover; */
  transition: all 1s ease-in-out;
  /* filter: grayscale(100%); */
  filter: opacity(25%);
}
.container .card:not(:nth-child(5)) {
  margin-right: 1em;
}

{# https://codepen.io/sosuke/pen/Pjoqqp #}

.container .card:nth-child(4) img{
    filter: invert(23%) sepia(92%) saturate(6223%) hue-rotate(355deg) brightness(98%) contrast(120%) opacity(25%);
}
.container .card:nth-child(3) img{
    filter: invert(33%) sepia(72%) saturate(335%) hue-rotate(338deg) brightness(89%) contrast(87%) opacity(25%);
}
.container .card:nth-child(1) img{
    filter: invert(32%) sepia(56%) saturate(4603%) hue-rotate(109deg) brightness(109%) contrast(101%) opacity(25%);
}
.container .card:nth-child(5) img{
    filter: invert(9%) sepia(94%) saturate(7497%) hue-rotate(248deg) brightness(88%) contrast(145%) opacity(25%);
}
.container .card:nth-child(2) img{
    filter: invert(11%) sepia(80%) saturate(6170%) hue-rotate(296deg) brightness(69%) contrast(107%) opacity(25%);
}
.container .card:nth-child(4) .card__head{
    background-color: rgba(255,0,0,15%);
}
.container .card:nth-child(3) .card__head{
    background-color: rgba(130,85,60,15%);
}
.container .card:nth-child(1) .card__head{
    background-color: rgba(0,255,0,15%);
}
.container .card:nth-child(5) .card__head{
    background-color: rgba(0,0,255,15%);
}
.container .card:nth-child(2) .card__head{
    background-color: rgba(130,0,130,15%);
}
</style>
