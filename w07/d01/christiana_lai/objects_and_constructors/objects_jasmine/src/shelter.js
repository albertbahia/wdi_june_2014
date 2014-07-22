var chester = new Cat ("Chester", "Siamese", "Brown", 10, 2);
var crookshanks = new Cat ("Crookshanks", "Kneazle", "Orange", 10, 2);
var rover = new Dog ("Rover", "Samoyed", "White", 45, 6);
var spike = new Dog ("Spike", "Malamute", "Silver", 50, 3);

var shelter = {
  name: "Animal House",
  address: "123 Boulevard",
  animals: [],

  animalDetails: function() {
    for (i=0; i < this.animals.length; i++){
    this.animals[i].readCollar;
    return this.animals;
    }
  },

  acceptAnimal: function(animal) {
    this.animals.push(animal);
    return animal;
  },

  offerForAdoption: function() {
    var randomIndex = Math.floor(Math.random() * this.animals.length + 1);
    var adoptedAnimal = this.animals[randomIndex];
    var index = this.animals.indexOf(adoptedAnimal);
    this.animals.splice(index, randomIndex);
    return adoptedAnimal;
  }
}

shelter.acceptAnimal(chester);
shelter.acceptAnimal(crookshanks);
shelter.acceptAnimal(rover);
shelter.acceptAnimal(spike);
shelter.animalDetails();
