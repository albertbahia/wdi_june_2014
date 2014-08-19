
function Pet(options) {
  this.name = options.name;
  this.owner = options.owner;
};

Pet.prototype.introduce = function() {
  return 'hi thur, im ' + this.name
};


function Cat(options) {
  this.favoriteFood = options.favoriteFood;
  Pet.call(this, options)
};

Cat.prototype = Object.create(Pet.prototype);

Cat.prototype.judgePerson = function(person_name) {
  return 'u r....v dumb homin ' + person_name
};


function Doge(options) {
  Pet.call(this, options);
  this.earType = options.earType;
};

Doge.prototype = Object.create(Pet.prototype);

Doge.prototype.bark = function() {
  return 'arrrOOF'
};
