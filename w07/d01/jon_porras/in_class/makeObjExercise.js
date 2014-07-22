var makeObject = function(){
  return myObject = {};
}

console.log(makeObject());

var makeAdamMonkey = function(){
  var adam = {
    name: "Adam",
    species: "baboon",
    foodsEaten: ["bananas", "lentils"]
  }
  return adam;
}

console.log(makeAdamMonkey());

var makeMonkey = function(name, species){
  var monkey = {
    name: name,
    species: species,
    foodsEaten: ["Bananas", "Pencils"]
  }

  return monkey;
}

console.log(makeMonkey("Jon", "baboon"));
console.log(makeMonkey("Mongo", "Spider Monkey"));

//constructor
function Monkey(name, species){
  this.name = name;
  this.species = species;
  this.foodsEaten = [];

  this.eatSomething = function(food){
    this.foodsEaten.push(food);
    return food;
  };

  this.introduce = function(){
    return "Hi, I'm" + this.name + " and I'm a " + this.species + " who as eaten " +
  this.foodsEaten};
}

harisMonkey = new Monkey("Wilbur Booper", "Probiscus");
mcksMonkey = Monkey.call({}, "William", "probucus");

console.log(harisMonkey)
