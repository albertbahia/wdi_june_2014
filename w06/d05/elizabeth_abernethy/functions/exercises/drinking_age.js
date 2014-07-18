// Write a function to accept an age and returns
  // true if you can drink
  // false if you cannot drink



var drinking_age = function(age) {
  if (age >= 21) {
    return true;
  } else {
    return false;
  }
};

// returns stop execution of the function

var result = drinking_age(21);
var result2 = drinking_age(20);
var result3 = drinking_age(25);

console.log(result);
console.log(result2);
console.log(result3);




// ------------------------------ alternative ------------------------------

function canYouDrink(age) {
  if (age >= 21) {
    return true;
  } else {
    return false;
  }
}

if (canYouDrink(25)) {
  console.log("25 year-olds can drink");
} else {
  console.log("25 year-olds cannot drink");
}

if (canYouDrink(18)) {
  console.log("18 year-olds can drink");
} else {
  console.log("18 year-olds cannot drink");
}
