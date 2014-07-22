var animalDetailsFxn = function() {
	for (var i = 0; i < this.animals.length; i++) {
		return this.animals[i].readCollar;
	}
}

var acceptAnimalFxn = function(animalObject) {
	this.animals.push(animalObject);
}

var offerForAdoptionFxn = function() {
	var i = parseInt(Math.random(0, this.animals.length));
	var adoptedAnimal = this.animals[i];
	this.animals.splice(i, 1);
	return adoptedAnimal;
}

var shelter = {
	name: "Happy Tails Shelter",
	address: "1001 Last Hope Lane",
	animals: [],
}

	shelter["animalDetails"] = animalDetailsFxn;
	shelter["acceptAnimal"] = acceptAnimalFxn;
	shelter["offerForAdoption"] = offerForAdoptionFxn;


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

var floop = new Dog("Boop", "Golden Doodle", "Blonde", 150, 3);

var hanzo = new Cat("Beeb", "Tuxedo Person", "black and white", 12, 3);

// console.log(floop);
// console.log(hanzo);

shelter.acceptAnimal(floop);
shelter.acceptAnimal(hanzo);


var deets = shelter.animalDetails();

console.log(deets);
//console.log(shelter.animalDetails());


















// break