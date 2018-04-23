//This comes from data.js
let gifs = window.data.data;

console.log(gifs);

let myButton = document.querySelector('#generateButton');
let myGeneratedImage = document.querySelector('#generatedImage')


let elem = document.createElement("img");


myButton.addEventListener('click', function(){
  let rand = Math.floor(Math.random() * gifs.length + 1);
  document.getElementById("giphy").appendChild(elem);
  elem.src = gifs[rand].images.downsized_medium.url;
  console.log(elem.src);
});

// ['images']['downsized_medium']['url']

// document.getElementById("imageid").src="../template/save.png";





// selecting a random array item
// var selectFruit = ["Apple", "Orange", "Banana", "Cherry"];
// var pickAFruit = function () {
// var todaysFruit = selectFruit[Math.floor(Math.random() * 4)];
// return todaysFruit;
// };
