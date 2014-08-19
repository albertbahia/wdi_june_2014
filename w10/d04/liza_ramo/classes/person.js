///////////////////
// Person class //
/////////////////
function Person(name, age) {
  this.name = name;
  this.age = age;
  this.energy = 5;
}

Person.prototype.introduce = function() {
  if (this.energy > 0) {
    return this.name;
  } else {
    return "This person is too tired.";
  }
};

Person.prototype.walk = function() {
  if (this.energy > 0) {
    this.energy--;
    return true;
  } else {
    return false;
  }
};

Person.prototype.sleep = function() {
  this.energy = 5;
};

// Instantiating an object: //
var lizaPerson = new Person("Liza", 26);
lizaPerson.introduce();
lizaPerson.walk();
