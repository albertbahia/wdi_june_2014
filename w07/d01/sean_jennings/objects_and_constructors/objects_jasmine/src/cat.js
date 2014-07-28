function Cat (name,breed,furColor,weight,age) {

  this.name = name;
  this.breed = breed;
  this.furColor = furColor;
  this.weight = weight;
  this.age = age;
  this.hairballs = [];

  this.meow = function () {
    message = 'No.';
    return message;
  }

  this.judgeHuman = function () {
    message = 'Yawn...Not impressed';
    return message;
  }

  this.readCollar = function () {
    catInfo = 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' + this.weight + 'lbs // ' + this.furColor + ' ' + this.breed;
    return catInfo;
  }

  this.lick = function () {
    this.hairballs.length >= 3 ? this.hairballs = [] : this.hairballs.push('hairball');
  }

}
