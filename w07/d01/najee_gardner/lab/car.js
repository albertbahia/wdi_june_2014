function Car(make, model, color, maxSpeed) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.speed = 0;
  this.maxSpeed = maxSpeed;

  this.accelerate = function(amount) {
    if (this.maxSpeed - this.speed < amount) {
      this.speed = this.maxSpeed;
    } else {
      this.speed += amount;
    }
  }

  this.slowDown = function(amount) {
    if (this.speed - 0 < amount) {
      this.speed = 0;
    } else {
      this.speed -= amount;
    }
  }

  this.repaint = function(newColor) {
    if ( newColor && Object.prototype.toString.call(newColor) === '[object String]') {
      this.color = newColor;
    }
  }
}
