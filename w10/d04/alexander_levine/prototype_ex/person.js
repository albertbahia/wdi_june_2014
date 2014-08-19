function Person(name, age) {
  this.name = name;
  this.age = age;
  this.energy = 5;
}

Person.prototype.introduce = function() {
  if (this.energy > 0) {
    return "Hello my name is " + this.name;
  } else {
    return "";
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

//instanceof Person (will return true or false)
