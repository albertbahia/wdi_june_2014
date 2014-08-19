///////////////////////////////////
// Different ways to make objects:
//////////////////////////////////

//1- Plain object creation through LITERAL syntax:
var celica = {
  model: 'Toyota Celica',
  color: 'limegreen',
  fuel: 100,
  drive: function() {
    this.fuel--;
    return 'Vroom!';
  },
  refuel: function() {
    this.fuel = 100;
  }
};

////////////////////////////////////////////////////////////////
// 2- Not literal or constructor function       ///////////////
//    Just a function that gives you an object //////////////
////////////////////////////////////////////////////////////
function carFactory(model, color) {
  //create object in here with model and color
  //return created object
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

// create a car object:
var evo = carFactory('Mitsubishi Lancer Evo IX', 'nightblue');

evo.model
evo.color
evo.fuel
evo.drive()
// etc.

// create some more cars:
var punto = carFactory('Fiat Punto', 'black');
var tt = carFactory('Audi TT', 'steelgray');

////////////////////////////////////////////////////////////
// 3- Refactoring carFactory to be a CONSTRUCTOR function:
////////////////////////////////////////////////////////////
function Car(model, color) {
  //create object in here with model and color
  //return created object
  this.model = model;
  this.color = color;
  this.fuel = 100;

  this.drive = function() {
    this.fuel--;
    return 'Vroom!';
  };

  this.refuel = function() {
    this.fuel = 100;
    return this.fuel;
  };
}

// How you create a car
var lizasCar = new Car('pontiac', 'electricblue');

lizasCar.model
lizasCar.color
lizasCar.fuel
lizasCar.drive()
lizasCar.refuel()


////////////////////////////////////////////////////////////////////////
// 4- Refactoring the CONSTRUCTOR function to use protos for the behaviors:
////////////////////////////////////////////////////////////////////////

//// make proto using literal notation (keys:values):
// var carFunctionsProto = {
//   drive: function() {
//     this.fuel--;
//     return 'Vroom!';
//   },
//   refuel: function() {
//     this.fuel = 100;
//   }
// }

// Your car constructor function will point to the proto:
function Car(model, color) {
  this.model = model;
  this.color = color;
  this.fuel = 100;

  // this.__proto__ = carFunctionsProto;
}

Car.prototype.drive = function() {
  this.fuel--;
  return 'Vroom';
};

Car.prototype.refuel = function() {
  this.fuel = 100;
}

// make a car!
var lizasCar = new Car('pontiac', 'electricblue');
lizasCar.drive()
















//
