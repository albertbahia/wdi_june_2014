/////////////////////
// Pet constructor//
///////////////////
function Pet(name, owner) {
  this.name = name;
  this.owner = owner;
}

// Pet prototype function:
Pet.prototype.introduce = function() {
  return 'My name is ' + this.name + ' I belong to ' + this.owner;
};

// Instantiate a pet object old way:
theo = new Pet('Theodore', "Adam Bray");
theo.introduce()


/////////////////////
// Cat constructor//
///////////////////
function Cat(favoriteFood) {
  this.favoriteFood = favoriteFood;
}

// Cat prototype function:
Cat.prototype.judgePerson = function(personName) {
  return 'Cat is judging ' + personName;
};

// Instantiate a cat object
Cat.prototype = Object.create(Pet.prototype)
kitty = new Cat('fish');


/////////////////////
// Dog constructor//
///////////////////
function Dog(earType) {
  this.earType = earType;
}

// replaces the pet constructor's prototype function with this new shared/inherited one:
// Must do this before defining .bark()
// Reassigning the dog's prototype to fallback to Pet's prototype:
Dog.prototype = Object.create(Pet.prototype);

// Dog prototype function:
Dog.prototype.bark = function() {
  return 'woof woof';
}

// Instantiate a dog object:
jax = new Dog('floppy');
jax.earType;
jax.introduce();
jax.bark();
---------------------------------------------------------------------

var prototypeThatInheritsFromPet = Object.create(Pet.prototype);
Cat.prototype = prototypeThatInheritsFromPet;

// in one step:
Cat.prototype = Object.create(Pet.prototype);

----------------------------------------------------------------------
// This way won't let you inherit
Cat.prototype = {
  judgePerson: function() {
    return 'Im judging you';
  }
}


---------------------------------------------------------------------
/////////////////////////////////////////
// Part II: Inheriting Attributes //////
/////////////////////////////////////////

/////////////////////
// Pet constructor//
///////////////////
function Pet(name, owner) {
  this.name = name;
  this.owner = owner;
}

// Pet prototype function:
Pet.prototype.introduce = function() {
  return 'My name is ' + this.name + ' I belong to ' + this.owner;
};

/////////////////////////////
// Cat object constructor //
///////////////////////////
function Cat(name, owner, favFood) {

  // Can't do this bc changes what 'this' is:
  // Pet(name, owner);

  // so, must bind Pet to 'this':
  // var fxn = Pet.bind(this);
  // fxn(name, owner);

  // But two steps is clunky, do it in one:
  // I want the object I'm calling to be bound to the cat object:
  Pet.call(this, name, owner);
  this.favFood = favFood;
}

// telling the cat's prototype to fallback to the pet's prototype:
Cat.prototype = Object.create(Pet.prototype);

// What if we don't want cat to inherit pet's introduce fxn?
Cat.prototype.introduce = function() {
  return 'this is the cats special introduce function';
}

// instantiate new cat object:
garfield = new Cat('garfield', 'John', 'lasagna');
garfield.name
garfield.owner
garfield.owner
garfield.introduce()
garfield.judgePerson('John')


/////////////////////////////
// Dog object constructor //
///////////////////////////

function Dog(name, owner, earType) {
  Pet.call(this, name, owner);
  this.earType = earType;
}

Dog.prototype = Object.create(Pet.prototype);

Dog.prototype.bark = function() {
  return 'woof woof';
}

odie = new Dog('Odie', 'John', 'floppy');
odie.name
odie.owner
odie.owner
odie.introduce()
odie.bark()



---------------------------------------------------------------------
////////////////////////////////////////////////////
// Part III: What if we need to change code? //////
//////////////////////////////////////////////////

function Pet(options) {
  this.name = options.name;
  this.owner = options.owner;
  this.weight = options.weight;
}

// ^ Now if we add a new attribute, 'weight', you only need to change it in one
// place, and when you create a dog or cat object, it can choose which options
// to take
// If you don't pass them a weight, it just remains undefined

var options = {
  name: 'Garfield',
  owner: 'John'
}

garfield = new Pet(options)

/////////////////////////////
// Cat object constructor //
///////////////////////////
function Cat(options) {
  Pet.call(this.options);
  this.favFood = options.favFood;
}


/////////////////////////////
// Dog object constructor //
///////////////////////////
function Dog(options) {
  Pet.call(this.options);
  this.earType = options.earType;
}

Dog.prototype = Object.create = Object.create(Pet.prototype);

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
  favoriteFood: 'lasagna'
}

// create a new cat object with cat options
garfield = new Cat(catOptions);

var dogOptions = {
  name: 'Garfield',
  owner: 'John',
  earType: 'floopy'
}
