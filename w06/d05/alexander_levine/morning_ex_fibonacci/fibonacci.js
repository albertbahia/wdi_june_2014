var fibonacciArray = [];

fibonacciArray.push(1);
fibonacciArray.push(1);
for (var i = 0; i < 8; i++) {
  fibonacciArray.push((fibonacciArray[fibonacciArray.length-1]) + (fibonacciArray[fibonacciArray.length-2]));
}
console.log(fibonacciArray);

var sum = 0

for (var j = 0; j < fibonacciArray.length; j++) {
  sum += fibonacciArray[j];
}

console.log(sum);
