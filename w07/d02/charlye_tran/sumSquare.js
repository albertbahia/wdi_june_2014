var sumOfSquares = function(){
  var sum = 0 ;
  for (var i = 0; i <= 100; i++) {
    sum = sum + Math.pow(i, 2);
  }
  return sum;
};

var squareOfSums = function(){
  var sum = 0 ;
  for (var i = 0; i <= 100; i++) {
    sum = sum + i;
  }
  return Math.pow(sum, 2);
};

var difference = function(){
  return squareOfSums() - sumOfSquares();
};
