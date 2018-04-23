// variables for adj1, adj2 and subject and get a handle

let adj1 = document.querySelector("#adj1");
let adj2 = document.querySelectorAll(".adj2");
let subj = document.querySelector("#subj");
let butt = document.querySelector("#butt");

let adjOne = document.querySelector("#adjOne");
let adjTwo = document.querySelectorAll(".adjTwo");
let subJ   = document.querySelector("#subJ")



butt.addEventListener("click", function(){
    console.log();
    adjOne.innerHTML = adj1.value;
});

butt.addEventListener("click", function(){
    console.log();
    adjTwo.innerHTML = adj2.value;
});

butt.addEventListener("click", function(){
    console.log();
    subJ.innerHTML = subj.value;
});







// let myInput = document.getElementById("myInput");
//
// let hInput = document.getElementById("hOne");
//
// myInput.addEventListener('keyup', function(){
//   console.log();
//   hInput.innerHTML = "Your wrote: " + myInput.value ;
// });
