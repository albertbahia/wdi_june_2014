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

var personFxns = {

  introduce: function() {
    if (this.energy > 0) {
      return 'I am ' + this.name + '!';
    } else {
      return ''
    }
  },

  walk: function() {
    if (this.energy > 0) {
      this.energy--;
      return true;
    } else {
      return false
    }
  },

  sleep: function() {
    this.energy = 5;
  }

};

function Person(name, age) {
  this.name = name;
  this.age = age;
  this.energy = 5;
}

Person.prototype = personFxns;

var me = new Person('Mei', 3);

console.log(me.introduce());
