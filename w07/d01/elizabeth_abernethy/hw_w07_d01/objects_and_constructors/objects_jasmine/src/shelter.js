function Dog(name, breed, furColor, weight, age, toys) {
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
    return ("Name: " + this.name + " // " + "Age: " + this.age + " // " + this.breed + " // " + this.weight + "lbs // " + this.furColor + " Fur" );
  };
  this.getToy = function(toy) {
    return this.toys.push(toy);
  };
  this.chewUpToy = function() {
    this.toys = [];
    return "/Sorry, I destroyed the/";
  };
}


function Cat(name, breed, furColor, weight, age, hairballs) {
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
    return ("Name: " + this.name + " // " + "Age: " + this.age + " // " + this.weight + "lbs // " + this.furColor + " " +  this.breed );
  };
  this.lick = function() {
    if (this.hairballs.length < 3) {
      this.hairballs.push("hairball");
    } else {
      return this.hairballs = [];
    }
  };
}





var animalDetailsFunction = function(array) {
  var array = this.animals;
  for (var i = 0; i < array.length; i++) {
    console.log(array[i].readCollar());
  };
};

var acceptAnimalFunction = function(animal) {
  this.animals.push(animal);
};

var offerForAdoptionFunction = function() {
  var random = Math.floor(Math.random() * this.animals.length + 1);
  var animal = this.animals[random];
  var index = this.animals.indexOf(animal);
  this.animals.splice(index, random);
  return this.animals;
};



var shelter = {
  name: "Happy Tails",
  address: "116 East 12th Street",
  animals: [],
  animalDetails: animalDetailsFunction,
  acceptAnimal: acceptAnimalFunction,
  offerForAdoption: offerForAdoptionFunction
};

buddy = new Dog("Buddy", "Lab Mix", "Black", 150, 4, []);
lady = new Dog("Lady", "Poodle", "Apricot", 20, 7, []);

sassy = new Cat("Sassy", "Tabby", "Mixed", 8, 5, []);
shadow = new Cat("Shadow", "Persian", "Gray", 10, 3, []);
