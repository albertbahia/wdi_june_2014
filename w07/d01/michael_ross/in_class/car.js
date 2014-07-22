function Car(make, model, color) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.speed = 0;
  this.maxSpeed = 200;

  this.accelerate = function(amt) {
    if (this.speed + amt < this.maxSpeed) {
      this.speed += amt;
    } else {
      this.speed = this.maxSpeed };
    return this.speed;
  };

  this.slowDown = function(amt) {
    if (this.speed - amt > 0) {
      this.speed -= amt;
    } else {
      this.speed = 0 };
    return this.speed;
  };

  this.repaint = function(newColor) {
    this.color = newColor;
    return this.color;
  };
}
