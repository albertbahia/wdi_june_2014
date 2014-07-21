var drink = function(age) {
  if (age >= 21) {
    return true;
  } else {
    return false;
  }
}

var drinkable = drink(15);
console.log(drinkable);
