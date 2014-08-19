// var carFunctions = {
//   drive: function() {
//     this.fuel--;
//     return 'Vroom';
//   },
//   refuel: function() {
//     this.fuel = 100;
//   }
// };

var Car = function(model, color) {
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

var dbNine = new Car('Aston Martin DB-9', 'Teal');
