//Plain old Object creation through literal

var celica = {
  model: 'Toyota Celica',
  color: 'limegreen',
  fuel: 100,

  drive: function(){
    this.fuel--;
    return 'Vroom!';
  },

  refuel: function() {
    this.fuel = 100;
  }
};

// carFactory(model, color)

function carFactory(model, color) {
  var car = {
    model: model,
    color: color,
    fuel: 100,

    drive: function(){
      this.fuel--;
      return 'Vroom!';
    },

    refuel: function() {
      this.fuel = 100;
    }
  }
  return car
};

// Constructor
// var carFunctions = {
//   drive: function(){
//     this.fuel--;
//     return 'Vroom!';
//   },
//   refuel: function(){
//     this.fuel = 100;
//   }
// };

function Car(model, color){
  this.model = model;
  this.color = color;
  this.fuel = 100;
  // this.__proto__ = carFunctions;
}

Car.prototype.drive = function() {
  this.fuel--;
  return 'Vroom!!';
};

Car.prototype.refuel = function(){
  this.fuel = 100;
};

var dbNine = new Car('Aston Martin DB-9', 'Teal');


var chrysler = new Car('Chrysler 200', 'White'); // new Car calls the constructor method and creates the object

var evo = carFactory('Mitsubishi Lancer Evo IX', 'nightblue');
