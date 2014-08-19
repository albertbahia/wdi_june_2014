function Car(make, model, color, maxSpeed) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.speed = 0;
  this.maxSpeed = maxSpeed;

  // increases up to maxSpeed
  this.accelerate = function(amt) {
    if (this.speed + amt < this.maxSpeed) {
      this.speed += amt;
      return this.speed;
    } else {
        this.speed = this.maxSpeed;
        return this.speed;
      }
  };

  // not less than 0
  this.slowDown = function(amt) {
    if (this.speed - amt > 0) {
      this.speed -= amt;
      return this.speed;
    } else {
        this.speed = 0;
        return this.speed;
      }
  };

  this.repaint = function(newColor) {
    this.color = newColor;
    return this.color;
  };

}

// Create new car:
hondaCar = new Car("Honda", "Rav-4", "Blue", 200);
