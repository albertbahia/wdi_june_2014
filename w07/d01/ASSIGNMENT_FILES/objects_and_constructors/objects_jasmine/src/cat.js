function Cat(name, breed, furColor, weight, age) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.hairballs = [];
  this.meow = function() {
    return 'No.'
  };
  this.judgeHuman = function() {
    return 'Yawn...Not impressed';
  };
  this.readCollar = function() {
    var infoString = 'Name: ' + this.name +
                    ' // Age: ' + this.age +
                    ' // ' + this.weight + 'lbs' +
                    ' // ' + this.furColor + ' ' +
                    this.breed;
    return infoString;
  };
  this.lick = function() {
    if (this.hairballs.length < 3) {
      this.hairballs.push('hairball');
    } else if (this.hairballs.length == 3) {
      this.hairballs = [];
    }
  }
}

