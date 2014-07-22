var shelter = {
  name: 'Happitails Shelter',
  address: '41 Union Sq West',
  animals: [],
  animalDetails: function(){
    console.log(this.animals.length)
    if (this.animals.length) {
      var animalInfo = [] 
      for (var i = 0; i < this.animals.length; i++) {
        animalInfo.push(this.animals[i].readCollar());
      }
      return animalInfo.join(' \n');
    } else {
      return 'Sorry, no animals'
    }
  },
  acceptAnimal: function(animalObject) {
    this.animals.push(animalObject);
  },
  offerForAdoption: function() {
    if (this.animals.length){
      var randomAnimal = Math.floor(Math.random() * this.animals.length);
      return this.animals.splice(randomAnimal,1);
    }
  }
};

var catName = 'Brain';
var catBreed = 'Tabby';
var furColor = 'Roan';
var catWeight = 10;
var catAge = 4;

var name = 'Pinky';
var breed = 'Great Dane';
var weight = 200;
var age = 4;

var dog = new Dog(name, breed, furColor, weight, age);
var cat = new Cat(catName, catBreed, furColor, catWeight, catAge);

console.log(shelter.animalDetails())
shelter.acceptAnimal(dog);
shelter.acceptAnimal(cat);
console.log(shelter.animalDetails());
console.log(shelter.offerForAdoption());
