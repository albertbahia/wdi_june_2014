function Cars(make, model, color, maxSpeed){
	this.make = make;
	this.model = model;
	this.color = color;
	this.speed = 0;
	this.maxSpeed = maxSpeed;

	this.accelerate = function(amt) {
		if (this.speed + amt > this.maxSpeed){
			this.speed = this.maxSpeed;
		} else {
			this.speed += amt;
		}
	}
	this.slowDown = function(amt) {
		if (this.speed - amt < 0){
			return 0;
		} else {
			return this.speed - amt;
		}
	}
	this.repaint = function(color) {
		this.color = color;
		return this.color;
	}
}

toyota = new Cars(1985, "TYT", "Red", 239);
console.log(toyota);
console.log(toyota.repaint("Blue"));
console.log(toyota.speed)
toyota.accelerate(90);
console.log(toyota.speed)
console.log(toyota.slowDown(60));