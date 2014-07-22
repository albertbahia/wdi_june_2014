function Cat(name, breed, furColor, weight, age) {
	this.name = name;
	this.breed = breed;
	this.furColor = furColor;
	this.weight = weight;
	this.age = age;
	this.hairballs = [];

	this.meow = function() {
		return "No.";
	};

	this.judgeHuman = function(human) {
		return "Yawn...Not impressed"; 
	};

	this.readCollar = function() {
		return "Name: " + this.name + " // Age: " + this.age + " // " + this.weight + "lbs // " + this.furColor + " " + this.breed;
	};

	this.lick = function() {
		if (this.hairballs.length < 3) {
			this.hairballs.push("hairball");
		} else {
			this.hairballs = [];
		}
	}
}

// var hanzo = new Cat("Beeb", "Tuxedo Person", "black and white", 12, 3);

// hanzo.lick();
// hanzo.lick();
// hanzo.lick();


// console.log(hanzo);
