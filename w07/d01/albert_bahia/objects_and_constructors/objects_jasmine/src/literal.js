// ----DOG Constructor----------
function Dog(name, breed, furColor, weight, age) {
  this.name = name,
  this.breed = breed,
  this.furColor = furColor,
  this.weight = weight,
  this.age = age,
  this.toys = [],

  this.bark = function() {
    return 'Bow Wow Wow Yippie Yo Yippie Yay';
  },

  this.readCollar = function() {
    return("Name: " + this.name + " // " + "Age: " + this.age + " // " + this.breed + " // " + this.weight + "lbs" + " // " + this.furColor + " Fur");
  },

  this.getToy = function() {
    this.toys.push("toy");
  },

  this.chewUpToy = function() {
    this.toys = [];
    return "/Sorry, I destroyed the/" + this.toys;
  }
}
// -----------------------------
// -----CAT Constructor---------
function Cat(name, breed, furColor, weight, age) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.hairballs =[];

  this.meow = function() {
    return 'No.';
  };

  this.judgeHuman = function() {
    return 'Yawn...Not impressed';
  };

  this.readCollar = function() {
    return ("Name: " + this.name + " // " + "Age: " + this.age + " // " + this.weight + "lbs" + " // " + this.furColor + " " + this.breed);
  };

  this.lick = function() {
    this.hairballs.push("hairball");
    if(this.hairballs.length > 3) {
      this.hairballs = [];
    }
  }
}
// -----------------------------

var dog1 = new Dog('sparky', 'corgi', 'light-brown', 10, 1);
var dog2 = new Dog('dogONIT', 'husky', 'white-grey', 5, 2);
var cat1 = new Cat('spike', 'abyssinian', 'brown', 5, 3);
var cat2 = new Cat('chainnzz', 'aegean cat', 'white-brown', 10, 5);
// var animals = [dog1,dog2];

var acceptAnimalFunction = function(animal) {
  this.animals.push(animal);
}

var readCollar = function(array) {
  for(var i = 0; i < array.length; i++) {
      console.log(array[i].readCollar());
  }
};

var offerForAdoptionFunction = function(array) {
  var randomValue = Math.floor(Math.random() * array.length);
  array.splice(randomValue);
}


var shelter = {
  name: "name1",
  address: "address1",
  animals: [],
  acceptAnimal: acceptAnimalFunction,
  animalDetails: readCollar,
  offerForAdoption: offerForAdoptionFunction

};

shelter.acceptAnimal(dog1);
shelter.acceptAnimal(dog2);
shelter.acceptAnimal(cat1);
shelter.acceptAnimal(cat2);
console.log("---------------------------");
console.log("Original Array of Animals:");
shelter.animalDetails(shelter.animals);
console.log("---------------------------");
console.log("");
shelter.offerForAdoption(shelter.animals);
console.log("---------------------------");
console.log("Array of Animals After Adoption:");
shelter.animalDetails(shelter.animals);
console.log("---------------------------");
console.log(shelter);
