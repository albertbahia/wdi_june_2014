// ### Dog Constructor
//
// A Dog has the following properties:
//
// - a name
// - a breed
// - a fur color
// - a weight
// - an age
// - a collection of toys
//
// In addition, a dog has the following behaviors:
//
// - it can bark
// - it can have it's collar read
// - it can get a new toy
// - it can chew up a random toy
// - if a dog chews it's toy the toy should be destroyed
// - the toy should be removed from the list of toys


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
    return("Name: " + this.name +
           " // Age: " + this.age +
           " // " + this.breed +
           " // " + this.weight +
           "lbs // " + this.furColor +
           " Fur");
  };
  this.getToy = function(toy) {
    this.toys.push(toy);
    return toy;
  };
  this.chewUpToy = function() {
    var randomIndex = Math.floor(Math.random() * this.toys.length + 1);
    var randomToy = this.toys[randomIndex];
    var index = this.toys.indexOf(randomToy);
    this.toys.splice(index, randomIndex);
    return 'Sorry, I destroyed the ' + randomToy;
  };
}
