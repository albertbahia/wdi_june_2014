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
  }

  this.readCollar = function() {
    return 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' + this.weight + 'lbs // '
      + this.furColor + ' ' + this.breed;
  };

  this.lick = function() {
    no_of_hairballs = this.hairballs.length
    if (no_of_hairballs == 0){
      this.hairballs.push('Hairball 1');
    } else if (no_of_hairballs <= 2){
      this.hairballs.push('Hairball ' + (no_of_hairballs + 1));
    } else if (no_of_hairballs == 3) {
      this.hairballs = [];
    };
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
    return 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' + this.breed + ' // '
      + this.weight + 'lbs // ' + this.furColor + ' Fur';
  };

  this.getToy = function(toy) {
    this.toys.push(toy);
  };

  this.chewUpToy = function(){
    destroyedToy = this.toys.pop();
    return "Sorry, I destroyed the " + destroyedToy;
  }
};

////////////////// PLAYGROUND ///////////////////////

rupington = new Cat('Rupington', 'Evil', 'Tiger-like', 130, '7 years, 2 months, and 15 days');
gromit = new Dog('Gromit', 'Scottish', 'Tan', 22, '4 years');

var shelter = {
  name: 'General Assembly Center for Animals Who Can\'t Read Good ' +
  'and Want to Do Other Stuff Good Too ',
  address: '902 Broadway, New York, NY, 10010',
  animals: [rupington, gromit],
  animalDetails: function() {
    console.log(shelter.animals)
    for(var i = 0; i < shelter.animals.length; i++) {
      console.log(shelter.animals[i].readCollar());
    };
  },
  acceptAnimal: function(animal){
    shelter.animals.push(animal);
  },

  offerForAdoption: function(){
    no_of_animals = shelter.animals.length;
    if (no_of_animals == 0 ){
      console.log('We have no animals to give up!!')
    } else {
      random_animal = shelter.animals[Math.floor(Math.random()*(no_of_animals))];
      index = shelter.animals.indexOf(random_animal);
      console.log('Giving up ' + random_animal.name + ' for adoption!!');
      shelter.animals.splice(index, 1);
    };
  }
};
