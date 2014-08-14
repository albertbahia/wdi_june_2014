var eatSomethingFunction = function(food) {
  this.foodsEaten.push(food);
  return food;
};

var introduceFunction = function() {
  return "Hi, I'm " + this.name + " and I'm a " + this.species + "who has eaten" + this.foodsEaten;
};

var adam = {
  name: "Adam",
  species: "Squirrel Monkey",
  foodsEaten = [],
  eatSomething: eatSomethingFunction,
  introduce: introduceFunction()
};

var hari = {
  name: "Hari",
  species: "Capuchin",
  foodsEaten = [],
  eatSomething: eatSomethingFunction,
  introduce: introduceFunction()
};

var mck = {
  name: "McK",
  species: "Pygmy Marmoset",
  foodsEaten = [],
  eatSomething: eatSomethingFunction,
  introduce: introduceFunction()
};

// 1. Write a method makeObj() that just makes an empty object and returns it to
// us.
// 2. Write a method called makeMonkey() that makes a monkey object and returns it.
//   For now, the monkey should be exactly the same as our example, hard coded.
// 3. Modify this method to accept two params, name and species, and set those on
//   the new monkey. Return that monkey.

function makeObj() {
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
      return "Hi, I'm " + this.name + " and I'm a " + this.species + "who has eaten" + this.foodsEaten;
    }
  };
}
---------------------------------------------
function Monkey(name, species) {
    this.name = name;
    this.species = species;
    this.foodsEaten = [];

    this.eatSomething = function(food) {
      this.foodsEaten.push(food);
      return food;
    },

    this.introduce = function() {
      return "Hi, I'm " + this.name + " and I'm a " + this.species + "who has eaten" + this.foodsEaten;
    };
}

harisMonkey = new Monkey("Wilbur Booper", "Probiscus");

Monkey.call({}, "William", "Probiscus");
