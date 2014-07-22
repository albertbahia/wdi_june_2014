//dog constructor
function Dog(name, breed, furColor, weight, age) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.toys = [];

  this.bark = function() {
    return "Bow Wow Wow Yippie Yo Yippie Yay";
  }

  this.readCollar = function() {
    return "Name: " + this.name + " // " + "Age: " + this.age + " // " + this.breed + " // " + this.weight + "lbs // " + this.furColor.charAt(0).toUpperCase() + this.furColor.slice(1) + " Fur";
  }

  this.getToy = function(toy) {
    this.toys.push(toy);
  }

  this.chewUpToy = function(toy) {
    chewedToy = this.toys[Math.random()*this.toys.length]
    index = this.toys.indexOf(chewedToy);
    this.toys.splice(index, 1);
    return "/Sorry, I destroyed the/" + chewedToy;
  }
}

//cat constructor
function Cat(name, breed, furColor, weight, age) {
  this.name = name,
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.hairballs = [];

  this.meow = function() {
    return "No."
  }

  this.judgeHuman = function() {
    return "Yawn...Not impressed"
  }

  this.readCollar = function() {
    return 'Name: ' + this.name + " // Age: " + this.age + " // " + this.weight + "lbs // " + this.furColor + " " + this.breed;
  }

  this.lick = function() {
    this.hairballs.push("Hairball");
    if (this.hairballs.length > 3) {
      this.hairballs = [];
    }
  }
}

//shelter object
var shelter = {
  name: "Happy Animals Shelter",
  address: "123 Shelter Rd",
  listOfAnimals: [],

  animalDetails: function() {
    for(var i=0;i<this.listOfAnimals.length;i++){
      console.log(this.listOfAnimals[i].readCollar());
    }
  },

  acceptAnimal: function(animal) {
    this.listOfAnimals.push(animal);
  },

  offerForAdoption: function() {
    var adoptee = this.listOfAnimals[Math.floor(Math.random()*this.listOfAnimals.length)];
    var index = this.listOfAnimals.indexOf(adoptee);
    this.listOfAnimals.splice(index, 1);
    return adoptee.name + " has been adopted.";
  }
}

//create dogs
fido = new Dog("Fido", "Lab", "Black", 80, 7);
bear = new Dog("Bear", "Border Collie", "Black", 40, 4);
// console.log(fido);
// console.log(bear);

//create cats
balder = new Cat("Balder", "Tabby", "Orange", 14, 3);
cloe = new Cat("Cloe", "Tabby", "Orange", 20, 4);
// console.log(balder);
// console.log(cloe);

//test shelter functions
console.log(shelter.acceptAnimal(bear));
console.log(shelter.acceptAnimal(balder));
console.log(shelter.acceptAnimal(fido));
console.log(shelter.acceptAnimal(cloe));
console.log(shelter.animalDetails());
console.log(shelter.offerForAdoption());
console.log(shelter)
