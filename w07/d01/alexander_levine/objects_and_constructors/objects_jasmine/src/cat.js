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
  };
  this.readCollar = function() {
    return 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' +
    this.weight+'lbs' + ' // ' + this.furColor + ' ' + this.breed;
  };
  this.lick = function() {
    if (this.hairballs.length < 3) {
      this.hairballs.push("hairball");
    } else {
      this.hairballs.splice(0, 3);
    }
  };
}

boots = new Cat('boots', 'housecat', 'black', 10, 5);
henry = new Cat('henry', 'housecat', 'red', 14, 5);
