// function sumOfSquares(limit) {
//   // var result = 0;
//   // for (var index = 1; index <= limit; index++) {
//   //   result = result + (index * index);
//   // }
//   //
//   // return result;
//   if (!limit) return 0;
//   return (limit * limit) + sumOfSquares(limit - 1);
// }
//
// function sumSquared(limit) {
//   var result = 0;
//   for (var index = 1; index <= limit; index++) {
//     result = result + index;
//   }
//
//   return result * result;
//
//   // if (!limit) return 0;
//   // return (limit + sumSquared(limit - 1));
// }
//
// function sumSquareDifference(limit) {
//   return sumSquared(limit) - sumOfSquares(limit);
// }

// mck's solution
function sumSquareDifference(limit) {
  var sumOfSquares = 0;
  var sum = 0;

  for (var i = 0; i <= limit; i++) {
    sumOfSquares += Math.pow(i, 2);
    sum += i;
  }

  return Math.pow(sum, 2) - sumOfSquares;
}
