function Cat (name,breed,furColor,weight,age) {

  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.hairballs = [];

  this.meow = function () {
    message = 'No.';
    return message;
  }

  this.judgeHuman = function () {
    message = 'Yawn...Not impressed';
    return message;
  }

  this.readCollar = function () {
    catInfo = 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' + this.weight + 'lbs // ' + this.furColor + ' ' + this.breed;
    return catInfo;
  }

  this.lick = function () {
    this.hairballs.length >= 3 ? this.hairballs = [] : this.hairballs.push('hairball');
  }

}

function Dog (name,breed,furColor,weight,age) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.toys = [];

  this.bark = function () {
    message = 'Bow Wow Wow Yippie Yo Yippie Yay';
    return message;
  }

  this.readCollar = function () {
    // 'Name: Pinky // Age: 4 // Great Dane // 200lbs // Black Fur'
    collarReading = 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' + this.breed + ' // ' + this.weight + 'lbs // ' + this.furColor + ' Fur' ;
    return collarReading;
  }

  this.getToy = function (toy) {
    this.toys.push(toy);
  }

  this.chewUpToy = function (toy) {
    this.toys.pop(toy);
    return 'Sorry, I destroyed the ' + toy;
  }

}

var sheltor = {
  name: "Animal Sheltor",
  address: "41 Union Sq.",
  animalsList: [],

  animalDetails: function (animals) {
    for (var i = 0; i < animals.length; i++) {
      this.animalsList[i].readcollar();
    }
  },

  acceptAnimal: function (animal) {
    newAnimalArray = this.animalsList.push(animal);
    return newAnimalArray;
  },

  offerForAdoption: function () {
    randomNumber = Math.floor(Math.random() * this.animalsList.length);
    removedAnimal = animalsList.splice(randomNumber,1);
    return removedAnimal[0];
  }

};
