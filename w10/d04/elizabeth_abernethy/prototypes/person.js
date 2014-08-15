function Person(name, age, energy) {
  this.name = name;
  this.age = age;
  this.energy = 5;
}

Person.prototype.introduce = function() {
  if (this.energy > 0) {
    return ("Hi! I am " + this.name);
  } else {
    return " ";
  }
};

Person.prototype.walk = function() {
  if (this.energy > 0 ) {
    this.energy--;
    return true;
  } else {
    return false;
  }
};

Person.prototype.sleep = function() {
  this.energy = 5;
};


var liz = new Person("Liz", 23);
