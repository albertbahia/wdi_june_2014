function Car (make, model, color) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.speed = 0;
  this.maxSpeed = 200;

  this.accelerate = function(speed_up) {
    if ((this.speed + speed_up) < this.maxSpeed) {
      this.speed += speed_up;
    } else {
      this.speed = this.maxspeed;
    }
  };
  this.slowdown = function(go_slow) {
    if ((this.speed - go_slow) > 0) {
      this.speed -= go_slow;
    } else {
      this.speed = 0;
    }
  };
  this.repaint = function(new_color) {
    this.color = new_color;
  };
}

var ferrari = new Car("Ferrari", "Spyder f50", "Red");
console.log(ferrari);
ferrari.accelerate(100);
console.log(ferrari);
ferrari.slowdown(40);
console.log(ferrari);
ferrari.repaint("Purple");
console.log(ferrari);
