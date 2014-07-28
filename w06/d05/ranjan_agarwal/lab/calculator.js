var subtract = function(a,b) {
  return a - b;
};

var a = subtract(5,2);
console.log(a);

var multiply = function(a,b) {
  product = 0
  for(var i = 0; i < b; i++) {
      product += a
  }
  return product
};

var a = multiply(5,7);
console.log(a);

var divide = function(a,b) {
  quotient = 0;
    while (a > b) {
      a -= b
      quotient += 1;
    };
  return quotient;
};

var ans = divide(22,5);
console.log(ans);


var factorial = function(a) {
  var newNum = a - 1;
  var total = 1;
  while (newNum > 0) {
    total += (multiply(newNum, total));
    newNum -= 1;
  };
  return total
};

var ans = factorial(5);
console.log(ans);


var power = function(a,b) {
  counter = a;
  for(var i = 1; i < b; i++) {
    counter = multiply(counter, a);
  };
  return counter
};

var ans = power(5,2);
console.log(ans);
