function Monkey(name, foodsEaten) {
  this.name = name;
  this.foodsEaten = foodsEaten;
}

Monkey.prototype.eatFood = function(food) {
  this.foodsEaten.push(food);
};

var abu = new Monkey('Abu', []);
