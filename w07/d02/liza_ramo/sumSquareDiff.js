// Sum of the squares of the first 10 natural numbers: 385
// Square of the sum of (1 .. 10) = 3,025
// Difference between these two: 2640
// ----> Find these for the first 100 natural nums

// Sum of the squares of (1...100)

var sumOfSqsFunction = function() {
  sumOfSqs = 0
  for (var n = 1; n <= 100; n++) {
    sumOfSqs += (n * n);
  }
  return sumOfSqs;
};

console.log(sumOfSqsFunction());
// 338,350

var sqOfSumsFunction = function() {
  sums = 0
  sqOfSums = 0
  for (var n = 1; n <= 100; n++) {
    sums += n;
  }
  sqOfSums = (sums * sums);
  return sqOfSums;
};

console.log(sqOfSumsFunction());
// 25,502,500


// Difference between the square of sums and the sum of the squares:
console.log(sqOfSums - sumOfSqs);
// 25,164,150


var sumSqDiff() {
  

};
