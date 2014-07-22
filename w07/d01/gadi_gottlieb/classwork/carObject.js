// # Exercise 2: Make a car constructor
//
// Cars have:
//
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

function Car(make, model, color, maxSpeed) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.speed = 0;
  this.maxSpeed = maxSpeed;

  this.accelerate = function(amt){
    if (this.speed + amt < this.maxSpeed) {
      this.speed += amt;
    } else {
      return this.speed = this.maxSpeed;
    }
  };

  this.slowDown = function(amt)
  {
    if (this.speed - amt > 0){
        this.speed -= amt;
    } else {
        this.speed = 0;
    }
    return this.speed;
  };

  this.repaint = function(newColor) {
    return this.color = newColor;
  }
};

chrysler200 = new Car("Convertible", "Chrysler 200", "White", 120);
console.log(chrysler200)
//
// var car = {
//   model: 'Ford',
//   color: 'Black',
//   speed: 20,
//   numWheels: 4,
//   numDoors: 2
// };
//
// var drive = function() {
//   console.log("Vroooooom!");
// };
//
// car.drive = drive;
//
// console.log(car);
// console.log(car.drive());
// //////////////
// //SAME THING//
// //////////////
// console.log(drive);
// console.log(car.drive);
