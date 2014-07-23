function Cat(name, breed, furColor, weight, age){
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
    return 'Yawn...Not impressed'
  };

  this.readCollar = function() {
    var info = 'Name: ' + this.name + ' // ';
    info += 'Age: ' + this.age + ' // ';
    info += this.weight + 'lbs // ';
    info += this.furColor + ' ' + this.breed;

    return info;
  };

  this.lick = function() {
    if (this.hairballs.length === 3) {
      this.hairballs = [];
    } else {
      this.hairballs.push('hairball');
    }
  };
}
