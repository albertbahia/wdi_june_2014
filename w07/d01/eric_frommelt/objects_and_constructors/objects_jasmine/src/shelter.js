function Cat(name, breed, furColor, weight, age) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.hairballs = [];

  this.meow = function() {
    return 'No.';
  };

  this.judgeHuman = function() {
    return 'Yawn...Not impressed';
  };

  this.readCollar = function() {
    return 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' + this.weight + 'lbs' + ' // ' + furColor + ' ' + this.breed;
  };

  this.lick = function() {
    if (this.hairballs.length < 3) {
      this.hairballs.push('hairball');
    } else {
      this.hairballs = [];
    };
    return this.hairballs;
  };
};

function Dog(name, breed, furColor, weight, age) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.toys = [];

  this.bark = function() {
    return 'Bow Wow Wow Yippie Yo Yippie Yay';
  };

  this.readCollar = function() {
    return 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' + this.breed + ' // ' + this.weight + 'lbs' + ' // ' + this.furColor + ' Fur';
  };

  this.getToy = function() {
    this.toys.push('toy');
  };

  this.chewUpToy = function() {
    return 'Sorry, I destroyed the ' + this.toys.pop();
  };

};

catA = new Cat('Luna', 'Domestic', 'Black', 14, 7);
catB = new Cat('Moche', 'Domestic', 'Grey', 18, 9);
dogA = new Dog('Pixel', 'French Bulldog', 'Black', 14, 5);
dogB = new Dog('Bill', 'Labrador', 'Brown', 22, 6);

function acceptAnimal(animal) {
  this.animalList.push(animal);
};

function animalDetails() {
  for(i = 0; i < this.animalList.length; i++) {
    this.animalList[i].readCollar;
  };
};

function offerForAdoption() {
  var random_num = Math.floor(Math.random() * (animalList.length - 0));
  this.animalList.splice(random_num, 1);

};

var shelter = {
  name: 'Lunatics',
  address: 'Bedford Ave',
  animalList: [],
  acceptAnimal: acceptAnimal,
  animalDetails: animalDetails,
  offerForAdoption: offerForAdoption
};
