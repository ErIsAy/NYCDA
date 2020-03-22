// // 1
// let names = ["juan", "maria", "mario"];
//
// //let newNames = names.map(name => `Hello ${name}`)
// let newNames = names.map(function(name){return `Hello ${name}`})
// console.log(newNames);
//
//2
// let yourTeacher = "Juan";
// function bestTeacher(){
//     return(`${yourTeacher} is the best teacher in the world`);
// };
// console.log( bestTeacher() );
//
// //3
// let newStudentfunction = names.map(function(name){
//  return`Welcome to NYCDA ${name}. Enjoy your stay`;
// })
// console.log(newStudentfunction);




// function calculator(i, x, y){
//   if (i==="add"){
//      return  x+y;
//   } else if (i==="subtract"){
//      return x-y;
//   } else if (i==="divide"){
//      return x/y;
//   } else if (i==="multiply"){
//      return x*y;
//   }
// }
//
// let answer = calculator("add", 4, 2)
// console.log(answer) // 6
// answer = calculator("subtract", 4, 2)
// console.log(answer) // 2
// answer = calculator("divide", 4, 2)
// console.log(answer) // 2
//  answer = calculator("multiply", 4, 2)
// console.log(answer) // 8





function ask(question, answer){
 var response = prompt(question);

 if(response === answer){
   return 1;
 }else {
   return 0;
 }
}

var questions = [
"Was Kim born in 1985?",
"Will Rob get out of jail?",
"Does North seem happy?",
"Kanye released 'Heartless' in 2008?"
];

var answers = [
"yes",
"no",
"no",
"yes"
];

for (var i = 0, j = 0; i < questions.length; i++){
  var asking = ask(questions[i], answers[i]);
  if (asking == 1){
    j++
  }
}
console.log("Your score is " + j + " out of " + i);
