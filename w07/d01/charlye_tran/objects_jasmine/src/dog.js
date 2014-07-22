function Dog(name, breed, furColor, weight, age){
  var toys = [];
  this.toys = toys;
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.toys = [];
  this.readCollar = function() { return 'Name: ' + this.name + " // Age: " + age + " // " + breed + " // " + weight + "lbs // " + furColor + " Fur"; };
  this.bark = function() {
    return "Bow Wow Wow Yippie Yo Yippie Yay";
  };
  this.getToy = function(toy) {
    this.toys.push(toy);
  };
  this.chewUpToy = function(toy) {
    index = this.toys.indexOf(toy);
    var chewToy = this.toys.splice(index, 1);
    return "Sorry, I destroyed the " + chewToy;
  };
}
