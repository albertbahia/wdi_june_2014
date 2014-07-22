function home (name, address) {
  this.name = name;
  this.address = address;
  this.animals = [];
  this.animalDetails = function(animal) {
    return "Name: " + animal.name + " || Age: " + animal.age + " || " + animal.weight + "lbs || " + animal.breed + " || ";
  };
  this.acceptAnimal = function(animal) {
    animals.push(animal);
  };
  this.offerForAdoption = function() {
    animals.slice((Math.floor(Math.random() * (animals.length - 0)) + 0),1)
  };
}
