class Counter{
   constructor(value){
     this.value = value;
   }
    increment(){
      this.value++;
    }
    decrement(){
      this.value--;
    }
}


let myCounter = new Counter(0);

let positiveNum = document.querySelector("#positiveNum");
let negativeNum = document.querySelector("#negativeNum");
let inputNum = document.querySelector("#inputNum");


positiveNum.addEventListener("click", function(){
  myCounter.increment();
  inputNum.innerText = myCounter.value;
})

negativeNum.addEventListener("click", function(){
  myCounter.decrement();
  inputNum.innerText = myCounter.value;
})
