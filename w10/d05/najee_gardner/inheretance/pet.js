function Pet(options) {
  this.name = options.name;
  this.owner = options.owner;
}
Pet.prototype.introduce = function() {
  return 'Hello, I am ' + this.name;
}

function Cat(options) {
  Pet.call(this, options);
  this.favFood = options.favFood;
}
Cat.prototype = Object.create(Pet.prototype);
Cat.prototype.judgePerson = function() {
  return 'You aren\'t so great, ' + this.owner;
};

function Dog(options) {
  // this.constructor(name, owner);
  Pet.call(this, options);
  this.earType = options.earType;
}
Dog.prototype = Object.create(Pet.prototype);
Dog.prototype.bark = function() {
  return 'Woof!';
};
