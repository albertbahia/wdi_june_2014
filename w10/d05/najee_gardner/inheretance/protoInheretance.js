function Car(model, color) {
  this.model = model;
  this.color = color;
  this.fuel = 100;
}
Car.prototype.drive = function() {
  if (this.fuel > 0) {
    this.fuel--
    return 'Vroom!'
  }

  return 'Nope...'
}
Car.prototype.refuel = function() {
  this.fuel = 100;
}
