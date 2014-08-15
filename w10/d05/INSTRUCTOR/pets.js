function Pet(options) {
  this.name = options.name;
  this.owner = options.owner;
  this.weight = options.weight;
}

Pet.prototype.introduce = function() {
  return 'My name is ' + this.name + ' and I belong to ' + this.owner + '.';
};

// ----------------------------------

function Cat(options) {

  // var fxn = Pet.bind(this);
  // fxn(name, owner);
  Pet.call(this, options);
  this.favFood = options.favFood;
}

Cat.prototype = Object.create(Pet.prototype);

Cat.prototype.judgePerson = function(name) {
  return 'I am totally judging you, ' + name + '.';
};

Cat.prototype.introduce = function() {
  return 'My name is ' + this.name + ' and ' + this.owner + ' belongs to me.';
}

// ----------------------------------

function Dog(options) {
  Pet.call(this, options)
  this.earType = options.earType;
}

Dog.prototype = Object.create(Pet.prototype);

Dog.prototype.bark = function() {
  return 'Woof!';
}


var petOptions = {
  name: 'Spot',
  owner: 'John'
}

var catOptions = {
  name: 'Garfield',
  owner: 'John',
  favFood: 'lasagna'
}

var dogOptions = {
  name: 'Odie',
  owner: 'John',
  earType: 'floopy'
}
