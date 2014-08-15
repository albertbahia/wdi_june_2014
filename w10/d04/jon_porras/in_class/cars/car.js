//object creation through literal syntax
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


//carFactory(model, color)
function carFactory(model, color) {
var carObj = {};

    carObj.model = model,
    carObj.color = color,
    carObj.fuel = 100,

    carObj.drive = function() {
      this.fuel--;
      return 'Vroom!';
    },

    carObj.refuel = function() {
      this.fuel = 100;
    }

    return carObj;
};

//constructor function
function Car(model, color) {
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
}

//prototype
var carFunctions = {
    drive: function() {
    this.fuel--;
    return 'Vroom!';
  },

    refuel: function() {
    this.fuel = 100;
  }
}

//this is the correct way to make prototypes and use them
function Car(model, color) {
  this.model = model;
  this.color = color;
  this.fuel = 100;
}

Car.prototype.drive = function() {
  this.fuel--;
  return 'Vroom!';
}

Car.prototype.refuel = function() {
  this.fuel = 100;
}

var dbNine = new Car('Austin Martin DB-9', 'teal');
