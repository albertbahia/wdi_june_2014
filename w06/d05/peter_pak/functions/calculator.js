// Calculator
// Learning Objectives
//
// Gain comfortability coding in a new language
// Practice working with arrays in JavaScript
// Practice defining functions in Javascript
// Practice passing functions stored in variables
// To get more comfortability and practice with our new friend JavaScript we are going to build a simple calculator. There's a hitch...you can only use the + operator, the - operator, or a function that you have defined yourself. Assume all input values will be integers.
//
// Part 1
// Subtract
//
// write a function that will accept two parameters and return the result of performing subtraction on those two values.
// Times
//
// write a function that will accept two parameters and return the result of performing multiplication on those two values.
// Divided
//
// write a function that will accept two parameters and perform integer division on those two numbers, i.e. divideBy(5, 4) should return 1, divideBy(5, 22) should return 0
// Part 2 - Partner
// Factorial
//
// write a function that will accept a single parameter, a number, and will return the factorial result of that number
// Power
//
// write a function that will accept two parameters (a base and an exponent) and will return the result of raising the base to the exponent.



var subtract = function(a, b) {
  return a - b;
};

var times = function(a, b) {
  var product = a;
  for (var i = 1; i < b; i++) {
    product += a;
  }
  return product;
};

times(2, 5)



var divideBy = function(a, b) {
  if (a > b) {
    var remainder = a - b;
    while (remainder >= b) {
      remainder -= b;
    }
    return remainder
  } else {
    return 0;
  }
};

divideBy(5, 4);
divideBy(5, 22);



var factorial = function(a) {
  var multiple = 1;
  for (i = 1; i <= a; i++) {
    multiple = times(multiple, i);
  }
  return multiple;
};

factorial(5);


var power = function(a, b) {
  var total = 1;
  for (i = 1; i <= b; i++) {
    total = times(total, a);
  }
  return total;
};


power(2, 3);
power(5, 0);
power(3, 3);
