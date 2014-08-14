// subtract
var difference = function(a, b) {
  return a - b;
}

var answer = difference(2, 1)
console.log(answer);


// times
var product = function(a, b) {
  product = 0
  for(var i = 0; i < b; i++) {
    product += a
  }
return product;
}

var answer = product(2, 3)
console.log(answer);


// divided
var quotient = function(a, b) {
  quotient = 0
  while(a > b) {
    a -= b
    quotient += 1
  }
  return quotient;
}

var answer = quotient(22, 5)
console.log(answer);

// factorial
var factorial = function(a) {
  var newNum = a - 1;
  var total = 1;
  while(newNum > 0) {

  }

}

var answer = factorial()
