//
// ### Cat Constructor
//
// A Cat has the following properties:
//
// - a name
// - a breed
// - a fur color
// - a weight
// - an age
// - a collection of hairballs
//
// In addition, a cat has the following behaviors:
//
// - it can meow
// - it can judge a human
// - it can have it's collar read
// - it can lick itself
//   - if a cat licks itself it adds a hairball to its collection (a hairball is just a string)
//   - if it has more than three hairballs then it should cough up all of them


function Cat(name, breed, furColor, weight, age) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.hairballs = [];
  this.meow = function() {
    return "No.";
  };
  this.judgeHuman = function() {
    return 'Yawn...Not impressed';
  };
  this.readCollar = function() {
    return ("Name: " + this.name +
            " // Age: " + this.age +
            " // " + this.weight +
            "lbs // " + this.furColor
            + " " + this.breed);
  };
  this.lick = function() {
    if (this.hairballs.length < 3) {
      this.hairballs.push('@');
    } else {
      console.log(this.hairballs);
      this.hairballs = [];
    }
  };
}
