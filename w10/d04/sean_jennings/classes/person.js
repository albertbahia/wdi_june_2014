var person = function(name,age) {
  this.name = name,
  this.age = age,
  this.energy = 5,

  this.introduce = function() {
    if (this.energy > 0)
      return this.name;
  } else {
    return "";
  },

  this.walk = function() {
    if (this.energy > 0) {
      return true;
      this.energy--
    } if else (this.energy == 0) {
      return false;
    }
    this.energy--
  },

  this.sleep = function() {
    this.energy = 5;
  }
};
