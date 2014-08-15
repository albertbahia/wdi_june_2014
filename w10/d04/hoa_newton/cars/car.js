var celica = {
  model: "Toyota Celica",
  color: "limegreen",
  fuel: 100,

  drive: function() {
    this.fuel--;
    return 'Vroom!';
  },

  refuel: function() {
    this.fuel = 100;
  }
};

function carFactory (model, color){
  var carObj = {};
  carObj.model = model;
  carObj.color = color;
  carObj.fuel = 100;
  carObj.drive = function() {
    this.fuel--;
    return 'Vroom!';
  };
  carObj.refuel = function() {
    this.fuel = 100;
  };
  return carObj;
}

var evo = carFactory('Mitsubishi', "blue");

function Car(model, color) {
  this.model = model;
  this.color = color;
  this.fuel = 100;
  // this.__proto__ = carFunctions;
}

Car.prototype.drive = function() {
  this.fuel--;
  return 'Vroom!!';
}

Car.prototype.refuel = function() {
  this.fuel = 100;
}

var miniSport = new Car("Mini", "green");

// Monkey
function Monkey(name, foodEaten){
  this.name = name;
  this.foodEaten = foodEaten;
}

Monkey.prototype.eatFood = function(food){
  this.foodEaten.push(food);
}

// Rectangle
function Regtangle(height, width) {
  this.height = height;
  this.width = width;
}

Regtangle.prototype.area = function(){
  return this.height * this.width;
}

Regtangle.prototype.perimeter = function() {
  return (this.height*2 + this.width*2);
}

// Person
function Person(name, age, energy) {
  this.name = name;
  this.age = age;
  this.energy = energy;
}

Person.prototype.introduce = function () {
  if (this.energy > 0){
    return "" + this.name;
  } else if (this.energy === 0 ){
    return ""
  }
}

Person.prototype.walk = function() {
  if ( this.energy > 0 ){
    this.energy -= 1;
    return true;
  } else if ( this.energy === 0 ){
    return this.energy;
  }
}

Person.prototype.sleep = function() {
  this.energy = 5;
}








