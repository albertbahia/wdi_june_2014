// Person
// name
// age
// energy - a number starting at 5
// introduce
// return string containing name if energy greater than 0
// return empty string if energy is 0
// walk
// lowers energy by 1 and returns true if energy is greater than 0
// doesn't change energy and returns false if energy is 0
// sleep - restores energy to 5

var Person = function(name,age) {
  this.name = name;
  this.age = age;
  this.energy = 5;
};

Person.prototype.introduce = function() {
  if (this.energy > 0) {
    return 'Hello, my name is ' + this.name;
  } else if (this.energy = 0) {
    return '';
  }
};

Person.prototype.walk = function() {
  if (this.energy > 0) {
    this.energy--;
  } else if (this.energy = 0) {
    this.energy = 0;
    return false;
  }
};

Person.prototype.sleep = function() {
  this.energy = 5;
};

var guy = new Person('John Smith', 22);