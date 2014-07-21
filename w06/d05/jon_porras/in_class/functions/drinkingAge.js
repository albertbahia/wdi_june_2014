function drinkingAge(age) {
  if (age<21){
    return false;
  }else{
    return true;
  };
};

var answer = drinkingAge(20);
console.log(answer);
