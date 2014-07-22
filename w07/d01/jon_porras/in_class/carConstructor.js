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

function Car(make, model, color, speed, maxSpeed){
  this.make = make;
  this.model = model;
  this.color = color;
  this.speed = speed;
  this.maxSpeed = maxSpeed;

  this.accelerate = function(amt){
    if(this.speed += amt > maxSpeed){
      console.log("Not Possible speed racer.")
  } else {
      return this.speed;
    }
  };

  this.slowDown = function(amt){
    newSpeed = this.speed -= amt
    if(newSpeed <= 0){
      newSpeed = 0
      this.speed = newSpeed;
    } else {
      this.speed = newSpeed;
    }
  };

  this.repaint = function(newColor){
    this.color = newColor;
    return newColor;
  };

}

sicBmw = new Car("BMW", "Roadster", "White", 65, 120);
console.log(sicBmw);
console.log(sicBmw.accelerate(20));
console.log(sicBmw.accelerate(120));
console.log(sicBmw.slowDown(20));
console.log(sicBmw.slowDown(100));
console.log(sicBmw.repaint("Black"));
console.log(sicBmw);
