function sumSquareDifference(limit) {
  var sumOfSquares = 0;
  var squareOfSums = 0;

  for (var i = 1; i <= limit; i++) {
    sumOfSquares += Math.pow(i, 2);
    squareOfSums += i;
  }
  return Math.pow(squareOfSums, 2) - sumOfSquares;
}

console.log(sumSquareDifference(100));

// Francis Solution
// function naturalNumSquare (num) {
//   var range = Array.apply( 1, { length: (num + 1)}).map(Number.call, Number);
//   range.shift();
//   var sumOfSquares = range
//   var squareOfSums = range;
//   sumOfSquares = sumOfSquares.map(square).reduce(function (a,b) {
//     return a + b;
//   });
//   squareOfSums = (squareOfSums.reduce(function (a,b) {
//     return a + b;
//   })) * (squareOfSums.reduce(function (a,b) {
//     return a + b;
//   }));
//   return squareOfSums - sumOfSquares;
// }

// var square = function(arg) {
//   return arg * arg;
// };
// // console.log(naturalNumSquare(5));
// // console.log(naturalNumSquare(10));
// console.log(naturalNumSquare(100));


// //  Sean Talia Solution
// function sumOfSquares(n) {
//   return (n*(n+1)*(2*n+1) / 6)
// };

// function squareOfSum(n) {
//   var sum = 0;
//   for(var int = 1; int <= n; int++){
//     sum += int;
//   };
//   return sum*sum;
// }

// console.log(squareOfSum(100) - sumOfSquares(100));
