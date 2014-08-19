///////////////////
// Monkey class //
/////////////////

function Monkey(name) {
  this.name = name;
  this.foodsEaten = [];
}

Monkey.prototype.eatFood = function(food) {
  this.foodsEaten.push(food);
}

var lizaMonkey = new Monkey('Liza', 'bananas');
lizasCar.()
