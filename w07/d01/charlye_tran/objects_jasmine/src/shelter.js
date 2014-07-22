function Shelter(name, address){
  this.name = name;
  this.address = address;
  this.animals = [];
  this.animalDetails = function() {
    for (var i = 0; i < this.animals.length; i++){
      return this.animals[i].readCollar();
    }
  };

  shelter.animalDetails = function() {
    var string;
    for (var i = 0; i < shelter.animals.length; i++){
      string = string + "\n" + (shelter.animals[i].readCollar());
    }
    return string;
  };
  this.acceptAnimal = function(animal){
    this.animals.push(animal);
  };
  this.offerForAdoption = function(){
    randNum= Math.floor((Math.random() * this.animals.length));
    return this.animals.splice(randNum, 1);
  };
}
