function Shelter(name, address) {
  this.name = name;
  this.address = address;
  this.animals = [];

  this.animalDetails = function() {
    var info = '';
    for (index in this.animals) {
      if (info) {
        info += '\n';
      }
      info += this.animals[index].readCollar();
    }

    return info;
  };

  this.acceptAnimal = function(newAnimal) {
    this.animals.push(newAnimal);
  };

  this.offerForAdoption = function() {
    return this.animals.splice(Math.floor(Math.random() * this.animals.length),1);
  };
}
