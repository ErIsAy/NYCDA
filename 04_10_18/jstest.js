// /*Write a conditional that checks if a variable is less than 10. If it is, alert the user that their variable is less than 10.
// if it is not, let the user know what the variable was and that it was greater than 10.*/
// let i = prompt("enter a variable");
// if (i<10){
//   alert("Variable is less than 10")
// } else (
//   alert("Variable is greater than 10")
// )
// /*write a program that evaluates two things: temperature and the status of an air conditioner (on or off).
// If the temperature is warmer than 80, and the air conditioner is off, log "turn the ac on!".
// If the the temperature is warmer than 80 and the ac is on, log "this thing is broken!".
// if the temperature is colder than 60 and the air conditioner is on, log "brrr, turn this thing off".
// if the temperature is cooler than 80, and the ac is off,log "not worth the electricity. leave it off."*/
//
// let temp = prompt("Bro, Whats the temp?");
// let stat = prompt("is the ac on or off?");
//
// if(temp>80 && stat==="on"){
//   alert("turn the ac on!")
// } else if(temp>80 && stat==="off"){
//   alert("this thing is broken!")
// } else if(temp<60 && stat==="on"){
//   alert("brrr, turn this thing off")
// } else if(temp<80 && stat==="off"){
//   alert("not worth the electricity. leave it off.")
// }

let price = [33, 26, 99, 120, 12, 45];
let sum = 0;

for(var i = 0, len = price.length; i<len; i++){
  sum += price[i];
}

console.log("The sum is: " + sum);

for (i = 99; i > 1; i--) {
    console.log(i +" crows on the wall. " + i + " crows."
    + " 1 fell down and became a wight. " + (i-1) + " crows on the wall");
}
console.log(i + " crow on the wall. " + i + " single crow. "
+ "It fell down and became a wight. Theres no one left to defend Westeros now." )

// var myData = [['2013-01-22', 0], ['2013-01-29', 1], ['2013-02-05', 21]];
//
// var myTotal = 0;  // Variable to hold your total
//
// for(var i = 0, len = myData.length; i < len; i++) {
//     myTotal += myData[i][1];  // Iterate over your first array and then grab the second element add the values up
// }
//
// document.write(myTotal); // 22 in this instance

for (i=10; i>0; i--) {
  console.log("+");
}
