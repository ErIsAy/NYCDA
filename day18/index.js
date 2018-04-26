let signUrl = {
aries: "http://courtneysgamecoderocks.com/ZodiacProject/img/ariesSign.png" ,
taurus:"http://courtneysgamecoderocks.com/ZodiacProject/img/taurusSign.png" ,
gemini:"http://courtneysgamecoderocks.com/ZodiacProject/img/geminiSign.png" ,
cancer:"http://courtneysgamecoderocks.com/ZodiacProject/img/cancerSign.png" ,
leo:"http://courtneysgamecoderocks.com/ZodiacProject/img/leoSign.png" ,
virgo:"http://courtneysgamecoderocks.com/ZodiacProject/img/virgoSign.png" ,
libra:"http://courtneysgamecoderocks.com/ZodiacProject/img/libraSign.png" ,
scorpio:"http://courtneysgamecoderocks.com/ZodiacProject/img/scorpioSign.png" ,
sagittarius:"http://courtneysgamecoderocks.com/ZodiacProject/img/saggitariusSign.png" ,
capricorn:"http://courtneysgamecoderocks.com/ZodiacProject/img/capricornSign.png" ,
aquarius:"http://courtneysgamecoderocks.com/ZodiacProject/img/aquariusSign.png" ,
pisces:"http://courtneysgamecoderocks.com/ZodiacProject/img/piscesSign.png"
};

// event listener on buttonOn
let buttonOn = document.getElementById('buttonOn')

buttonOn.addEventListener("click", function(){
  astSign()
  console.log("button event");
})

//function to get zodiac:
function astSign() {
	console.log("working")

	let userInput = document.getElementById("your-sign").value.toLowerCase()

  axios.get(`https://node-horoscopes.herokuapp.com/api/horoscopes/today/${userInput}`)
  .then(function(myResponse){
    let sign = document.getElementById("yourSign")
    let range = document.getElementById("birthdayRange")
    let attributes = document.getElementById("attributes")
    let img = document.getElementById("zodiacImage")

    sign.innerHTML = myResponse.data.sign;
    range.innerHTML = myResponse.data.date;
    attributes.innerHTML = myResponse.data.horoscope;
    img.src = signUrl[userInput];
  })

}

//second time
let buttonOnTwo = document.getElementById('buttonOnTwo')

buttonOnTwo.addEventListener("click", function(){
  astSignTwo()
  console.log("button event Two");
})


function astSignTwo() {
	console.log("working")

  let userInput = document.getElementById("your-sign").value.toLowerCase()
	let userInputTwo = document.getElementById("your-signTwo").value.toLowerCase()

  axios.get(`https://node-horoscopes.herokuapp.com/api/horoscopes/dating/${userInput}/${userInputTwo}`)
  .then(function(myResponse){
    let signTwo = document.getElementById("yourSignTwo")
    let rangeTwo = document.getElementById("birthdayRangeTwo")
    let attributesTwo = document.getElementById("attributesTwo")
    let imgTwo = document.getElementById("zodiacImageTwo")

    signTwo.innerHTML = myResponse.data.text;
    console.log(myResponse)
  })

}




  // 		if(userInput == zodiac[i].zodiacName) {
  // 			sign.innerHTML = zodiac[i].zodiacName

  // 			range.innerHTML = zodiac[i].birthdayRange
  // 			attributes.innerHTML = zodiac[i].attributes
  // 			img.src = zodiac[i].picture
  // 			return
  // 		} else {
  // 			sign.innerHTML = "oops! That's not a sign. Try again"
  // 			range.innerHTML = " "
  // 			attributes.innerHTML = " "
  // 			img.src = "http://courtneysgamecoderocks.com/ZodiacProject/img/wrong.png"
  // 		}
