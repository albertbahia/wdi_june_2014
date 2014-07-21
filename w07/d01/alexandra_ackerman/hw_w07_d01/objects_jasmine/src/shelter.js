function Shelter(name, address, animals){
  this.name = name;
  this.address = address;
  this.animals = [];

  this.animalDetails = function() {
    var array = this.animals;
    for (i = 0; i < array.length; i++) {
      console.log(array[i].readCollar());
    };
  };

  this.acceptAnimal = function(animal) {
    this.animals.push(animal);
  };

  this.offerForAdoption = function() {
    this.animals.pop
  };
}


function Dog(name, breed, furColor, weight, age, toys) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.toys = [];

  this.bark = function(){
    return "Bow Wow Wow Yippie Yo Yippie Yay";
  }; 

  this.readCollar = function(){
    return "Name: " + this.name + " // Age: " + this.age + " // " + this.breed + " // " + this.weight + "lbs // " + this.furColor + " Fur";
  };

  this.getToy = function(toy){
    return this.toys.push(toy);
  };

  this.chewUpToy = function(){
    this.toys = [];
    return "/Sorry, I destroyed the/"
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
    return("Name: " + this.name + " // Age: " + this.age + " // " + this.weight + "lbs // " + this.furColor + " " + this.breed);
  };

  this.lick = function() {
    if (this.hairballs.length < 3) {
      this.hairballs.push("hairball");
    } else {
      return this.hairballs = [];
    }
  };
}