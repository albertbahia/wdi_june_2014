// Object literal creation
var celica = {
  model: 'Toyota Celica',
  color: 'lime green',
  fuel: 100,

  drive: function() {
    this.fuel --;
    return 'nyooooom'
  },

  refuel: function() {
    this.fuel = 100
  }
};
//

// Car factory function
function carFactory(chosen_model, chosen_color) {
  car = {
    car.model = chosen_model,
    car.color = chosen_color,
    car.fuel = 100,

    car.drive = function() {
      this.fuel --;
      return 'nyooooom'
    },

    car.refuel = function() {
      this.fuel = 100
    }
  }
  return car
};

var car0 = carFactory('Datsun', 'sky blue');
//















// Car Constructor

var carFxns = {
  drive: function() {
    this.fuel--;
    return 'nyoooooooom'
  },
  refuel: function() {
    this.fuel = 100;
  }
};

var Car = function(model, color) {
  this.model = model;
  this.color = color;
  this.fuel = 100;
  this.__proto__ = carFxns;
  this.drive = function() {
    this.fuel-=2;
    return 'pbbbbbbttt'
  }
};

var car1 = new Car('Audi', 'orange');
//
