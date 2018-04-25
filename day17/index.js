// let myDiv = document.getElementById("elDiv")
//
// myDiv.innerHTML = productObject.products[0].body_html;

// console.log('making the request');
//
// let myPromise = axios.get('https://www.redbullshopus.com/products.json');
//
// console.log('made the request');


axios.get('https://www.redbullshopus.com/products.json')
.then(function(myResponse){
    console.log(myResponse.data.products);
    // myDiv.innerHTML = myResponse.data.products[0].body_html;

    for (var i = 0; i < myResponse.data.products.length; i++) {
      let newDiv = createProductElement(myResponse.data.products[i].body_html, myResponse.data.products[i].images[0].src );
      document.body.appendChild(newDiv)
      // console.log('hello');
      // // createProductElement.innerHTML = myResponse.data.products[i].body_html;
      // console.log('whatsup');
      // // if(myResponse.data.products[i].images.length > 0 ){
      // //   let newImg = document.createElement("img")
      // //   newDivs.appendChild(newImg)
      // //   newImg.src = myResponse.data.products[i].images[0].src;
      // // }
      // console.log();
    }


})

function createProductElement (description, imgSrc){
  var newDivs = document.createElement("div");
  newDivs.innerHTML = description;
  if(imgSrc != undefined){
   let newImg = document.createElement("img")
   newImg.src = imgSrc;
   newDivs.appendChild(newImg);
 }

  return newDivs;
}

// myDiv.innerHTML = myResponse.data.products[0].body_html;

console.log('after making the request');
