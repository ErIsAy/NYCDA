class Student{
  constructor(myFname, myLname){
    this.fname = myFname;
    this.lname = myLname;
    this.assignmentScores = [];
    this.averageScore = 0;
    this.topScore = 0;
  }
  getFullname(){
    return this.fname + " " + this.lname;
  }
  addScore(score) {
    this.assignmentScores.push(score);

    let arrSum= 0 ;

    for(let i = 0 ; i<this.assignmentScores.length ; i++){
     arrSum = arrSum + this.assignmentScores[i];
    }
    this.averageScore = arrSum / this.assignmentScores.length;

    let newtopScore = 0;

    for(let i = 0 ; i < this.assignmentScores.length ; i++){
     if (this.assignmentScores[i] > newtopScore){
       newtopScore = this.assignmentScores[i];
     }
    }
    this.topScore = newtopScore;
  }
  removeScore(score){
   let  toRemove = this.assignmentScores.indexOf(score);
   this.assignmentScores.splice(toRemove, 1)
   // funcion update everything
  }
}
//updateAverageAndTopScore() {

}

  let student = new Student("Juan", "Lopez");

  console.log(student.getFullname());
  student.addScore(50);
  console.log(student.averageScore);
  console.log(student.topScore);
  student.addScore(100);
  console.log(student.averageScore);
  console.log(student.topScore);
  student.removeScore(50)
  console.log(student.averageScore);


//to add event
let firstName = document.querySelector("#firstName");
let lastName = document.querySelector("#lastName");
let score = document.querySelector("#score");
let addScoreButton = document.querySelector("#addScoreButton");
//to affect
let fullName = document.querySelector("#fullName");
let avgScore = document.querySelector("#avgScore");
let topScore = document.querySelector("#topScore");

let myStudent = new student('','');


firstName.addEventListener("keyup", function(){
  fname = firstName.value;
  lname = lastName.value;

  console.log(fname);
  // console.log(typingL);
  fullName.innerText = fname + " " + lname ;
});

console.log(  getFullname() );

//
//
// lastName.addEventListener("keyup", function(){
//   let typing = lastName.value;
//   console.log(typing);
//   fullName.innerText = typing;
// });










// let butt = document.querySelector("#buttOn");
// let imagen = document.querySelector("#imageN");
//
// butt.addEventListener("click", function(){
//   if (imagen.style.display === "none") {
//       imagen.style.display = "block";
//       butt.innerText = "Hide";
//   } else {
//       imagen.style.display = "none";
//       butt.innerHTML = "Show";
//   }
//   console.log("lol");
// });
