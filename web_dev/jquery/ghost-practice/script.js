console.log('WE ARE CONNECTED');

var header = document.getElementsByTagName("h1");
var header = header[0];
header.style.border = "10px solid orange";
header.style.fontSize = "350%";

var list = document.getElementsByClassName("list");
var list = list[0];
list.style.fontSize = "200%";

// EVENT
// var ghost = document.getElementById("ghost-photo");

// function voilaGhost() {
//   ghost.style.visibility = "hidden";
// }

// var disappear = document.getElementById("disappear");
// disappear.addEventListener("click", voilaGhost);

// function ahhhGhost() {
//   ghost.style.visibility = "visible";
// }

// var reveal = document.getElementById("reveal");
// reveal.addEventListener("click", ahhhGhost);

$(document).ready(function(){

    $("#disappear").click(function(){
      $("#ghost-photo").fadeOut(1000);
    });

    $("#reveal").click(function(){
      $("#ghost-photo").fadeIn(500);
    });
});