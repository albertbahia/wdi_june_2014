function Pet (options) {
  this.name = options.name;
  this.owner = options.owner;
}

Pet.prototype.introduce = function() {
  return "hi my name is " + this.name + "!"
};

function Cat (options) {
  Pet.call(this, options);
  this.favFood = options.favFood;
}

Cat.prototype = Object.create(Pet.prototype);

Cat.prototype.judgePerson = function(name) {
  return 'I am totally judging you ' + name + "!";
}

function Dog (options) {
  Pet.call(this, options);
  this.earType = options.earType;
}

Dog.prototype = Object.create(Pet.prototype);

Dog.prototype.bark = function() {
  return "Woof woof woof!!!"
};
