function Dog (name,breed,furColor,weight,age) {
  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.toys = [];

  this.bark = function () {
    message = 'Bow Wow Wow Yippie Yo Yippie Yay';
    return message;
  }

  this.readCollar = function () {
    // 'Name: Pinky // Age: 4 // Great Dane // 200lbs // Black Fur'
    collarReading = 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' + this.breed + ' // ' + this.weight + 'lbs // ' + this.furColor + ' Fur' ;
    return collarReading;
  }

  this.getToy = function (toy) {
    this.toys.push(toy);
  }

  this.chewUpToy = function (toy) {
    this.toys.pop(toy);
    return 'Sorry, I destroyed the ' + toy;
  }

}
