// Car Constructor

function Car(make, model, color, maxSpeed) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.speed = 0;
  this.maxSpeed = maxSpeed;
  this.accelerate = function(amt) {
    if (amt <= this.maxSpeed) {
      this.speed = amt;
    } else {
      this.speed = this.maxSpeed;
    }
    return this.speed;
  };
  this.slowDown = function(amt) {
    if (amt <= this.speed) {
      this.speed -= amt;
    } else {
      this.speed = 0;
    }
    return this.speed;
  };
  this.repaint = function(newColor) {
    this.color = newColor;
    return this.color;
  }
}

car = new Car("Ford", "Escort", "Grey", 60);

function accelerate(amt) {
  if (amt <= this.maxSpeed) {
    this.speed = amt;
  } else {
    this.speed = this.maxSpeed;
  }
  return this.speed;
}
