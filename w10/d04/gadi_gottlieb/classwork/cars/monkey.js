function Monkey(name){
  this.name = name;
  this.foodEaten = [];
}

Monkey.prototype.eatFood = function(food){
  this.foodEaten.push(food);
}

george = new Monkey("George");
