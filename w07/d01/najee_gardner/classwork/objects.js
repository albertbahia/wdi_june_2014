function makeObj() {
  return {};
}

function makeGeorgeMonkey() {
  return { name: 'George',
           species: 'chimpanzee',
           foodsEaten: [],
           eatSomething: function(food) { this.foodsEaten.push(food); },
           introduce: function() { 'Hi! my name is ' + this.name + '. I am a ' + this.species + '. I have eaten ' + foodsEaten + '.' }
         };
}

function makeMonkey(name, species) {
  return { name: name,
           species: species,
           foodsEaten: [],
           eatSomething: function(food) { this.foodsEaten.push(food); },
           introduce: function() { return 'Hi! my name is ' + this.name + '. I am a ' + this.species + '. I have eaten ' + this.foodsEaten + '.' }
         };
}
