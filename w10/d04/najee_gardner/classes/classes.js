function Monkey(name) {
  this.name = name;
  this.foodsEaten = [];
}
Monkey.prototype.eatFood = function(food) {
  this.foodsEaten.push(food);
};

function Rectangle(height, width) {
  this.height = height;
  this.width = width;
}
Rectangle.prototype.area = function() {
  return this.height * this.width;
}
Rectangle.prototype.perimeter = function() {
  return this.height + this.width;
}

function Person(name, age) {
  this.name = name;
  this.age = age;
  this.energy = 5;
}
Person.prototype.introduce = function() {
  if (this.energy > 0) {
    return this.name;
  } else {
    return '';
  }
}
Person.prototype.walk = function() {
  if (this.energy > 0) {
    this.energy--;
    return true;
  } else {
    return false;
  }
}
Person.prototype.sleep = function() {
  this.energy = 5;
}
