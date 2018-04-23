let myDiv = document.getElementById("intro");

console.log(myDiv);

myDiv.style.background = 'green';
let myContainers = document.getElementsByClassName('container');
console.log(myContainers);


for (let i = 0 ; i<myContainers.length ; i++) {
    myContainers[i].style.background = 'blue';
}
//myContainers is an array //se comporta como un array pero se llama Node List
// when you target several elements you are creating an array

// let myPelemets = document.getElementsByTagName("p")
//
// for (let i = 0 ; i<myPelemets.length ; i++) {
//     myPelemets[i].style.background = 'gold';
// }


//new way of selecting
//
// document.querySelector("#intro")
// document.querySelectorAll(".containers")
// document.querySelectorAll("p")


//put your name inside the first div
let myFirstDiv = document.getElementById('intro')
myFirstDiv.innerText = "Erisay";

//one more dive give it diferent id="intro2"
//put h1 with your name inside a div
let mySecondDiv = document.querySelector("#intro2")
mySecondDiv.innerHTML = "<h1>Erisay</h1>"





//event listener
let myDiv2 = document.getElementById('intro');

myDiv2.addEventListener('click', function(myEvent){
  console.log(myEvent);
  myDiv2.classList.add("hidden");
});
