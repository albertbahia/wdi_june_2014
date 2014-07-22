// Create a monkey object, which has the following properties:
// * name
// * species
// * foodsEaten
//
// And the following methods:
// * eatSomething(thingAsString)
// * introduce - introduces self, with name, species, and what it's eaten.
//
// Create 3 monkeys total. Make sure all 3 monkeys have all properties set and
// methods defined.
//
// Exercise your monkeys by retrieving their properties and using their methods.
// Practice using both syntaxes for retrieving properties.


var eatSomethingFunction = function(thingAsString) { this.foodsEaten.push(thingAsString); };
var introduceFunction = function() {
                        return ("Hi! My name is " +
                        this.name + ". " +
                        "I'm a " + this.species + ". " +
                        "I've eaten: " + this.foodsEaten); };


var abu = {
  name: 'Abu',
  species: 'Monkey',
  foodsEaten: [],
  eatSomething: function(thingAsString) { this.foodsEaten.push(thingAsString); },
  introduce: function() { return "Hi! My name is " +
                          this.name + ". " +
                          "I'm a " + this.species + ". " +
                          "I've eaten: " + this.foodsEaten }
};

var marcel = {
  name: 'Marcel',
  species: 'Monkey',
  foodsEaten: [],
  eatSomething: eatSomethingFunction,
  introduce: introduceFunction
};

var monkey ={
  name: 'Steve',
  species: 'Monkey'
  foodsEaten: [],
  eatSomething: function(thingAsString) { this.foodsEaten.push(thingAsString); },
  introduce: function() { console.log("Hi! My name is " +
                          this.name + ". " +
                          "I'm a " + this.species + ". " +
                          "I've eaten: " + this.foodsEaten); }
};



//
// 1. Write a method makeObj() that just makes an empty object and returns it to
// us.
// 2. Write a method called makeMonkey() that makes a monkey object and returns it.
//   For now, the monkey should be exactly the same as our example, hard coded.
// 3. Modify this method to accept two params, name and species, and set those on
//   the new monkey. Return that monkey.
//

var makeObj =  function() {
  return {}
};
//
// var makeMonkey = function(name, species) {
//   return {
//     this.name = name;
//     this.species = species;
//     this.foodsEaten = [];
//     this.eatSomething = eatSomethingFunction;
//     this.introduce = introduceFunction;
// };
// };
//

var makeMonkey = function(name, species) {
  return {
    name: name,
    species: species,
    foodsEaten: [],
    eatSomething: eatSomethingFunction,
    introduce: introduceFunction
  };
};




function Monkey(name, species) {
  this.name = name;
  this.species = species;
  this.foodsEaten = [];
  this.eatSomething = eatSomethingFunction;
  this.introduce = introduceFunction;
}

harisMonkey = new Monkey('Wilbur Booper', 'Probiscus');
// or
harisMonkey = Monkey.call({}, 'Wilbur Booper', 'Probiscus');
