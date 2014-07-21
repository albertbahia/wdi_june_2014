// var car = {};
//
// car;
//
// var car = {
//   model: "Ford",
//   color: "Red",
//   speed: 0
// }
// console.log(car["model"]);
//
// function r(a){
//   console.log(a);
// }
// r("world");
//
// car.numWheels = "4"
//
// console.log(car);
//
// car.drive = function(){console.log(this.model + " " +"vrooom!!");};
//
//
// console.log(car.drive());

/////////////////////////////////////

var monkey = {
  name: "",
  species: "Chimpanzee",
  foodsEaten: []
}
monkey.eatSomething = function(thingAsString){
  this.foodsEaten.push(thingAsString);
}

monkey.introduce = function(){
  console.log("Hi, my name is " + this.name + " I'm a " + this.species + " and I've eaten " + this.foodsEaten.join(", ") + " ,today!");
}

var chetah = monkey;
chetah.name = "Chetah";
chetah.eatSomething("gummy worms");
chetah.species = "orangatan";

console.log(chetah);
monkey.eatSomething("bananas");
monkey.eatSomething("worms");
monkey.eatSomething("tree ants");

monkey.introduce();
console.log(monkey["species"]);
console.log(monkey["foodsEaten"]);
