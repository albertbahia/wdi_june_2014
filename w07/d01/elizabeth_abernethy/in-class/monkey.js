
var eatSomethingFunction = function(food) {
    this.foodsEaten.push(food);
    return food;
};

// - value of 'this' is set when you call the function
var introduceFunction = function() {
  return "Hi, I'm " + this.name + " and I'm a " + this.species + " who has eaten " + this.foodsEaten;
};



var adam = {
  name: "Adam",
  species: "Squirrel Monkey",
  foodsEaten: [],
  eatSomething: eatSomethingFunction,
  introduce: introduceFunction
};

var abu = {
  name: "Abu",
  species: "Capuchin Monkey",
  foodsEaten: [],
  eatSomething: eatSomethingFunction,
  introduce: introduceFunction
};

var tiny = {
  name: "Tiny",
  species: "Pygmy Marmoset",
  foodsEaten: [],
  eatSomething: eatSomethingFunction,
  introduce: introduceFunction
};



adam.introduce();
abu.introduce();
tiny.introduce();

adam.eatSomething("coffee");
adam.eatSomething("keyboards");
abu.eatSomething("banana");
abu.eatSomething("gold coin");
abu.eatSomething("sword");
tiny.eatSomething("flower petal");
tiny.eatSomething("coffee");
