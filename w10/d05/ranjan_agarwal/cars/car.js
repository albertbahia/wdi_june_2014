// var carFunctions = {
//   drive: function() {
//     this.fuel--;
//     return 'Vroom';
//   },
//   refuel: function() {
//     this.fuel = 100;
//   }
// };

var Car = function(model, color) {
  this.model = model;
  this.color = color;
  this.fuel = 100;
}

Car.prototype.drive = function() {
  this.fuel--;
  return 'Vroom!';
};

Car.prototype.refuel = function() {
  this.fuel = 100;
};

var dbNine = new Car('Aston Martin DB-9', 'Teal');

var Pet = function(options) {
  this.name = options.name;
  this.owner = options.owner;
}

Pet.prototype.introduce = function() {
  return 'Hi my name is ' + this.name + ' and I belong to ' + this.owner;
}

function Cat(options) {

  Pet.call(this, options);

  this.favFood = options.favFood;
}

Cat.prototype = Object.create(Pet.prototype);

Cat.prototype.judgePerson = function(person) {
  return person + ' is so weird!'
}

Cat.prototype.introduce = function() {
  return 'Hi my name is ' + this.name + ' and I belong to' + this.owner + ',meow';
}

function Dog(options) {
  Pet.call(this, options);
  this.earType = options.earType;
}

Dog.prototype = Object.create(Pet.prototype);

Dog.prototype.bark = function() {
  return 'Woof!'
}

// meow = new Cat('Fish')
// meow.name = 'Garf';
// meow.owner = 'John';
// meow.introduce();







