function Car(make, model, color) {
	this.make = make;
	this.model = model;
	this.color = color;

	this.speed = 0;
	this.maxSpeed = 120;

	this.accelerate = function(amt) {
		if (this.speed + amt <= this.maxSpeed) {
			this.speed += amt;
		} else {
			this.speed = this.maxSpeed;
		}
	}

	this.slowDown = function(amt) {
		if (this.speed - amt > 0) {
			this.speed -= amt;
		} else {
			this.speed = 0;
		}
	}

	this.repaint = function(newColor) {
		this.color = newColor;
	}
}


var myCar = new Car("Saab", "Coupe", "silver");

// console.log(myCar);

myCar.repaint("blue and tan");
myCar.accelerate(30);

console.log(myCar);