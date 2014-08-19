// * Person class
//   * name
//   * age
//   * energy - a number starting at 5
//   * introduce
//     * return string containing name if energy greater than 0
//     * return empty string if energy is 0
//   * walk
//     * lowers energy by 1 and returns true if energy is greater than 0
//     * doesn't change energy and returns false if energy is 0
//   * sleep - restores energy to 5


function Person(name, age, energy) {
  this.name = name;
  this.age = age;
  this.energy = energy;
}

Person.prototype.introduce = function() {
  if(this.energy > 0) {
    return "Hi I'm"+ this.name;
  } else {
    "I'm tied go away"
  }
}

Person.prototype.walk = function() {
  if(this.energy>0){
    this.energy--;
    return true;
  } else {
    return false;
  }
}

Person.prototype.sleep = function() {
  this.energy += 5
}
