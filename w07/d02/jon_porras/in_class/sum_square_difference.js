
function sumSquareDifference(limit){
  var sumOfSquares = 0;
  var squareOfSums = 0;
  var natSum = 0;

  for(var i=1;i<=limit;i++){
      sumOfSquares += Math.pow(i, 2);
  }

  for (var i=1;i<=limit;i++){
      natSum += i;
  }

     squareOfSums = Math.pow(natSum, 2);

     return squareOfSums - sumOfSquares
}
  // console.log(sumOfSquares);
  // console.log(squareOfSums);
  // console.log(squareOfSums - sumOfSquares);


console.log(sumSquareDifference(100));
