//////////////
// SUBTRACT // --------------------------------------------------------------
//////////////

// - write a function that accepts 2 parameters
// - return result of performing subtraction on those two

// var subtract = function(num1, num2) {
//   return num1 - num2
// };
//
// var subtractAnswer = subtract(10, 5);
// console.log(subtractAnswer);


///////////
// TIMES // --------------------------------------------------------------
///////////

// - function w/ 2 params ; returns result of performing multiplication

var times = function(num1, num2) {
  var total = 0;
  for ( var i = 0; i < num2; i++ ) {
    total += num1;
  }
  return total;
};

// times(5, 3);
// times(10, 10);
// times(2, 18);



/////////////
// DIVIDED // --------------------------------------------------------------
/////////////

// - function w/ 2 params ; perform integer division on 2 numbers

// var divided = function(num1, num2) {
//   var multiplier = num1;
//   var counter = 0;
//   for (var i = 0; i < num2; i++) {
//     if (multiplier >= num2) {
//       multiplier -= num2;
//       counter++;
//     }
//   }
//   return counter;
// };
//
// var answer1 = divided(10, 5);
// // 2
// var answer2 = divided(5, 5);
// // 1
// var answer3 = divided(5, 10);
// // 0
//
// console.log(answer1);
// console.log(answer2);
// console.log(answer3);




///////////////
// FACTORIAL // --------------------------------------------------------------
///////////////

// - function with 1 params ; will return the factorial of that number

// var factorial = function(num) {
//   var product = 1;
//   var counter = num;
//   for (var i = 0; i < num; i++) {
//     if ( counter >= 1 ) {
//       product = times(product, counter);
//       counter -= 1;
//     }
//   }
//   return product;
// };
//
// var answer1 = factorial(4);
// // (4 x 3) x (2 x 1) = 24
//
// console.log(answer1);


///////////
// POWER // --------------------------------------------------------------
///////////

// - function w/ 2 params (base + exponent) ; returns result of raising the base


var power = function(base, exponent) {
  var counter = exponent;
  var total = 1;
  for (var i = 0; i < exponent; i++) {
    if ( counter <= exponent ) {
      total = times(total, base)
      counter -= 1;
    }
  }
  return total;
};

var answer1 = power(5, 3);
// ( 5 x 5 ) x 5 = 125

console.log(answer1);
