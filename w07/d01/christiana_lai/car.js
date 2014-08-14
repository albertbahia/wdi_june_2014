# Exercise 2: Make a car constructor

Cars have:

Properties:
make
model
color
speed (0 initially)
maxSpeed

Methods:
accelerate(amt) - increase speed upto maxSpeed
slowDown(amt) - decrease speed by amount (not less than 0)
repaint(newColor)

function Car(make, model, color, maxSpeed) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.speed = 0;
  this.maxSpeed = maxSpeed;

  this.accelerate = function(amount) {
    if (this.speed >= maxSpeed) {
      this.speed = this.maxSpeed;
    } else {
      this.speed += amount;
    }
};

  this.slowDown = function(amount) {
    if (this.speed >= 0) {
      this.speed = 0;
    } else {
      this.speed -= amount;
    }
};

  this.repaint = function(newColor) {
    this.color = newColor;
};
}

adamsCar = new Car("Ford", "F-150", "black", 150);
