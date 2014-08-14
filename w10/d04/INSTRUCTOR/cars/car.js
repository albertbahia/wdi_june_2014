// Plain old object creation through literal syntax
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

// carFactory(model, color)

function carFactory(model, color) {
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

var evo = carFactory('Mitsubishi Lancer Evo IX', 'nightblue');

evo.model     // => 'Mitsubishi Lancer Evolution IX'
evo.color     // => 'deepblue'
evo.fuel      // => 100
evo.drive()   // => 'Vroom!'
evo.fuel      // => 99
evo.refuel();
evo.fuel      // => 100


// Constructor
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
