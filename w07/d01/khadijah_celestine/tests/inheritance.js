function Animal(name, breed, fur_color, weight, age) {
  this.name = name;
  this.breed = breed;
  this.fur_color = fur_color;
  this.weight = weight;
  this.age = age;
}

function Cat(hairballs) {
  this.base = Animal;
  this.base(true, true, true, true, true);

  this.hairballs = hairballs;

  this.meow = function() {
  }
  // how to write toString method? HOw to get object name and object parent name?
  this.toString = function() {
    //return this.name + ' is a ' + this.constructor + ' kind of ' + this.base + '.'; 
    return this.name + ' is a ' + this.breed + ' with ' + this.fur_color + ' colored fur, that weighs ' + this.weight + ' and is ' + this.age + ' years old, and happens to have ' + this.hairballs + ' hairballs.';
  } 

}
Cat.prototype = new Animal;

var kitty = new Cat();
kitty.name = 'lala';
kitty.hairballs = 3;
console.log(kitty.toString());
console.log(kitty);



