// plain old object creation through literal syntax
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



//
function carFactory(model, color) {
  var car = {};
    car.model = model;
    car.color = color;
    car.fuel = 100;

    car.drive = function() {
      this.fuel--;
      return 'Vroom!';
    };
    car.refuel = function() {
      this.fuel = 100;
    };

    return car;
}

var evo = carFactory('Mistubishi Lancer Evo', 'nightblue');

// constructor function

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

var tt = new Car('Audi TT', 'steelgray');





// using proto

// var carFunctions = {
//   drive: function() {
//     this.fuel--;
//     return 'Vroom!';
//   },
//   refuel: function() {
//     this.fuel = 100;
//   }
// };

var Car = function(model, color) {
  this.model = model;
  this.color = color;
  this.fuel = 100;
  // this.__proto__ = carFunctions;
};

Car.prototype.drive = function() {
  this.fuel--;
  return 'Vroom!';
};

Car.prototype.refuel = function() {
  this.fuel = 100;
};
