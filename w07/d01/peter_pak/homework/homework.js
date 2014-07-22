var shelter = {
  name: 'Shelter',
  address: '915 Broadway',
  animals: []
};

shelter.animalDetails = function() {
  for (var i = 0; i < this.animals.length; i++) {
    this.animals[i].readCollar;
  }
}
shelter.acceptAnimal = function(animal) {
  shelter.animals.push(animal);
  return animal;
}
shelter.offerForAdoption = function() {
  var randomIndex = Math.floor(Math.random() * this.animals.length + 1);
  var randomAnimal = this.animals[randomIndex];
  var index = this.animals.indexOf(randomAnimal);
  this.animals.splice(index, randomIndex);
  return randomAnimal;
}

shelter.acceptAnimal(new Dog('Snoopy', 'Beagle', 'White', 20, 13))
shelter.acceptAnimal(new Dog('Shiloh', 'Beagle', 'Brown/White', 22, 3))
shelter.acceptAnimal(new Cat('Garfield', 'Lazy', 'Orange', 50, 6))
shelter.acceptAnimal(new Cat('Brain', 'Tabby', 'Roan', 10, 4))


shelter.animalDetails();

shelter.offerForAdoption();
