
////////////////////
//// Monkeys  /////
//////////////////

// Creating the monkey constructor:
var monkey = {
  name: "",
  species: "",
  foodsEaten: [],
  eatSomething: eatSomethingFunction,
  introduce: introduceFunction
};

// Creating monkey objects from the constructor:
var claire = monkey;
claire.name = "Claire";
claire.species = "Ape";
monkey.eatSomethingFunction("bananas");
monkey.eatSomethingFunction("strawberries");
monkey.eatSomethingFunction("peanuts");

var jaime = monkey;
jaime.name = "Jaime";
jaime.species = "Banana Monkey";
monkey.eatSomethingFunction("coffee");
monkey.eatSomethingFunction("gummy worms");
monkey.eatSomethingFunction("bagels");

var mrPeanuts = monkey;
mrPeanuts.name = "Mr Peanuts";
mrPeanuts.species = "Gorilla";
monkey.eatSomethingFunction("milk");
monkey.eatSomethingFunction("tacos");
monkey.eatSomethingFunction("little bugs");

// Functions
monkey.eatSomethingFunction = function(food) {
  this.foodsEaten.push(food);
  return food;
}

var introduceFunction = function() {
  return "Hello, my name is " + this.name + " and my species is " + this.species + ". Today I've eaten " + this.foodsEaten " .";
};

console.log(monkey1.introduce());


///////////////////////////////////////////
//// Functions that generate objects /////
/////////////////////////////////////////

var makeObj = function() {
  return {}; // short form
  // var obj = {}; // these 2 lines long form
  // return obj; // The var obj only exists within these two lines
};

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
      return "Hi, I'm " + this.name + " and I'm a " + this.species + " who has eaten " + this.foodsEaten;
    }
  };
}

function makeGenericMonkey(name, species) {
  return {
    name: name,
    species: species,
    foodsEaten: [],
    eatSomething: function(food) {
      this.foodsEaten.push(food);
      return food;
    },
    introduce: function() {
      return "Hi, I'm " + this.name + " and I'm a " + this.species + " who has eaten " + this.foodsEaten;
    }
  };
}

makeGenericMonkey("Williard", "Bonobo");

//////////////////////////////
//// Monkey constructor /////
////////////////////////////

function Monkey(name, species) {
  this.name = name;
  this.species = species;
  this.foodsEaten = [];

  this.eatSomething = function(food) {
    this.foodsEaten.push(food);
    return food;
  };

  this.introduce = function() {
    return "Hi, I'm " + this.name + " and I'm a " + this.species + " who has eaten
           " + this.foodsEaten;
  };
}

// constructing a new monkey:
harisMonkey = new Monkey("Wilbur Booper", "Probiscus Monkey");

// or //
mcksMonkey = Monkey.call({}, "William", "Probiscus Monkey");
// where the empty hash, or the 1st arg, becomes 'this'

// These two ^ are functionallly equiv., but harisMonkey looks nicer









































//
