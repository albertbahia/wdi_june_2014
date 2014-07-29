function Dog(name, breed, furColor, weight, age){
  this.name = name;
  this.breed = breed; 
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.toys = [];
  this.bark = function() {
    return 'Bow Wow Wow Yippie Yo Yippie Yay';
  }
  this.readCollar = function() {
    return 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' + this.breed + ' // ' + this.weight + 'lbs // ' + this.furColor + ' Fur';
  }
  this.getToy = function(newToy) {
    this.toys.push(newToy);
  }
  this.chewUpToy = function() {
    toy = this.toys.pop();
    return 'Sorry, I destroyed the' + toy;
  }
};

function Cat(name, breed, furColor, weight, age){
  this.name = name;
  this.breed = breed; 
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.hairballs = [];
  this.meow = function() {
    return 'No.';
  }
  this.judgeHuman = function() {
    return 'Yawn...Not impressed';
    return 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' + this.breed + ' // ' + this.weight + 'lbs // ' + this.furColor + ' Fur';
  }
  this.lick = function() {
    this.hairballs.length === 3 ? this.hairballs = [] : this.hairballs.push('hairball');
  }
  this.readCollar = function() {
    // Name: Brain // Age: 4 // 10lbs // Roan Tabby
    return 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' + this.weight + 'lbs // ' + this.furColor + ' ' + this.breed;
  }
};
var name = 'Pinky';
    var breed = 'Great Dane';
        var furColor = 'Black';
            var weight = 200;
                var age = 4;
d1 = new Dog(name, breed, furColor, weight, age);
d2 = new Dog('Happy' , breed, furColor, weight, age);

var name = 'Brain';
    var breed = 'Tabby';
        var furColor = 'Roan';
            var weight = 10;
                var age = 4;
c1 = new Cat(name, breed, furColor, weight, age)
c2 = new Cat('Kitty', breed, furColor, weight, age)


var shelter = {
  name: 'Khadijah',
  address: '915 Broadway',
  animals: [c1, c2, d1, d2],
  animalDetails: function() {
    for(i in this.animals) {
      console.log(this.animals[i].readCollar());
    }
  },

  acceptAnimal: function(animal) {
    this.animals.push(animal);
  },

  offerForAdoption: function() {
    return this.animals.pop();
  }
};
console.log('all animals');
shelter.animalDetails();
console.log('accept an animal');
shelter.acceptAnimal(c2);
console.log('all animals after accept');
shelter.animalDetails();
console.log('give away animal');
shelter.offerForAdoption();
console.log('all animals after give away');
shelter.animalDetails();
