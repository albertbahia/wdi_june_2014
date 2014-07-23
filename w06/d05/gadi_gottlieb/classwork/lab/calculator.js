/////////////////////////////////
//        SUBTRACTION          //
/////////////////////////////////

var subtract = function(num1, num2){
  console.log(num1 - num2);
}

subtract(6, 8);
subtract(16, 8);
subtract(3, 1);

/////////////////////////////////
//        MULTIPLICATION       //
/////////////////////////////////

var multiply = function(num1, num2){
  sum = 0;
  for (var i = 0; i < num2 ; i++) {
    sum += num1;
  }
  return sum;
};

console.log(multiply(5,2))
console.log(multiply(20,10))
console.log(multiply(3,8))

////////////////////////////////
//        DIVISION            //
////////////////////////////////
// while loop necessary

var divideBy = function(num1, num2) {
  sum = num1;
  for (var i = 0; i < num2; i++) {
    sum -= num2;
  }
  return sum;
};

console.log(divideBy(6,3))


//
//
// ### Divided
// - write a function that will accept two parameters and perform integer division on those two numbers, i.e. divideBy(5, 4) should return 1, divideBy(5, 22) should return 0
