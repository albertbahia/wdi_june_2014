function Car(make, model, color, speed, maxSpeed) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.speed = 0;
  this.maxSpeed = 150;

  this.accelerate = function(amount) {
    if ( amount + this.speed >= this.maxSpeed ) {
      return this.speed = this.maxSpeed;
    } else {
      return this.speed += amount;
    }
  };

  this.slowDown = function(amount) {
    if ( this.speed - amount <= 0 ) {
      return this.speed = 0;
    } else {
      return this.speed = this.speed - amount;
    }
  };

  this.repaint = function(newColor) {
    return this.color = newColor;
  }
}

vw = new Car("Eos", "VW", "Island Gray", 0, 150);
