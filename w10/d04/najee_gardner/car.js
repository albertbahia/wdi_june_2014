// var carFunctions = {
//   drive: function() {
//     this.fuel--;
//     return 'Vroom!'
//   },
//
//   refuel: function() {
//     this.fuel = 100;
//   }
// };

function Car(model, color) {
  this.model = model;
  this.color = color;
  this.fuel = 100;

  // this.__proto__ = carFunctions;
};
Car.prototype.drive = function() {
  this.fuel--;
  return 'Vroom!';
}
Car.prototype.refuel = function() {
  this.fuel = 100;
}

// function carFactory(model, color) {
//   var car = new Car(model, color);
//   return car;
// }
//
// var evo = carFactory('Mitsubishi Lance Evo IX', 'nightblue');
