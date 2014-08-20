function Pet(options) {
  this.name = options.name;
  this.owner = options.owner;
}
Pet.prototype.introduce = function () {
  return "Hi, My name is " + this.name + " and I belong to " + this.owener;
}

/////////////////////////////////////
function Cat ( name, owner, favFood ) {
  Pet.call(this, name, owner);
  this.favFood = favFood;
}
Cat.prototype = Object.create(Pet.prototype);
Cat.prototype.judgePerson = function ( name ) {
  return name + " is aweful! ";
}
Cat.prototype.introduce = function () {
  return "My name is " + this.name + " and this person "+this.owner+ " belongs to me.";
}

////////////////////////////////////
function Dog ( name, owner, earType ) {
  Pet.call(this, name, owner);
  this.earType = earType;
}
Dog.prototype = Object.create(Pet.prototype);
Dog.prototype.bark = function () {
  "Rrrrrrruffffffff Rrrrrrruffffffff";
}


