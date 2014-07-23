// The sum of the squares of the first ten natural numbers is,
//
// 12 + 22 + ... + 102 = 385
// The square of the sum of the first ten natural numbers is,
//
// (1 + 2 + ... + 10)2 = 552 = 3025
// Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
//
// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.



var rangeFunction = function(limit) {
  var range = [];
  for (var i = 1; i <= limit; i++) {
      range.push(i);
  }
  return range;
}

var range = rangeFunction(100);

var sumSquare = function(array) {
  var tempArray = [];
  for (var i = 0; i < array.length; i++) {
    var square = Math.pow(array[i],2);
    tempArray.push(square);
  }
  var total = tempArray.reduce(function(a, b) {
    return a + b;
  });
  return total;
};

var squareSum = function(array) {
  var tempArray = [];
  var total = array.reduce(function(a, b) {
    return a + b;
  });
  total = Math.pow(total, 2)
  return total;
};

var difference = function(fxna, fxnb, array) {
  var outcome = (fxna(array) - fxnb(array));
  return outcome;
};





mck solution

function sumSquareDifference(limit) {
  var sumOfSquares = 0;
  var squareOfSums = 0;
  for (var i = 1; i <= limit; i++) {
    sumOfSquares += Math.pow(i, 2);
    squareOfSums += i;
  }
  return Math.pow(squareOfSums, 2) - sumOfSquares;
}
