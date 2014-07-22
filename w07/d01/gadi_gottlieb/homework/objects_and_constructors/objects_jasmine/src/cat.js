var Cat = function(name, breed, furColor, weight, age) {
    this.name = name;
    this.breed = breed;
    this.furColor = furColor;
    this.weight = weight;
    this.age = age;
    this.hairballs = [];
    this.meow = function(){
      return "No.";
    };
    this.judgeHuman = function(){
      return "Yawn...Not impressed"
    }
    this.readCollar = function(){
      return 'Name: ' + this.name + ' // Age: ' + this.age + ' // ' + this.weight + 'lbs // ' + this.furColor + " " + this.breed;
    }
    this.lick = function(ball){
      if (this.hairballs.length > 3) {
        for (var i = 0; i < this.hairballs.length; i++) {
          this.hairballs.pop([i]);
        }
      }
      else {
        this.hairballs.push(ball);
      }
    }
};

bill = new Cat("Bill", "Pitbull", "Black", 140, 4);
