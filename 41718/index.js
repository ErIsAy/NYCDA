// Do the following in javascript:

// - Target all input fields on the html page using querySelectorAll() and change their border color to red
// - when the 'do something' button is clicked, change the color of both boxes to green.
// - when the 'do something' button is clicked, change the text each 'This is a random span' span to 'you are a JS ninja'

let input = document.querySelectorAll(".input");

input[0].style.borderColor = "red";





let myButton = document.querySelector("#submit-button");

let boXes = document.querySelectorAll(".box")
let spans  = document.querySelectorAll(".nycda-class");


myButton.addEventListener("click", function(){
		console.log("myButton");
			for(i = 0 ; i < spans.length ; i++){
				boXes[i].style.background = "green";
			//make another loop	spans[i].innerText = "you are a JS ninja";
			}
});





// let allBoxes = document.getElementsByClassName("boxes");
// buttonElement.addEventListener("click", function() {
// 	for (vlet i = 0; i < allBoxes.length; i++) {
// 		allBoxes[i].style.background = "green";
// 	}

// })