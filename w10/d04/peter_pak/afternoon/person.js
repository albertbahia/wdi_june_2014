function Person(name, age) {
  this.name = name;
  this.age = age;
  this.energy = 5;
};

Person.prototype.introduce = function() {
  if (this.energy > 0) {
    return "Hi, my name is " + this.name;
  } else {
    return "";
  }
};

Person.prototype.walk = function() {
  if (this.energy === 0) {
    return false;
  } else {
    this.energy -= 1;
    return true;
  }
};

Person.prototype.sleep = function() {
  this.energy = 5;
};


var me = new Person('Peter', 28);
me.name;
me.age;
me.energy;
me.introduce();
me.walk();
me.walk();
me.walk();
me.walk();
me.walk();
me.introduce();
me.energy;
me.sleep();
me.energy;
