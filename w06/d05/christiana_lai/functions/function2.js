// * Write a function to accept an age and returns
//   * true if you can drink
//   * false if you cannot drink

function canYouDrink(age) {
  if (age >= 21) {
    return true;
  } else {
    return false;
  }
}

if (canYouDrink(25)) {
  console.log("25 year olds can drink");
} else {
  console.log("25 years olds can't drink");
}


if (canYouDrink(18)) {
  console.log("18 year olds can drink");
} else {
  console.log("18 years olds can't drink");
}
