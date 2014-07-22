function makeObj() {
  return {};
}

function makeMonkey() {
  return {
    name: "Abu",
    species: "Capuchin Monkey",
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

myMonkey = makeMonkey();
myMonkey.introduce();

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



// CONSTRUCTORS:

// -- capitalize them!
// -- use = signs
// -- use 'this'
// -- use ;

function Monkey(name, species) {
    this.name = name;
    this.species = species;
    this.foodsEaten = [];

    this.eatSomething = function(food) {
      this.foodsEaten.push(food);
      return food;
    };

    this.introduce = function() {
      return "Hi, I'm " + this.name + " and I'm a " + this.species + " who has eaten " + this.foodsEaten;
    };

}

harisMonkey = new Monkey("Wilbur Booper", "Probiscus");

// first argument becomes 'this'
// subsequent arguments become info for the 'this'

mcksMonkey = Monkey.call({}, "William", "Probiscus");
