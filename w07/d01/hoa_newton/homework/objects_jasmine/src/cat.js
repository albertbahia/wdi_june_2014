function Cat(name, breed, furColor, weight, age){
	this.name = name;
	this.breed = breed;
	this.furColor = furColor;
	this.weight = weight;
	this.age = age;
	this.hairballs = [];

	this.meow = function(){
		return 'No.';
	}

	this.judgeHuman = function(){
		return 'Yawn...Not impressed';
	}

	this.readCollar = function(){
		return "Name: " + this.name + " // Age: " + this.age + " // " + this.weight + "lbs" + " // " + this.furColor + " " + this.breed;
	}

	this.lick = function(hairball){
		if (this.hairballs.length < 3){
			this.hairballs.push(hairball);
			return this.hairballs;
		} else {
			this.hairballs = [];
			return this.hairballs;
		}
	}
}

tom = new Cat("Tom", "Imaginary", "Grey", 10, 5);
grumpy = new Cat("Tard", "siamies", "Black and White", 20, 7);