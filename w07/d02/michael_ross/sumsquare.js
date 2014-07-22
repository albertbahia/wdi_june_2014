// The sum of the squares of the first ten natural numbers is,
//
// 12 + 22 + ... + 102 = 385
// The square of the sum of the first ten natural numbers is,
//
// (1 + 2 + ... + 10)2 = 552 = 3025
// Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
//
// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.



// function sumSquare(n) {
//   return (n*(n+1)*(2*n+1) / 6);
// }
//
// var ans1 = sumSquare(100);
// console.log(ans1);
//
// function squareSums(num) {
//   var total = 0;
//   for (var i = 0; i <= num; i++) {
//     total += i
//   }
//   return total * total;
// }
//
// var ans2 = squareSums(100);
// console.log(ans2) - console.log(ans1);
//
//
function sumOfSquares(limit) {
  var sum = 0;
  for (var i = 0; i <= limit; i++) {
    sum += Math.pow(i, 2);
  }
  return sum;
}

function squareOfSums(limit) {
  var squares = 0;
  for (var i = 1; i<- limit; i++) {
    
  }
}

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
