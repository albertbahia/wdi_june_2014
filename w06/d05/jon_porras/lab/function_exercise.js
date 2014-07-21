//subtract
function subtract(num1, num2) {
  return (num1 - num2);
}

console.log("Subtract function result: " +subtract(5, 4));

//times
function times(num1, num2) {
  var mult = 0;
  for(var i=0;i<num2;i++){
    mult += num1;
  }
  return mult;
}

console.log("Times function result: " + times(2, 2))

//divided
function divided(num1, num2) {
  counter = 0;

  while(num1>0){
        num1 -= num2
        counter+=1;
    }

  return counter;
}

console.log("Divide function result: " + divided(22, 5));

//factorial
function factorial(num) {
  var newNum = num -1;
  var total = 1;
  while(newNum>0) {
    total += (times(newNum, total));
    newNum -= 1;
  }
  return total;
}

console.log(factorial(5));

//power
function power(num1, num2) {
  total=1;
  for(var i=0;i<num2;i++){
    total = times(num1,total);
  }
  return total;
}

console.log(power(5,3));
