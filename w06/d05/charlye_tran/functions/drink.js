// * Write a function to accept an age and returns
//   * true if you can drink
//   * false if you cannot drink

function canYouDrink(age){
  if (age >= 21){
    console.log("You can Drink!");
  } else (age <21){
    console.log("You cannot drink!");
  }
}

canYouDrink(18);
canYouDrink(21);
canYouDrink(22);
