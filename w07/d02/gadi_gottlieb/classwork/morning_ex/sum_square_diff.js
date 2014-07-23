// var sumOfSquares = function(limit) {
//     var array = []
//     for (var i = 1; i <= limit; i++) {
//       array.push(Math.pow(i,2));
//     }
//     var total = array.reduce(function(a, b) {
//       return a + b;
//     });
//     return total;
// }
// var squareOfFirstTenNums = function() {
//   var array = []
//   for (var i = 0; i <= 100; i++) {
//     var total = array.push(i).reduce(function(a, b) {
//       return a + b;
//     });
//     return Math.pow(total,2);
//   }
//
// }


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
