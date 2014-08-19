// * Monkey class
//   * name - string
//   * foodsEaten - list of foods eaten starting as empty array
//   * eatFood(food) - pushes food into foodsEaten

function Monkey(name, foodsEaten) {
  this.name = name;
  this.foodsEaten = foodsEaten;
}

Monkey.prototype.eatFood = function(food) {
  this.foodsEaten.push(food);
}
