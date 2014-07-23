function Cat(name, breed, furColor, weight, age) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.hairballs = [];

  this.meow = function() {
    return 'No.';
  };

  this.judgeHuman = function() {
    return 'Yawn...Not impressed';
  }

  this.readCollar = function() {
    return 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' + this.weight + 'lbs // '
      + this.furColor + ' ' + this.breed;
  };

  this.lick = function() {
    no_of_hairballs = this.hairballs.length
    if (no_of_hairballs == 0){
      this.hairballs.push('Hairball 1');
    } else if (no_of_hairballs <= 2){
      this.hairballs.push('Hairball ' + (no_of_hairballs + 1));
    } else if (no_of_hairballs == 3) {
      this.hairballs = [];
    };
  };
};
