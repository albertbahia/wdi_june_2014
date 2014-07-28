function Monkey (name, species) {
  this.name = name;
  this.species = species;
  this.foodsEaten = [];

  this.eatSomething = function (food) {
    this.foodsEaten.push(food);
    return food;
  };

  this.introduce = function () {
    console.log("name: " + this.name, + "species: " + this.species, + "foods eaten: " + this.foodsEaten);
  };
}

var monkey1 = new Monkey('george', 'chimp', 'banana split');
var monkey2 = new Monkey('ugly', 'orangutan', 'apple');
var monkey3 = new Monkey('cutie', 'marmoset', 'pecan');
