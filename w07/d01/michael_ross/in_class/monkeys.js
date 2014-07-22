var eatSomethingFunction = function(newfood) {
  this.foodsEaten.push(newfood);
  return newfood;
};

var introduceFunction = function() {
  return ("Hi!  My name is " + this.name + " and I\'m a " + this.species + " and I\'ve eaten " + this.foodsEaten);
};

var Bobo = { name: 'Bobo',
  species: 'Orangutan',
  foodsEaten:
   [ 'apple',
     'banana',
     'pear',
     'human meat' ],
  eatSomething: eatSomethingFunction,
  introduce: introduceFunction,
};

var Lucy = { name: 'Lucy',
  species: 'koala',
  foodsEaten: ['cheetos'],
  eatSomething: eatSomethingFunction,
  introduce: introduceFunction,
};

var Billy = { name: 'Billy',
  species: 'chimpanzee',
  foodsEaten: [ 'grapes', 'pear' ],
  eatSomething: eatSomethingFunction,
  introduce: introduceFunction,
};

Bobo.introduce();
Lucy.introduce();
Billy.introduce();

Bobo.eatSomething("Grapes");
Lucy.eatSomething("Doritos");
Billy.eatSomething("Banana");

Bobo;
Lucy;
Billy;

//Enumerating or Iterating over properties of an Object
// To get properties - 'property' is placeholder variable
for (property in Lucy) {
  console.log(property);
};

// To get values - same here
for (property in Lucy) {
  console.log(Lucy[property])
}

Object.getOwnPropertyNames(Lucy); // Gives you both enumerable and non-enumerable properties, generally only care about enumerable props
Object.keys(Lucy); // Only gives you keys.
