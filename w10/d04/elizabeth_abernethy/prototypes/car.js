// Plain old object creation via literal syntax

var car = {
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


// Newer version : Building an object within a function

function carFactory(model, color) {
  // create an object in here with the model and color
  // return the created object

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



//  CONSTRUCTOR FUNCTION : The way of the future

var Car = function(model, color) {
  this.model = model;
  this.color = color;
  this.fuel = 100;
  this.drive = function() {
    this.fuel--;
    return 'Vroom!';
  };
  this.refuel = function() {
    this.fuel = 100;
  };
};


var eos = new Car('Volkswagen Eos', 'Island Grey');


/// Super fancy future version: Using __proto__


var carFunctions = {
  drive: function() {
    this.fuel--;
    return 'Vroom!';
  },
  refuel: function() {
    this.fuel = 100;
  }
};


var Car = function(model, color) {
  this.model = model;
  this.color = color;
  this.fuel = 100;
  this.__proto__ = carFunctions;
};

/// The Future of the Future: The REAL prototype

function Car(model, color) {
  this.model = model;
  this.color = color;
  this.fuel = 100;
}

Car.prototype.drive = function() {
  this.fuel--;
  return 'Vroom!';
};

Car.prototype.refuel = function() {
  this.fuel = 100;
};

var dbNine = new Car('Aston Martin DB-9', 'teal');




// var evo = carFactory('Mitsubishi Lancer Evo IX', 'nightblue');
//
// evo.model;         //  =>  'Mitsubishi Lancer Evolution IX'
// evo.color;         //  =>  'deepblue'
// evo.fuel;          //  =>  100
// evo.drive();      //  =>  'Vroom!'
// evo.fuel;         //  =>   99
// evo.refuel();    //  =>   +1
// evo.fuel;        //  =>   100
