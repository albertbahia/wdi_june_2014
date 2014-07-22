
///////////////////////
//////// Cats ////////
/////////////////////

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

  this.judgeHuman = function() {
    return "Yawn...Not impressed";
  };

  this.readCollar = function() {
    return("Name: " + this["name"] + " // Age: " + this["age"] + " // " + this["weight"] + "lbs // " + this["breed"] );
  };

  this.lick = function() {
    if (this.hairballs.length === 3) {
      this.hairballs = [];
    }
    else {
      this.hairballs.push("");
    }
  };

}

///////////////////////
//////// Dogs ////////
/////////////////////

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
    return "Name: " + this["name"] + " // Age: " + this["age"] + " // " + this["breed"] + " // " + this["weight"] + "lbs // " + this["furColor"] + " Fur";
  };

  this.getToy = function(toy) {
      this.toys.push(toy);
  };

  this.chewUpToy = function(toy) {
    this.toys.pop(toy);
    return "Sorry, I destroyed the " + toy;

  };

}

///////////////////////
//////// Shelter /////
/////////////////////



// var animalDetailsFunction = function(array) {
//   for (var i = 0; i < array.length; i++) {
//     return readCollar(array[i]);
//   }
// };
//
// var acceptAnimalFunction = function(animal) {
//   this.animalsList.push(animal);
// };
//
// var offerForAdoptionFunction = function() {
//   return sample(animalsList, 1);
// };

var happyShelterForKittehs = {
  name: "Happy Shelter for Kittehs",
  address: "123 Happy way",
  animalsList: [],

  animalDetails: function() {
    var result = []
    for (var i = 0; i < this.animalsList.length; i++) {
      result.push(this.animalsList[i].readCollar());
    }
    return result.join( ' | ' );
  },

  acceptAnimal: function(animal) {
    this.animalsList.push(animal);
  },

  offerForAdoption: function() {
    var randomIndex = Math.floor(Math.random() * this.animalsList.length);
    var unwantedAnimal = this.animalsList.splice(randomIndex, 1);
    return unwantedAnimal[0];
  }
}

brain = new Cat("Brain", "Tabby", "Roan", 10, 4);
nora = new Cat("Nora", "Calico", "Roan", 10, 4);
pinky = new Dog("Pinky", "Great Dane", "Black", 200, 4);
jax = new Dog("Jax", "Rotty", "Black", 200, 4);

happyShelterForKittehs.acceptAnimal(brain);
console.log(happyShelterForKittehs.animalDetails());

happyShelterForKittehs.acceptAnimal(jax);
console.log(happyShelterForKittehs.animalDetails());

console.log(happyShelterForKittehs.offerForAdoption());
console.log(happyShelterForKittehs.animalDetails());





//
