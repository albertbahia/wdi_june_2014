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
//

var eatSomethingFunction = function(food) {
  this.foodsEaten.push(food);
  return food;
}

var introduceFunction = function() {
  return "My name is" + this.name, "I am a " + this.species + " and I have eaten " + this.foodsEaten
}

var coco = {
  name: "Coco",
  species: "Gorilla",
  foodsEaten: [],
  eatSomething: eatSomethingFunction,
  introduce: introduceFunction
};

var george = {
  name: "George",
  species: "Chimp",
  foodsEaten: [],
  eatSomething: eatSomethingFunction,
  introduce: introduceFunction
};

var spike = {
  name: "Spike",
  species: "Ape",
  foodsEaten: [],
  eatSomething: eatSomethingFunction,
  introduce: introduceFunction
};
spike.eatSomething("Pizza");
spike.eatSomething("Steak");
spike.eatSomething("Deli");

function makeObj(){
  return {};
}

function makeAdamMonkey() {
  return {
    name: "Adam",
    species: "Squirrel Monkey",
    foodsEaten: [],
    eatSomething: function(food) {
      this.foodsEaten.push(food);
      return food;
    },
    introduce: function() {
      return "Hi, I'm " + this.name + " and I'm a " + this.species + " who has eaten " + this.foodsEaten
    }
  };
}

console.log(adam)


var makeMonkey = function(name, species) {
  return {
    name: name,
    species: species,
    foodsEaten: [],
    eatSomething: function(food) {
      this.foodsEaten.push(food);
      return food;
    },
    introduce: function() {
      return "Hi, I'm " + this.name + " and I'm a " + this.species + " who has eaten " + this.foodsEaten
    }
  }
};
console.log(makeMonkey("Apoo", "Chimp"));


/////////////////////
//    Constructors //
/////////////////////

function Monkey(name, species) {
  this.name = name;
  this.species = species;
  this.foodsEaten = [];

  this.eatSomething = function(food) {
      this.foodsEaten.push(food);
      return food;
    },

  this.introduce = function() {
      return "Hi, I'm " + this.name + " and I'm a " + this.species + " who has eaten " + this.foodsEaten
    }
};
gadisMonkey = new Monkey("Wilfred", "King Kong");
