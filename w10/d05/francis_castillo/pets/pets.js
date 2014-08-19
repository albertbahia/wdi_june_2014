function Pet (options) {
  this.name = options.name;
  this.owner = options.owner;
}

Pet.prototype.introduce = function() {
  return "hi my name is " + this.name + "!"
};

function Cat (name, owner, favFood) {
  Pet.call(this, name, owner);
  this.favFood = favFood;
}

Cat.prototype = Object.create(Pet.prototype);

Cat.prototype.judgePerson = function(name) {
  return 'I am totally judging you ' + name + "!";
}

function Dog (name, owner, earType) {
  Pet.call(this, name, owner);
  this.earType = earType;
}

Dog.prototype = Object.create(Pet.prototype);

Dog.prototype.bark = function() {
  return "Woof woof woof!!!"
};
