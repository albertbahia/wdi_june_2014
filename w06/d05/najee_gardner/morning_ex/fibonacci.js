var lastFib = 34

var fib1 = 0;
var fib2 = 1;
var sumFibs = fib2;

while (fib2 < lastFib) {
  var newFib = fib2 + fib1;
  fib1 = fib2;
  fib2 = newFib;

  sumFibs += fib2;
}

console.log(sumFibs)
