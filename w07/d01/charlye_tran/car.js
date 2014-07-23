// Properties:
// make
// model
// color
// speed (0 initially)
// maxSpeed
//
// Methods:
// accelerate(amt) - increase speed upto maxSpeed
// slowDown(amt) - decrease speed by amount (not less than 0)
// repaint(newColor)

function Car(make, model, color, maxSpeed){
  this.make = make;
  this.model = model;
  this.color = color;
  this.maxSpeed = maxSpeed;
  this.speed = 0;
  this.slowDown = function(amount){
    this.speed = (this.speed - amount);
    if (this.speed < 0){
      this.speed = 0;
    }
   }
  this.repaint = function(newColor) { this.color = newColor;}
  this.accelerate = function(amount) {
    this.speed = this.speed + amount;
    if (this.speed > maxSpeed){
      this.speed = maxSpeed;
    }
  }
  return this.make + " " + this.model + " " + this.color + " " + this.speed;
}

var charlye = new Car("lexus", "ls300", "red", 100);
var bob = new Car("toyota", "camry", "orange", 1000);
var samantha = new Car("honda", "civic", "orange", 500);
