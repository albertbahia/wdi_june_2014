function Dog(name, breed, furColor, weight, age) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.toys = [];

  this.bark = function() {
    return "Bow Wow Wow Yippie Yo Yippie Yay";
  }

  this.readCollar = function() {
    return "Name: " + this.name + " // " + "Age: " + this.age + " // " + this.breed + " // " + this.weight + "lbs // " + this.furColor.charAt(0).toUpperCase() + this.furColor.slice(1) + " Fur";
  }

  this.getToy = function(toy) {
    this.toys.push(toy);
  }

  this.chewUpToy = function(toy) {
    chewedToy = this.toys[Math.floor(Math.random()*this.toys.length)]
    index = this.toys.indexOf(chewedToy);
    this.toys.splice(index, 1);
    return "/Sorry, I destroyed the/" + chewedToy;
  }
}
