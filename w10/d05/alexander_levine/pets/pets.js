function Pet(options) {
  this.name = options.name;
  this.owner = options.owner;
}

Pet.prototype.introduce = function() {
  return "Hello! my name is " + this.name;
};

function Cat(options) {
  Pet.call(this, options);
  this.favoriteFood = options.favoriteFood;
}

Cat.prototype = Object.create(Pet.prototype);

Cat.prototype.judgePerson = function(name) {
  return this.name + " judges " + name + " and walks away";
};

Cat.prototype.introduce = function() {
  return 'My name is ' + this.name + ' and I own ' + this.owner + '.';
};

function Dog(options) {
  Pet.call(this, options);
  this.earType = options.earType;
}

Dog.prototype = Object.create(Pet.prototype);

Dog.prototype.bark = function() {
  return "roof roof";
};

var petOptions = {
  name: 'George',
  owner: 'Borris'
};

var catOptions = {
  name: 'Garfield',
  owner: 'John',
  favoriteFood: 'lasagna'
};

var dogOptions = {
  name: 'Odie',
  owner: 'John',
  earType: 'Floopy'
};
