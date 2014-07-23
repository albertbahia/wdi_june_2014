function sumSquareDifference() {
  var sumOfSquaresArray = [];
  for (var i = 1; i <= 100; i++) {
    sumOfSquaresArray.push(Math.pow(i, 2));
  };
  var sumOfSquares = 0;
  for (var j = 0; j < sumOfSquaresArray.length; j++) {
    sumOfSquares += sumOfSquaresArray[j];
  };
  var squareOfSumArray = [];
  for (var k = 1; k <= 100; k++) {
    squareOfSumArray.push(k);
  };
  var sumToBeSquared = 0;
  for (var l = 0; l < squareOfSumArray.length; l++) {
    sumToBeSquared += squareOfSumArray[l];
  };
  var sumToBeSquaredSquared = Math.pow(sumToBeSquared, 2);
  var answer = sumToBeSquaredSquared - sumOfSquares;
  console.log(answer);

}

sumSquareDifference();
