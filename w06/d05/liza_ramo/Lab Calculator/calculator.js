
///////////////////////////////////////
//////        Subtraction         /////
///////////////////////////////////////
// write a function that will accept two parameters and return the result of performing subtraction on those two values:

var mySubtract = function(a, b) {
  return (a - b);
};

var answer1 = mySubtract(3, 1);
var answer2 = mySubtract(4, 1);

console.log(answer1);
console.log(answer2);

///////////////////////////////////////
//////        Times               /////
///////////////////////////////////////
// write a function that will accept two parameters and return the result of performing multiplication on those two values:

var times = function(num1, num2) {
  var total = 0;
  for ( var i = 0; i < num2; i++ ) {
    total += num1;
  }
  return total;
};

times(5, 3);
times(10, 10);
times(2, 18);

///////////////////////////////////////
//////        Division            /////
///////////////////////////////////////
// write a function that will accept two parameters and perform integer division on those two numbers, i.e. divideBy(5, 4) should return 1, divideBy(5, 22) should return 0

var divideBy = function(num1, num2) {
  var multiplier = num1;
  var counter = 0;
  for (var i = 0; i < num2; i++) {
    if (multiplier >= num2) {
      multiplier -= num2;
      counter++;
    }
  }
  return counter;
};

var answer1 = divideBy(9,3);
// 3
var answer2 = divideBy(5, 22);
// 0
var answer3 = divideBy(25, 6);
// 4


console.log(answer1);
console.log(answer2);
console.log(answer3);

///////////////////////////////////////
//////        Factorial           /////
///////////////////////////////////////

// write a function that will accept a single parameter, a number, and will return the factorial result of that number

var factorial = function(num) {
  var product = 1;
  var counter = num;
  for (var i = 0; i < num; i++) {
    if ( counter >= 1 ) {
      product = times(product, counter);
      counter -= 1;
    }
  }
  return product;
};

var answer1 = factorial(4);
// (4 x 3) x (2 x 1) = 24

console.log(answer1);


///////////////////////////////////////
//////        Power               /////
///////////////////////////////////////

// write a function that will accept two parameters (a base and an exponent) and will return the result of raising the base to the exponent.

var power = function(base, exp) {
  var counter = exp;
  var total = 1;
  for (var i = 0; i < exp; i++) {
    if (counter <= exp) {
      total = times(total, base);
      counter -= 1;
    }
  }
  return total;
};

var answer1 = power(5, 3);
// 125

console.log(answer1);











//
