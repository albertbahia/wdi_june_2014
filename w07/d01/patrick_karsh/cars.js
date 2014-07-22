
function makeObj() {
	return {}; 
}
function Car(make, model, color, maxSpeed) {
	this.make = make;
	this.model = model; 
	this.color = color; 
	this.speed = 0;
	this.maxSpeed = maxSpeed; 

	this.accelerate = function(amt) {
		if (this.speed += amt < this.maxSpeed){
			return this.speed += amt; 
		} else {
			return this.speed = this.maxSpeed; 
		};
	}; 

	this.slowdown = function(amt) {
			if (this.speed -= amt > 0){
			return this.speed -= amt; 
		} else {
			return this.speed = 0; 
		};
	}; 
}

porsche911 = new Car("Porsche", "911", "Red", 250); 
console.log(porsche911);
porsche911.accelerate(150);
console.log(porsche911);
