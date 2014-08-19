function Person(name, age){
  this.name = name;
  this.age = age;
  this.energy = 5;
}
Person.prototype.introduce = function(){
  if (this.energy > 0){
    return "Hi! My name is " + this.name;
  }
  return "";
}

Person.prototype.walk = function(){
  this.energy--;
    if (this.energy > 0) {
      return true;
    } else {
      return false;
    }
}

Person.prototype.sleep = function(){
  this.energy = 5;
}
