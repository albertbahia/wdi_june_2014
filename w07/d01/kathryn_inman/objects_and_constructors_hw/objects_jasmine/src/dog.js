function Dog(name, breed, furColor, weight, age) {
	this.name = name;
	this.breed = breed;
	this.furColor = furColor;
	this.weight = weight;
	this.age = age;
	this.toys = [];

	this.bark = function() {
		return "Bow Wow Wow Yippie Yo Yippie Yay";
	};

	this.readCollar = function() {
		return "Name: " + this.name + " // Age: " + this.age + " // " + this.breed + " // " + this.weight + "lbs // " + this.furColor + " Fur";
	}

	this.getToy = function(toy) {
		this.toys.push(toy);
	}

	this.chewUpToy = function() {
		var i = parseInt(Math.random(0, this.toys.length));
		var apology = "Sorry, I destroyed the " + this.toys[i];
		this.toys.splice(i, 1);
		return apology;
	}
}

var floop = new Dog("Boop", "Golden Doodle", "Blonde", 150, 3);


console.log(floop.readCollar());

var toy = 'ball';
floop.getToy(toy);

console.log(floop.chewUpToy());

console.log(floop);

