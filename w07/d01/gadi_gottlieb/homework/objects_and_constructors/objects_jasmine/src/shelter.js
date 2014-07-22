spike = new Dog("Spike", "Chiwahaha", "White", 8, 3);
bill = new Dog("Bill", "Pitbull", "Black", 23, 6);
george = new Cat("George", "cat", "brown", 4, 2);
frank = new Cat("Frank", "cat", "grey", 35, 7);

var Shelter = function(name, address) {
    this.name = name;
    this.address = address;
    this.animals = [];
    this.animalDetails = function() {
      for (var i = 0; i < animals.length; i++) {
        return animals[i].readCollar();
      }
    }
    this.acceptedAnimal = function(animal) {
      this.animals.push(animal)
    }
    this.offerForAdoption = function(animal) {
      randAnimalAdoption = animal[Math.floor(Math.random() * this.animals.length)];
      return randAnimalAdoption
    }
}

animalShelter = new Shelter("Animal Shelter", "115 W. 34th St. New York, NY")

animalShelter.acceptedAnimal(spike);
animalShelter.acceptedAnimal(bill);
animalShelter.acceptedAnimal(george);
animalShelter.acceptedAnimal(frank);

animalShelter.animalDetails(spike);
