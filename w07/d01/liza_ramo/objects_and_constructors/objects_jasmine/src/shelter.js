// Constructor:

// function Shelter(name, address) {
//   this.name = name;
//   this.address = address;
//   this.animalsList = [];
//
//   this.animalDetails = function() {
//
//   };
//
//   this.acceptAnimal = function(animal) {
//     this.animalsList.push(animal);
//   };
//
//   this.offerForAdoption = function() {
//
//   };
//
// }

brain = new Cat("Brain", "Tabby", "Roan", 10, 4);
nora = new Cat("Nora", "Calico", "Roan", 10, 4);
pinky = new Dog("Pinky", "Great Dane", "Black", 200, 4);
jax = new Dog("Jax", "Rotty", "Black", 200, 4);

var happyShelterForKittehs = {
  name: "Happy Shelter for Kittehs",
  address: "123 Happy way",
  animalsList: [brain, nora, pinky, jax],

  happyShelterForKittehs.animalDetails = function(array) {
    for (var i = 0; i < array.length; i++) {
      return readCollar(array[i]);
    }
  };

  happyShelterForKittehs.acceptAnimal = function(animal) {
    animalsList.push(animal);
  };

  happyShelterForKittehs.offerForAdoption = function(animal) {
    // return sample(animalsList);
  };

};

function sample(arr, sample_size) {
  if (sample_size == undefined) {
    var randomIndex = Math.floor(Math.random() * arr.length);
    return arr[randomIndex];
  } else if (sample_size <= arr.length) {
    var duplicate = arr.slice();
    var result = [];
    while (sample_size > 0) {
      var randomIndex = Math.floor(Math.random() * duplicate.length);
      result.push(duplicate.splice(randomIndex,1)[0])
      sample_size--;
    }
    return result;
  }
}



//
