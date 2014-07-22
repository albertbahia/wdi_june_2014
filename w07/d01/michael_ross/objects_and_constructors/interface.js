function Dog(name, breed, furColor, weight, age) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;

  this.toys = [];

  this.bark = function() {
    return "Bow Wow Wow Yippie Yo Yippie Yay"
  };

  this.readCollar = function() {
    return("Name: " + this["name"] + " // Age: " + this["age"] + " // " + this["breed"] + " // " + this["weight"] + "lbs // " + this["furColor"] + " Fur");
  };

  this.getToy = function(toy) {
    this.toys.push(toy);
  };

  this.chewUpToy = function() {
    var randomIndex = Math.floor(Math.random() * this.toys.length + 1);
    var randomToy = this.toys[randomIndex];
    var index = this.toys.indexOf(randomToy);
    this.toys.splice(index, randomIndex);
    return "Sorry, I destroyed the" + randomToy;
  };
};

function Cat(name, breed, furColor, weight, age) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;

  this.hairballs = [];

  this.meow = function() {
    return "No."
  };

  this.judgeHuman = function() {
    return "Yawn...Not impressed"
  };

  this.readCollar = function() {
    return("Name: " + this["name"] + " // Age: " + this["age"] + " // " + this["weight"] + "lbs // " + this["furColor"] + " " + this["breed"] );
  };

  this.lick = function() {
    this.hairballs.push("hairball")
    if (this.hairballs.length > 3) {
      this.hairballs = [];
    }
  };
};



var shelter = {
  name: "Happy Paws",
  address: "88 E 12th St",
  animals: []
};

shelter.animalDetails = function() {
  for (var i = 0; i < this.animals.length; i++) {
    this.animals[i].readCollar;
  }
};

shelter.acceptAnimal = function(newAnimal) {
  shelter.animals.push(newAnimal);
  return newAnimal;
};

shelter.offerForAdoption = function() {
  var randomIndex = Math.floor(Math.random() * this.animals.length);
  var randomAnimal = this.animals[randomIndex];
  var index = this.animals.indexOf(randomAnimal);
  this.animals.splice(index, randomIndex);

 };

var spot = new Dog('Spot', 'Mini Aussie', 'Blue Merle', 10, 2);
var lucy = new Dog('Lucy', 'Great Dane', 'Black', 100, 3);
var tomcat = new Cat('Tomcat Cruise', 'Tabby', 'Orange', 15, 8);
var ziggy = new Cat('Ziggy', 'Tabby', 'Roan', 5, 4)
shelter.acceptAnimal(spot);
shelter.acceptAnimal(lucy);
shelter.acceptAnimal(tomcat);
shelter.acceptAnimal(ziggy);
console.log(shelter);
shelter.offerForAdoption();
shelter.offerForAdoption();
console.log(shelter);
