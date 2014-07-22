function Dog(name, breed, furColor, weight, age){
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.toys = [];

  this.bark = function(){
    return 'Bow Wow Wow Yippie Yo Yippie Yay';
  }

  this.readCollar = function(){
    'Name: Pinky // Age: 4 // Great Dane // 200lbs // Black Fur'
    return "Name: " + this.name + " // Age: " + this.age + " // " + this.breed + " // " + this.weight + "lbs" + " // " + this.furColor + " Fur";
  }

  this.getToy = function(toy){
    this.toys.push(toy);
    return this.toys;
  }

  this.chewUpToy = function(){
    this.toys = [];
    return "Sorry, I destroyed the toys!"
  }
}


/////////// SHELTER ///////////////

var shelter = {
  name: "Animal's Home",
  address: "Bronx zoo",
  listOfAnimals: [],

  animalDetails: function(animal){
    return animal.readCollar;
  },

  acceptAnimal: function(newAnimal){
    return this.listOfAnimals.push(newAnimal);
  },

  offerForAdoption: function(){
    indexOfRandomAnimal = Math.floor(Math.random() * arr.length)
    return this.listOfAnimals.splice(indexOfRandomAnimal, 1);
  }
}

butch = new Dog( "Butch", "Pitpull", "White", 30, 9);
diggy = new Dog( "Diggy", "German Shepperd", "Yellow", 89, 9);

shelter.acceptAnimal(butch);
shelter.acceptAnimal(diggy);

shelter.acceptAnimal(tom);
shelter.acceptAnimal(grumpy);


