function Pet(name, owner) {
  this.name = name;
  this.owner = owner;
}

Pet.prototype.introduce = function() {
  return "hello my name is " + this.name;
};

function Cat(name, owner, favFood) {
  Pet.call(this, name, owner);
  this.favFood = favFood;
}

Cat.prototype = Object.create(Pet.prototype);


Cat.prototype.judgePerson = function(name) {
  return "-.- " + name;
};

var garfield = new Cat('lasagna');
garfield.introduce();
garfield.judge('odie');
garfield.name = 'Garfield';
garfield.owner = 'Jon';


function Dog(name, owner, earType) {
  Pet.call(this, name, owner);
  this.earType = earType;
}

Dog.prototype = Object.create(Pet.prototype);

Dog.prototype.bark = function() {
  return 'woof';
};

odie = new Dog('Odie', 'Jon', 'Brown');
odie.bark();
odie.introduce();


// refactoring pet class

function Pet(options) {
  this.name = options.name;
  this.owner = options.owner;
}
Pet.prototype.introduce = function() {
  return "hello my name is " + this.name;
};
var options = {
  name: 'Garfield',
  owner: 'Jon'
};


function Cat(options) {
  Pet.call(this, options);
  this.favFood = options.favFood;
}

Cat.prototype = Object.create(Pet.prototype);


Cat.prototype.judgePerson = function(name) {
  return "-.- " + name;
};

var catOptions = {
  name: 'Garfield',
  owner: 'Jon',
  favFood: 'lasagna'
};

function Dog(options) {
  Pet.call(this, options);
  this.earType = options.earType;
}

Dog.prototype = Object.create(Pet.prototype);

Dog.prototype.bark = function() {
  return 'woof';
};


var dogOptions = {
  name: 'Odie',
  owner: 'Jon',
  earType: 'brown',
  favFood: 'whatever Garfield eats'
};
