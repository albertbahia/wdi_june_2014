 fibonacci = [ 0, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 ]
 var sum = 0;

// calculate the sum of the first 10 numbers in the Fibonacci sequence


for (var i = 0; i < fibonacci.length; i++) {


  sum += parseInt(fibonacci[i])
}

console.log(sum)
