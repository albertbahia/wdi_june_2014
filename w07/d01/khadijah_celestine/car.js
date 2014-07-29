function Car(make, model, color, speed, maxSpeed) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.speed = speed;
  this.maxSpeed = maxSpeed;
  
  this.accelerate = function(amt) {
    newSpeed = this.speed += parseInt(amt);
    return newSpeed > maxSpeed ? this.maxSpeed : newSpeed;
  }
       
  this.slowDown = function(amt) {
    newSpeed = this.speed -= parseInt(amt);
    return newSpeed < 0 ? 0 : newSpeed;
  }
};

c1 = new Car('Honda','Accord','Silver',8,10);
console.log(c1.speed);
console.log(c1.accelerate(1));
console.log(c1.speed);
console.log(c1.accelerate(1));
console.log(c1.speed);
console.log(c1.accelerate(1));
console.log(c1.speed);
console.log(c1.accelerate(1));
console.log(c1.speed);
console.log(c1.accelerate(1));
