var Monkey = function(name) {
  this.name = name;
  this.foodsEaten = [];
};

Monkey.prototype.eatFood = function(food) {
  this.foodsEaten.push(food);
  return 'yum';
};


var abu = new Monkey('Abu');
abu.name;
abu.foodsEaten;
abu.eatFood('bread');
abu.foodsEaten;
