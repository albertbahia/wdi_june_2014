
function Car(model, color) {
  this.model = model;
  this.color  = color;
  this.fuel  = 100;

}

Car.prototype.drive = function() {
  this.fuel--;
  return 'Vrooom!!!'
};

Car.prototype.refuel = function() {
  this.fuel = 100;
};
