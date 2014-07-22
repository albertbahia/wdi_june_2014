function Dog(name, breed, furColor, weight, age) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.toys = [];

  this.bark = function() {
    return 'Bow Wow Wow Yippie Yo Yippie Yay'
  };

  this.readCollar = function() {
    var info = 'Name: ' + this.name + ' // ';
    info += 'Age: ' + this.age + ' // ';
    info += this.breed + ' // ';
    info += this.weight + 'lbs // ';
    info += this.furColor + ' Fur';

    return info;
  };

  this.getToy = function(toy) {
    this.toys.push(toy);
  };

  this.chewUpToy = function() {
    return 'Sorry, I destroyed the ' + this.toys.shift();
  };
}
