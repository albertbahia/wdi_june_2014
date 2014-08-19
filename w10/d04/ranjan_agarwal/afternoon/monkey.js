// Monkey class

// name - string
// foodsEaten - list of foods eaten starting as empty array
// eatFood(food) - pushes food into foodsEaten
// 



var Monkey = function(name) {
  this.name = name;
  this.foodsEaten = [];
};

Monkey.prototype.eatFood = function(food) {
  this.foodsEaten.push(food);
};

var george = new Monkey('George');