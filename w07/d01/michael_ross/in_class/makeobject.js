var eatSomethingFunction = function(newfood) {
  this.foodsEaten.push(newfood);
  return newfood;
};

var introduceFunction = function() {
  return ("Hi!  My name is " + this.name + " and I\'m a " + this.species + " and I\'ve eaten " + this.foodsEaten);
};

function makeObj() {
  var object = {};
  return object;
};

function makeMichaelMonkey() {
  var michael = {
    name: "Lucy",
    species: "Orangutan",
    foodsEaten: ["banana", "blueberries"],
    eatSomething: function(newfood) {
      this.foodsEaten.push(newfood);
      return newfood;
    },

    introduce: function() {
      return ("Hi!  My name is " + this.name + " and I\'m a " + this.species + " and I\'ve eaten " + this.foodsEaten);
    }
  };
  return michael;
};

function makeGenericMonkey(name, species) {
  var genericMonkey = {
    name: name,
    species: species,
    foodsEaten: [],
    eatSomething: function(newfood) {
      this.foodsEaten.push(newfood);
      return newfood;
    },

    introduce: function() {
      return ("Hi!  My name is " + this.name + " and I\'m a " + this.species + " and I\'ve eaten " + this.foodsEaten);
    }
  };
  return genericMonkey;
};



function Monkey(name, species) {
    this.name = name;
    this.species = species;
    this.foodsEaten = [];

    this.eatSomething = function(newfood) {
      this.foodsEaten.push(newfood);
      return newfood;
    };

    this.introduce = function() {
      return "Hi!  My name is " + this.name + " and I\'m a " + this.species + " and I\'ve eaten " + this.foodsEaten
    };
}

harisMonkey = new Monkey("Wilbur", "Bonobo");
console.log(harisMonkey);

mcksMonkey = Monkey.call({}, "William", "Chimpanzee");
console.log(mcksMonkey);

//These are functionally equivalent, JS gives us .call = {} functions as this and subsequent strings refer to values

console.log(makeMichaelMonkey());

harisMonkey.hasOwnProperty("foodsEaten");
