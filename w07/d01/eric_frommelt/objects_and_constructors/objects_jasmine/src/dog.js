function Dog(name, breed, furColor, weight, age) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.toys = [];

  this.bark = function() {
    return 'Bow Wow Wow Yippie Yo Yippie Yay';
  };

  this.readCollar = function() {
    return 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' + this.breed + ' // ' + this.weight + 'lbs' + ' // ' + this.furColor + ' Fur';
  };

  this.getToy = function() {
    this.toys.push('toy');
  };

  this.chewUpToy = function() {
    
    return 'Sorry, I destroyed the ' + this.toys.pop();
  };

};
