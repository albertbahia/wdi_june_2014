// * Monkey class
//   * name - string
//   * foodsEaten - list of foods eaten starting as empty array
//   * eatFood(food) - pushes food into foodsEaten


var monkeyFxns = {
  eatFood: function(food) {
    this.foodsEaten.push(food);
  }
};

function Monkey(name) {
  this.name = name;
  this.foodsEaten = [];
};

Monkey.prototype = monkeyFxns;

var gertrude = new Monkey('gertrude');
