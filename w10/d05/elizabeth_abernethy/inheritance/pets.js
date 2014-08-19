function Pet(name, owner) {
  this.name = name;
  this.owner = owner;
}


Pet.prototype.introduce = function() {
  return ("Hi! My name is " + this.name + " and I belong to " + this.owner);
};

// ----------------------- cat ------------------------

function Cat(name, owner, favoriteFood) {
  // var fxn = Pet.bind(this);
  // fxn(name, owner);
  Pet.call(this, name, owner);
  this.favoriteFood = favoriteFood;
}

// > reset the generic cat prototype to a new object that inherits from Pet
Cat.prototype = Object.create(Pet.prototype);


Cat.prototype.judgePerson = function(name) {
  return ("You are the worst, " + name + ". Really.");
};

Cat.prototype.introduce = function() {
  return ("Hi! My name is " + this.name + " and " + this.owner + " belongs to me.");
};


// ----------------------- dog ------------------------

function Dog(name, owner, earType) {
  Pet.call(this, name, owner);
  this.earType = earType;
}

Dog.prototype = Object.create(Pet.prototype);

Dog.prototype.bark = function() {
  return "Woof!";
};
