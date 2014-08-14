var fibonacciSequence = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

function fib() {
var first, second, add;
for(var i=0; i<10; i++) {
  if(i===0){
    first = 1;
    second = 2;
  }
  add = first + second;
  first = second;
  second = add;
}
}
fib();
