function naturalNumSquare (num) {
  var range = Array.apply( 1, { length: (num + 1)}).map(Number.call, Number);
  range.shift();
  var sumOfSquares = range
  var squareOfSums = range;

  sumOfSquares = sumOfSquares.map(square).reduce(function (a,b) {
    return a + b;
  });
  squareOfSums = (squareOfSums.reduce(function (a,b) {
    return a + b;
  })) * (squareOfSums.reduce(function (a,b) {
    return a + b;
  }));
  return squareOfSums - sumOfSquares;
}

var square = function(arg) {
  return arg * arg;
};
console.log(naturalNumSquare(5));
console.log(naturalNumSquare(10));
console.log(naturalNumSquare(100));
