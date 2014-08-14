// Sum square difference
//
// The sum of the squares of the first ten natural numbers is,
// 1^2 + 2^2+...+10^2=385
//
// The square of the sum of the first ten natural numbers is,
// (1 + 2 + 3 + 4... + 10)^2 = 55^2 = 3025
//
// Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640. Find the difference between the sum of the square of the first one hundred natural numbers and the square of the sum.

function sumSquares(num) {
  var result = 0;
    for (i = 1; i <= num; i++) {
      result += Math.pow(i,2);
  }
  return result;
}

function squareSum(num) {
  var result = 0;
    for (i = 1; i <= num; i++) {
      result += i;
    }
    return Math.pow(result,2)
}

console.log ( (squareSum(10)) - (sumSquares(10)) );
console.log ( (squareSum(100)) - (sumSquares(100)) );

// McK's Solution
function sumSquareDifference(limit) {
  var sumOfSquares = 0;
  var SquareOfSums = 0;

  for (var i = 1; i <= limit; i++) {
    sumOfSquares += Math.pow(i, 2);
    squareOfSums += i;
  }
  return Math.pow(squareOfSums, 2) - sumOfSquares;
}

console.log(sumSquareDifference(100));
