var shelter = function(name, address) {
  name: name;
  address: address;
  animals: [];
  animalDetails: function(animal) {
    return "Name: " + animal.name + " || Age: " + animal.age + " || " + animal.weight + "lbs || " + animal.breed + " || ";
  };
  acceptAnimal: function(animal) {
    animals.push(animal);
  };
  offerForAdoption: function() {
    animals.slice((Math.floor(Math.random() * (animals.length - 0)) + 0), 1)
  };
}
