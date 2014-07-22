var shelter = {
  name: "Alex's Shelter",
  address: "99 Lafayette Ave",
  animals: [],
  animalDetails: function() {
    for (var i = 0; i < this.animals.length; i++) {
      console.log(this.animals[i].readCollar());
    }
  },
  acceptAnimal: function(animal) {
    this.animals.push(animal);
  },
  offerForAdoption: function() {
    this.animals.splice(Math.floor(Math.random()*this.animals.length), 1);
  }
}
