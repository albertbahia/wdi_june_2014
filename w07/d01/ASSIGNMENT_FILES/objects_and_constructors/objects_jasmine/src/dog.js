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
    var infoString = 'Name: ' + this.name +
                     ' // Age: ' + this.age +
                     ' // ' + this.breed +
                     ' // ' + this.weight + 'lbs' +
                     ' // ' + this.furColor + ' Fur';
    return infoString;
  }
  this.getToy = function(toy) {
    this.toys.push(toy);
  };
  this.chewUpToy = function() {
    var randomIndex = Math.floor(Math.random() * this.toys.length);
    var randomToy = this.toys.splice(randomIndex, 1);
    return 'Sorry, I destroyed the ' + randomToy + ' with my super jaws!';
  }
}
